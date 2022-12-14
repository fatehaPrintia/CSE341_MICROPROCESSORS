.MODEL SMALL
.STACK 100H
.DATA    
 A DB "THIS IS AN ODD NUMBER $" 
 B DB "THIS IS AN EVEN NUMBER $"
.CODE
MAIN PROC         
    MOV AX,@DATA
    MOV DS,AX  
  

 
    MOV AH,1
    INT 21H
    
    MOV BL,AL
    
    MOV BH,2
    DIV BH
    
    CMP AH,0
    JE EVEN
    
    LEA DX,A
    MOV AH,9
    INT 21H
    JMP EXIT
    
    EVEN:
    LEA DX,B
    MOV AH,9
    INT 21H
    
    
    
    EXIT:
    
   
    
   
    
    MAIN ENDP
END MAIN