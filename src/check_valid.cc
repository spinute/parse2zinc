#include <iostream>
#include <sstream>
#include <string>

using namespace std;

bool checkValid(const char* fname){
	ifstream ifs(fname);
	if (ifs.fail())
	{
		cerr << "failure: ifstream open" << endl;
		exit(-1);
	}

	// １行目はひとまず無視
	ifs.ignore();

	string tmp;

	ifs >> tmp;
	if (tmp != "Plan executed successfully - checking goal")
	{
		return false;
	}

	ifs >> tmp;
	if (tmp != "Plan valid")
	{
		return false;
	}

	return true;
}


int main(int argc, char const *argv[])
{
	if(checkValid("out_validator")){
		cout << "validator test: ok" << endl;
	}else{
		cout << "wrong plan generated" << endl; 
	}
	return 0;
}