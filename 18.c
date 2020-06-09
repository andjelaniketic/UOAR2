#include <stdio.h>

unsigned nzd(unsigned, unsigned);

int main(){
	unsigned a, b;
	scanf("%d%d", &a, &b);
	printf("%d\n", nzd(a, b));
	return 0;
}
