.MODEL SMALL  


    
.STACK 100H
.DATA    
 A DB "*$" 

.CODE
MAIN PROC         
    MOV AX,@DATA
    MOV DS,AX  
    
    MOV CX,80
    
    LOOOP:
    LEA DX,A  
    MOV AH,9
    INT 21H
    
    LOOP LOOOP
    
    MAIN ENDP
END MAIN