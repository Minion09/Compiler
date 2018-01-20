verb is|are|was|were|be|being|been|do|does|did|will|would|should|can|could|has|have|had
not_verb did[a-zA-Z0-9]*

%%
{verb} {printf("verb");}
{not_verb} {printf("is not verb");}

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