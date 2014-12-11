#include <iostream>
#include <cassert>
#include <map>
#include <utility>
#include <set>

#include "/Library/gurobi563/mac64/include/gurobi_c++.h"
#include "opti_generator.h"

#define ADDBINARY(name) model.addVar(0.0, 1.0, 0.0, GRB_BINARY, (name))

//todo: C++でテンポラリオブジェクトをコピーで返すのはパフォーマンス悪くない？
//参照で返すならstatic宣言するとメモリリークになるけどどうにかする方法はある？

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

		LevelActions level_actions;

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
			level_actions.push_back(tmp_acts);
		}

		model.update();

		GRBLinExpr *obj_ptr = init_objfunc(level_actions, op_cost_dict, level, problem);
		model.setObjective(*obj_ptr, GRB_MINIMIZE);

		OpSetMap addf;
		OpSetMap delf;
		OpSetMap pref;
		for (int op = 0; op < problem.n_ops; ++op)
		{
			for (auto ef_itr = problem.operators.at(op).effects.begin(); ef_itr != problem.operators.at(op).effects.end(); ++ef_itr)
			{
				Prop p;
				assert(ef_itr->preval != ef_itr->postval); //こんなものは無意味なので無いと仮定

				if (ef_itr->preval == -1)
				{
					p = gen_prop(ef_itr->var, ef_itr->postval);
					addf[p].insert(op);
				}
				else
				{
					p = gen_prop(ef_itr->var, ef_itr->preval);
					delf[p].insert(op);
					pref[p].insert(op);
					p = gen_prop(ef_itr->var, ef_itr->postval);
					addf[p].insert(op);
				}
			}
			for (auto itr = 0; itr < problem.operators.at(op).n_prevailCond ; ++itr)
			{
				int_pair pair = problem.operators.at(op).prevailConditions.at(itr);
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
		for (auto itr = problem.goal.begin(); itr != problem.goal.end(); ++itr)
		{
			Prop p = gen_prop(itr->first, itr->second);
			model.addConstr(goal_env[p][ADD] + goal_env[p][PREADD]+ goal_env[p][MAINTAIN] >= 1, "c4");
		}

		for (int t = 1; t <= level; ++t)
		{
			Env this_env = level_env.at(t);
			Actions this_actions = level_actions.at(t);
			for (int i = 0; i < problem.n_vars; ++i)
				for (int j = 0; j < problem.vars.at(i).range; ++j)
				{
					GRBLinExpr rhs = 0.0;

					Prop p = gen_prop(i, j);
					ActionIndex add_sub_pref = substitute(addf[p], pref[p]);
					ActionIndex del_sub_pref = substitute(delf[p], pref[p]);
					ActionIndex pre_sub_delf = substitute(pref[p], delf[p]);
					ActionIndex pre_prod_delf = capify(addf[p], pref[p]);

					for (auto op_itr = add_sub_pref.begin(); op_itr != add_sub_pref.end(); ++op_itr)
					{
						rhs += this_actions.at(*op_itr);
						model.addConstr(this_env[p][ADD] >= this_actions.at(*op_itr), "c5");
					}
					model.addConstr(this_env[p][ADD] <= rhs, "c6");
					rhs = 0.0;
					for (auto op_itr = del_sub_pref.begin(); op_itr != del_sub_pref.end(); ++op_itr)
					{
						rhs += this_actions.at(*op_itr);
						model.addConstr(this_env[p][DEL] <= this_actions.at(*op_itr), "c7");
					}
					rhs = 0.0;
					model.addConstr(this_env[p][DEL] <= rhs, "c8");
					for (auto op_itr = pre_sub_delf.begin(); op_itr != pre_sub_delf.end(); ++op_itr)
					{
						rhs += this_actions.at(*op_itr);
						model.addConstr(this_env[p][PREADD] <= this_actions.at(*op_itr), "c9");
					}
					rhs = 0.0;
					model.addConstr(this_env[p][PREADD] <= rhs, "c10");
					for (auto op_itr = pre_prod_delf.begin(); op_itr != pre_prod_delf.end(); ++op_itr)
						rhs += this_actions.at(*op_itr);
					model.addConstr(this_env[p][PREDEL] == rhs, "c11");
				}
		}

		// 同じくmapのイテレータがうまく使えたらi,jのループは不要
		for (auto env_itr = level_env.begin(); env_itr != level_env.end(); ++env_itr)
			for (int i = 0; i < problem.n_vars; ++i)
				for (int j = 0; j < problem.vars.at(i).range; ++j)
				{
					Prop p = gen_prop(i, j);
					SCVs scvs = (*env_itr)[p];
					model.addConstr(scvs[ADD] + scvs[MAINTAIN] + scvs[DEL] + scvs[PREDEL] <= 1, "c12");
					model.addConstr(scvs[PREADD] + scvs[MAINTAIN] + scvs[DEL] + scvs[PREDEL] <= 1, "c13");
				
					GRBLinExpr rhs = 0.0;
					GRBLinExpr lhs = 0.0;
					lhs += scvs[PREADD] + scvs[MAINTAIN] + scvs[PREDEL]; // t
					if (env_itr != level_env.begin())
						model.addConstr(lhs <= rhs, "c14");
					rhs += scvs[PREADD] + scvs[ADD] + scvs[MAINTAIN]; // t-1
				}

		model.update();
		model.write("/Users/spinute/Dropbox/program/parse2zinc/tmp/output.lp");
		model.optimize();

		ofstream ans_ofs("/Users/spinute/Dropbox/program/parse2zinc/tmp/answer");
		int this_level = 0;
		for (auto t = level_actions.begin(); t != level_actions.end(); ++t)
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

ActionIndex &
capify(const set<int> &lset, const set<int> &rset)
{
	static set<int> ans;
	for (auto itr = rset.begin(); itr != rset.end(); ++itr)
		if (lset.find(*itr) != lset.end())
			ans.insert(*itr);
	return ans;
};

ActionIndex &
substitute(const set<int>& lset, const set<int>& rset)
{
	static set<int> ans(lset);
	for (auto itr = rset.begin(); itr != rset.end(); ++itr)
		ans.erase(*itr);
	return ans;
};

static Prop &
gen_prop(const int var, const int val)
{
	Prop p(var, val);
	return p;
}

static SCVs &
gen_SCVs(const string& prop_name, GRBModel &model)
{
	new this_SCVs = ;
	this_SCVs[MAINTAIN] = ADDBINARY(prop_name + "_maintain");
	this_SCVs[ADD]      = ADDBINARY(prop_name + "_add");
	this_SCVs[PREADD]   = ADDBINARY(prop_name + "_preadd");
	this_SCVs[DEL]      = ADDBINARY(prop_name + "_del");
	this_SCVs[PREDEL]   = ADDBINARY(prop_name + "predel");
	return &this_SCVs;
}

static GRBLinExpr &
init_objfunc(const LevelActions &level_actions, OpCostDict &coefs, const int level, const Problem &problem)
{
	static GRBLinExpr obj = 0.0;

	for (int t = 0; t <= level; ++t)
		if (problem.metric == 1)
			for (int i = 0; i < problem.n_ops; ++i)
				obj += coefs[i] * level_actions.at(t).at(i);
		else
			for (int i = 0; i < problem.n_ops; ++i)
				obj += level_actions.at(t).at(i);

	cout << "i'm here.\n";
	return &obj;
}