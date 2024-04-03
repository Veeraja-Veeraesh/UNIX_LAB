//main.c
#include <stdio.h>
#include "head.h"

int main(){
   struct stack sobj;
   int value;
   init(&sobj);
   for(int i=1;i<=5;i++){
      if(push(&sobj,i*i)){
      printf("pushed %d into stack \n",i*i);
      }
   }
   if(pop(&sobj,&value)){
      printf("popped %d out of stack \n",value);
      }
   peek(&sobj);
   int success=destroy(&sobj);
   if(success==1){
      printf("successfully destroyed stack \n");
   }
   else{
      printf("destruction failed stack\n");
   }
   return 1;
}
   

