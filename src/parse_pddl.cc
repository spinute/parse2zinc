#ifndef PARSE_PDDL
#define PARSE_PDDL

#include <string>
#include <vector>

using namespace std;

//enumの文法忘れた
enum requirement
{
	":strips",":equality",":typing",":adl", "others"
}


struct action
{

};

struct predicate
{

};

struct initialState
{
	
};

struct goalState
{
	
};

// this is main class for parse destination
typedef struct Problem
{

}Problem;

// rapper for switching solver and iterative deepening
void solve(Problem* problem_ptr);

// solve gurobi
bool gurobi_solve(int level, Problem* problem_ptr);

// parse .sas file
Problem* parse(const char* filename);

#endif