
.MODEL SMALL
.STACK 100H
.DATA       
.CODE   
MAIN PROC  
    

    
    ;///task 6.1
    
    MOV AX,4
    MOV BX,5   
    NEG AX
    ADD AX,BX 
    
    MOV AH,2
    MOV DX, AX 
    INT 21H 
         
    ;///TASK 6.2
    
    
    MOV AX,2  
    INC AX
    NEG AX
    
    ;//TASK6.3
    MOV AX, 4
    MOV BX, 3 
    MOV CX, 5
    INC BX
    ADD AX,BX
    MOV CX,AX 
    
    ;//task 6.4
    
    MOV AX,4
    MOV BX,5
    DEC AX
    SUB BX,AX
    MOV AX,BX
    
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN