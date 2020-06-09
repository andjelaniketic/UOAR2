#include <stdio.h>

void kolicnik(unsigned, unsigned, unsigned*, unsigned*);

int main(){
	unsigned a, b;
	scanf("%u%u", &a, &b);
	unsigned k, o;
	
	kolicnik(a, b, &k, &o);
	printf("%u %u\n", k, o);
	
	return 0;
}
