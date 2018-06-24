#include <iostream>
#include <vector>

void recette0(int n, std::vector<int> * ordre, std::vector<int> * desordre) {
    //  Inserez votre code ici 
}

int main() {
    int n;
    std::cin >> n;
    std::vector<int> *ordre = new std::vector<int>( n );
    for (int f = 0; f < n; f++)
    {
        std::cin >> ordre->at(f);
    }
    std::vector<int> *desordre = new std::vector<int>( n );
    for (int g = 0; g < n; g++)
    {
        std::cin >> desordre->at(g);
    }
    recette0(n, ordre, desordre);
}

