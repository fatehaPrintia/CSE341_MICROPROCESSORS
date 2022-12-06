.MODEL SMALL
.STACK 100H
.DATA 
A DW "8 $"   

.CODE  
MAIN PROC
    MOV AX, @DATA
    MOV DS , AX
   
    MOV CX,9
    MOV BL,1
 
    CHECK:
    MOV AX,9  
    DIV BL 
    CMP AH,0
    JE PUS 
    
    JMP EXIT 

    PUS:
     
    PUSH BX
    
    MOV AH,2
    MOV DX,BX
    ADD DX,48
    INT 21H 
    
    EXIT:
    INC BL
    
    LOOP CHECK
  
    MAIN ENDP
END MAIN
