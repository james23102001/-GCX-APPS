//sell.c, By JAMES LILIOU
//Compilé avec BASH MAKER
//Role : Modifier les enregistrements et créer des variables en fonction des états.
#include "C_upgrade.h"

void SetVar(char *var, char *value)
{
char line[100];
sprintf(line, "%s %s" , var, value);
ch_update(line, "variables.ch" );
} //La fonction qui vous permettra d'écrire des variables gcs à partir d'un programme C. Copier/coller, c'est toujours la meme!

//La fonction principale
int sell(char name[], int nb) //On prend le nom et le nombre. (Voir écran de vente)
{
	int ind = 0; char nomProd[MAX], commande[MAX]; //index, nom du fichier, et une chaine utilitaire.

	//Boucle infinie
	while (true){
	//Voilà, on ouvre les fichiers dans Produit un à un.
	sprintf(nomProd, "Produit/%d.ch" , ind);
	
	//Pour le débogage
	printf ( "Opening %s...\n" , nomProd);

	//Si le nom trouvé est une chaine vide, on Quitte avec l'état not found. Voilà pourquoi dans init, on a initialisé le formulaire.
	if (!strcmp(ch_data( "Nom:" , nomProd), "" ) ) {
	SetVar("*status", "not_found!");
	break; }

	//Si on trouve le fichier,
	else if ( !strcmp(ch_data( "Nom:" , nomProd), name)){
	//Regarder son nombre
	int n = toInt( ch_data( "Nombre:" , nomProd) );
	//Ecrire le nouveau nombre
	sprintf(commande, "Nombre: %d" ,n-nb );
	printf ( "Found desired product in %s . Must Set %d to %d!\n" , nomProd, n, nb);
	//Mettre à jour le fichier ch, avec le nom du fichier comme état. On s'en servira plus tard pour en afficher le contenu.
	ch_update(commande, nomProd);
	SetVar("*status", nomProd);
	//Surtout ne pas oublier le break, sinon ca continue jusqu'à la fin et on a encore un état not_found!
	break ;
	}

	ind++;
	}
	
return false;
}

//Le main
int main(int argc, char** argv)
{
	//Récupération des arguments dans une chaine unique
	char params[MAX];
	int i = 0, j=argc;

	sprintf(params, "" );
	for( i = 1; i<=j-1 ; i++ ){
	sprintf(params, "%s %s" ,params, argv[i]);
	}

	sprintf(params, erase(0, params));

	//Le deuxième mot est le nom du produit, le troisième est le nombre. Faites attention à la version de votre C_upgrade, vous pourriez avoir besoin d'ajouter un erase(0, ... ) au niveau du nombre.
	sell( split(params, ' ' , 0), toInt( split( params, ' ' , 1 ) ) );

	return 0;
}