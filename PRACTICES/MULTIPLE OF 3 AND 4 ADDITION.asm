.MODEL SMALL
.STACK 100H
.DATA    
A DB 4,3,6,5,8,9,4,1,2,7
MAIN PROC         
    MOV AX,@DATA
    MOV DS,AX    
    
    MOV CX,10
    MOV SI,0 
    MOV BH,3
    MOV BL,4 

    
    MOV DL,0  
    MOV DH,0
    START:
    MOV AL,A[SI]
    
    MOV AH,0 
    DIV BH
    CMP AH,0
    JE GO_THREE 
    MOV AL,A[SI] 
    
    MOV AH,0
    DIV BL
    CMP AH,0
    JE GO_FOUR 
    
    JMP BEFORE
    
    
    GO_THREE:
    MOV AL,A[SI]
    
    MOV AH,0 
    ADD DL,AL 
    JMP BEFORE
    GO_FOUR:  
    MOV AL,A[SI] 
    
    MOV AH,0 
    ADD DH,AL  
    BEFORE:  
    INC SI
    LOOP START
    
    MAIN ENDP
END MAIN