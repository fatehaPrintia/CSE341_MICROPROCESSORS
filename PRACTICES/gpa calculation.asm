.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS, AX
    
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48
    INT 21H
    MOV BL,AL
    SUB BL,48
    INT 21H
    MOV CL,AL
    SUB CL,48
    
    MOV DH,0
    MOV AL,BH
    MOV AH,0  
    MOV CH,3
    MUL CH
    MOV DH,AL 
   
    MOV AL,BL
    MOV AH,0
    MUL CH
    ADD DH,AL
    
    MOV CH,6
    MOV AL,DH
    MOV AH,0
    DIV CH
    
    MOV DX,AX
    ADD DX,48
    MOV AH,2
    INT 21H
    
    
    MAIN ENDP
END MAIN