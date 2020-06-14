#include <stdio.h>

unsigned broj_nula(unsigned);

int main(){
	unsigned x;
	scanf("%u", &x);
	
	printf("%u\n", broj_nula(x));
	
	return 0;
}
