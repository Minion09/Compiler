even [0-9]*(0|2|4|6|8)
odd [0-9]*(1|3|5|7|9)

%%
{even} {printf("%s: is a even\n", yytext);}
{odd} {printf("%s: is a odd\n", yytext);}

.|\n ECHO;
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