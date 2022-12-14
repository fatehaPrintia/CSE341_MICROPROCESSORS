.MODEL SMALL
.STACK 100H
.DATA    
 A DB "THIS IS NOT DIVISIBLE BY BOTH 5 AND 11 $" 
 B DB "THIS IS DIVISIBLE BY BOTH 5 AND 11 $"
.CODE
MAIN PROC         
    MOV AX,@DATA
    MOV DS,AX  
  

    MOV AX,5
    
    MOV CX,AX
    
    MOV BL,5
    DIV BL
    
    CMP AH,0
    JE DONE
    JMP EXIT
    
    DONE:
    MOV AX,CX
    MOV DL,11
    DIV DL
    CMP AH,0
    JE DIVISE
    JMP EXIT
    
    DIVISE:
    
    LEA DX,B
    MOV AH,9
    INT 21H
    
    
    
    EXIT:  
    LEA DX,A
    MOV AH,9
    INT 21H
    
   
    
   
    
    MAIN ENDP
END MAIN