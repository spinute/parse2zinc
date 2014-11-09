#include <string>
#include <cassert>
#include <vector>
using namespace std;

inline bool isComment(string s){return s.empty() ? false : s.at(0)==';';}

int main(int argc, char const *argv[])
{
	std::vector<int> v;
	v.push_back(1);
	assert(++v.end() == v.end());
	return 0;
}