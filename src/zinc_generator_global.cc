#include <iostream>
#include <cassert>
#include <map>
#include <utility>
#include <set>

#include "zinc_generator.h"

#define ADDBINARY(name) model.addVar(0.0, 1.0, 0.0, GRB_BINARY, (name))

using namespace std;

ActionIndex *
create_product(const set<int> &lset, const set<int> &rset)
{
	set<int> *ans = new set<int>();
	for (auto itr = rset.begin(); itr != rset.end(); ++itr)
		if (lset.find(*itr) != lset.end())
			ans->insert(*itr);
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

bool
zinc_gen(const int level, const Problem &problem)
{
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

	cout << "array[1.." << problem.n_vars << "] of int: n_vals = [";
	for (int i = 0; i < problem.n_vars; i++)
	{
		cout << problem.vars.at(i).range-1;
		if (i != problem.n_vars-1)
			cout << ", ";
	}
	cout << "];\n";

	// なぜかnameだけ1オリジンじゃないと怒られる
	cout << "array[1.." << problem.n_ops << "] of string: name = [";
	for (int i = 0; i < problem.n_ops; i++)
	{
		cout << "\"(" << problem.operators.at(i).name << ")\"";
		if (i != problem.n_ops-1)
			cout << ", ";
	}
	cout << "];\n";

	cout << "array[0.." << level-1 << ","
	     << "0.." << problem.n_ops-1 << "]"
		 << " of var 0..1: actions;"<< endl;

	for (int i = 0; i < problem.n_vars; ++i)
	{
		cout << "array[0.." << level-1 << ","
	         << "0.." << problem.vars.at(i).range-1 << "]"
			 << " of var 0..1: add_" << i << ";\n";
		cout << "array[0.." << level-1 << ","
	         << "0.." << problem.vars.at(i).range-1 << "]"
			 << " of var 0..1: del_" << i << ";\n";
		cout << "array[0.." << level-1 << ","
		     << "0.." << problem.vars.at(i).range-1 << "]"
			 << " of var 0..1: preadd_" << i << ";\n";
		cout << "array[0.." << level-1 << ","
		     << "0.." << problem.vars.at(i).range-1 << "]"
			 << " of var 0..1: predel_" << i << ";\n";
		cout << "array[0.." << level-1 << ","
		     << "0.." << problem.vars.at(i).range-1 << "]"
			 << " of var 0..1: maintain_" << i << ";\n";
		cout << "array [0.." << level-1 << ","
			 << "0.." << problem.vars.at(i).range-1 << "] of var int: sum_" << i << ";\n"; 

		cout << "constraint forall(t in 0.." << level-1 << ", j in 0.." << problem.vars.at(i).range-1 << ")("
			 << "add_" << i << "[t,j] + preadd_" << i << "[t,j] + maintain_" << i << "[t,j] = sum_" << i << "[t,j] );\n";
	}	

	cout << "predicate among_diff_0(var int: nvar, array[int] of var int: x)=" 
	<< "  nvar = sum(i in index_set(x)) (bool2int(x[i] != 0) );" << endl;

	cout << "include \"among.mzn\";\n";
	for (int i = 0; i < problem.n_vars; ++i)
	{
		cout << "constraint forall(t in 0.." << level-1 << ")("
			 // << "among(n_vals[" << i+1 << "]-1, [sum_" << i << "[t, j] | j in 0..n_vals[" << i+1 << "]], {0}));\n";
			 << "among_diff_0(1, [sum_" << i << "[t, j] | j in 0..n_vals[" << i+1 << "]]));\n";
	}

	int idx = 0;
	for (auto s = problem.init.begin(); s != problem.init.end(); ++s)
	{
		for (int val = 0; val < problem.vars.at(idx).range; ++val)
		{
			if (*s == val)
				cout << "constraint add_" << idx << "[0," << val << "] = 1;" << endl;
			else
			{
				cout << "constraint add_" << idx << "[0," << val << "] = 0;" << endl;
				cout << "constraint maintain_" << idx << "[0," << val << "] = 0;" << endl;
				cout << "constraint preadd_" << idx << "[0," << val << "] = 0;" << endl;
			}
		}
		++idx;
	}

	for (auto itr = problem.goal.begin(); itr != problem.goal.end(); ++itr)
	{
		cout << "constraint add_" << itr->first << "[" << level-1 << "," << itr->second << "] + " << 
		                   "preadd_" << itr->first << "[" << level-1 << "," << itr->second << "] + " <<
		                   "maintain_" << itr->first << "[" << level-1 << "," << itr->second << "] " <<
		                   " >= 1;" << endl;
	}

	for (int i = 0; i < problem.n_vars; ++i)
		for (int j = 0; j < problem.vars.at(i).range; ++j)
		{
			Prop p(i, j);
			ActionIndex *add_sub_pref = create_substitution(addf[p], pref[p]);
			ActionIndex *del_sub_pref = create_substitution(delf[p], pref[p]);
			ActionIndex *pre_sub_delf = create_substitution(pref[p], delf[p]);
			ActionIndex *pre_prod_delf = create_product(delf[p], pref[p]);

			// c5
			for (auto op = add_sub_pref->begin(); op != add_sub_pref->end(); ++op)
			{
				cout << "constraint forall (t in 1.." << level-1 << ")(" <<
					" actions[t," << *op << "]" <<
					" - add_" << i << "[t," << j << "] <= 0);" << endl;
			}

			// c6
			cout << "constraint forall (t in 1.." << level-1 << ") (0" ;
			for (auto op = add_sub_pref->begin(); op != add_sub_pref->end(); ++op)
				cout << " + actions[t," << *op << "]" ;

			cout << " - add_" << i << "[t," << j << "] >= 0);" << endl;

			// c7
			for (auto op = del_sub_pref->begin(); op != del_sub_pref->end(); ++op)
			{
				cout << "constraint forall (t in 1.." << level-1 << ")(" << 
					 " actions[t," << *op << "]" <<
					 " - del_" << i << "[t," << j << "] <= 0);" << endl;
			}

			// c8
			cout << "constraint forall (t in 1.." << level-1 << ") (0" ;
			for (auto op = del_sub_pref->begin(); op != del_sub_pref->end(); ++op)
				cout << " + actions[t," << *op << "]" ;

			cout << " - del_" << i << "[t," << j << "] >= 0);" << endl;

			// c9
			for (auto op = pre_sub_delf->begin(); op != pre_sub_delf->end(); ++op)
			{
				cout << "constraint forall (t in 1.." << level-1 << ")(" << 
					 " actions[t," << *op << "]" <<
					 " - preadd_" << i << "[t," << j << "] <= 0);" << endl;
			}

			// c10
			cout << "constraint forall (t in 1.." << level-1 << ") (0" ;
			for (auto op = pre_sub_delf->begin(); op != pre_sub_delf->end(); ++op)
				cout << " + actions[t," << *op << "]" ;

			cout << " - preadd_" << i << "[t," << j << "] >= 0);" << endl;

			// c11
			cout << "constraint forall (t in 1.." << level-1 << ") (0" ;
			for (auto op = pre_prod_delf->begin(); op != pre_prod_delf->end(); ++op)
				cout << " + actions[t," << *op << "]" ;

			cout << " - predel_" << i << "[t," << j << "] = 0);" << endl;

			delete add_sub_pref;
			delete del_sub_pref;
			delete pre_sub_delf;
			delete pre_prod_delf;
		}

	// TODO forの削減 i
	for (int i = 0; i < problem.n_vars; ++i)
	{
		cout << "constraint forall (j in 0..n_vals[" << i+1 << "], t in 0.." << level-1 << ")(" <<
				" add_" << i << "[t,j]" <<
		        " + maintain_" << i << "[t,j]" << 
		        " + del_" << i << "[t,j]" << 
		        " + predel_" << i << "[t,j] <= 1);" << endl;

		cout << "constraint forall (j in 0..n_vals[" << i+1 << "], t in 0.." << level-1 << ")(" <<
				" preadd_" << i << "[t,j]" <<
		        " + maintain_" << i << "[t,j]" << 
		        " + del_" << i << "[t,j]" << 
		        " + predel_" << i << "[ t,j] <= 1);" << endl;

		cout << "constraint forall (j in 0..n_vals[" << i+1 << "], t in 0.." << level-2 <<")(" <<
			" preadd_" << i << "[t+1,j]" <<
	        " + maintain_" << i << "[t+1,j]" << 
	        " + predel_" << i << "[t+1,j]" <<
	        " - add_" << i << "[t,j]" <<
	        " - preadd_" << i << "[t,j]" <<
	        " - maintain_" << i << "[t,j] <= 0);" << endl;
	}

	cout << "solve satisfy;" << endl;
	cout <<
		"output [name[i+1] ++ \"\\n\"" << endl <<
		"| t in 0.." << level-1 << ", i in 0.." << problem.n_ops-1 << " where fix(actions[t,i]) == 1];" << endl;

	return false;
}