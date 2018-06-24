#include <bits/stdc++.h>
using namespace std;

const int INF = 1e9;
const int MOD = 1e8 + 7;

int count_inversions(vector<int> &is, int left, int right) {
	if (left + 1 >= right) {
		return 0;
	}
	int mid = (left + right) / 2;

	int res = count_inversions(is, left, mid) + count_inversions(is, mid, right);
	res %= MOD;

	vector<int> a(is.begin() + left, is.begin() + mid); a.push_back(INF);
	vector<int> b(is.begin() + mid, is.begin() + right); b.push_back(INF);

	long long ind_a = 0, ind_b = 0;
	while (left < right) {
		if (a[ind_a] < b[ind_b]) {
			is[left++] = a[ind_a++];
		} else {
            // take care of added INF;
			res += (long long) a.size() - ind_a - 1;
			res %= MOD;
			is[left++] = b[ind_b++];
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
	int n;
	cin >> n;
	vector<int> should(n), is(n);
	for (int i=0; i<n; i++) {
		cin >> should[i]; should[i]--;
	}
	for (int i=0; i<n; i++) {
		cin >> is[i]; is[i]--;
	}
	solve(n, should, is);
}
