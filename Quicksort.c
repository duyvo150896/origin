#include <stdio.h>

void swapint(int *a, int *b){
    int tmp;
    tmp = *a;
    *a = *b;
    *b = tmp;
}
int findPartition(int l, int h, int *arr){
    int Pivot = arr[l];
    int i = l, j = h;
    while (i < j)
    {
        do {
            i++;
        }while (arr[i] < Pivot && i < j);
        do {
            j--;
        }while(arr[j] >= Pivot && j >= i);
        if (j >= i){
             swapint(&arr[i], &arr[j]);
        }
    }
    swapint(&arr[l], &arr[j]);
    return j;

}
void qSort(int l, int h, int arr[]){
    int index;
    if ( l < h){
        index = findPartition(l,h,arr);
        qSort(l, index, arr);
        qSort(index+1, h, arr);
    }
}
void printArr(int arr[]){
 //   printf("Size: %d\n", sizeof(arr)/sizeof(arr[0]));
    for (int i = 0 ; i < 16; i++)
        printf("%d-", arr[i]);
    printf("\n");
}

int Find2ndLargest(int *arr, int len){
    int max = arr[len-1];
    int max2nd = arr[len-2];
    int  i = len ;
    do{
        if (max2nd != max)
            return max2nd;
        else{
            i--;
            max2nd = arr[i];
        }
    }while (i >= 0);
    return max;
}
void main(){
    int arr[]={10, 11, 1, 22, 30, 50, 15, 5, 7, 15, 4, 5, 2, 17, 29,  16};
    int len = sizeof(arr)/sizeof(arr[0]);
    int Max2nd;
    printArr(arr);
    printf("Size: %d\n", sizeof(arr)/sizeof(arr[0]));
    qSort(4, sizeof(arr)/sizeof(arr[0]), arr);
    printArr(arr);
    Max2nd = Find2ndLargest(arr, sizeof(arr)/sizeof(arr[0]));
    if (Max2nd != arr[len-1]){
        printf("2nd largest: %d", Max2nd);
    }
}