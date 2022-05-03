/* Reconhecer Placas antigas de carro */
%%
[A-Z]{3}\-[0-9]{4} {printf("Placa: %s\n", yytext);} 
.|\n {}

