#include <stdio.h>
#include <stdlib.h>

void greska(){
	fprintf(stderr, "-1\n");
	exit(EXIT_FAILURE);
}

int skalarni_proizvod(int*, int*, int);

int main(){
	int n;
	scanf("%d", &n);
	if(n <= 0)
		greska();
	
	int *a = malloc(n*sizeof(int));
	
	if(a == NULL)
		greska();
	
	int *b = malloc(n*sizeof(int));
	
	if(b == NULL)
		greska();
	
	int i;
	for(i=0; i<n; i++)
		scanf("%d", &a[i]);
	for(i=0; i<n; i++)
		scanf("%d", &b[i]);
	
	printf("%d\n", skalarni_proizvod(a, b, n));
	
	free(a);
	free(b);
	return 0;
}
