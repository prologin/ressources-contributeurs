#include <iostream>
#include <vector>

const int INF = 1e9;
const int MOD = 1e8 + 7;

int count_inversions(std::vector<int>& is, int left, int right)
{
    if (left + 1 >= right)
        return 0;

    int mid = (left + right) / 2;

    int res =
        count_inversions(is, left, mid) + count_inversions(is, mid, right);
    res %= MOD;

    std::vector<int> a(is.begin() + left, is.begin() + mid);
    a.push_back(INF);
    std::vector<int> b(is.begin() + mid, is.begin() + right);
    b.push_back(INF);

    long long idx_a = 0, idx_b = 0;
    while (left < right)
    {
        if (a[idx_a] < b[idx_b])
            is[left++] = a[idx_a++];
        else
        {
            // Take care of added INF;
            res += (long long)a.size() - idx_a - 1;
            res %= MOD;
            is[left++] = b[idx_b++];
        }
    }

    return res;
}

int main()
{
    int n;
    std::cin >> n;
    std::vector<int> should(n), is(n);
    for (int i = 0; i < n; i++)
    {
        std::cin >> should[i];
        should[i]--;
    }
    for (int i = 0; i < n; i++)
    {
        std::cin >> is[i];
        is[i]--;
    }

    std::vector<int> perm(n);
    for (int i = 0; i < n; i++)
        perm[should[i]] = i;
    for (int i = 0; i < n; i++)
        is[i] = perm[is[i]];
    std::cout << count_inversions(is, 0, n) << '\n';

    return 0;
}
