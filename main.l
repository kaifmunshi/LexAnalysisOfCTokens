%{  
int n = 0 ;   
%}  
  

%%  
  

"auto"|"double"|"int"|"struct"|"break"|"else"|"long"|"switch"|"case"|"enum"|"register"|"typedef"|"char"|"extern"|"return"|"union"|"continue"|"for"|"signed"|"void"|"do"|"if"|"static"|"while"|"default"|"goto"|"sizeof"|"volatile"|"const"|"float"|"short"  {n++;printf("\t keywords : %s", yytext);}   
 
   
  

[a-zA-Z_][a-zA-Z0-9_]* {n++;printf("\t identifier : %s", yytext);}  
  

"<="|"=="|"="|"++"|"-"|"*"|"+" {n++;printf("\t operator : %s", yytext);} 
  

[(){}|,;]    {n++;printf("\t separator : %s", yytext);}  
  
[ ]    {n++;printf("\t 
 : BlankSpace", yytext);}  

[0-9]*"."[0-9]+ {n++;printf("\t float : %s", yytext);}   
  
 
[0-9]+ {n++;printf("\t integer : %s", yytext);}                         
  
.    ; 
%%  
   
int yywrap(void){} 
int main()  
  
{  
      
    yylex(); 
      
    printf("\n total no. of token = %d\n", n);    
       
}  