#include <stdio.h>
#include <stdlib.h>

struct node{
	int data;
	struct node *next;
};


struct node *head;

int initList(struct node **head){
	*head=NULL;
	return 1;
}


int search(struct node **head, int data, struct node **ptrToKey, int *pos){
	if (*head==NULL) return 0;
	*pos=1;
	struct node *ptr=*head;
	for (;ptr!=NULL && ptr->data!=data;ptr=ptr->next){
		*pos=(*pos)+1;
	}
		*ptrToKey=ptr;
	
	if (!ptr) return 0;
	return 1;
}


int insert(struct node **head, int position, int data){
	struct node *newnode=(struct node *)malloc(sizeof(struct node));
	if (newnode==NULL) return 0;

	newnode->data=data;
	if (position==1){
		newnode->next=*head;
		*head = newnode;
		return 1;
	}
	
	struct node *ptrToKey=NULL;
	int pos=0;
	if (!search(head, data,&ptrToKey, &pos)){
		struct node *ptr=*head;
		for (int i=1; i<position-1 && ptr!=NULL;i++)
			ptr=ptr->next;
		
		if (ptr==NULL) return 0;
		else{
			newnode->next=ptr->next;
			ptr->next=newnode;
			return 1;
		}
	}
	else{
		printf("Element already present in address: %p \n",ptrToKey);
		return 0;
	}
}

int traverse(struct node *head){
	if (!head){
		printf("NULL \n");
		return 1;
	}
	
	for (struct node *ptr=head;ptr!=NULL;ptr=ptr->next)
		printf("%d -->",ptr->data);
	printf("NULL \n");
	return 1;
}

int reverseLL(struct node **head){

	if(!(*head)) return 0;
	struct node *pre=NULL;
	struct node *curr=*head;
	struct node *foll=(*head)->next;
		
	while(curr!=NULL){
		curr->next=pre;
		pre=curr;
		curr=foll;
		if(foll)
			foll=foll->next;
	}
	*head=pre;
	return 1;
}

int main(){
	struct node *head;
	initList(&head);
	int n;

	printf("Enter no of nodes you want to enter data: ");
	scanf("%d",&n);
	int pos=1;
	while (n--){
		int data;
		printf("\nEnter data: ");
		scanf("%d",&data);
		if (!insert(&head,pos++,data)) return 0;
	}
	
	printf("\nThe current linked list is:\n");
	traverse(head);
	
	reverseLL(&head);
	printf("\nThe reversed linked list is:\n");
	traverse(head);
}


