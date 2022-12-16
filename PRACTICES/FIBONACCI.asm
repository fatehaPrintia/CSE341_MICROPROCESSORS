.MODEL SMALL  
 
.STACK 100H
.DATA    


.CODE
MAIN PROC         
    MOV AX,@DATA
    MOV DS,AX  
    
    MOV BH,0
    MOV DL,BH 
    ADD DL,48
    MOV AH,2
    INT 21H 
    
    MOV BL,1 
    MOV DL,BL 
    ADD DL,48
    MOV AH,2
    INT 21H  
    
    MOV DL,0
    PUS: 
    MOV DL,BH 
    ADD DL,BL
    CMP DL,5
    JG OUTT
    ADD DL,48  
    MOV AH,2
    INT 21H 
    SUB DL,48 
    MOV BH,BL
    MOV BL,DL 
    JMP PUS
    
    OUTT:
    
    MAIN ENDP
END MAIN