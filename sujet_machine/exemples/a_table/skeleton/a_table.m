#import <Foundation/Foundation.h>
#include<stdio.h>
#include<stdlib.h>


void a_table0(int n, int m, char** salle) {
    /* Inserez votre code ici */
}

int main(void){
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  int ci, ck, m, n;
  scanf("%d %d ", &n, &m);
  char* *ch = calloc(n, sizeof(char*));
  for (ci = 0; ci < n; ci++)
  {
      char *cj = calloc(m, sizeof(char));
      for (ck = 0; ck < m; ck++)
          scanf("%c", &cj[ck]);
      scanf(" ");
      ch[ci] = cj;
  }
  char** salle = ch;
  a_table0(n, m, salle);
  [pool drain];
  return 0;
}


