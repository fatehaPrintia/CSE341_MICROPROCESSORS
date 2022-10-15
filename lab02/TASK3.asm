
.MODEL SMALL
.STACK 100H
.DATA       
.CODE   
MAIN PROC  
    

 
    ;TASK3        
    MOV AX,50
    SUB AX,48 
    
    MOV BX,51
    SUB BX,48
    
    ADD AX,BX 
    ADD AX,48
    
    MOV AH ,2
    MOV DX, AX 
    INT 21H 
    
    
    
    
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN