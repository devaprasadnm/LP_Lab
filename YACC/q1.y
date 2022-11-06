/* a^nb^n*/
%{
#include <stdio.h>
#include <stdlib.h>
int yylex();
int yyerror( char *msg);
%}

%token A B NL

%%
stmt: S NL {printf("The string is valid");exit(0);};
S: A S B | A B ;
%%

int yyerror(char *msg)
{
	printf("Invalid string \n");
	exit(0);
}

int main()
{
	printf("Enter the string : ");
	yyparse();
	
	return 0;
}
