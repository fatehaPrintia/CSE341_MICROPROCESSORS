.MODEL SMALL
.STACK 100H
.DATA    
A DB "1","2","3","4","5","1","2","3","4","5"
.CODE
MAIN PROC         
    MOV AX,@DATA
    MOV DS,AX    
    
    MOV CX,10
    MOV SI,0
    START:
    MOV AX,A[SI] 
    PUSH AX 
    INC SI
    LOOP START
    
    MAIN ENDP
END MAIN