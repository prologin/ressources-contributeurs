#include "testlib.h"
#include <vector>

using namespace std;

const int MAX_N = 2e5;

void check_and_read_perm(int n) {
	vector<bool> ok(n, false);
	for (int i = 0; i < n; i++) {
		int a = inf.readInt(1, n, "ingredient");
		ok[--a] = true;
		if (i+1 < n) {
			inf.readSpace();
		}
	}
	inf.readEoln();
	for (bool e : ok) {
		ensure(e);
	}
}

int main(int argc, char ** argv) {
	registerValidation(argc, argv);

	int n = inf.readInt(2, MAX_N, "Size of permutation n");
	inf.readEoln();
	check_and_read_perm(n);
	check_and_read_perm(n);
	inf.readEof();
}
