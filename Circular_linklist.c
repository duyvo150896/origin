#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

struct ListNode {
      int val;
      struct ListNode *next;
  };
 
void printList(struct ListNode *head){
    struct ListNode *p=head;
    int cnt =0;
    while (p != NULL)
    {
        cnt++;
       // printf("cnt: %d\n", cnt);
        printf("p: 0x%x \n", (int*)p);
        //printf("p->val: %d \n", p->val);
        p=p->next;
    }
}
struct ListNode *pSt;
int FindValInList(struct ListNode *head, int address){
    struct ListNode *ptemp=head;
    while(head !=NULL){
        if (head->val == address){
            return true;
        }
        else
            head = head->next;
    }
}
bool hasCycle(struct ListNode *head) {
    int cnt = 0;
    int cntS = 0;
    //printList(head);
    if (head -> next == NULL)
        return false;
    else
    {
        struct ListNode *p = head;
        struct ListNode *pNext = p->next;
        if (pNext-> next = p)
            return true;
        else
            pNext = pNext->next;
        return false;
    }
}