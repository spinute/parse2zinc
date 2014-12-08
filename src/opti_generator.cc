#include <iostream>
#include <cassert>
#include <map>
#include <utility>
#include <set>

#include "/Library/gurobi563/mac64/include/gurobi_c++.h"
#include "opti_generator.h"

#define ADDBINARY(name) model.addVar(0.0, 1.0, 0.0, GRB_BINARY, (name))

using namespace std;

bool
optiplan_solve(const int level, const Problem &problem)
{
	try
	{
		GRBEnv env = GRBEnv();
		GRBModel model = GRBModel(env);

		// add variables
		LevelEnv  level_env;
		for (int t = 0; t <= level; ++t)
		{
			Env tmp_env;
			for (int i = 0; i < problem.n_vars; ++i)
				for (int j = 0; j < problem.vars.at(i).range; ++j)
				{
					Prop p = gen_prop(i,j);
					string prop_name = problem.vars.at(i).atoms.at(j);
					SCVs *this_SCVs_ptr = gen_SCVs(prop_name, model);
					tmp_env[p] = *this_SCVs_ptr;
				}
			level_env.push_back(tmp_env);
		}

		LevelActions level_Actions;

		OpCostDict op_cost_dict;
		std::vector<GRBVar> v;
		for (int t = 0; t <= level; ++t)
		{
			Actions tmp_acts;
			for (int i = 0; i < problem.n_ops; ++i)
			{
				GRBVar var = ADDBINARY(problem.operators.at(i).name);
				op_cost_dict[i] = problem.operators.at(i).cost;

				tmp_acts.push_back(var);
			}
			level_Actions.push_back(tmp_acts);
		}

		model.update();

		GRBLinExpr *obj_ptr = init_objfunc(level_Actions, op_cost_dict, level, problem);
		model.setObjective(*obj_ptr, GRB_MINIMIZE);

		OpSet addf;
		OpSet delf;
		OpSet pref;
		for (int op = 0; op < problem.n_ops; ++op)
		{
			for (auto ef = problem.operators.at(op).effects.begin(); ef != problem.operators.at(op).effects.end(); ++ef)
			{
				Prop p;
				assert(ef->preval != ef->postval); //こんなものは無意味なので無いと仮定

				if (ef->preval == -1)
				{
					p = gen_prop(ef->var, ef->postval);
					addf[p].insert(op);
				}
				else
				{
					p = gen_prop(ef->var, ef->preval);
					delf[p].insert(op);
					pref[p].insert(op);
					p = gen_prop(ef->var, ef->postval);
					addf[p].insert(op);
				}
			}
			for (auto i = 0; i < problem.operators.at(op).n_prevailCond ; ++i)
			{
				int_pair pair = problem.operators.at(op).prevailConditions.at(i);
				Prop p = gen_prop(pair.first, pair.second);
				pref[p].insert(op);
				addf[p].insert(op);
			}
		}

		//map のiteratorがうまく使えない
		Env start_env = level_env.at(0);
		int idx = 0;
		for (auto s = problem.init.begin(); s != problem.init.end(); ++s)
		{
			for (int val = 0; val < problem.vars.at(idx).range; ++val)
			{
				Prop p = gen_prop(idx, val);
				if (*s == val)
					model.addConstr(start_env[p][ADD] == 1, "c2");
				else
				{
					model.addConstr(start_env[p][ADD] == 0, "c3");
					model.addConstr(start_env[p][MAINTAIN] == 0, "c3");
					model.addConstr(start_env[p][PREADD] == 0, "c3");
				}
			}
			++idx;
		}

		Env goal_env = level_env.at(level);
		for (auto i = problem.goal.begin(); i != problem.goal.end(); ++i)
		{
			Prop p = gen_prop(i->first, i->second);
			model.addConstr(goal_env[p][ADD] + goal_env[p][PREADD]+ goal_env[p][MAINTAIN] >= 1, "c4");
		}

		for (auto env_itr = level_env.begin(); env_itr != level_env.end(); ++env_itr)
		{
			for (int i = 0; i < problem.n_vars; ++i)
			{
				for (int j = 0; j < problem.vars.at(i).range; ++j)
				{
					Prop p = gen_prop(i, j);
					SCVs scvs = (*env_itr)[p];
					model.addConstr(scvs[ADD] + scvs[MAINTAIN] + scvs[DEL] + scvs[PREDEL] <= 1, "c12");
					model.addConstr(scvs[PREADD] + scvs[MAINTAIN] + scvs[DEL] + scvs[PREDEL] <= 1, "c13");
				
					GRBLinExpr rhs = 0.0;
					GRBLinExpr lhs = 0.0;
					lhs += scvs[PREADD] + scvs[MAINTAIN] + scvs[PREDEL];
					if (env_itr != level_env.begin())
						model.addConstr(lhs <= rhs);
					rhs += scvs[PREADD] + scvs[ADD] + scvs[MAINTAIN];
				}
			}
		}



		model.update();
		model.write("/Users/spinute/Dropbox/program/parse2zinc/tmp/output.lp");
		model.optimize();

		ofstream ans_ofs("/Users/spinute/Dropbox/program/parse2zinc/tmp/answer");
		int this_level = 0;
		for (auto t = level_Actions.begin(); t != level_Actions.end(); ++t)
		{
			for (auto i = t->begin(); i != t->end(); ++i)
				if (i->get(GRB_DoubleAttr_X) == 1)
					ans_ofs << "(" << i->get(GRB_StringAttr_VarName) << ")"<< endl;

			++this_level;
		}
		
		ofstream objective_ofs("objval");
		objective_ofs << model.get(GRB_DoubleAttr_ObjVal) << endl;
	}
	catch(GRBException e) 
	{
		cout << "Error code: " << e.getErrorCode() <<", "<< e.getMessage() << endl;
		cout << "------------------" << endl;
		return false;
	}
	catch(...) 
	{
		cout << "*special* Exeption during optimization." << endl;
	}

	return true;
}

static Prop
gen_prop(const int var, const int val)
{
	Prop p(var, val);
	return p;
}

static SCVs *
gen_SCVs(const string& prop_name, GRBModel &model)
{
	static SCVs this_SCVs;
	this_SCVs[MAINTAIN] = ADDBINARY(prop_name + "_maintain");
	this_SCVs[ADD]      = ADDBINARY(prop_name + "_add");
	this_SCVs[PREADD]   = ADDBINARY(prop_name + "_preadd");
	this_SCVs[DEL]      = ADDBINARY(prop_name + "_del");
	this_SCVs[PREDEL]   = ADDBINARY(prop_name + "predel");
	return &this_SCVs;
}

static GRBLinExpr *
init_objfunc(const LevelActions &level_Actions, OpCostDict &coefs, const int level, const Problem &problem)
{
	static GRBLinExpr obj = 0.0;
	for (int t = 0; t < level; ++t)
		if (problem.metric == 1)
			for (int i = 0; i < problem.n_ops; ++i)
				obj += coefs[i] * level_Actions.at(t).at(i);
		else
			for (int i = 0; i < problem.n_ops; ++i)
				obj += level_Actions.at(t).at(i);

	return &obj;
}