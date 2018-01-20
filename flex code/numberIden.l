ekok [0-9]
doshok [1-9][0-9]
shotok [1-9][0-9][0-9]
others [1-9]{4,}

%%
{ekok} {printf("%s: is a ekok\n",yytext);}
{doshok} {printf("%s: is a doshok\n",yytext);}
{shotok} {printf("%s: is a shotok\n",yytext);}
{others} {printf("%s: is a others\n",yytext);}

%%

int yywrap()
{
  return 1;
}

int main()
{
	yylex();
	return 1;
}