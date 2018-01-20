WS	[ \t]+

%%

	int total=0;
(III)I+ |
(XXX)X+ |
(CCC)C+ |
(MMM)M+ printf("Not a valid seq");

I	total += 1;
IV	total += 4;
V	total += 5;
IX	total += 9;
X	total += 10;
XL	total += 40;
L	total += 50;
XC	total += 90;
C	total += 100;
CD	total += 400;
D	total += 500;
CM	total += 900;
M	total += 1000;

{WS}	|
\n	printf ("%d\n", total);
%%
int yywrap()
{
  return 1;
}
int main (void) {
   yylex ();
   
   return 0;
   }

