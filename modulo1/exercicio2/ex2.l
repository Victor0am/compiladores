%{ /* Transformar letras maiúsculas em minúsculas*/
  #include<stdio.h>
  char letter;  /* Global vars */
%}
%%
[A-Z] { letter = yytext[0]; printf("%c", letter+32); }

