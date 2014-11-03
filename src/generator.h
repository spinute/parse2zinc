#ifndef GENERATOR
#define GENERATOR

#include <string>
#include <vector>

using namespace std;

// mainly for value, val pair
typedef pair<int, int> int_pair;

// sasフォーマットのvariable sectionに対応する構造体
struct variable
{
	string name;
	bool axiom_layer;
	int range;
	vector<string> atoms;
};

// sasフォーマットのmutex sectionに対応する構造体
struct mutex_group
{
	int n;
	vector<int_pair> list;
};

struct effect
{
	int n_assoc_conditions;
	std::vector<int_pair> assoc_condition;
	int var;
	int preval;
	int postval;
};

// corresponding to operator section
struct op
{
	string name;
	int n_prevailCond;
	vector<int_pair> prevailConditions;
	int n_effects;
	vector<effect> effects;
	int cost; // optional <- metric is 1
};

// corresponding to axiom section
struct axiom
{
	int n_axioms;
	int n_conditions;
	vector<int_pair> conditions;
	pair<int, int_pair> axiom;
};

// this is main class for parse destination
typedef struct Problem
{
	int version, metric, n_vars, n_ops, n_mtxs;
	vector<variable> vars;
	vector<mutex_group> mtxs;
	vector<int> init;
	vector<int_pair> goal;
	vector<op> operators;
}Problem;

// rapper for switching solver and iterative deepening
void solve(Problem* problem_ptr);

// solve gurobi
bool gurobi_solve(int level, Problem* problem_ptr);

// parse .sas file
Problem* parse(const char* filename);

#endif