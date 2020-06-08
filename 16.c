#include <stdio.h>

unsigned najveca_cifra(unsigned);

int main(){
	unsigned x;
	scanf("%u", &x);
	printf("%u\n", najveca_cifra(x));
	return 0;
}
// tmp =0
// while(x != 0){
// 	edx = x%10;
// 	x = x/10;
// 	if(edx > tmp)
// 		edx = tmp
// 	
// }
