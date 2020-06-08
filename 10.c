#include <stdio.h>

unsigned prestupna(unsigned);

int main(){
	unsigned godina;
	scanf("%u", &godina);
	
	unsigned rez = prestupna(godina);
	if(rez == 1)
		printf("YEET\n");
	else
		printf("NEET\n");
	return 0;
}
