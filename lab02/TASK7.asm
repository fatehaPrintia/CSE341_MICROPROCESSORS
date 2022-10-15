
.MODEL SMALL
.STACK 100H
.DATA       
.CODE   
MAIN PROC  
    

    ;TASK 7.1
    MOV AX,6
    MOV BX,3   
    MUL BX
    
    MOV AH,2
    MOV DX, AX 
    INT 21H 
   
    ;TASK 7.2
    MOV AX,10
    MOV BX,5   
    DIV BX
    
    MOV AH,2
    MOV DX, AX 
    INT 21H 
         
   ; ///TASK 6.2    
    MOV AX, 2 
    MOV BX, 2 
    MUL BX
    MOV CX , 5
    DIV AX  


;    
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN