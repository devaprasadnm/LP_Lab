%{
#include "y.tab.h"
%}

rel ["<"|">"|"<="|">="|"=="|"!="]
digit [0-9]+
id [a-zA-Z]([a-zA-Z]|[0-9])*

%%
if {return IF;}
then {return THEN;}
" " {}
"(" {return LB;}
")" {return RB;}
{digit} {return DIGIT;}
{id} {return ID;}
";" {return SC;}
"=" {return EQ;}
\n {return NL;}
{rel} {return REL;}
%%

int yywrap(){}
