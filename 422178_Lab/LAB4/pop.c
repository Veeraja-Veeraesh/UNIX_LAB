//pop.c
#include <stdio.h>
#include "head.h"

int pop(struct stack *s,int * value){
    if(isEmpty(s)){
        return 0;
      }
    *value=(s->arr[(s->top)]);
    (s->top)--;
    return 1;
 }
    
