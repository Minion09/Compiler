%option noyywrap

%%
.|\n ECHO;
%%

int main()
{
	yylex();
	return 1;
}