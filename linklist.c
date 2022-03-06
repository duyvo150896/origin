#include <stdio.h>
#include <stdlib.h>

typedef struct LinkListStruct
{
    /* data */
    int data;
    struct LinkListStruct *pnext;
    struct LinkListStruct *ptail;
} LinkList;

LinkList *head = NULL;
LinkList *tail = NULL;
LinkList *newNode = NULL;

void CreateNewNode(int data){
    LinkList *Node= (LinkList*) malloc (sizeof(LinkList));
    Node->pnext=NULL;
    Node->data=data;
    newNode = Node;
}
void AddFirstNode (int data){
    LinkList *node = (LinkList*) malloc (sizeof(LinkList));
    node -> data = data;
    node ->pnext = head;
    head = node;
}

void Insert2LastNode(int data){
    LinkList *tempnext = head;
    CreateNewNode(data);

    while (tempnext->pnext != NULL)
        tempnext = tempnext->pnext;
    tempnext -> pnext= newNode;
}
void InsertAfterSpecPos(int pos, int data){ /* 1 2 3 4 5 6 7 8 */
    int i = 0;
    LinkList *p = head;
    CreateNewNode(data);
    while (i < pos)
    {
        p = p ->pnext;
        i++;
    }
    newNode->pnext= p->pnext;
    p ->pnext = newNode;
}
void InsertBeforeSpecPos(int pos, int data){ /* 1 2 3 4 5 6 7 8 */
    int i = 0;
    LinkList *p = head;
    CreateNewNode(data);
    while (i < pos -1)
    {
        p = p ->pnext;
        i++;
    }
    newNode->pnext= p->pnext;
    p ->pnext = newNode;
}
void printList(){
    LinkList *p = head;
    printf ("Data: ");
    while (p != NULL){
        printf ("%d, ", p->data);
        p = p->pnext;
    }
    printf("\n");
    printf("######################\n");
}
int CountList(){
    LinkList *p=head;
    int cnt=0;

    while (p !=NULL)
    {
        cnt++;
        p=p->pnext;
    }
    return cnt;
}
void DeletionNode(int pos){ /*  1 2 3 4 5 6 */
    int i = 0;
    LinkList *p=head;
    LinkList *pd;
    if (pos == 0){
        head = head->pnext;
        p->pnext=NULL;
    }
    else if (pos > CountList()-1){
        printf("Invalid position %d, maximum index is: [0 - %d] \n", pos, CountList()-1);
    }
    else
        while (p != NULL){
            i++;
            p=p->pnext;
            if (i >= pos -1){
                pd=p->pnext;
                p->pnext = pd->pnext;
                pd->pnext=NULL;
                return;
            }
        }
}
void main (){
    LinkList *tmp;
    int arr[] = {1,2,3,4,5,6};
    int lenArr = sizeof(arr)/sizeof(int);
    for (int i = 0 ; i < lenArr; i++)
        AddFirstNode(arr[i]);
    printList();
    Insert2LastNode(11);
    printList();
    InsertAfterSpecPos(3,12);
    printList();
    InsertBeforeSpecPos(3,13);
    printList();
    DeletionNode(9);
    printList();
    printf("Number of arr: %d", CountList());
}