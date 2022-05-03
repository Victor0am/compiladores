%{
    #include <stdio.h>
    #include <string.h>    
    int lines = 0;  /* Global vars */

%}
%%

\n { lines++; }
\{{}\}

begin|bool|else|end|false|if|int|program|read|real|repeat|string|then|true|until|var|write {printf("%s\n",yytext);}



