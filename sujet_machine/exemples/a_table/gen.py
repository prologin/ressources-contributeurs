from random import randint


n = randint(1, 100)
m = randint(1, 100)
c = [['.' for x in range(m)] for y in range(n)]
t = randint(1, 5000)
for i in range(t):
    x, y = randint(0, n - 1), randint(0, m - 1)
    while c[x][y] == 'X' and (x == 0 and y == 0):
        x, y = randint(0, n - 1), randint(0, m - 1)
    c[x][y] = 'X'

print(n, m)
for i in range(n):
    for j in range(m):
        print(c[i][j], end='')
    print()
