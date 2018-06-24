#include <iostream>

const int N_MAX = 100;
const int M_MAX = 100;
const int dir[4][2] = {{1, 0}, {-1, 0}, {0, 1}, {0, -1}};

int n, m;
char map[N_MAX + 1][M_MAX + 1];
bool seen[N_MAX + 1][M_MAX + 1];

void dfs(int x, int y)
{
    seen[x][y] = true;
    for (int idir = 0; idir < 4; idir++)
    {
        int nextx = x + dir[idir][0];
        int nexty = y + dir[idir][1];
        if (nextx >= 0 && nextx < n && nexty >= 0 && nexty < m &&
            !seen[nextx][nexty] && map[nextx][nexty] == '.')
            dfs(nextx, nexty);
    }
}

int main(void)
{
    std::cin >> n >> m;
    for (int r = 0; r < n; r++)
        for (int c = 0; c < m; c++)
            std::cin >> map[r][c];

    dfs(0, 0);

    int ans = 0;
    for (int r = 0; r < n; r++)
        for (int c = 0; c < m; c++)
            if (!seen[r][c] && map[r][c] == '.')
                ans++;
    std::cout << ans << '\n';

    return 0;
}
