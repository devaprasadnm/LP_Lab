// DFA to accept [(ab)^*bb]^+

#include <stdio.h>
#include <string.h>
#include <stdbool.h>


void main()
{
	char s[100];
	int state=0;
	bool valid = true;
	int table[4][2]={{3,1},{-1,0},{-1,4},{3,1}};
	
	printf("Enter the string: ");
	scanf("%s",s);
	
	for (int i=0;s[i]!='\0';i++)
	{
		switch(state)
		{
		case 0:
			if (s[i]=='a')
				state= table[0][0];
			else if (s[i]=='b')
				state= table[0][1];
			else
				valid =false;
			break;
			
		case 3:
			if (s[i]=='a')
				state= table[1][0];
			else if (s[i]=='b')
				state= table[1][1];
			else
				valid =false;
			break;
			
		case 1:
			if (s[i]=='a')
				state = table[2][0];
			else if (s[i]=='b')
				state= table[2][1];
			else
				valid =false;
			break;
			
		case 4:
			if (s[i]=='a')
				state= table[3][0];
			else if (s[i]=='b')
				state= table[3][1];
			else
				valid =false;
			break;	

			
		default:
			valid=false;
			break;

		}
	
	}
	//printf("state: %d",state);
	if (state!=4)
		valid =false;
		
	if (valid)
		printf("the string %s is valid\n",s);
		
	else
		printf("the string %s is not valid\n",s);
				
}
