#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <map>
#include <utility>

using namespace std;

typedef pair<int, int> int_pair;

void parse();

/*
 fastdownward translator sas format

*/

// sasフォーマットのvariable sectionに対応する構造体
struct variable{
	string name;
	bool axiom_layer;
	int range;
	string atom;
};

// sasフォーマットのmutex sectionに対応する構造体
struct mutex_group{
	int n;
	vector<int_pair> list;
};

// correspond to operator section of sas format
struct operators{
	int n_prevailCond;
	vector<int_pair> prevailConditions;
	int n_effects;
	vector<int> effects;
	int cost; // optional <- metric is 1
};

struct axiom{
	int n_axioms;
	int n_conditions;
	vector<int_pair> conditions;
	pair<int, int_pair> axiom;
};

class problem{
public:
	problem();
	~problem();
	int version, metric, n_vars, n_ops;
	vector<variable> vars;
	vector<mutex_group> mtx;
	vector<variable> init;
	variable goal;
};

int main(int argc, char const *argv[])
{
	if (argc <= 1){
		cout << "usage: generator <file>.sas" << endl;
		return -1;
	}
	
	ifstream fin(argv[2]);

	parse();
	return 0;
}

void parse(){

	// vector<pair<string, string> > labels = {
	// 	("begin_version"    , "end_version"),
	// 	("begin_metric"     , "end_metric"),
	// 	("begin_variable"   , "end_variable"),
	// 	("begin_mutex_group", "end_mutex_group"),
	// 	("begin_state"      , "end_state"),
	// 	("begin_goal"       , "end_goal"),
	// 	("begin_operator"   , "end_operator"),
	// 	("begin_rule"       , "end_rule")
	// };


	return;
}