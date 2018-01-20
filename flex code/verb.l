%option noyywrap

%%
{is | are} {printf("verb");}

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