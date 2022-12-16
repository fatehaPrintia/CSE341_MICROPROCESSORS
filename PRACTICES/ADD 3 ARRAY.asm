.MODEL SMALL  
 
.STACK 100H
.DATA    
A DB 1,3,4,5,6
B DB 2,3,4,5,6
C DB 2,3,4,5,6
D DB 5 DUP(?)

.CODE
MAIN PROC         
    MOV AX,@DATA
    MOV DS,AX  
    
    MOV SI,0
    MOV CX,5   
    MOV DI,4
    AC:
    MOV AL,A[SI]
    MOV AH,C[SI]
    ADD AL,AH   
    ADD AL,B[DI] 
    MOV D[SI],AL
    INC SI
    DEC DI
    LOOP AC
    
    MOV CX,5
    MOV SI,0
    OUTT:
    MOV DL,D[SI] 
    ADD DL,48
    MOV AH,2
    INT 21H
    INC SI
    LOOP OUTT
    
    MAIN ENDP
END MAIN