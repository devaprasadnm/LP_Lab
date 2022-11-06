/*binary string starting with aa and ending with bb*/

/* Declaration */

%{
#include <stdio.h>
#include <stdlib.h>
%}

pattern aa(a|b)*bb

/* Translation Rules */

%%
{pattern} {printf("String is Valid");}
(.+) {printf("String is not valid");}
%%

int yywrap(){}

int main()
{
	printf("Enter the string : ");
	yylex();
	return 0;
}
