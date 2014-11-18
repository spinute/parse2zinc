#include <iostream>
#include <sstream>
#include <fstream>
#include <string>

using namespace std;

bool checkValid(string fname){
	ifstream ifs("tmp");
	if (ifs.fail())
	{
		cerr << "failure: ifstream open" << endl;
		exit(-1);
	}

	string tmp;

	// １行目はひとまず無視
	getline(ifs, tmp);

	getline(ifs, tmp);
	cout << tmp << endl;
	if (tmp != "Plan executed successfully - checking goal")
	{
		return false;
	}

	getline(ifs,tmp);
	if (tmp != "Plan valid")
	{
		return false;
	}

	return true;
}


int main(int argc, char const *argv[])
{
	if(checkValid("out_validator")){
		cout << "\n**** validator test: ok ****" << endl;
	}else{
		cout << "\n!!!! wrong plan generated !!!!" << endl; 
	}
	return 0;
}