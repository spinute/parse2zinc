#include <iostream>
#include <cassert>
#include <map>

#include "/Library/gurobi563/mac64/include/gurobi_c++.h"

using namespace std;

// stateに対応する変数
// LevelEnv -> Env -> Var -> Valという階層構造になっている
// translatorが多値変数を利用して相互排他な命題をまとめているので，それを利用できるようにこのような階層構造を取る
typedef GRBVar Value;           // 最小単位, あるlevelでのあるstateの真偽値を保持する
typedef vector<Value> Var;      // 相互排他なValの集合をVarと呼びまとめる
typedef vector<Var> Env;        // あるlevelにおけるVarの集合を保持する
typedef vector<Env> LevelEnv;   // あるlevelまでの全てのstate variableを保持する

// actionに対応する変数
// LevelActions -> Actions -> ActionVarという階層構造になっている
typedef GRBVar ActionVar;                // 最小単位, あるlevelでのあるactionの実行の真偽を保持する
typedef vector<ActionVar> Actions;       // あるlevelでの全てのactionの真偽変数を保持する
typedef vector<Actions> LevelActions;    // あるlevelまでの全てのaction variableを保持する

enum SolverType {Gurobi, Minizinc};

inline void double_vloop(vector<Env>){}
//ループが多くやや見難いのでループ用のinlineを作ると見やすくなるかも

void solve(const Problem* problem_ptr){ //rapper function for solver

	const int MAX_DEPTH = 20;
	SolverType solver = Gurobi;

	// iterative deepening
	for (int level = 1; level <= MAX_DEPTH; ++level)
	{
		cout << "***** level: " <<  level << " start ****" << endl << endl;

		switch(solver){
			case Gurobi:
				if(gurobi_solve(level, problem_ptr))
				{
					return; // return with getting plan
				}
				break;

			case Minizinc:
				// minizinc solver function

			default:
				break;			
		}
	}
}


