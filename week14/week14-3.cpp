//week14-3.cpp
//UVA11063:B2-Sequence
//Part 1:Input Part 2:Output
#include <stdio.h>
int main(){
	int a[100];
	int N,t = 1;
	while(scanf("%d",&N)==1){//Part1
		for(int i=0;i<N;i++){
			scanf("%d", &a[i]);}
		//Part 2:Output
		printf("Case #%d: It is a B2-Sequence.\n\n",t);
		t++;

	}
}
