#include "testlib.h"
#include <iostream>
#include <vector>
#include <stdlib.h>

using namespace std;

// argument size of permutation,
int main(int argc, char ** argv) {

	registerGen(argc, argv, 1);
	int n = atoi(argv[1]);

	cout << n << endl;
	vector<int> p1(n), p2(n);
	for (int i=0; i<n; i++) {
		p1[i] = i+1;
		p2[i] = i+1;
	}
	for (int i=0; i<n; i++) {
		int ind = rnd.next(i, n-1);
		swap(p1[i], p1[ind]);
	}
	for (int i=0; i<n; i++) {
		int ind = rnd.next(i, n-1);
		swap(p2[i], p2[ind]);
	}
	for (int i=0; i<n; i++) {
		cout << p1[i];
		if (i+1 < n) {
			cout << " ";
		}
	}
	cout << endl;
	for (int i=0; i<n; i++) {
		cout << p2[i];
		if (i+1 < n) {
			cout << " ";
		}
	}
	cout << endl;

	return 0;
}
