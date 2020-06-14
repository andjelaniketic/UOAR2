#include <stdio.h>
#include <stdlib.h>

void greska(){
	fprintf(stderr, "-1\n");
	exit(EXIT_FAILURE);
}

int skalarni_provera(int*, int,  int*, int, int*);

int main(){
	int n, m;
	scanf("%d%d", &n, &m);
	if(n <= 0)
		greska();
	
	int *a = malloc(n*sizeof(int));
	
	if(a == NULL)
		greska();
	
	int *b = malloc(m*sizeof(int));
	
	if(b == NULL)
		greska();
	
	int i;
	for(i=0; i<n; i++)
		scanf("%d", &a[i]);
	for(i=0; i<m; i++)
		scanf("%d", &b[i]);
	
	int suma;
	int rez = skalarni_provera(a, n, b, m, &suma);
	printf("%d\n", suma);
	
	free(a);
	free(b);
	return 0;
}
