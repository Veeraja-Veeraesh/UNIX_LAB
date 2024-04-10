#include <stdio.h>
#include <stdlib.h>

struct BSTNode{
    int data;
    struct BSTNode *left;
    struct BSTNode *right;
};

int insertnode(struct BSTNode **root, int data){
    if(!(*root)){
        struct BSTNode *newnode=(struct BSTNode *)malloc(sizeof(struct BSTNode));
        if(!newnode) return 0;
        newnode->data=data;
        newnode->left=newnode->right=NULL;
        *root=newnode;
        return 1;
    }
    else if((*root)->data>data){
        return insertnode(&(*root)->left, data);
    }
    else if((*root)->data<data){
        return insertnode(&(*root)->right, data);
    }
    else
        return 0;
}

int inorder(struct BSTNode *root){
    if(root){
        inorder(root->left);
        printf("%d ", root->data);
        inorder(root->right);
        return 1;
    }
    return 1;
}

int findmin(struct BSTNode *root){
    while(root->left)
        root=root->left;
    return root->data;
}

int inordersuccessor(struct BSTNode *root, int key){
    struct BSTNode *succ=NULL;
    while(root!=NULL){
        if (root->data == key && root->right != NULL)
            return findmin(root->right);
        else if (key < root->data)
        {
            succ = root;
            root = root->left;
        }
        else if (key > root->data)
            root = root->right;
        else
            break;
    }
    return succ->data;
}

int main(){
    int n;
    printf("Enter the number of nodes in the BST");
    scanf("%d",&n);

    struct BSTNode *root=NULL;
    while(n--){
        int elem;
        printf("Enter node value: ");
        scanf("%d", &elem);

        insertnode(&root, elem);
    }

    int key;
    printf("Enter number to find successor of: ");
    scanf("%d",&key);

    int succ=inordersuccessor(root, key);
    printf("Successor: %d", succ);

    return 0;
}