bool gurobi_solve(const int level, const Problem* problem_ptr)
{
	Problem problem = *problem_ptr;

	try
	{
		GRBEnv env = GRBEnv();
		GRBModel model = GRBModel(env);

		// addVar(upper bound, lower bound, coefficient, type, name(optional))

		// add vars in sas format Var section
		// sasの値一つひとつにbool値を割り当てることにした
		// (multi valueそのままだとmutexが不等式でうまく書けない)

		LevelEnv  level_env;
		for (int t = 0; t < level; ++t)
		{
			Env tmp_env;
			for (int i = 0; i < problem.n_vars; ++i)
			{
				variable this_var = problem.vars.at(i);
				Var tmp_var;
				for (int j = 0; j < this_var.range; ++j)
				{
					tmp_var.push_back(model.addVar(0.0, 1.0, 0.0, GRB_BINARY,
					                problem.vars.at(i).atoms.at(j) ));
				}
				tmp_env.push_back(tmp_var);
			}
			level_env.push_back(tmp_env);
		}

		model.update();
		
		GRBLinExpr target = 0.0;

		// constraint:
		// 同じvariableに属するvalueは同時にtrueになれない

		for (auto t = level_env.begin(); t < level_env.end(); ++t)
		{
			for (auto i = t->begin(); i != t->end(); ++i)
			{
				target = 0.0;
				for (auto j = i->begin(); j != i->end(); ++j)
				{
					target += *j;
				}

				model.addConstr(target <= 1);
			}
		}

		// constraint:
		// sas format mutex section

		auto mutexes = problem.mtxs;
		for (auto t = level_env.begin(); t < level_env.end(); ++t)
		{
			for (auto mutex = mutexes.begin(); mutex != mutexes.end(); ++mutex)
			{
				target = 0.0;
				
				for (auto i = mutex->list.begin(); i != mutex->list.end(); ++i)
				{
					target += t->at(i->first).at(i->second);
				}

				model.addConstr(target <= 1);
			}
		}

		// constraint:
		// sas format initial section

		auto startEnv = level_env.at(0);
		auto var_itr = startEnv.begin();
		for (auto i = problem.init.begin(); i != problem.init.end(); ++i)
		{
			model.addConstr(var_itr->at(*i) == 1.0);
			++var_itr;
		}
		assert(var_itr == startEnv.end());

		// constraint
		// sas format goal section

		int goal = level-1;
		auto goalEnv = level_env.at(goal);
		for (auto i = problem.goal.begin(); i != problem.goal.end(); ++i)
		{
			model.addConstr( goalEnv.at(i->first).at(i->second) == 1.0);
		}


		// addVar
		// sas format operator section
		
		LevelActions level_Actions;

		for (int t = 0; t < level; ++t)
		{
			Actions tmp_acts;
			for (int i = 0; i < problem.n_ops; ++i)
			{
				tmp_acts.push_back(model.addVar(0.0, 1.0, 0.0, GRB_BINARY,
												problem.operators.at(i).name ));
			}
			level_Actions.push_back(tmp_acts);
		}

		model.update();
		
		// generate addf, delf( state change model使うならpredel, preaddなども入れる)
		map<int, map<int, vector<int> > > addf;
		map<int, map<int, vector<int> > > delf;
		// map<int, map<int, vector<int> > > predelf;
		// map<int, map<int, vector<int> > > preaddf;
		map<int, map<int, vector<int> > > maintainf;

		for (int var = 0; var < problem.n_vars; ++var)
		{
			for (int val = 0; val < problem.vars.at(var).range; ++val)
			{
				for (int op = 0; op < problem.n_ops; ++op)
				{
					bool addflag = false;
					bool delflag = false;
					for (auto ef = problem.operators.at(op).effects.begin(); ef != problem.operators.at(op).effects.end(); ++ef)
					{
						if (addflag && delflag)
						{
							break;
						}
						else if (ef->var == var && ef->postval == val)
						{
							addf[var][val].push_back(op);
							addflag = true;
						}
						else if (ef->var == var && ef->preval == val)
						{
							delf[var][val].push_back(op);
							delflag = true;
						}
						else
						{
							maintainf[var][val].push_back(op);
						}
					}	
				}
			}
		}
		
		// constraint
		// sas format operator section
		
		auto level_env_itr = level_env.begin();

		//最終ステップではアクションを取らないのでendの一個前で止める
		auto stop_level = --(level_Actions.end());
		for (auto t = level_Actions.begin(); t != stop_level; ++t)
		{
			auto op_itr = problem.operators.begin();
			for (auto i = t->begin(); i != t->end(); ++i)
			{
				target = 0.0;

				// this is counter for objective function
				// todo: targetを増やすときには必ずインクリメントするので，関数にまとめた方がよい
				int cap = 0;

				// prevailcondition variables hold in t and t+1
				for(auto pc = op_itr->prevailConditions.begin(); pc != op_itr->prevailConditions.end(); ++pc)
				{
					target += level_env_itr->at(pc->first).at(pc->second);
					++cap;
					
					// // at next step also hold
					++level_env_itr;
					target += level_env_itr->at(pc->first).at(pc->second);
					++cap;
					--level_env_itr;
				}

				// effect
				for (auto ef = op_itr->effects.begin(); ef != op_itr->effects.end(); ++ef)
				{
					if (ef->n_assoc_conditions == 0)
					{
						if (ef->preval != -1)
						{
							target += level_env_itr->at(ef->var).at(ef->preval);
							++cap;
						}

						++level_env_itr;
						target += level_env_itr->at(ef->var).at(ef->postval);
						++cap;
						--level_env_itr;
					}
				}

				// capはできれば問題から閉じた式でに計算したい，が，-1の検出などが面倒
				// int cap = (op_itr->n_prevailCond + op_itr->n_effects)*2;
				
				// if action then target == cap
				// !action or (target == cap)
				model.addConstr( (*i) * cap - target <= 0 );

				++op_itr;
			}
			assert(op_itr == problem.operators.end());

			++level_env_itr;
		}
		assert( level_env_itr == --(level_env.end()) );		

		// succcessor state axiom
		for (int t = 0; t < level-1; ++t)
		{
			for (int var = 0; var < problem.n_vars; ++var)
			{
				for (int val = 0; val < problem.vars.at(var).range; ++val)
				{
					target = 0.0;
					int cap = 0;
					
					for (auto i = addf[var][val].begin(); i != addf[var][val].end(); ++i)
					{
						target += level_Actions.at(t).at(*i);
						++cap;
					}
					
					for (auto i = delf[var][val].begin(); i != delf[var][val].end(); ++i)
					{
						target -= level_Actions.at(t).at(*i);
					}

					target += level_env.at(t).at(var).at(val);

					target -= model.addVar(0, (double) cap, 0, GRB_INTEGER, "slack"); //slack
					model.update();

					target -= level_env.at(t+1).at(var).at(val);

					model.addConstr(target, GRB_EQUAL, 0.0); 
				}
			}
		}

		// // fluent maintain constraint
		// for (int t = 0; t < level-1; ++t)
		// {
		// 	for (int var = 0; var < problem.n_vars; ++var)
		// 	{
		// 		for (int val = 0; val < problem.vars.at(var).range; ++val)
		// 		{
		// 			target = 0.0;
		// 			int cap1 = 1;
		// 			for (auto op = maintainf[var][val].begin(); op != maintainf[var][val].end(); ++op)
		// 			{
		// 				target += 1 - level_Actions.at(t).at(*op);
		// 			}
		// 			const int cap2 = 2;

		// 			auto pre = level_env.at(t).at(var).at(val);
		// 			auto post = level_env.at(t+1).at(var).at(val);
		// 			model.addConstr(target * cap2 + 
		// 				(pre + post) * cap1 >= cap1*cap2);
		// 		}
		// 	}
		// }


		// action exclusion axiom(入れると整列集合になるので一長一短)
		// for (auto t = level_Actions.begin(); t < level_Actions.end(); ++t)
		// {
		// 	target = 0.0;
		// 	for (auto i = t->begin(); i != t->end(); ++i)
		// 	{
		// 		target += *i;
		// 	}
		// 	model.addConstr(target <= 1.0);
		// }


		// objective function
		// action variable のtrue 最小化

		GRBLinExpr obj = 0.0;

		for (auto t = level_Actions.begin(); t < level_Actions.end(); ++t)
		{
			for (auto i = t->begin(); i != t->end(); ++i)
			{
				obj += *i;
			}
		}
		model.setObjective(obj, GRB_MINIMIZE);

		model.update();
		model.write("output.lp");
		model.optimize();

		// output answers
		// extract planning problem answers from LP

		// また，今はとりあえず見てわかるように抽出しているが，VALに渡せるようにpddlで出力したいので
		// フォーマットの確認が必要(sas_planを参照)
		int this_level = 0;
		for (auto t = level_Actions.begin(); t != level_Actions.end(); ++t)
		{
			for (auto i = t->begin(); i != t->end(); ++i)
			{
				if (i->get(GRB_DoubleAttr_X) == 1)
				{
					cout << "action: in " << this_level << ": " <<
				    	  i->get(GRB_StringAttr_VarName) << endl;
				}
			}

			++this_level;
		}

		this_level = 0;
		for (auto t = level_env.begin(); t != level_env.end(); ++t)
		{
			for (auto i = t->begin(); i != t->end(); ++i)
			{
				for (auto j = i->begin(); j != i->end(); ++j)
				{
					if (j->get(GRB_DoubleAttr_X) == 1)
					{
						cout << "env: in " << this_level << ": " <<
					    	  j->get(GRB_StringAttr_VarName) << endl;
					}
				}

			}
			++this_level;
		}

		cout << "Obj: " << model.get(GRB_DoubleAttr_ObjVal) << endl;
	}
	catch(GRBException e) 
	{
		cout << "Error code: " << e.getErrorCode() << endl;
		cout << e.getMessage() << endl;
		cout << "------------------" << endl;
		return false;
	}
	catch(...) 
	{
		cout << "Exeption during optimization." << endl;
	}

	return true;
}