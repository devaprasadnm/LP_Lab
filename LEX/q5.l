/*lex program to take count of even numbers,odd numbers,floating point numbers,negative numbers,total integers from an input file*/


%{
#include<stdio.h>
#include<stdlib.h>

int evenCount=0,oddCount=0,floatCount=0,negCount=0,totalCount=0;

%}
num_neg ^[-][0-9]+
num_pos ^[+]?[0-9]+
float_pos ^[+]?[0-9]+"."[0-9]+
float_neg ^[-][0-9]+"."[0-9]+

%%
{num_neg} {
	totalCount++;
	negCount++;
	if (atoi(yytext)%2 == 0)
		evenCount++;
	else if (atoi(yytext)%2 != 0)
		oddCount++;
	}
	
{num_pos} {
	totalCount++;
	if (atoi(yytext)%2 == 0)
		evenCount++;
	else if (atoi(yytext)%2 != 0)
		oddCount++;
	}
	
{float_pos} {totalCount++;floatCount++;}
{float_neg} {totalCount++;floatCount++;negCount++;}	

%%

int yywrap(){}

int main()
{
	yyin = fopen("sample2.txt","r");
	yylex();
	
	printf("\nEven Numbers count = %d \n",evenCount);
	printf("Odd Numbers count = %d \n",oddCount);
	printf("Floating point numbers count = %d \n",floatCount);
	printf("Negative numbers Count = %d \n",negCount);
	printf("Total Numbers count = %d \n",totalCount);
	
	return 0;
}
