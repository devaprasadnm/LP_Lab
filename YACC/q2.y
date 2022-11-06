/*LEX YACC program to check / recognize valid Arithmetic Expression */
%{
#include <stdio.h>
#include <stdlib.h>
int yylex();
int yyerror(char *msg);
%}

%token VARIABLE 
%token NUMBER

%left'+''-'
%left'*''/''%'
%left'(' ')'

%%
stmt: VARIABLE'='E {printf ("The string is valid");exit(0);}
E: E'+'E | E'-'E | E'*'E | E'/'E |E'%'E | '('E')' |NUMBER|VARIABLE ;
%%

int yyerror(char *msg)
{
	printf("String is invalid");
	exit(0);
}

int main()
{
	printf("Enter the string : ");
	yyparse();
	return 0;	
	
}
