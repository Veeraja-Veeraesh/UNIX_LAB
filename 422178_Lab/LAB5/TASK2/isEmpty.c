//isEmpty.c
#include <stdio.h>
#include "head.h"

int isEmpty(struct stack *s){
    if((s->top)==-1){
       return 1;
       }
    return 0;
}
