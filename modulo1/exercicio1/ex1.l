/* Ignorar tudo que estiver depois de um # numa linha */
%%
#(.)*|\n {}
[^#\n]* {printf("%s\n", yytext);}


