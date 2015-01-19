#include <map>
#include <vector>
#include <set>
#include <utility>

using namespace std;

#include "/Library/gurobi563/mac64/include/gurobi_c++.h"
#include "sas_generator.h"
#include "opti_pgraph.h"

int
create_planningGraph(const Problem &problem)
{
	const int UNACTIVATED = -1;
	
	// int n_props = 0;
	pg_Props new_ps;
	// pg_Props old_ps;

	for (int var = 0; var < problem.n_vars; ++var)
	{
		for (int val = 0; val < problem.vars.at(var).range; ++val)
		{
			// ++n_props;

			Prop p(var, val);
			if (problem.init.at(var) != val)
				new_ps[p] = UNACTIVATED;
			else
				new_ps[p] = 0;
		}
	}

	int t = 1;
	pg_Actions acts;
	// int n_acts = 0;
	while (true)
	{
		// int n_acts_old = n_acts;
		// 	for (int val = 0; val < problem.vars.at(var).range; ++val)
		// 	{
		// 		Prop p(var, val);
		// 		//old_ps[p] = new_ps[p];
		// 	}
		// }

		for (int op = 0; op < problem.n_ops; ++op)
		{
			bool flg = true;
			vector<Prop> posts, pres;
			auto ope = problem.operators.at(op);
			for (auto ef = ope.effects.begin(); ef != ope.effects.end(); ++ef)
			{
				Prop post(ef->var, ef->postval);
				Prop pre(ef->var, ef->preval);
				if (ef->preval != -1)
					posts.push_back(post);
				else
				{
					if (new_ps[pre] == UNACTIVATED)
					{
						flg = false;
						break;
					}

					posts.push_back(post);
				}
			}

			for (auto p = ope.prevailConditions.begin(); p != ope.prevailConditions.end(); ++p)
			{
				if (new_ps[*p] == UNACTIVATED)
				{
					flg = false;
					break;
				}
			}

			if (flg)
			{
				// n_acts++;
				for (auto p = posts.begin(); p != posts.end(); ++p)
					new_ps[*p] = t;
			}
		}

		// if(n_acts == n_acts_old)
			// break;

		bool flg = false;
		for (auto p = problem.goal.begin(); p != problem.goal.end(); ++p)
			if (new_ps[*p] == UNACTIVATED)
			{
				flg = true;
				break;
			}
			
		if (flg)
			++t;
		else{
			// cout << "i'm here\n";
			break;
		}
	}

	// cout << "tttttttttttttttttt -> " << t << endl;

	return t;
}