#include <iostream>

#include "/Library/gurobi563/mac64/include/gurobi_c++.h"

#include "generator.h"

using namespace std;

typedef vector<GRBVar> States;

inline void double_vloop(vector<States>){}
//関数ポインタ使えば書けるのでは

void solve(Problem* problem_ptr){ //rapper function for solver
	
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

bool gurobi_solve(int level, Problem* problem_ptr)
{
	Problem problem = *problem_ptr;
	try
	{
		GRBEnv env = GRBEnv();
		GRBModel model = GRBModel(env);

		// addVar(upper bound, lower bound, coefficient, type, name(optional))

		// add vars in sas format variable section
		vector<States>  level_state(level);
		for (auto t=level_state.begin(); t<level_state.end(); ++t)
		{
			for (auto i = problem.vars.begin(); i != problem.vars.end(); ++i)
			{
				(*t).push_back(model.addVar((double)0,
				   (double)(*i).range-1, 0.0, GRB_INTEGER));
			}
		}

		model.update();

		// 仮，変数値の最大化になっているが特に意味は無い
		GRBLinExpr obj = 0.0;
		for (auto t = level_state.begin(); t < level_state.end(); ++t)
		{
			for (auto i = (*t).begin(); i != (*t).end(); ++i)
			{
				obj += (*i);
			}
		}
		model.setObjective(obj, GRB_MAXIMIZE);
		
		// model.addConstr(x <= 3, "c0");

		model.optimize();

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
	}
	catch(...) 
	{
		cout << "Exeption during optimization." << endl;
	}

	return true;
}