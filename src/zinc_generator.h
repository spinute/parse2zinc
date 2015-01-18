#ifndef ZINC_GENERATOR
#define ZINC_GENERATOR

#include <string>
#include <vector>
#include <utility>
#include <fstream>
#include <sstream>

using namespace std;

enum Type
{
	MAINTAIN, ADD, PREADD, DEL, PREDEL
};

typedef int Var;
typedef int Val;
// state-change-variableの集合
typedef map<Type, GRBVar> SCVs;   // 最小単位, あるlevelでのあるstateの真偽値を保持する
typedef pair<Var, Val> Prop;      // ある命題
typedef map<Prop, SCVs> Env;       // あるlevelにおけるStateChangeVariableの辞書
typedef vector<Env> LevelEnv;     // あるlevelまでの全てのstate variableを保持する

// actionに対応する変数
// LevelActions -> Actions -> ActionVarという階層構造になっている
typedef GRBVar ActionVar;                // 最小単位, あるlevelでのあるactionの実行の真偽を保持する
typedef vector<ActionVar> Actions;       // あるlevelでの全てのactionの真偽変数を保持する
typedef vector<Actions> LevelActions;    // あるlevelまでの全てのaction variableを保持する

typedef set<int> ActionIndex; 
typedef map<Prop, ActionIndex> OpSetMap;

typedef map<int, int> OpCostDict;

bool zinc_gen(const int level, const Problem &problem);

#endif