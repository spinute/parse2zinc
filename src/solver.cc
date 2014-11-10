#include <iostream>
#include <cassert>

#include "/Library/gurobi563/mac64/include/gurobi_c++.h"

#include "sas_generator.h"

using namespace std;

typedef GRBVar Value;
typedef vector<Value> Var;
typedef vector<Var> Env;

typedef GRBVar ActionVar;
typedef vector<ActionVar> Actions;

inline void double_vloop(vector<Env>){}
//関数ポインタ使えば書けるのでは

void solve(const Problem* problem_ptr){ //rapper function for solver

	//
	// there will be solver switch
	//

	const int MAX_DEPTH = 10;

	// iterative deepening
	for (int level = 2; level <= MAX_DEPTH; ++level)
	{
		cout << "***** level: " <<  level << " start ****" << endl << endl;
		if(gurobi_solve(level, problem_ptr))
		{
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

		vector<Env>  level_env;
		for (int t = 0; t < level; ++t)
		{
			Env tmp_env;
			for (int i = 0; i < problem.n_vars; ++i)
			{
				variable this_var = problem.vars.at(i);
				Var tmp_var;
				for (int j = 0; j < this_var.range; ++j)
				{
					tmp_var.push_back(model.addVar(0.0, 1.0, 0.0, GRB_BINARY));
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
		
		vector<Actions> level_Actions;

		for (int t = 0; t < level; ++t)
		{
			Actions tmp_acts;
			for (int i = 0; i < problem.n_ops; ++i)
			{
				tmp_acts.push_back(model.addVar(0.0, 1.0, 0.0, GRB_BINARY));
			}
			level_Actions.push_back(tmp_acts);
		}

		model.update();

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
				model.addConstr( (*i) * cap + target <= cap );

				++op_itr;
			}
			assert(op_itr == problem.operators.end());

			++level_env_itr;
		}
		assert( level_env_itr == --(level_env.end()) );

		// objective functiona
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

		// plan の抽出
		// サンプルが goal == start なのでまだ動くか確認できていない。
		// また，今はとりあえず見てわかるように抽出しているが，VALに渡せるようにpddlで出力したいので
		// フォーマットの確認が必要
		int level = 0;
		for (auto t = level_Actions.begin(); t != level_Actions.end(); ++t)
		{
			for (auto i = t->begin(); i != t->end(); ++i)
			{
				if (i->get(GRB_DoubleAttr_X) == 1)
				{
					cout << "in " << level << ": " <<
				    	  i->get(GRB_StringAttr_VarName) << endl;
				}
			}

			++level;
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