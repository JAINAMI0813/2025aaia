///week06-2.cpp
///了解for(迴圈) vs. while(迴圈) vs. if(判斷)
#include <stdio.h>

int main(){
    if(999) printf("999 good 成立\n");
    if(3) printf("3 good 成立\n");
    if(2) printf("2 good 成立\n");
    if(1) printf("1 good 成立\n");
    if(0) printf("0 good 有成立嗎?\n");///只有0不成音
    if(-1) printf("-1 good 成立\n");
    if(-2) printf("-2 good 成立\n");
    if(-3) printf("-3 good 成立\n");
    ///while(1) printf("1 good 成立\n");///一直做一直做
}
