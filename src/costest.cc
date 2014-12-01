#include <math.h>

int main(int argc, char const *argv[])
{
	for (int i = 0; i < 1000000000; ++i)
	{
		cos((long)123456783456789123456789.4*(double)i);/* code */
	}
	return 0;
}