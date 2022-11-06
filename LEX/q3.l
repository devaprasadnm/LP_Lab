/*lex program to take count of lines,lowercase letters,uppercase letters,words,digits,spcl characters,total characters from an input file*/



%{
#include <stdio.h>
#include <stdlib.h>

int lineCount = 0,lowerCount = 0, upperCount=0 ,wordCount = 0, digitCount=0,spclCount =0, totalCount =0;

%}

line \n
lower [a-z]
upper [A-Z]
word [/t' ']
digit [0-9]
special .

%%
{line} {wordCount++;lineCount++;}
{lower} {lowerCount++;}
{upper} {upperCount++;}
{word} {wordCount++;}
{digit} {digitCount++;}
{special} {spclCount++;}
%%

int yywrap(){}

int main()
{
	yyin =fopen("sample.txt","r");
	yylex();
	
	totalCount = upperCount+lowerCount+digitCount+spclCount;
	
	printf("\nLine count = %d \n",lineCount);
	printf("LowerCase Letters = %d \n",lowerCount);
	printf("UpperCase Letters = %d \n",upperCount);
	printf("Word count = %d \n",wordCount);
	printf("Digit count = %d \n",digitCount);
	printf("Spcl count = %d \n",spclCount);
	printf("Total count = %d \n",totalCount);
	
	return 0;
	
}

