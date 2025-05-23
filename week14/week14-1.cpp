///week14-1.cpp
///瓣だ,碞琌璶т程そ计
#include<stdio.h>
int main()
{
    printf("叫块だaだダb:");
    int a,b;
    scanf("%d%d",&a,&b);
    int ans;
    for(int i=1;i<=a;i++){
        if(a%i==0 && b%i==0) ans=i;///俱埃
    }
    printf("程そ计琌:%d\n",ans);
    printf("%d / %d单 %d /%d\n",a,b,a/ans,b/ans);
}
