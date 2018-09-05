// SPDX-License-Identifier: GPL-2.0-or-later

#include <algorithm>
#include <cstdlib>
#include <ctime>
#include <iostream>
#include <vector>

int main()
{
    std::srand((unsigned)(std::time(0)));

    int n;
    std::cin >> n;

    std::vector<int> p1(n), p2(n);
    for (int i = 0; i < n; i++)
    {
        p1[i] = i + 1;
        p2[i] = i + 1;
    }
    std::random_shuffle(p1.begin(), p1.end());
    std::random_shuffle(p2.begin(), p2.end());

    std::cout << n << '\n';
    for (int i = 0; i < n; i++)
    {
        std::cout << p1[i];
        if (i + 1 < n)
            std::cout << " ";
    }
    std::cout << '\n';
    for (int i = 0; i < n; i++)
    {
        std::cout << p2[i];
        if (i + 1 < n)
            std::cout << " ";
    }
    std::cout << '\n';

    return 0;
}
