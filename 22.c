#include <stdio.h>

void zameni(int*, int*);

int main(){
	int a, b;
	scanf("%d%d", &a, &b);
	
	zameni(&a, &b);
	printf("%d %d\n", a, b);
	return 0;
}
