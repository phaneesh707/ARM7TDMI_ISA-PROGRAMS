#include<iostream>
#include<bits/stdc++.h>
using namespace std;

int main(){

    int a[10]={1,4,3,5,2,8,6,7,9,10};
    int i,j,min,n=10;

    for(i=0;i<n-1;i++){
        min =i;
        for(j=i+1;j<n;j++){
            if(a[min]>a[j])
                min = j;
        }
        if(min!=i){
            int temp=a[min];
            a[min]=a[i];
            a[i]=temp;
        }

    }

    for(i=0;i<n;i++){
        cout<<a[i]<<" ";
    }

}