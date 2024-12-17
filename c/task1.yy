/**
* 
* Derek Hessinger
* Prof. Ying Li
* CS 333
* 10/1/24
* This program takes in a char as input, shifts the char
* 13 characters forward, and prints out the result
* 
*/

lowercase [a-z]
uppercase [A-Z]

%%

{lowercase} {*yytext=((*yytext-'a'+13)%26)+'a';    
            printf("%c",*yytext);}

{uppercase} {*yytext=((*yytext-'A'+13)%26)+'A';
            printf("%c",*yytext);}


%%


int main (int argc, char *argv[]) {
    if(argc>1)
            yyin=fopen(argv[1],"r"); 
    yylex(); 
    return 0;
}  