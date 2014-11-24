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

// state changeを保持する
// poyo[var][val]という形でVar->Valに対応する状態変数に関連するactionのベクトルを取り出せる
typedef vector<int> Action_index; 
typedef map<int, map<int, Action_index > > Related_actions_mapper;

enum SolverType {Gurobi, Minizinc};

inline void double_vloop(vector<Env>){}
//ループが多くやや見難いのでループ用のinlineを作ると見やすくなるかも

void solve(const Problem* problem_ptr){ //rapper function for solver

	const int MAX_DEPTH = 50; // 探索の打ち切り，恣意的(30分以上の実験をするなら伸ばす)
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
				// minizinc solver function will be there

			default:
				break;			
		}
	}
}


bool gurobi_solve(const int level, const Problem* problem_ptr)
{
	Problem problem = *problem_ptr;

    // gurobiは求解失敗をエラーで返すのでcatchする
	try
	{
		// initialization for gurobi environment
		GRBEnv env = GRBEnv();
		GRBModel model = GRBModel(env);

		// model:addVar
		// addVar(upper bound, lower bound, coefficient, type, name(optional))

		// add vars in sas format Var section
		// sasの値一つひとつにbool値を割り当てることにした
		// (multi valueそのままだとmutexが不等式でうまく書けない)

		// parseされたデータを持つ構造体(sas_generator.hにある)から
		// 状態変数の作成
		LevelEnv  level_env;
		for (int t = 0; t < level; ++t)
		{
			Env tmp_env;
			for (int i = 0; i < problem.n_vars; ++i)
			{
				Var tmp_var;
				for (int j = 0; j < problem.vars.at(i).range; ++j)
				{
					tmp_var.push_back(model.addVar(0.0, 1.0, 0.0, GRB_BINARY,
					                problem.vars.at(i).atoms.at(j) ));
				}
				tmp_env.push_back(tmp_var);
			}
			level_env.push_back(tmp_env);
		}

		// addVar
		// sas format operator section
		// 全てのlevelでのactionの真偽はこのベクトルがまとめる
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
		
		// 不等式制約の左辺用の変数の一次結合を保持する変数
		GRBLinExpr lhs = 0.0;

		// constraint:
		// 同じVarに属するValは同時にtrueになれない
		for (auto t = level_env.begin(); t < level_env.end(); ++t)
		{
			for (auto i = t->begin(); i != t->end(); ++i)
			{
				lhs = 0.0;
				for (auto j = i->begin(); j != i->end(); ++j)
				{
					lhs += *j;
				}

				model.addConstr(lhs <= 1);
			}
		}

		// constraint:
		// sas format mutex sectionにある相互排他を入れておく
		auto mutexes = problem.mtxs; //mutexの複数形はなんですか
		for (auto t = level_env.begin(); t < level_env.end(); ++t)
		{
			for (auto mutex = mutexes.begin(); mutex != mutexes.end(); ++mutex)
			{
				lhs = 0.0;
				
				for (auto i = mutex->list.begin(); i != mutex->list.end(); ++i)
				{
					lhs += t->at(i->first).at(i->second);
				}

				model.addConstr(lhs <= 1);
			}
		}

		// constraint:
		// sas format initial section
		// 全てのVarのValが順に指定されている
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
		// initと違って全てのVarに対して制約があるわけではないのでVar,Valのペアで指定する
		// このプログラムでのpairはだいたい<Var, Val>
		int goal = level-1; //for文とかの t<level が書きやすいのでgoalはlevel-1とする
		auto goalEnv = level_env.at(goal);
		for (auto i = problem.goal.begin(); i != problem.goal.end(); ++i)
		{
			model.addConstr( goalEnv.at(i->first).at(i->second) == 1.0);
		}
		
		// generate addf, delf( state change model使うならpredel, preaddなども入れる)
		// ある変数に対して働きかけるactionを列挙する
		// successor state axiomの記述に利用する

		Related_actions_mapper addf; //あるstateをaddするようなactionのベクトルを取り出せる
		Related_actions_mapper delf; //あるstateをdelするようなactionのベクトルを取り出せる
		// Related_actions_mapper predelf;
		// Related_actions_mapper preaddf;
		Related_actions_mapper maintainf; //あるstateをmaintainするようなactionのベクトルを取り出せる

		// けっこう重いが，全てのlevelについて作る必要はないぶんまだまし
		// しかしボトルネックになっているようなら工夫する
		for (int var = 0; var < problem.n_vars; ++var)
		{
			for (int val = 0; val < problem.vars.at(var).range; ++val)
			{
				for (int op = 0; op < problem.n_ops; ++op)
				{
					bool addflag = false;
					bool delflag = false;

					// 以下の処理はsasファイルで preval!=postval となっていることを前提としている
					// fastdownwardのtranslatorにその旨の仕様があるかはわかっていないが，
					// prevail=postval ということは変化しないということで，閉世界仮説を採用しているならばこれは
					// 記述する必要のない制約となってしまうため，妥当である気はする
					for (auto ef = problem.operators.at(op).effects.begin(); ef != problem.operators.at(op).effects.end(); ++ef)
					{
						if (addflag && delflag) //別にbreakしなくても健全だが，もう後ろにはない
						{
							break;
						}

						if (ef->var == var && ef->postval == val)
						{
							addf[var][val].push_back(op);
							addflag = true;
						}
						
						if (ef->var == var && ef->preval == val)
						{
							delf[var][val].push_back(op);
							delflag = true;
						}
					}

					//addでもdelでもないならvar,val共に変化していないのでmaintain
					if(!addflag || !delflag)
					{
						maintainf[var][val].push_back(op);
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
				lhs = 0.0;

				// this is counter for objective function
				// todo: lhsを増やすときには必ずインクリメントするので，関数にまとめた方がよい
				int cap = 0;

				// prevailcondition variables hold in t and t+1
				for(auto pc = op_itr->prevailConditions.begin(); pc != op_itr->prevailConditions.end(); ++pc)
				{
					lhs += level_env_itr->at(pc->first).at(pc->second);
					++cap;
					
					// // at next step also hold
					++level_env_itr;
					lhs += level_env_itr->at(pc->first).at(pc->second);
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
							lhs += level_env_itr->at(ef->var).at(ef->preval);
							++cap;
						}

						++level_env_itr;
						lhs += level_env_itr->at(ef->var).at(ef->postval);
						++cap;
						--level_env_itr;
					}
				}

				// capはできれば問題から閉じた式でに計算したい，が，-1の検出などが面倒
				// int cap = (op_itr->n_prevailCond + op_itr->n_effects)*2;
				
				// if action then lhs == cap
				// !action or (lhs == cap)
				model.addConstr( (*i) * cap - lhs <= 0 );

				++op_itr;
			}
			assert(op_itr == problem.operators.end());

			++level_env_itr;
		}
		assert( level_env_itr == --(level_env.end()) );		

		// succcessor state axiom
		// ある状態でstateがtrueであるのは
		// そのlevelでそのstateをtrueにするようなaction(addfに入っている)が実行される時
		// または直前のlevelでstateがtrueでかつそれをfalseにするようなaction(delfに入っている)が実行されない時
		std::vector<GRBLinExpr>  alllhs;

		for (int t = 0; t < level-1; ++t)
		{
			for (int var = 0; var < problem.n_vars; ++var)
			{
				for (int val = 0; val < problem.vars.at(var).range; ++val)
				{
					GRBLinExpr this_lhs = 0.0;
					int cap = 0;
					
					for (auto i = addf[var][val].begin(); i != addf[var][val].end(); ++i)
					{
						this_lhs += level_Actions.at(t).at(*i);
						++cap;
					}
					
					for (auto i = delf[var][val].begin(); i != delf[var][val].end(); ++i)
					{
						this_lhs -= level_Actions.at(t).at(*i);
					}

					this_lhs += level_env.at(t).at(var).at(val);

					ostringstream oss;
					oss << "slack_" << t << "_" << var << "_" << val;
					this_lhs -= model.addVar(0, (double) cap, 0, GRB_INTEGER, oss.str());

					this_lhs -= level_env.at(t+1).at(var).at(val);
					alllhs.push_back(this_lhs);
				}
			}
		}

		model.update(); //model.update()をたくさん呼ぶと警告がでたのでaddConstrを切り出した
		for (auto i = alllhs.begin(); i != alllhs.end(); ++i)
		{
			model.addConstr(*i, GRB_EQUAL, 0.0); 
		}


		// fluent maintain constraint
		// なぜなくても動くのかよくわかっていない(mutexなどのsas頼りの部分に含まれている？)
		// （入れても今のところ完全，入れなくても健全かは不明）<- operatorに含有されている
		// for (int t = 0; t < level-1; ++t)
		// {
		// 	for (int var = 0; var < problem.n_vars; ++var)
		// 	{
		// 		for (int val = 0; val < problem.vars.at(var).range; ++val)
		// 		{
		// 			lhs = 0.0;
		// 			int cap1 = 1;
		// 			for (auto op = maintainf[var][val].begin(); op != maintainf[var][val].end(); ++op)
		// 			{
		// 				lhs += 1 - level_Actions.at(t).at(*op);
		// 			}
		// 			const int cap2 = 2;
		
		// 			auto pre = level_env.at(t).at(var).at(val);
		// 			auto post = level_env.at(t+1).at(var).at(val);
		// 			model.addConstr(lhs * cap2 + 
		// 				(pre + post) * cap1 >= cap1*cap2);
		// 		}
		// 	}
		// }


		// action exclusion axiom(入れると整列集合になるので一長一短)
		// (しかし，sasのmutexとmultivalに含有されているので不要)
		// for (auto t = level_Actions.begin(); t < level_Actions.end(); ++t)
		// {
		// 	lhs = 0.0;
		// 	for (auto i = t->begin(); i != t->end(); ++i)
		// 	{
		// 		lhs += *i;
		// 	}
		// 	model.addConstr(lhs <= 1.0);
		// }


		// objective function
		// action variable のtrue 最小化(最短プラン)
		// 
		// ** action cost対応の必要あり **

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

		//gurobiに解かせている線形計画問題の出力
		model.write("/Users/spinute/Dropbox/program/parse2zinc/tmp/output.lp");
		
		model.optimize();

		// plan output file in pddl format for VAL
		ofstream plan_ofs("/Users/spinute/Dropbox/program/parse2zinc/tmp/answer");
		int this_level = 0;
		for (auto t = level_Actions.begin(); t != level_Actions.end(); ++t)
		{
			for (auto i = t->begin(); i != t->end(); ++i)
			{
				if (i->get(GRB_DoubleAttr_X) == 1)
				{
					plan_ofs << "(" << i->get(GRB_StringAttr_VarName) << ")"<< endl;
				}
			}

			++this_level;
		}

		//action output(for human or log)
		
		// this_level = 0;
		// for (auto t = level_Actions.begin(); t != level_Actions.end(); ++t)
		// {
		// 	for (auto i = t->begin(); i != t->end(); ++i)
		// 	{
		// 		if (i->get(GRB_DoubleAttr_X) == 1)
		// 		{
		// 			cout << "action: in " << this_level << ": " <<
		// 		    	  i->get(GRB_StringAttr_VarName) << endl;
		// 		}
		// 	}
		
		// 	++this_level;
		// }

		//state output(for human or log)
		
		// this_level = 0;
		// for (auto t = level_env.begin(); t != level_env.end(); ++t)
		// {
		// 	for (auto i = t->begin(); i != t->end(); ++i)
		// 	{
		// 		for (auto j = i->begin(); j != i->end(); ++j)
		// 		{
		// 			if (j->get(GRB_DoubleAttr_X) == 1)
		// 			{
		// 				cout << "env: in " << this_level << ": " <<
		// 			    	  j->get(GRB_StringAttr_VarName) << endl;
		// 			}
		// 		}
		//
		// 	}
		// 	++this_level;
		// }

		//obj value output
		//cout << "Obj: " << model.get(GRB_DoubleAttr_ObjVal) << endl;
		
		// validate optimality, comparing with fastdownward
		ofstream objective_ofs("objval");
		objective_ofs << model.get(GRB_DoubleAttr_ObjVal) << endl;

	}
	// gurobiの最適化失敗はここに引っかかる
	catch(GRBException e) 
	{
		cout << "Error code: " << e.getErrorCode() <<", "<< e.getMessage() << endl;
		cout << "------------------" << endl;
		return false;
	}
	//その他
	catch(...) 
	{
		cout << "*special* Exeption during optimization." << endl;
	}

	return true;
}