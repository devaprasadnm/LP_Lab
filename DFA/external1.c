/* a^n b^m where m+n >= 3*/

#include <stdio.h>
#include <string.h>
#include <stdbool.h>

void main()
{
	char s[100];
	int i=0,state=0;
	int table[5][2] = {{1,-1},{4,2},{-1,3},{-1,3},{4,3}};
	bool valid = true;
	
	printf("Enter the string : \n");
	scanf("%s",s);
	
	for(i=0;s[i]!='\0';i++)
	{
		switch(state)
		{
			case 0:
				{
				if(s[i]=='a')
					state = table[0][0];
				else if(s[i]=='b')
					state = table[0][1];
				else
					valid = false;
				break;
				}
				
			case 1:
				{
				if(s[i]=='a')
					state = table[1][0];
				else if(s[i]=='b')
					state = table[1][1];
				else
					valid = false;
				break;
				}
			case 2:
				{
				if(s[i]=='a')
					state = table[2][0];
				else if(s[i]=='b')
					state = table[2][1];
				else
					valid = false;
				break;
				}
			case 3:
				{
				if(s[i]=='a')
					state = table[3][0];
				else if(s[i]=='b')
					state = table[3][1];
				else
					valid = false;
				break;
				}
			case 4:
				{
				if(s[i]=='a')
					state = table[4][0];
				else if(s[i]=='b')
					state = table[4][1];
				else
					valid = false;
				break;
				}
				
			default:
				valid= false;
				break;
				
		}
	}
	//printf("state = %d",state);
	
	if(state!=3)
		valid = false;
	if(valid)
		printf("The string %s is valid\n",s);
	else
		printf("The string %s is invalid\n",s);
		
}
