//push.c
#include <stdio.h>
#include "head.h"

int push(struct stack*s,int n){
   if(isFull(s)){
       return 0;
    }
   (s->top)++;
   s->arr[(s->top)]=n;
   return 1;
}
