// SPDX-License-Identifier: GPL-2.0-or-later

#include <assert.h>
#include <iostream>
#include <vector>

const int MIN_N = 2;
const int MAX_N = 200000;

int main()
{
    int n;
    std::cin >> n;
    assert(n >= MIN_N && n <= MAX_N);

    std::vector<int> should(n), is(n);
    std::vector<bool> seen(n + 1, false);
    for (int i = 0; i < n; i++)
    {
        std::cin >> should[i];
        assert(should[i] >= 1 && should[i] <= n);
        assert(!seen[should[i]]);
        seen[should[i]] = true;
    }

    std::fill(seen.begin(), seen.end(), false);
    for (int i = 0; i < n; i++)
    {
        std::cin >> is[i];
        assert(is[i] >= 1 && is[i] <= n);
        assert(!seen[is[i]]);
        seen[is[i]] = true;
    }

    assert(should.size() == n);
    assert(is.size() == n);

    return 0;
}
