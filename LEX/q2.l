/* binary string with 3 consecutive zeroes */

%{

#include <stdio.h>
#include<stdlib.h>


%}


pattern (0|1)*000(0|1)*

%%

{pattern} {printf("The string is valid");}
(.+) {printf("The string is not valid");}

%%


int yywrap(){}

int main()
{

printf("Enter the string :");
yylex();

return 0;
}
