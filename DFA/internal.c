// program for starting with 0 and ending with 0 or starting with 1 and ending with 1

#include <stdio.h>
#include <stdbool.h>
#include <string.h>

void main()
{
	char s[100];
	int state = 0, i = 0;
	bool valid = true;
	int table[5][2] = {{1,3},{2,1},{2,1},{3,4},{3,4}};
		
	printf("Enter the string : ");
	scanf("%s",s);
	
	for(i=0;s[i]!='\0';i++)
	{
		switch(state)
		{
		case 0:
			if(s[i]=='0')
				state = table[0][0];
			else if(s[i]=='1')
				state = table[0][1];
			else
				valid = false;
			
			break;
				
		case 1:
			if(s[i]=='0')
				state = table[1][0];
			else if(s[i]=='1')
				state = table[1][1];
			else
				valid = false;
			
			break;
				
		case 2:
			if(s[i]=='0')
				state = table[2][0];
			else if(s[i]=='1')
				state = table[2][1];
			else
				valid = false;
			
			break;
				
		case 3:
			if(s[i]=='0')
				state = table[3][0];
			else if(s[i]=='1')
				state = table[3][1];
			else
				valid = false;
			
			break;
				
		case 4:
			if(s[i]=='0')
				state = table[4][0];
			else if(s[i]=='1')
				state = table[4][1];
			else
				valid = false;
			
			break;
		
		
		}
	
	
	}

	if (state!=2 && state!=4 )
		valid = false;
		
		
	if (valid)
		printf("The string is valid");
	else
		printf("The string is not valid");
		

	
}
