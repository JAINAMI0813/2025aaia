///week05-1.cpp
///主題:陣列array配合 for迴圈

#include <stdio.h>

int main()
{///陣列宣告4格,大括號裡面,初始化4個值
    int a[4]={10,20,30,40};
    for(int i=0;i<4;i++){
        printf("%d",a[i]);
    }///電腦的for迴圈,從0開始
    printf("\n");///跳行

    a[0] = 99;///把a[0]值換成99
    for(int i=0;i<4;i++){
        printf("%d ",a[i]);
    }
     printf("\n");
}
