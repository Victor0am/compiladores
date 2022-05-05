%{
    #include <stdio.h>
    #include <string.h>    
    int lines = 0;  /* Global vars */

%}
%%

\n { lines++; }

begin {printf("%d: %s -> BEGIN\n", lines, yytext);}
bool {printf("%d: %s -> BOOL\n", lines, yytext);}
else {printf("%d: %s -> ELSE\n", lines, yytext);}    
end {printf("%d: %s -> END\n", lines, yytext);}
false {printf("%d: %s -> FALSE\n", lines, yytext);}
if {printf("%d: %s -> IF\n", lines, yytext);}
int {printf("%d: %s -> INT\n", lines, yytext);}
program {printf("%d: %s -> PROGRAM\n", lines, yytext);}
read {printf("%d: %s -> READ\n", lines, yytext);}
real {printf("%d: %s -> REAL\n", lines, yytext);}
repeat {printf("%d: %s -> REPEAT\n", lines, yytext);}
string {printf("%d: %s -> STRING\n", lines, yytext);}
then {printf("%d: %s -> THEN\n", lines, yytext);}
true {printf("%d: %s -> TRUE\n", lines, yytext);}
until {printf("%d: %s -> UNTIL\n", lines, yytext);}
var {printf("%d: %s -> VAR\n", lines, yytext);}
write {printf("%d: %s -> WRITE\n", lines, yytext);}
[0-9]* {printf("%d: %s -> INT_VAL\n", lines, yytext);}
[0-9]+\.[0-9]+ {printf("%d: %s -> REAL_VAL\n", lines, yytext);}
[a-zA-Z][a-zA-Z0-9]* {printf("%d: %s -> ID\n", lines, yytext);}
:= {printf("%d: %s -> ASSIGN\n", lines, yytext);}
= {printf("%d: %s -> EQ\n", lines, yytext);}
< {printf("%d: %s -> LT\n", lines, yytext);}
\+ {printf("%d: %s -> PLUS\n", lines, yytext);}
\- {printf("%d: %s -> MINUS\n", lines, yytext);}
\* {printf("%d: %s -> TIMES\n", lines, yytext);}
\/ {printf("%d: %s -> DIV\n", lines, yytext);}
\( {printf("%d: %s -> LPAREN\n", lines, yytext);}
\) {printf("%d: %s -> RPAREN\n", lines, yytext);}
; {printf("%d: %s -> SEMI\n", lines, yytext);}
\"([^\"]*)\" {printf("%d: %s -> STRING_VAL\n", lines, yytext);}
. {}


