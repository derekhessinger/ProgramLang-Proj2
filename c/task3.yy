/**
*
* Derek Hessinger
* Prof. Ying Li
* CS 333
* 10/1/24
* This program removes tags, single line comments, and extraneous white space
* from HTML files, and prints out the result
*
*/

%%

[ \t\n]+ /* removes extraneous white space */

"<h"[1-6]">"           { printf("\n"); } /* replace headers with whitespace */
"<title>"              { printf("\n"); } /* replace titles with whitespace */
"<li>"                 { printf("\n"); } /* replace list with whitespace */
"<p>"                  { printf("\n"); } /* replace paragraph white whitespace */

"<"[^<>]+">" /* removes all other tags and comments*/

%%


int main (int argc, char *argv[]) {
    if(argc>1)
            yyin=fopen(argv[1],"r"); 
    yylex();
    return 0;}
