.MODEL SMALL
.STACK 100H
.DATA 
A DW "PRINTIA $"   

.CODE  
MAIN PROC
    MOV AX, @DATA
    MOV DS , AX
   
    MOV CX,7
    MOV SI,0
 
    CHECK:
    MOV AX,A[SI]
    INC SI
    PUSH AX 
    LOOP CHECK 
    
    MOV CX,7
   
    PPOP:
    MOV AH,2
    POP DX
    INT 21H  
    LOOP PPOP
  
    MAIN ENDP
END MAIN
