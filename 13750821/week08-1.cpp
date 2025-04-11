///week08-1.cpp 獁獁逼猭
#include <stdio.h>
int main(){
    ///int a[10] = {3,0,1,8,7,2,5,4,2,9}
    int a[10] = {9,8,7,6,5,4,3,2,1,0};
    for(int i=0;i<10;i++) print("%d ",a[i]);
    printf("\n");

    for(int k=0;k<9;k++){///程9计常т碞ЧΘ
        for(int i=0;i<9;i++){///10ㄢㄢゑ9Ω
            if(a[i]>a[i+1]){///ぃ癸碞ユ传
                int temp = a[i];///ρ畍揭ノ2狹ユ传
                a[i] = a[i+1];///Τ┿谬
                a[i+1] = temp;
            }
        }
        for(int i=0;i<10;i++0)printf("%d ",a[i]);
        printf("\n");
    }
}
