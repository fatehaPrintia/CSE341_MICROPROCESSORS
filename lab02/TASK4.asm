
.MODEL SMALL
.STACK 100H
.DATA       
.CODE   
MAIN PROC  
    

    
    ;;;//TASK 4
    MOV AX,54
    SUB AX,48 

    MOV BX,52
    SUB BX,48
    
    SUB AX,BX 
    ADD AX,48
    
    MOV AH ,2
    MOV DX, AX 
    INT 21H   
    
    
  
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN