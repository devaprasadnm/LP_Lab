/* Write a lex program to accept a file and display 
(a) number of words with one a 
(b) number of words of length = 5, without any a-s 
(c) number of 4 digit numbers 
(d) words with substring 'bbb'*/

%{
#include <stdio.h>
#include <stdlib.h>
int digit_4_C = 0,spclC=0,one_a_C=0,three_b_C=0;
%}

digit [0-9]+
spcl [t-z T-Z]+
onea [a-z A-Z]+
threeb [a-z]*(bbb)[a-z]*

%%

{digit} {
		if(yyleng == 4)
			digit_4_C++;
			
	}
{threeb}     {three_b_C++;
	      int count=0;
		for(int i=0;i<yyleng;i++)
		{
			if(yytext[i]=='a')
				count++;
		}
		if(count==1)
		{
			one_a_C++;
			
		}
	     }
{spcl}  {
		if(yyleng == 5)
			spclC++;
			
	}
{onea}  {
		int count=0;
		for(int i=0;i<yyleng;i++)
		{
			if(yytext[i]=='a')
				count++;
		}
		if(count==1)
		{
			one_a_C++;
			
		}
	}

%%

int yywrap(){}

int main()
{
	yyin = fopen("sample.txt","r");
	yylex();
	
	printf("The number of words with one a  : %d \n",one_a_C);
	printf("number of words of length = 5, without any a-s : %d \n",spclC);
	printf("The number of 4 digit numbers : %d \n",digit_4_C);
	printf("words with substring 'bbb' : %d \n",three_b_C);
	
	return 0;
}
