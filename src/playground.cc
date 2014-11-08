#include <string>
using namespace std;

inline bool isComment(string s){return s.empty() ? false : s.at(0)==';';}

int main(int argc, char const *argv[])
{
	isComment(";	") ? puts("yes") : puts("no");
	return 0;
}