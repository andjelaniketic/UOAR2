#include <stdio.h>
#include <stdlib.h>

void greska(){
	fprintf(stderr, "-1\n");
	exit(EXIT_FAILURE);
}

void obrni(long*, int);

int main(){
	int n;
	scanf("%d", &n);
	if(n <= 0)
		greska();
	
	long* niz = malloc(n*sizeof(long));
	if(niz == NULL)
		greska();
	
	for(int i=0; i<n; i++)
		scanf("%ld", &niz[i]);
	
	obrni(niz, n);
	
	for(int i=0; i<n; i++)
		printf("%ld ", niz[i]);
	printf("\n");
	free(niz);
	return 0;
}
