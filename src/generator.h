#ifndef GENERATOR
#define GENERATOR

#include <string>
#include <vector>

using namespace std;

typedef pair<int, int> int_pair;

void parse(const char* filename);

// sasフォーマットのvariable sectionに対応する構造体
struct variable{
	string name;
	bool axiom_layer;
	int range;
	vector<string> atoms;
};

// sasフォーマットのmutex sectionに対応する構造体
struct mutex_group{
	int n;
	vector<int_pair> list;
};

struct effect{
	int n_assoc_conditions;
	std::vector<int_pair> assoc_condition;
	int var;
	int preval;
	int postval;
};

// corresponding to operator section
struct op{
	string name;
	int n_prevailCond;
	vector<int_pair> prevailConditions;
	int n_effects;
	vector<effect> effects;
	int cost; // optional <- metric is 1
};


// corresponding to axiom section
struct axiom{
	int n_axioms;
	int n_conditions;
	vector<int_pair> conditions;
	pair<int, int_pair> axiom;
};

// this is main class for parse destination
class problem{
public:
	problem();
	~problem();
	int version, metric, n_vars, n_ops, n_mtxs;
	vector<variable> vars;
	vector<mutex_group> mtxs;
	vector<int> init;
	variable goal;
	vector<op> operators;
};

#endif