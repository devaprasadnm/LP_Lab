// DFA to accept strings where a followed by b or ab

#include <stdio.h>
#include <stdbool.h>
#include <string.h>

void main()
{
	char s[100] ;
	int state = 0;
	bool valid = true;
	int table[4][2] =  {{1,0},{3,2},{1,0},{-1,2}};
	
	
	printf("Enter the string : ");
	scanf("%s",s);
	
	for(int i=0; s[i]!='\0' && valid ; i++)
	{
		switch(state)
		{
		case 0:
			if(s[i] == 'a')
				state = table[0][0];
			else if (s[i]== 'b')
				state = table[0][1];
			else
				valid = false;
			break;
				
		case 1:
			if(s[i] == 'a')
				{state = table[1][0];
				}
			else if (s[i] == 'b')
				state = table[1][1];
			else
				valid = false;
				
			break;
				
		case 2:
			if(s[i] == 'a')
				state = table[2][0];
			else if (s[i] == 'b')
				{state = table[2][1];
				}
			else
				valid = false;
			break;
				
		case 3:
			if(s[i] == 'a')
				state = table[3][0];
			else if (s[i] == 'b')
				state = table[3][1];
			else
				valid = false;
				
			break;
				
		default:
			valid =false;
			break;
		}
	}
	
	if (state!=0 && state!=2)
		valid =false;
	
	if (valid)
		printf("The string %s is valid\n",s);
	else
		printf("The string %s is invalid\n",s);
	
	
}

