#include "/Library/gurobi563/mac64/include/gurobi_c++.h"

using namespace std;

#include "sas_parser.cc"
#include "opti_generator.cc"

int main(int argc, char const *argv[])
{
	// check execution format: this program require sas format for input file
	// this file should be generated by pddl tlanslator of fastdownward
	if (argc <= 1)
	{
		cout << "usage: opti_main <file>.sas" << endl;
		return -1;
	}
	
	Problem *problem_ptr = parse2gurobi(argv[1]);
	for (int i = 1; i < 15; ++i)
	{
		cout << "level: " << i << endl;
		optiplan_solve(i, *problem_ptr);
	}
	return 0;
}