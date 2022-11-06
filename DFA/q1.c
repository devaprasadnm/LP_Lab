//Qn: accept 0(0+1)*1

#include <stdio.h>
#include <string.h>
#include <stdbool.h>


int state0(char state)
{
	if (state =='0')
	
		return 1;
		
	else
		return -1;
		
}

int state1(char state)
{
	if (state=='1')
		return 2;
		
	else if (state == '0')
		return 1;
		
	else
	 	return -1;
	
	
		
}

int state2(char state)
{
	if (state=='1')
		return 2;
		
	else if (state == '0')
		return 1;
		
	else
	 	return -1;
	
	
		
}

void main()
{
	char s[100];
	int state=0,f_state = 2;
	bool valid = true;
	
	printf("Enter the string:");
	
	scanf("%s",s);
	
	for(int i=0; s[i]!='\0' && valid;i++) 
	
	{
		switch(state)
		{
			case 0 : 
				state = state0(s[i]);
				break;
				
			case 1:
			
				state = state1(s[i]);
				break;
				
			case 2:
			
				state = state2(s[i]);
				break;
				
			default:
			
				valid =false;
				break;
				
		
		}
	
	}
	
	if (state!=f_state)
	
		valid=false;
		
	if (valid)
	
		printf("The string %s is valid ",s);
		
	else
		printf("The string %s is not valid ",s);
		
	
	
}
