#include <iostream>

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

	const int MAX_DEPTH = 2;

	// iterative deepening
	for (int level = 1; level <= MAX_DEPTH; ++level)
	{
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
				for (int i = 0; i < this_var.range; ++i)
				{
					tmp_var.push_back(model.addVar(0.0, 1.0, 0.0, GRB_BINARY));
				}
				tmp_env.push_back(tmp_var);
			}
			level_env.push_back(tmp_env);
		}

		model.update();

		// objective function
		// action variable のtrue 最小化
		// にしたいけど今はダミー

		GRBLinExpr obj = 0.0;

		for (auto t = level_env.begin(); t < level_env.end(); ++t)
		{
			for (auto i = t->begin(); i != t->end(); ++i)
			{
				for (auto j = i->begin(); j != i->end(); ++j)
				{
					obj += *j;
				}
			}
		}
		model.setObjective(obj, GRB_MAXIMIZE);
		
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
			Actions tmp_act;
			for (int i = 0; i < problem.n_ops; ++i)
			{
				tmp_act.push_back(model.addVar(0.0, 1.0, 0.0, GRB_BINARY));
			}
			level_Actions.push_back(tmp_act);
		}

		// constraint
		// sas format operator section
		
		// for (auto t = .begin(); t != .end(); ++t)
		// {
			
		// }


		model.update();
		model.write("output.lp");
		model.optimize();

		// output answers
		// extract planning problem answers from LP
		

		// for (auto i = grbVars.begin(); i != grbVars.end(); ++i)
		// {
		// 	cout << (*i).get(GRB_StringAttr_VarName) << ": " << 
		// 	        (*i).get(GRB_DoubleAttr_X) << endl;
		// }

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