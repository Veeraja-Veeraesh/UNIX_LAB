#ifndef HEAD_H
#define HEAD_H
#define size 500

struct stack{
   int arr[size];
   int top;
};

int init(struct stack*s);
int push(struct stack*s,int n);
int pop(struct stack*s,int*value);
int peek(struct stack*s);
int destroy(struct stack*s);
int isFull(struct stack*s);
int isEmpty(struct stack*s);

#endif
