#include "/Library/gurobi563/mac64/include/gurobi_c++.h"

using namespace std;

#include <chrono>
#include "sas_parser.cc"
#include "zinc_generator_global.cc"
// #include "opti_pgraph.cc"

int
main(int argc, char const *argv[])
{
	if (argc <= 2)
	{
		cout << "usage: opti_main <file>.sas level" << endl;
		return -1;
	}

	// int t = create_planningGraph(*problem_ptr);
	auto startTime = chrono::system_clock::now();
	Problem *problem_ptr = parse2gurobi(argv[1]);
	auto endTime = chrono::system_clock::now();
	auto timeSpan = endTime - startTime;
	cerr << "time(parse):" << chrono::duration_cast<chrono::milliseconds>(timeSpan).count() << "[ms]\n";
		
	int level = atoi(argv[2]);

	startTime = chrono::system_clock::now();
	zinc_gen(level, *problem_ptr);
	endTime = chrono::system_clock::now();
	timeSpan = endTime - startTime;
	cerr << "time(zinc_gen):" << chrono::duration_cast<chrono::milliseconds>(timeSpan).count() << "[ms]\n";

	return 0;
}