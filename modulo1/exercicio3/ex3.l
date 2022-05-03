/* Reconhecer Hexa */
%%
0(x|X)[0-9a-fA-F]{1,8} {printf("Hexa: %s\n", yytext);}
(.)*|\n {} /*Ignora o que não é hexa*/


