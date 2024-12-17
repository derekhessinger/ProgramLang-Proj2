/*
*
* Derek Hessinger
* Prof. Ying Li
* CS 333
* 10/1/24
* This program operates as a parser for CLite files. It prints out each character
* along with its corresponding type
*
*/


DIGIT  [0-9]

%% 
[ \t\n]+ /* removes extraneous whitespace */

{DIGIT}+    {
            printf("Integer- %s\n", yytext); /* prints out integer */
            }

{DIGIT}+"."{DIGIT}*     {
                        printf("Float- %s\n", yytext);
                        }

^if$|^else$|^while$|^for$|^int$|^float$         {
                                                printf("keyword-%s\n", yytext ); /* prints out keyword */
                                                }


[a-zA-Z]+?[a-zA-Z0-9]+?         {
                                printf("Identifier-%s\n", yytext ); /* prints out identifier */
                                }  

=       {
        printf("Assignment\n"); /* prints out assignment */
        }

"=="|"<"|">"|"<="|">="          {
                                printf("Comparison- %s\n", yytext ); /* prints out comparison */
                                }

"+"|"- "|"*"|"/"        {
                        printf("Operator- %s\n", yytext); /* prints out operator */
                        }

[{]     {
        printf("Open-bracket\n"); /* prints out open bracket */
        }  


[}]     {
        printf("Close-bracket\n" ); /* prints out closed bracket */
        } 

[(]     {
        printf("Open-paren\n"); /* prints out open paren */
        }  


[)]     {
        printf("Close-paren\n"); /* prints out closed paren */
        } 

";"	{printf("");}	/* replace tags with new line */

%%
int main ( int argc, char *argv[] ) {	 
    if(argc>1)
            yyin=fopen(argv[1],"r"); 
    yylex(); 
	return 0; 
}