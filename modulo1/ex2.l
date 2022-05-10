%option yylineno
%{
    #include <stdio.h>
    #include <string.h>    
    int lineerr = 0;
%}
%%

[ \n\t]+ {lineerr = yylineno;}

\{[^}]*\} {lineerr = yylineno;}
_(.|\n)* {printf("LEXICAL ERROR (%d): Unknown symbol _\n", lineerr);}
#(.|\n)* {printf("LEXICAL ERROR (%d): Unknown symbol #\n", lineerr);}
,(.|\n)* {printf("LEXICAL ERROR (%d): Unknown symbol ,\n", lineerr);}

begin {printf("%d: %s -> BEGIN\n", yylineno, yytext);lineerr = yylineno;}
bool {printf("%d: %s -> BOOL\n", yylineno, yytext);lineerr = yylineno;}
else {printf("%d: %s -> ELSE\n", yylineno, yytext);lineerr = yylineno;}    
end {printf("%d: %s -> END\n", yylineno, yytext);lineerr = yylineno;}
false {printf("%d: %s -> FALSE\n", yylineno, yytext);lineerr = yylineno;}
if {printf("%d: %s -> IF\n", yylineno, yytext);lineerr = yylineno;}
int {printf("%d: %s -> INT\n", yylineno, yytext);lineerr = yylineno;}
program {printf("%d: %s -> PROGRAM\n", yylineno, yytext);lineerr = yylineno;}
read {printf("%d: %s -> READ\n", yylineno, yytext);lineerr = yylineno;}
real {printf("%d: %s -> REAL\n", yylineno, yytext);lineerr = yylineno;}
repeat {printf("%d: %s -> REPEAT\n", yylineno, yytext);lineerr = yylineno;}
string {printf("%d: %s -> STRING\n", yylineno, yytext);lineerr = yylineno;}
then {printf("%d: %s -> THEN\n", yylineno, yytext);lineerr = yylineno;}
true {printf("%d: %s -> TRUE\n", yylineno, yytext);lineerr = yylineno;}
until {printf("%d: %s -> UNTIL\n", yylineno, yytext);lineerr = yylineno;}
var {printf("%d: %s -> VAR\n", yylineno, yytext);lineerr = yylineno;}
write {printf("%d: %s -> WRITE\n", yylineno, yytext);lineerr = yylineno;}
[0-9]+ {printf("%d: %s -> INT_VAL\n", yylineno, yytext);lineerr = yylineno;}
[0-9]+\.[0-9]+ {printf("%d: %s -> REAL_VAL\n", yylineno, yytext);lineerr = yylineno;}
[a-zA-Z][a-zA-Z0-9]* {printf("%d: %s -> ID\n", yylineno, yytext);lineerr = yylineno;}
:= {printf("%d: %s -> ASSIGN\n", yylineno, yytext);lineerr = yylineno;}
= {printf("%d: %s -> EQ\n", yylineno, yytext);lineerr = yylineno;}
\< {printf("%d: %s -> LT\n", yylineno, yytext);lineerr = yylineno;}
\+ {printf("%d: %s -> PLUS\n", yylineno, yytext);lineerr = yylineno;}
\- {printf("%d: %s -> MINUS\n", yylineno, yytext);lineerr = yylineno;}
\* {printf("%d: %s -> TIMES\n", yylineno, yytext);lineerr = yylineno;}
\/ {printf("%d: %s -> OVER\n", yylineno, yytext);lineerr = yylineno;}
\( {printf("%d: %s -> LPAR\n", yylineno, yytext);lineerr = yylineno;}
\) {printf("%d: %s -> RPAR\n", yylineno, yytext);lineerr = yylineno;}
; {printf("%d: %s -> SEMI\n", yylineno, yytext);lineerr = yylineno;}
\"([^"]*)\" {printf("%d: %s -> STR_VAL\n", yylineno, yytext);lineerr = yylineno;}
. {lineerr = yylineno;}


