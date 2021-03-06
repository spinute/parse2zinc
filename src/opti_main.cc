#include "/Library/gurobi563/mac64/include/gurobi_c++.h"

using namespace std;

#include <chrono>
#include "opti_generator.cc"
#include "opti_pgraph.cc"

int main(int argc, char const *argv[])
{
	// check execution format: this program require sas format for input file
	// this file should be generated by pddl tlanslator of fastdownward
	if (argc <= 1)
	{
		cout << "usage: opti_main <file>.sas" << endl;
		return -1;
	}

	auto startTime = std::chrono::system_clock::now();
	Problem *problem_ptr = parse2gurobi(argv[1]);
	int t = create_planningGraph(*problem_ptr);
	// cout << t << endl;
	auto endTime = std::chrono::system_clock::now();
	auto timeSpan = endTime - startTime;
	std::cerr << "time(parse):" << std::chrono::duration_cast<std::chrono::milliseconds>(timeSpan).count() << "[ms]" << std::endl;
	
	startTime = std::chrono::system_clock::now();
	for (int i = t; i < 1000 ; i++)
	{
		cout << "level: " << i << endl;
		if (optiplan_solve(i, *problem_ptr))
			break;
	}
	endTime = std::chrono::system_clock::now();
	timeSpan = endTime - startTime;
	std::cerr << "time(main):" << std::chrono::duration_cast<std::chrono::milliseconds>(timeSpan).count() << "[ms]" << std::endl;

	return 0;
}
