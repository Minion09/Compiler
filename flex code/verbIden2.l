verb is|are|was|were|be|being|been|do|does|did|will|would|should|can|could|has|have|had
nonverb [a-zA-Z]+ 
%%
{verb} {printf("%s: is a verb\n",yytext);}
{nonverb} {printf("%s: is not a verb\n",yytext);}
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