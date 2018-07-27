n, m = map(int, input().split())
assert(1 <= n <= 100)
assert(1 <= m <= 100)

room = []
for _ in range(n):
    row = list(input())
    for c in row:
        assert(c == 'X' or c == '.')
    assert(len(row) == m)
    room.append(row)
assert(len(room) == n)
assert(room[0][0] == '.')
