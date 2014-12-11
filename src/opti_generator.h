#ifndef OPTI_GENERATOR
#define OPTI_GENERATOR

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

static Prop gen_prop(const int var, const int val);
static SCVs *gen_SCVs(const string& prop_name, GRBModel &model);
static GRBLinExpr *init_objfunc(const LevelActions &level_Actions, 
	OpCostDict &op_cost_dict, const int level, const Problem &problem);

ActionIndex capify(const set<int> &lset, const set<int> &rset);
ActionIndex substitute(const set<int> &lset, const set<int> &rset);

bool optiplan_solve(const int level, const Problem &problem);

#endif