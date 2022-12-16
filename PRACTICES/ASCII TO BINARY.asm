.MODEL SMALL  
 
.STACK 100H
.DATA    

 C DB 10 DUP(?) 

.CODE
MAIN PROC         
    MOV AX,@DATA
    MOV DS,AX  
    
    MOV AX,24
    MOV SI,0
    MOV CX,1
    
    
    PUS:
     
    CMP AL,0  
    JE  EXIT 
    MOV BH,2
    DIV BH  
    MOV DL,AH
    MOV DH,0
    PUSH DX 
    INC CX
    MOV AH,0   
    INC SI
    JMP PUS
    EXIT:
    MOV DL,AH
    MOV DH,0
    PUSH DX
    MOV AH,2
    OUTT:  
    POP DX
    ADD DX,48 
    INT 21H
    LOOP OUTT
    
    
    MAIN ENDP
END MAIN