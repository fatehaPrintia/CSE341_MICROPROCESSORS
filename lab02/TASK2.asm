
.MODEL SMALL
.STACK 100H
.DATA       
.CODE   
MAIN PROC  
    

    ;TASK2
    MOV AX,50
    MOV BX,51
    MOV CX ,BX
    MOV BX,AX
    MOV AX,CX         
             
    MOV AH ,2
    MOV DX, AX 
    INT 21H
    
    MOV AH ,2
    MOV DX, BX 
    INT 21H
    
    MOV AH ,2
    MOV DX, CX 
    INT 21H
    
    
   
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN