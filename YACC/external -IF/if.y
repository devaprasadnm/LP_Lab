%{
#include <stdio.h>
#include  <stdlib.h>
int yyerror(char * msg);
int yylex();
%}

%token IF THEN LB RB DIGIT ID EQ REL SC NL                          

%%
stmt: S NL {printf("The if expression is valid");exit(0);} 
S: IF LB A RB THEN B SC NL 
A: ID REL ID | ID REL DIGIT | DIGIT REL ID | DIGIT REL DIGIT
B: ID EQ ID | ID EQ DIGIT 
%%

int yyerror(char * msg)
{
	printf("The string is not valid");
	exit(0);
}

int main()
{
	printf("Enter the string :");
	yyparse();
	return 0;
}
