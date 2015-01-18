#ifndef OPTI_PGRAPH_H
#define OPTI_PGRAPH_H

#include <string>
#include <vector>
#include <utility>
#include <map>
#include <set>

using namespace std;

typedef int Var;
typedef int Val;
typedef pair<Var, Val> Prop;

typedef map<Prop, int> pg_Props;

typedef map<int, int> pg_Actions;

// typedef struct PGraph{
// 	LevelPGVars level_pgv; 
// 	LevelPGOps level_pgop; 
// 	bool is_exist;
// }PGraph;

#endif