#include <stdio.h>

void bitovska_aritmetika(unsigned, unsigned, unsigned*, unsigned*, unsigned*, unsigned*);

int main(){
	unsigned a, b, k, d, e, n;
	scanf("%u%u", &a, &b);
	bitovska_aritmetika(a, b, &k, &d, &e, &n);
	printf("%u %u %u %u\n", k, d, e, n);
	return 0;
}
