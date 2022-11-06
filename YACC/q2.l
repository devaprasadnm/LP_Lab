/* LEX YACC program to check / recognize valid Arithmetic Expression  */

%{
#include "y.tab.h"
%}
var [a-z A-Z]+
num [0-9]+

%%
{var} {return VARIABLE;}
{num} {return NUMBER;}
. {return yytext[0];}
%%

int yywrap(){}
