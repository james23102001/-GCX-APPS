//code.c, code source de code.exe servant à la création de passwords aléatoires.
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

//Important, on s'en sert ici
#include "C_upgrade.h"

//Créons un random (non nécessaire, il y'en a déja un dans C_upgrade)
int Random(int valor, int rate, int type)
{
	int result;
	result = rand()%valor+1;

	if(type!=0&&rate!=0)
	{
	if(result>=rate) return 0;
	else return 1;
	}

	return result;
}

//à copier : La fonction SetVar
void SetVar(char *var, char *value)
{
char line[100];
sprintf(line, "%s %s" , var, value);
ch_update(line, "variables.ch" );
}

//Vérifiera si un mot contient un type. (Ex: Pour obj = int, la fonction retournera 1 si la chaine contient au moins un entier) 0:int, 1:str, 2:misc
int contains(char str[], int obj)
{
int i=0;
int check = 0;
while (str[i]!= '\0' )
{
if (obj==0 && in_(str[i], "0123456789" )) {check =1; break ;}
else if(obj == 1 && in_(str[i], "abcdefghijklmnopqrstuvwxyz" )) {check =1; break;}
else if(obj == 2 && in_(str[i], "&(-)+*$%/.?,;:!@]}^\\|[{#" ) ){check =1; break;}
i++;
}
return check;
}

//La fonction principale créant le mot de passe
void createPasswd(char *params)
{
char TextField[] = "abcdefghijklmnopqrstuvwxyz" ;
char NumbersField[] = "0123456789" ;
char otherField[] = "&(-)+*$%/.?,;:!@]}^\\|[{#" ;
//En vrai le seul field qu'on utilisera c'est celui là
char field[1000];

sprintf(field, "" );

//Vérifions pour chaque field, si on en a besoin, on l'ajoute dans notre field principal
if (!strcmp(ch_data( "letters:" , "Config.ch" ), "yes" ) )
	sprintf(field, "%s%s" , field,TextField); //On ajoute TextField à field si letters est à yes
if (!strcmp(ch_data( "digits:" , "Config.ch" ), "yes" ) )
	sprintf(field, "%s%s" , field,NumbersField); //Pareil pour NumbersField
if (!strcmp(ch_data( "other:" , "Config.ch" ), "yes" ))
	sprintf(field, "%s%s" , field,otherField); //et pour otherField

int len = toInt(ch_data( "minimal_cars:" , "Config.ch" )) ; //On regarde aussi la taille minimale du code.

//Maintenant on est pret pour créer le code
char code[1000];
int i=0;

sprintf(code, "" );

int tmp=0;

//Voilà.. Pour chaque lettre on pioche au hasard dans field, puis on l'ajoute dans code.
while (i!=len)
{
	tmp = Random(strlen(field),0,0);
	sprintf(code, "%s%c" , code, field[tmp]);
	i++;
}

if (!strcmp(ch_data( "digits:" , "Config.ch" ), "yes" ) && !contains(code, 0)) //Si les nombres sont requis et qu'il n'yen a pas, on en ajoute.
	sprintf(code, "%s%c" , code, field[Random(strlen(NumbersField),0,0)]);
if (!strcmp(ch_data( "letters:" , "Config.ch" ), "yes" ) && !contains(code, 1)) //Pareil pour les lettres
	sprintf(code, "%s%c" , code, field[Random(strlen(TextField),0,0)]);
if (!strcmp(ch_data( "other:" , "Config.ch" ), "yes" ) && !contains(code, 2)) //et les misc
	sprintf(code, "%s%c" , code, field[Random(strlen(otherField),0,0)]);

SetVar( "*code" , code); //Envoyons le code à GCS
}

int main(int argc, char** argv)
{
	char params[MAX];
	int i = 0, j=argc;

	sprintf(params, "" );
	for( i = 1; i<=j-1 ; i++ ){
	sprintf(params, "%s %s" ,params, argv[i]);
	}

	//Sans cette ligne, le programme plante. Ca m'a vraiment soulé de trouver la panne.
	srand(time(NULL));
	//Params contient les arguments de la ligne de commande
	sprintf(params, erase(0, params));
	
	//Ca signifie si qqn a tapé en ligne de commande "code.exe create",
	if (!strcmp(params, "create" ))
		createPasswd(params) ;

	//Bah voilà! :)
	return 0;
}