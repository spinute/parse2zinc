#include <utility>
#include <fstream>
#include <sstream>

#include "/Library/gurobi563/mac64/include/gurobi_c++.h"

#include "solver.cc"

using namespace std;

inline int toInt(const string s) {int v; istringstream sin(s);sin>>v;return v;}
inline bool isComment(const string s){return s.empty() ? false : s.at(0)==';';}

//mainは分離する(sas,pddlで分岐する)
int main(int argc, char const *argv[])
{
	if (argc <= 1)
	{
		cout << "usage: generator <file>.pddl" << endl;
		return -1;
	}
	
	Problem *problem_ptr = parse(argv[1]);

	solve(problem_ptr);
	return 0;
}

void check_format(string str, string valid)
{

}

Problem* parse(const char* filename)
{
	static Problem problem;

	ifstream ifs(filename);
	if (ifs.fail())
	{
		cerr << "failure: ifstream can't open" << endl;
		exit(-1);
	}

	string tmp;

	// version section
	ifs >> tmp;	
	check_format(tmp, "begin_version");	
	ifs >> tmp;
	problem.version = toInt(tmp);
	ifs >> tmp;
	check_format(tmp, "end_version");

	//metric section
	ifs >> tmp;
	check_format(tmp, "begin_metric");
	ifs >> tmp;
	problem.metric = toInt(tmp);
	ifs >> tmp;
	check_format(tmp, "end_metric");

	//variable section
	ifs >> tmp;
	problem.n_vars = toInt(tmp);
	for (int i = 0; i < problem.n_vars; ++i){
		variable this_var;
		ifs >> tmp;
		check_format(tmp, "begin_variable");
		ifs >> tmp;
		this_var.name = tmp;
		ifs >> tmp;
		this_var.axiom_layer = toInt(tmp);
		ifs >> tmp;
		this_var.range = toInt(tmp);
		ifs.ignore(); //次はgetlineなので改行まで読み進める
		for (int i = 0; i < this_var.range; ++i){
			getline(ifs, tmp);
			this_var.atoms.push_back(tmp);
		}
		ifs >> tmp;
		check_format(tmp, "end_variable");

		problem.vars.push_back(this_var);
	}

	//mutex proup section
	ifs >> tmp;
	int n_mtxs = toInt(tmp);

	for (int i = 0; i < n_mtxs; ++i)
	{
		mutex_group this_mutexes;  //??
		ifs >> tmp;
		check_format(tmp, "begin_mutex_group");
		ifs >> tmp;
		this_mutexes.n = toInt(tmp);
		for (int i = 0; i < this_mutexes.n; ++i)
		{
			int_pair ip;
			ifs >> ip.first >> ip.second;
			this_mutexes.list.push_back(ip);
		}
		problem.mtxs.push_back(this_mutexes);
		ifs >> tmp;
		check_format(tmp, "end_mutex_group");
	}

	// initial state section
	ifs >> tmp;
	check_format(tmp, "begin_state");
	for (int i = 0; i < problem.n_vars; ++i)
	{
		int val;
		ifs >> val;
		problem.init.push_back(val);
	}
	ifs >> tmp;
	check_format(tmp, "end_state");

	// goal state section
	ifs >> tmp;
	check_format(tmp, "begin_goal");
	int n;
	ifs >> n;
	for (int i = 0; i < n; ++i){
		int_pair ip;
		ifs >> ip.first >> ip.second;
		problem.goal.push_back(ip);
	}
	ifs >> tmp;
	check_format(tmp, "end_goal");

	// operator section
	int n_ops;
	ifs >> n_ops;

	for (int i = 0; i < n_ops; ++i)
	{
		op this_operator;
		ifs >> tmp;
		check_format(tmp, "begin_operator");
		ifs.ignore();
		getline(ifs, this_operator.name);
		ifs >> tmp;
		this_operator.n_prevailCond = toInt(tmp);
		for (int i = 0; i < this_operator.n_prevailCond; ++i)
		{
			int_pair ip;
			ifs >> ip.first >> ip.second;
			this_operator.prevailConditions.push_back(ip);
		}
		ifs >> tmp;
		this_operator.n_effects = toInt(tmp);
		for (int i = 0; i < this_operator.n_effects; ++i)
		{
			effect this_effect;
			ifs >> tmp;
			this_effect.n_assoc_conditions = toInt(tmp);
			for (int i = 0; i < this_effect.n_assoc_conditions; ++i)
			{
				int_pair ip;
				ifs >> ip.first >> ip.second;
				this_effect.assoc_condition.push_back(ip);
			}
			ifs >> tmp;
			this_effect.var = toInt(tmp);
			ifs >> tmp;
			this_effect.preval = toInt(tmp);
			ifs >> tmp;
			this_effect.postval = toInt(tmp);

			this_operator.effects.push_back(this_effect);
		}
		ifs >> tmp;
		this_operator.cost = toInt(tmp);
		ifs >> tmp;
		check_format(tmp, "end_operator");
		problem.operators.push_back(this_operator);
	}

	ifs >> tmp;
	check_format(tmp, "0");

	return &problem;
}