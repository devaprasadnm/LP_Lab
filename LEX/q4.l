/*lex program to take count of three digit numbers,total numbers,Identifiers starting with 'a',ending with 'b',total identifiers from an input file*/

%{
#include <stdio.h>
#include <stdlib.h>

int threedigitCount=0,totalnumCount=0,id_a_Count=0,id_b_Count=0,totalidCount=0;
%}

digit [0-9]+
id [a-z A-Z]+

%%
{digit} {
		totalnumCount++;
		if(yyleng==3)
			threedigitCount++;
	}
{id} {
	totalidCount++;
	if(yytext[0] == 'a')
		id_a_Count++;
	if(yytext[yyleng-1]=='b')
		id_b_Count++;
				
	}
%%

int yywrap(){}

int main()
{
	yyin = fopen("sample1.txt","r");
	yylex();
	
	printf("\nThreedigit count = %d \n",threedigitCount);
	printf("Total NUmbers = %d \n",totalnumCount);
	printf("Total identifiers starting with a = %d \n",id_a_Count);
	printf("Total identifiers ending with b = %d \n",id_b_Count);
	printf("Total id count = %d \n",totalidCount);

	
	
}
