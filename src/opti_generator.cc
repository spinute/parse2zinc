#include <iostream>
#include <cassert>
#include <map>
#include <utility>
#include <set>

#include "/Library/gurobi563/mac64/include/gurobi_c++.h"
#include "opti_generator.h"

#define ADDBINARY(name) model.addVar(0.0, 1.0, 0.0, GRB_BINARY, (name))

//todo: mapのイテレータがうまく動作しないのでPropでEnv内のGRBVarを指定できなくてダサい

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
		level_env.resize(level + 1);
		for (int t = 0; t <= level; ++t)
			for (int i = 0; i < problem.n_vars; ++i)
				for (int j = 0; j < problem.vars.at(i).range; ++j)
				{
					Prop p(i,j);
					string prop_name = problem.vars.at(i).atoms.at(j);
					level_env.at(t)[p] = create_SCVs(prop_name, model);
				}

		LevelActions level_actions;
		level_actions.resize(level);

		OpCostDict op_cost_dict;
		std::vector<GRBVar> v;
		for (int t = 0; t < level; ++t)
		{
			Actions tmp_acts;
			tmp_acts.resize(problem.n_ops);
			for (int i = 0; i < problem.n_ops; ++i)
			{
				GRBVar var = ADDBINARY(problem.operators.at(i).name);
				op_cost_dict[i] = problem.operators.at(i).cost;

				tmp_acts.at(i) = var;
			}
			level_actions.at(t) = tmp_acts;
		}

		model.update();

		GRBLinExpr obj = create_objfunc(level_actions, op_cost_dict, level, problem);
		model.setObjective(obj, GRB_MINIMIZE);

		OpSetMap addf;
		OpSetMap delf;
		OpSetMap pref;
		for (int op = 0; op < problem.n_ops; ++op)
		{
			for (auto ef = problem.operators.at(op).effects.begin(); ef != problem.operators.at(op).effects.end(); ++ef)
			{
				if (ef->preval == -1)
				{
					Prop p(ef->var, ef->postval);
					addf[p].insert(op);
					for (int val = 0; val < problem.vars.at(ef->var).range; ++val)
						if (ef->postval != val)
						{
							Prop p(ef->var, val);
							delf[p].insert(op);
						}
				}
				else
				{
					Prop p1(ef->var, ef->preval);
					pref[p1].insert(op);
					if (ef->preval != ef->postval)
						delf[p1].insert(op);
					Prop p2(ef->var, ef->postval);
					addf[p2].insert(op);
				}
			}
			for (int i = 0; i < problem.operators.at(op).n_prevailCond ; ++i)
			{
				int_pair pair = problem.operators.at(op).prevailConditions.at(i);
				Prop p(pair.first, pair.second);
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
				Prop p(idx, val);
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
		for (auto itr = problem.goal.begin(); itr != problem.goal.end(); ++itr)
		{
			Prop p(itr->first, itr->second);
			model.addConstr(goal_env[p][ADD] + goal_env[p][PREADD]+ goal_env[p][MAINTAIN] >= 1, "c4");
		}
		

		for (int t = 1; t <= level; ++t)
		{
			Env this_env = level_env.at(t);
			Actions this_actions = level_actions.at(t-1);
			for (int i = 0; i < problem.n_vars; ++i)
				for (int j = 0; j < problem.vars.at(i).range; ++j)
				{
					GRBLinExpr rhs = 0.0;

					Prop p(i, j);
					ActionIndex *add_sub_pref = create_substitution(addf[p], pref[p]);
					ActionIndex *del_sub_pref = create_substitution(delf[p], pref[p]);
					ActionIndex *pre_sub_delf = create_substitution(pref[p], delf[p]);
					ActionIndex *pre_prod_delf = create_product(delf[p], pref[p]);

					for (auto op = add_sub_pref->begin(); op != add_sub_pref->end(); ++op)
					{
						rhs += this_actions.at(*op);
						model.addConstr(this_env[p][ADD] >= this_actions.at(*op), "c6");
					}
					model.addConstr(this_env[p][ADD] <= rhs, "c5");
					rhs = 0.0;
					for (auto op = del_sub_pref->begin(); op != del_sub_pref->end(); ++op)
					{
						rhs += this_actions.at(*op);
						model.addConstr(this_env[p][DEL] >= this_actions.at(*op), "c8");
					}
					model.addConstr(this_env[p][DEL] <= rhs, "c7");
					rhs = 0.0;
					for (auto op = pre_sub_delf->begin(); op != pre_sub_delf->end(); ++op)
					{
						// c9がない！
						rhs += this_actions.at(*op);
						model.addConstr(this_env[p][PREADD] >= this_actions.at(*op), "c10");
					}
					model.addConstr(this_env[p][PREADD] <= rhs, "c9");
					rhs = 0.0;
					for (auto op = pre_prod_delf->begin(); op != pre_prod_delf->end(); ++op)
						rhs += this_actions.at(*op);
					model.addConstr(this_env[p][PREDEL] == rhs, "c11");

					delete add_sub_pref;
					delete del_sub_pref;
					delete pre_sub_delf;
					delete pre_prod_delf;
				}
		}

		// 同じくmapのイテレータがうまく使えたらi,jのループは不要
		for (int i = 0; i < problem.n_vars; ++i)
			for (int j = 0; j < problem.vars.at(i).range; ++j)
			{
				Prop p(i, j);
				GRBLinExpr lhs;
				GRBLinExpr rhs;
				SCVs scvs;
				for (auto env_itr = level_env.begin(); env_itr != level_env.end(); ++env_itr)
				{
					scvs = (*env_itr)[p];
					model.addConstr(scvs[ADD] + scvs[MAINTAIN] + scvs[DEL] + scvs[PREDEL] <= 1, "c12");
					model.addConstr(scvs[PREADD] + scvs[MAINTAIN] + scvs[DEL] + scvs[PREDEL] <= 1, "c13");
				
					lhs = 0.0;
					lhs += scvs[PREADD] + scvs[MAINTAIN] + scvs[PREDEL]; // t
					if (env_itr != level_env.begin())
						model.addConstr(lhs <= rhs, "c14");
					rhs = 0.0;
					rhs += scvs[PREADD] + scvs[ADD] + scvs[MAINTAIN]; // t-1
				}
			}

		model.update();
		model.write("/Users/spinute/Dropbox/program/parse2zinc/tmp/output.lp");
		model.optimize();

		ofstream ans_ofs("/Users/spinute/Dropbox/program/parse2zinc/tmp/answer");

		for (auto t = level_actions.begin(); t != level_actions.end(); ++t)
			for (auto i = t->begin(); i != t->end(); ++i)
				if (i->get(GRB_DoubleAttr_X) == 1)
					ans_ofs << "(" << i->get(GRB_StringAttr_VarName) << ")"<< endl;

		
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

ActionIndex *
create_product(const set<int> &lset, const set<int> &rset)
{
	set<int> *ans = new set<int>();
	for (auto itr = rset.begin(); itr != rset.end(); ++itr)
		if (lset.find(*itr) != lset.end())
			ans->insert(*itr); // insertとかしてるけどsetはイテレータ死なないんだっけ？(itr++とかで回避できた気がする)
	return ans;
};

ActionIndex *
create_substitution(const set<int> &lset, const set<int> &rset)
{
	set<int> *ans  = new set<int>(lset);
	for (auto itr = rset.begin(); itr != rset.end(); ++itr)
		ans->erase(*itr);
	return ans;
};

static SCVs &
create_SCVs(const string &prop_name, GRBModel &model)
{
	SCVs *this_SCVs = new SCVs();
	(*this_SCVs)[MAINTAIN] = ADDBINARY(prop_name + "_maintain");
	(*this_SCVs)[ADD]      = ADDBINARY(prop_name + "_add");
	(*this_SCVs)[PREADD]   = ADDBINARY(prop_name + "_preadd");
	(*this_SCVs)[DEL]      = ADDBINARY(prop_name + "_del");
	(*this_SCVs)[PREDEL]   = ADDBINARY(prop_name + "_predel");
	return *this_SCVs;
}

static GRBLinExpr &
create_objfunc(const LevelActions &level_actions, OpCostDict &coefs, const int level, const Problem &problem)
{
	GRBLinExpr *obj = new GRBLinExpr();

	for (int t = 0; t < level; ++t)
		if (problem.metric == 1)
			for (int i = 0; i < problem.n_ops; ++i)
				*obj += coefs[i] * level_actions.at(t).at(i);
		else
			for (int i = 0; i < problem.n_ops; ++i)
				*obj += level_actions.at(t).at(i);

	return *obj;
}