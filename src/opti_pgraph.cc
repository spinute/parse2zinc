#include <map>
#include <vector>
#include <set>
#include <utility>

using namespace std;

#include "/Library/gurobi563/mac64/include/gurobi_c++.h"
#include "sas_generator.h"
#include "opti_pgraph.h"

bool
create_planningGraph(const Problem &problem)
{
	const int UNACTIVATED = -1;
	LevelPGVars level_pgv;
	level_pgv.resize(1);

	vector<int> accum_props;
	for (int var = 0; var < problem.n_vars; ++var)
	{
		int n_props = 0;
		for (int val = 0; val < problem.vars.at(var).range; ++val)
		{
			++n_props;

			if (problem.init.at(var) != val)
			{
				Prop p(var, val);
				level_pgv[0][p].push_back(UNACTIVATED);
			}
		}

		accum_props.push_back(n_props);
	}

	int t = 0;
	LevelPGOps level_pgop;
	while (true)
	{
		PGOps this_OpMtx;
		this_OpMtx.resize(problem.n_ops + n_props); // operators and maintains

		vector< vector<Prop> > this_pres;
		this_pres.resize(problem.n_ops);

		for (int op = 0; op < problem.n_ops; ++op)
			for (auto ef = problem.operators.at(op).effects.begin(); ef != problem.operators.at(op).effects.end(); ++ef)
				if (ef->preval != -1)
					this_pres.at(op).push_back(ef->preval);

		for (int i = problem.n_ops; i < problem.n_ops+problem.n_vars; ++i)
			this_pres.at()
	}

	return true; //dummy
}

int main(void)
{
	return 0;
}