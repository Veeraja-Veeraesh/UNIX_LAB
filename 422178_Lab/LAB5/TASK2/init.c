//init.c
#include <stdio.h>
#include "head.h"

int init(struct stack *s){
    (s->top)=-1;
    return 1;
}
