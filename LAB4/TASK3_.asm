.MODEL SMALL
.STACK 100H
.DATA    
 A DB "-$"
.CODE
MAIN PROC         
    MOV AX,@DATA
    MOV DS,AX  
  

 
    MOV AL,-1
    
    CMP AL,"0"
    JE ZERO
    JL NEGG
    
    
    MOV BX,1
    MOV AH,2
    MOV DX,BX  
    ADD DX,48
    INT 21H
    
    JMP EXIT
    
    ZERO:
    MOV BX,0
    MOV AH,2
    MOV DX,BX   
    ADD DX,48
    INT 21H
    
    JMP EXIT
    NEGG: 
    LEA DX,A
    MOV AH,9
    INT 21H
    MOV BX,1
    MOV AH,2
    MOV DX,BX
    ADD DX,48
    INT 21H
    
    EXIT:
    
   
    
   
    
    MAIN ENDP
END MAIN