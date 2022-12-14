.MODEL SMALL
.STACK 100H
.DATA    

.CODE
MAIN PROC         
    MOV AX,@DATA
    MOV DS,AX  
  

    MOV AL,"D"
    MOV BL,"F" 
    
    CMP AL,BL
    JL NEGG  
    CMP BL,AL
    JL NEGG
    JMP EXIT
    
    NEGG:
    MOV DL,BL
    MOV AH,2
    INT 21H
    EXIT:
    
    
   
    
    MAIN ENDP
END MAIN