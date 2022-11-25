.MODEL SMALL
.STACK 100H
.DATA
A DB "1","5","4","3","2"
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS,AX  
    
    MOV BH,0
    MOV BL,5
   
    OUTER:
    CMP BH,BL
    JE EXIT
    MOV CX,4 
    MOV SI,0
        INNER:  
        MOV AH,A[SI]
        MOV AL,A[SI+1]
        CMP AH,AL
        JG SWAP
        JMP SKIP
        SWAP:
        MOV A[SI],AL
        MOV A[SI+1],AH   
        
        SKIP: 
        INC SI
        LOOP INNER
     INC BH 
     jmp outer
    EXIT:  
    
    MOV CX, 5    
    MOV SI, 0  
    MOV AH,2
    OUTPUT: 
    MOV DL,A[SI] 
    INC SI
    INT 21H   
    LOOP OUTPUT
    
    
    
    
    
    
    MAIN ENDP
END MAIN

