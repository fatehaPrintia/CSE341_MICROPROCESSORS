.MODEL SMALL
.STACK 100H
.DATA
A DB "1","5","4","3","2"  
B DB "3","3","2","1","6"   
C DB 5 DUP (?)
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS,AX  
    
    MOV CX,5   
    
    MOV SI,0
    MOV DI,4
    
    OUTER:   
    MOV AL,A[SI]
    MOV AH, B[DI]
    ADD AL,AH
    
    MOV C[SI],AL
    INC SI
    DEC DI
    
    LOOP OUTER
    
    
    MOV SI,0
    MOV CX,5
    OUTPUT:
    MOV AH,2
    MOV DL,C[SI] 
    SUB DL,48
    INC SI
    INT 21H
    LOOP OUTPUT 
   
    
    
    
    
    
    
    MAIN ENDP
END MAIN

