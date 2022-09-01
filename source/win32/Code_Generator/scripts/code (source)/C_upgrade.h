/**
C_upgrade.h
-----

Par James, pour Game Center

Rôle : Multiples.
*/

#ifndef DEF_C_UPGRADE
#define DEF_C_UPGRADE

    void hide(char word[]);
    void show(char word[]);
    int random(int valor, int rate, int type);
    void sleep(int nbr_seconds);
    void file_writte(char word[]);
    int revers(int nbre);
    int factor(int entry);
    int is(char check[],char objet[]);
    void Free(char tab[]);
    void file_writte_int(int numb);
    int file_count();
    int file_get_unless(char val);
    int taille(int nbre);
    int power(int nbre,int fois);
    void file_read();
    int toInt(char table[]);
    void file_end();
    char *ch_data(char key[], char ch_file[]);
    char* ch_Section(char section[], char ch_file[]);
    char *varreplace(char chaine[], char expr, char nouv[]);
    int verify(char part[],char entire[]);
    void mfile_writte(char word[]);
    int file_get_int();
    char *getline(const int no,char *file_name);
    int setcode(char code[]);
    int dec_bin(int nbre);
    int dec_oct(int nombre);
    void dec_hex(int nombre);
	int bin_dec(int bin);
    void color(int texte, int fond);
    char *normalize(const char *word);
    int forceInt();
    char *split(char text[], char motif, int place);
    char *getword(const int line, const int column, char *file_name);
    char *erase(int place,const char *word);
    int file_size(char file[]);
    void crypt(char file[]);
    int occurences(char chaine[], char car);
    char *ch_SectionData(char data[], char section[]);
    char *lowercase(char word[]);
    char *uppercase(char word[]);
    int in(char word[], char sentence[]);
    void ch_drop(char key[], char file_name[]);
    char *entry();
    void ch_update(char line[] ,char file_name[]);
    char *str(float number);
    float toFloat(char value[]);
    int exists(char filename[]);
    char *resizedText(int carperline,char bigtext[]);
    int in_(char car, char *full);
    #define isPair(val) (val%2 == 0 ? 1 : 0)
    #define isDivide(divide, val) (val%divide == 0 ? 1 : 0)
    #define valuable_0(val) (strcmp(val, "")==0? 0 : toInt(val))
    #define valuable_100(val) (strcmp(val, "")==0? 100 : toInt(val))
    #define valuable(val, def) (strcmp(val, "")==0? def : toInt(val))
    #define true 1
    #define false 0
    #define MAX 1000
    #define ultra 1000000
    #define EOL '\n'
    #define EOW '\0'
    #define space ' '
    #define tabSpace '\t'
    #define smiley_1 1
    #define smiley_2 2
    #define coeur 3
    #define carreau 4
    #define trefle 5
    #define piquet 6
    #define male 11
    #define female 12
    #define sound 14
    #define sun 15
    #define play 16
    #define play_back 17
    #define play_up 30
    #define play_down 31
    #define LIMIT 999999998
    enum{NOIR, BLEU_OCEAN, VERT, BLEU_CLAIR, ROUGE, VIOLET, MARRON, GRIS, GRIS_FONCE, BLEU, VERT_CLAIR, BLEU_CIEL, MAGENTA, VIOLET_CLAIR, JAUNE, BLANC};

#endif
