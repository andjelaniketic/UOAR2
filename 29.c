#include <stdio.h>
#include <stdlib.h>

int izdvoj_proste(int*, int, int*);

int main(){
	int n;
	scanf("%d", &n);
	int *a = malloc(n*sizeof(int));
	if(a == NULL){
		fprintf(stderr, "-1\n");
		exit(EXIT_FAILURE);
	}
	
	int i;
	for(i=0; i<n; i++)
		scanf("%d", &a[i]);
	
	int *b = malloc(n*sizeof(int));
	if(b == NULL){
		fprintf(stderr, "-1\n");
		exit(EXIT_FAILURE);
	}
	int m = izdvoj_proste(a, n, b);
	
	for(i=0; i<m; i++)
		printf("%d ", b[i]);
	printf("\n");
	
	free(a);
	free(b);
	return 0;
}
