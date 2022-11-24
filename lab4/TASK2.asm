
.MODEL SMALL
.STACK 100H
.DATA 
    
.CODE   
MAIN PROC 
   
    ;TASK 2(A)
    mov Cx,148 
                   
    MOV AX,1
    MOV BX,1

    
    start: 
        ADD AX,3
        cmp AX,148  
        JG EXIT 
        ADD BX,AX 
     EXIT:     
    loop start 
    
    
    MOV AH,2
    MOV DX,BX
    INT 21H   
     
     
     
     
     
    ;TASK 2(B)
    mov Cx,25
                   
    MOV AX,100
    MOV BX,100

    
    start: 
        SUB AX,5
        cmp AX,5  
        JL EXIT 
        ADD BX,AX 
     EXIT:     
    loop start 
    
    
    MOV AH,2
    MOV DX,BX
    INT 21H   
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN