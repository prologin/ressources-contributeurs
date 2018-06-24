#import <Foundation/Foundation.h>
#include<stdio.h>
#include<stdlib.h>


void recette0(int n, int* ordre, int* desordre) {
    /* Inserez votre code ici */
}

int main(void){
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  int bb, ba, n;
  scanf("%d ", &n);
  int *ordre = calloc(n, sizeof(int));
  for (ba = 0; ba < n; ba++)
      scanf("%d ", &ordre[ba]);
  int *desordre = calloc(n, sizeof(int));
  for (bb = 0; bb < n; bb++)
      scanf("%d ", &desordre[bb]);
  recette0(n, ordre, desordre);
  [pool drain];
  return 0;
}


