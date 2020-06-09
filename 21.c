#include <stdio.h>

unsigned prost(unsigned);

int main(){
	unsigned n;
	scanf("%u", &n);
	
	if(prost(n) == 1)
		printf("YEET\n");
	else
		printf("NEET\n");
	
	return 0;
}
