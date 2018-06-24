#include <iostream>
#include <vector>
std::vector<char> *getline() {
    if (std::cin.flags() & std::ios_base::skipws) {
        char c = std::cin.peek();
        if (c == '\n' || c == ' ') std::cin.ignore();
        std::cin.unsetf(std::ios::skipws);
    }
    std::string line;
    std::getline(std::cin, line);
    std::vector<char> *c = new std::vector<char>(line.begin(), line.end());
    std::cin >> std::skipws;
    return c;
}

void a_table0(int n, int m, std::vector<std::vector<char> *> * salle) {
    //  Inserez votre code ici 
}

int main() {
    int m, n;
    std::cin >> n >> m;
    std::vector<std::vector<char> *> *p = new std::vector<std::vector<char> *>( n );
    for (int q = 0; q < n; q++)
        p->at(q) = getline();
    std::vector<std::vector<char> *> * salle = p;
    a_table0(n, m, salle);
}

