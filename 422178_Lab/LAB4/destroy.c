//destroy.c
#include <stdio.h>
#include "head.h"

int destroy(struct stack*s){
   if(isEmpty(s)){
       return 0;
    }
   (s->top)=-1;
   return 1;
}
