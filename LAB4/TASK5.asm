.MODEL SMALL
.STACK 100H
.DATA    
 A DB "-$"
.CODE
MAIN PROC         
    MOV AX,@DATA
    MOV DS,AX  
  

 
    MOV AL,"D"
    
    CMP AL,65
    JL EXIT
    CMP AL,90 
    JG EXIT
    
    MOV AH,2
    MOV DL,AL
    INT 21H
   
    
    EXIT:
    
   
    
   
    
    MAIN ENDP
END MAIN