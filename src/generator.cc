#include <iostream>
#include <fstream>
#include <utility>
#include <sstream>

#include "/Library/gurobi563/mac64/include/gurobi_c++.h"

#include "generator.h"

using namespace std;

inline int toInt(string s) {int v; istringstream sin(s);sin>>v;return v;}

void gurobi_solve(void);

int main(int argc, char const *argv[])
{
	if (argc <= 1){
		cout << "usage: generator <file>.sas" << endl;
		return -1;
	}
	
	parse(argv[1]);

	gurobi_solve();
	return 0;
}

void gurobi_solve(){
	try{
		GRBEnv env = GRBEnv();
		GRBModel model = GRBModel(env);

		// addVar(upper bound, lower bound, coefficient, type, name)
		GRBVar x = model.addVar(0.0, 1.0, 0.0, GRB_BINARY, "x");

		model.update();

		model.setObjective(2 * x, GRB_MAXIMIZE);
		// GRBLinExpr obj = 0.0;
		// obj += 2*x;
		// model.setObjective(obj, GRB_MAXIMIZE);

		model.addConstr(x <= 3, "c0");

		model.optimize();

		cout << x.get(GRB_StringAttr_VarName) << ": " << 
		        x.get(GRB_DoubleAttr_X) << endl;

		cout << "Obj: " << model.get(GRB_DoubleAttr_ObjVal) << endl;
	} catch(GRBException e) {
		cout << "Error code: " << e.getErrorCode() << endl;
		cout << e.getMessage() << endl;
	} catch(...) {
		cout << "Exeption during optimization." << endl;
	}
}

void check_format(string str, string valid){
	if (str!=valid){
		string status = "invalid tag: ";
		status.append(valid);
		perror(status.c_str());
		exit(EXIT_FAILURE);
	}
}

void parse(const char* filename){
	ifstream ifs(filename);
	if (ifs.fail()){
		cerr << "failure: ifstream open" << endl;
		exit(-1);
	}

	string tmp;

	// version section
	ifs >> tmp;	
	check_format(tmp, "begin_version");	
	ifs >> tmp;
	int version = toInt(tmp);
	ifs >> tmp;
	check_format(tmp, "end_version");

	//metric section
	ifs >> tmp;
	check_format(tmp, "begin_metric");
	ifs >> tmp;
	int metric = toInt(tmp);
	ifs >> tmp;
	check_format(tmp, "end_metric");

	//variable section
	ifs >> tmp;
	int n_vars = toInt(tmp);
	std::vector<variable> vars;
	for (int i = 0; i < n_vars; ++i){
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

		vars.push_back(this_var);
	}

	//mutex proup section
	ifs >> tmp;
	int n_mtxs = toInt(tmp);

	std::vector<mutex_group> mtxs;
	for (int i = 0; i < n_mtxs; ++i){
		mutex_group this_mutexes;  //??
		ifs >> tmp;
		check_format(tmp, "begin_mutex_group");
		ifs >> tmp;
		this_mutexes.n = toInt(tmp);
		for (int i = 0; i < this_mutexes.n; ++i){
			int_pair ip;
			ifs >> ip.first >> ip.second;
			this_mutexes.list.push_back(ip);
		}
		mtxs.push_back(this_mutexes);
		ifs >> tmp;
		check_format(tmp, "end_mutex_group");
	}

	// initial state section
	ifs >> tmp;
	check_format(tmp, "begin_state");
	std::vector<int> init;
	for (int i = 0; i < n_vars; ++i){
		int val;
		ifs >> val;
		init.push_back(val);
	}
	ifs >> tmp;
	check_format(tmp, "end_state");

	// goal state section
	ifs >> tmp;
	check_format(tmp, "begin_goal");
	int n;
	ifs >> n;
	std::vector<int_pair> goal;
	for (int i = 0; i < n; ++i){
		int_pair ip;
		ifs >> ip.first >> ip.second;
		goal.push_back(ip);
	}
	ifs >> tmp;
	check_format(tmp, "end_goal");

	// operator section
	int n_ops;
	ifs >> n_ops;

	for (int i = 0; i < n_ops; ++i){
		op this_operator;
		ifs >> tmp;
		check_format(tmp, "begin_operator");
		ifs.ignore();
		getline(ifs, this_operator.name);
		ifs >> tmp;
		this_operator.n_prevailCond = toInt(tmp);
		for (int i = 0; i < this_operator.n_prevailCond; ++i){
			int_pair ip;
			ifs >> ip.first >> ip.second;
			this_operator.prevailConditions.push_back(ip);
		}
		ifs >> tmp;
		this_operator.n_effects = toInt(tmp);
		for (int i = 0; i < this_operator.n_effects; ++i){
			effect this_effect;
			ifs >> tmp;
			this_effect.n_assoc_conditions = toInt(tmp);
			for (int i = 0; i < this_effect.n_assoc_conditions; ++i){
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
	}

	ifs >> tmp;
	check_format(tmp, "0");
}