/**
* Derek Hessinger
* Prof. Ying Li
* CS 333
* 10/1/24
* This program reads in a text file, tells how many rows, characters,
* number of each vowel appearances, and prints the result of each.
*/

/* counters for each vowel*/
    int count_a = 0;
    int count_e = 0;
    int count_i = 0;
    int count_o = 0;
    int count_u = 0;

    /* counter for number of rows*/
    int rows = 0;

    /* counter for number of characters*/
    int count = 0;

%%
[aA] {count_a++; count++;}  /* increases counter for a and total characters */
    [Ee] {count_e++; count++;} /* increases counter for e and total characters */
    [Ii] {count_i++; count++;} /* increases counter for i and total characters */
    [Oo] {count_o++; count++;} /* increases counter for o and total characters */
    [Uu] {count_u++; count++;} /* increases counter for u and total characters */
    \n  {rows++; count++;} /* increases counter for rows and total characters */
    . {count++;} /* increases counter for total characters */

%%


    int main (int argc, char *argv[]) {
        if(argc>1)
                yyin=fopen(argv[1],"r"); 
        yylex();
        printf("There are %d lines in the file.\n", rows);
        printf("There are %d chars in the file.\n", count);
        printf("There are %d a and A's in the file.\n", count_a);
        printf("There are %d e and E's in the file.\n", count_e);
        printf("There are %d i and I's in the file.\n", count_i);
        printf("There are %d o and O's in the file.\n", count_o);
        printf("There are %d u and U's in the file.\n", count_a);
        return 0;}  