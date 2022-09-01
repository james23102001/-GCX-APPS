//C template
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
int main(int argc, char** argv)
{
	//char *commande = argv[1];
	char params[MAX];
	int i = 0, j=argc;

	sprintf(params,"");
	for( i = 1; i<=j-1 ; i++ ){
	sprintf(params, "%s %s" ,params, argv[i]);
	}

	//char temp[MAX];
	sprintf(params, erase(0, params));
  
	return 0;
}