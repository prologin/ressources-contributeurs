#include <iostream>
#include <vector>

template <typename T> std::vector<std::vector<T>> read_matrix(int l, int c) {
    std::vector<std::vector<T>> matrix(l, std::vector<T>(c));
    for (std::vector<T>& line : matrix)
        for (T& elem : line)
            std::cin >> elem;
    return matrix;
}

void a_table0(int n, int m, std::vector<std::vector<char>>& salle) {
    //  Inserez votre code ici 
}

int main() {
    int m, n;
    std::cin >> n >> m;
    std::vector<std::vector<char>> salle = read_matrix<char>(n, m);
    a_table0(n, m, salle);
}

