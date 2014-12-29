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

typedef vector<Var> VarMtx;
typedef map<Prop, VarMtx> PGVars;
typedef vector<PGVars> LevelPGVars;

typedef vector<int> OpMtx;
typedef vector<OpMtx> PGOps;
typedef vector<PGOps> LevelPGOps;

// typedef struct PGraph{
// 	LevelPGVars level_pgv; 
// 	LevelPGOps level_pgop; 
// 	bool is_exist;
// }PGraph;

#endif