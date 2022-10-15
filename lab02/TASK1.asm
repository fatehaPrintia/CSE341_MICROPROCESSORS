
.MODEL SMALL
.STACK 100H
.DATA       
.CODE   
MAIN PROC  
    
    ;TASK1  
    
    MOV AX,7
    MOV BX,AX
    
    
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN