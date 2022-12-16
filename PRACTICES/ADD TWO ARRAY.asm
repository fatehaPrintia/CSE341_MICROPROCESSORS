.MODEL SMALL  


    
.STACK 100H
.DATA    
 A DB "2","3","4","5","6"
 B DB "2","3","4","5","6"
 C DB 5 DUP(?) 

.CODE
MAIN PROC         
    MOV AX,@DATA
    MOV DS,AX  
    
    
    MOV SI,0
    MOV CX,5
    
    ADDD:
    MOV BL,A[SI]
    MOV BH,B[SI]
    ADD BL,BH
    SUB BL,48
    MOV C[SI],BL
    INC SI
    
    LOOP ADDD
    
    MOV AH,2
    MOV SI,0
    MOV CX,5
    OUTT:
    MOV DL,C[SI]
    INC SI
    INT 21H
    LOOP OUTT
    
    
    
    
    
    
    MAIN ENDP
END MAIN