#include <stdio.h>
#include <stdlib.h>


void a_table0(int n, int m, char** salle) {
    /* Inserez votre code ici */
}
int main(void) {
    int k, o, m, n;
    scanf("%d %d ", &n, &m);
    char* *j = calloc(n, sizeof(char*));
    for (k = 0; k < n; k++)
    {
        char *l = calloc(m, sizeof(char));
        for (o = 0; o < m; o++)
            scanf("%c", &l[o]);
        scanf(" ");
        j[k] = l;
    }
    char** salle = j;
    a_table0(n, m, salle);
    return 0;
}


