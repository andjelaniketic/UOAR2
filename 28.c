#include <stdio.h>
#include <stdlib.h>

void fibonaci(int, int*);

int main(){
	int n;
	int *a;
	int i;
	
	scanf("%d", &n);
	
	if((a = malloc(sizeof(int)*n)) == NULL){
		printf("Greska pri alociranju memorije.\n");
		exit(1);
	}
	
	fibonaci(n, a);
	
	for(i=0; i<n; i++)
		printf("%d ", a[i]);
	printf("\n");	
	
	free(a);
	
	return 0;
}
