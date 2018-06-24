#include <stdio.h>
#include <stdlib.h>


void recette0(int n, int* ordre, int* desordre) {
    /* Inserez votre code ici */
}
int main(void) {
    int e, d, n;
    scanf("%d ", &n);
    int *ordre = calloc(n, sizeof(int));
    for (d = 0; d < n; d++)
        scanf("%d ", &ordre[d]);
    int *desordre = calloc(n, sizeof(int));
    for (e = 0; e < n; e++)
        scanf("%d ", &desordre[e]);
    recette0(n, ordre, desordre);
    return 0;
}


