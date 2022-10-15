
.MODEL SMALL
.STACK 100H
.DATA       
.CODE   
MAIN PROC  
    
    ;;TASK5
    
    MOV AX,54
    
   
    MOV BX,52            ;IF A=5 B=10
                          ; A=A+B ,B=A-B
                          ;A=A-B
    
    ADD AX,BX                  
    NEG BX
    ADD BX,AX 
    
    SUB AX,BX
    
    
    
    MOV AH ,2
    MOV DX, AX 
    INT 21H 
    
    MOV AH ,2
    MOV DX, BX 
    INT 21H 
    

    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN