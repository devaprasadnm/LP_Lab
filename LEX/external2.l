%{
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
int non_vowel_c = 0, word_5_c = 0,digit_c=0,spcl_c;
%}

spcl (0|1)*aaaa+(0|1)*
digit 00(0|1)*11
alpha [a-z]+


%%
{spcl} {spcl_c++;
	if(yyleng == 5)
		word_5_c++;
	}
{digit} {digit_c++;
	if(yyleng == 5)
		word_5_c++;	
	}
{alpha} {
	bool non_vowel=true;
	for(int i=0;i<yyleng;i++)
	{
		if (yytext[i]=='a'|| yytext[i]=='e'|| yytext[i]=='o'|| yytext[i]=='i'|| yytext[i]=='u')
		{
			non_vowel = false;
			break;
		}
		
			
	}
	
	if(non_vowel)
		non_vowel_c++;
	if(yyleng == 5)
		word_5_c++;
	
	}

	
%%

int yywrap(){}

int main()
{
	yyin = fopen("sample2.txt","r");
	yylex();
	
	printf("No.of starting with 00 and ending with 11 ; %d \n",digit_c);
	printf("No.of non vowel words ; %d \n",non_vowel_c);
	printf("No.of words with 5 letters ; %d \n",word_5_c);
	printf("No.of spcl letters ; %d \n",spcl_c);
	return 0;
}
