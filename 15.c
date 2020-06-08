#include <stdio.h>

unsigned min(unsigned, unsigned, unsigned);

int main(){
	int a, b, c;
	scanf("%u%u%u", &a, &b, &c);
	printf("%u\n", min(a, b, c));
	return 0;
}
