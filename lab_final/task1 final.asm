.MODEL SMALL  
 
.STACK 100H
.DATA    

.CODE
MAIN PROC         
    MOV AX,@DATA
    MOV DS,AX  
    
    MOV AX,2
    MOV DX,1
    
    MOV CX,5
    SUMM:

    MOV BX,3
    MUL BX  
    ADD DX,AX
    LOOP SUMM


    MAIN ENDP
END MAIN
