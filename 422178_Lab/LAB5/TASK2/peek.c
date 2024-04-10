//peek.c
#include <stdio.h>
#include "head.h"

int peek(struct stack *s){
    if(isEmpty(s)){
        return 0;
      }
    printf("top element of the stack is %d \n",(s->arr[(s->top)]));
    return 1;
 }
    
