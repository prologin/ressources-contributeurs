#include <bits/stdc++.h>
#include <stdio.h>
using namespace std;

const int INF = 1e9;
const int MOD = 1e8 + 7;

inline int rdint() {
    int res = 0;
    char e;
    while (1) {
        e = getchar();
        if (e >= 48 && e <= 57)
            res = (res<<1) + (res<<3) + e - 48;
        else {
            return res;
        }
    }
}

int count_inversions(vector<int> &is, int left, int right) {
	int res = 0;
	for (int i=left; i<right; i++) {
		for (int j=i+1; j<right; j++) {
			if (is[i] > is[j]) {
				res++;
				res %= MOD;
			}
		}
	}
	return res;
}

void solve(int n, vector<int> &should, vector<int> &is) {
    // permute elements such that should[] would be ordered to more easily process is[]
	vector<int> perm(n);
	for (int i=0; i<n; i++) {
		perm[should[i]] = i;
	}
	for (int i=0; i<n; i++) {
		is[i] = perm[is[i]];
	}
	cout << count_inversions(is, 0, n) << endl;
}

int main() {
	int n = rdint();
	vector<int> should(n), is(n);
	for (int i=0; i<n; i++) {
		should[i] = rdint(); should[i]--;
	}
	for (int i=0; i<n; i++) {
		is[i] = rdint(); is[i]--;
	}
	solve(n, should, is);
}

