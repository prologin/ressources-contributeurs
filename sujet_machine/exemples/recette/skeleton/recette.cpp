#include <iostream>
#include <vector>

void recette0(int n, std::vector<int>& ordre, std::vector<int>& desordre) {
    //  Inserez votre code ici 
}

int main() {
    int n;
    std::cin >> n;
    std::vector<int> ordre( n );
    for (int m = 0; m < n; m++)
    {
        std::cin >> ordre[m];
    }
    std::vector<int> desordre( n );
    for (int o = 0; o < n; o++)
    {
        std::cin >> desordre[o];
    }
    recette0(n, ordre, desordre);
}

