#include<stdio.h>

int main(){
    int i=0,n=10,count=0;
    while(i<n){
        if(1){
            printf("1-%d\n",count);
            count++;
        }else if(1){
            printf("2-%d\n",count);
            count++;
        }
        i++;
    }
    printf("%d",count);
}