#include <iostream>
#include <stdio.h>
#include <vector>

const int INF = 1e9;
const int MOD = 1e8 + 7;

int count_inversions(std::vector<int>& is, int left, int right)
{
    int res = 0;
    for (int i = left; i < right; i++)
    {
        for (int j = i + 1; j < right; j++)
        {
            if (is[i] > is[j])
            {
                res++;
                res %= MOD;
            }
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
