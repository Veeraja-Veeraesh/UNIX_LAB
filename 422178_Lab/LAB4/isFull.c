//isFull.c
#include <stdio.h>
#include "head.h"

int isFull(struct stack *s){
    if((s->top)==size-1){
      return 1;
      }
      return 0;
}
