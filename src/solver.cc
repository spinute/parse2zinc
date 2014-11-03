#include <iostream>

#include "/Library/gurobi563/mac64/include/gurobi_c++.h"

#include "generator.h"

using namespace std;

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

		// addVar(upper bound, lower bound, coefficient, type, name)

		typedef pair<GRBVar, int> state_time;
		vector<state_time> grbVars;
		// add vars in sas format variable section
		for (auto i = problem.vars.begin(); i != problem.vars.end(); ++i)
		{
			model.addVar(
				(double)0, (double)(*i).range-1, 0.0, GRB_INTEGER, (*i).name);
			
		}



		model.update();

		GRBLinExpr obj = 0.0;
		for (auto i = grbVars.begin(); i != grbVars.end(); ++i)
		{
			obj += (*i);
		}
		model.setObjective(obj, GRB_MAXIMIZE);

		
		model.addConstr(x <= 3, "c0");

		model.optimize();

		for (auto i = grbVars.begin(); i != grbVars.end(); ++i)
		{
			cout << (*i).get(GRB_StringAttr_VarName) << ": " << 
			        (*i).get(GRB_DoubleAttr_X) << endl;
		}

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