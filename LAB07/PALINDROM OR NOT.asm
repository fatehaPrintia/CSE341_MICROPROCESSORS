.MODEL SMALL
.STACK 100H
.DATA 
A DW "MMADAMM $"   
B DB "PAL $"
C DB "NOT $"
.CODE  
MAIN PROC
    MOV AX, @DATA
    MOV DS , AX
   
    MOV CX, 7
    MOV SI,0 
    
    PUS: 
    MOV AX, A[SI]
    MOV AH,0 
    PUSH AX 
    INC SI 
    LOOP PUS
    
    MOV CX,3
    MOV SI,0
    CHECK:
    POP BX
    MOV DX,A[SI]
    MOV DH,0
    CMP BX,DX
    JE PALL 
    JMP NOT_PAL
    PALL:
    INC SI
    LOOP CHECK 
    
    PAL:
    LEA DX, B
    MOV AH,9
    INT 21H 
    
    JMP EXIT
    
    NOT_PAL:
    LEA DX,C
    MOV AH,9
    INT 21H
    
    EXIT:

    

     
    MAIN ENDP
END MAIN
