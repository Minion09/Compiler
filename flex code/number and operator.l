number [0-9]+
operator [*|+|-|/|<|>|=]

%%
{number} {printf("number\n");}
{operator} {printf("operator\n");}
	
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