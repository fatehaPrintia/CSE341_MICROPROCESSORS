.MODEL SMALL  
 
.STACK 100H
.DATA    

.CODE
MAIN PROC         
    MOV AX,@DATA
    MOV DS,AX  
    
    MOV AX,1
    MOV DX,1
    
    SUMM:

    MOV CL,3
    MUL CL  
    ADD DX,AX
    CMP AX,729
    JE EXIT
    JMP SUMM
    
    EXIT: 
   
    MAIN ENDP
END MAIN