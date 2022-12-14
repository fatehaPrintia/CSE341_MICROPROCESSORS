.MODEL SMALL
.STACK 100H
.DATA    
A DB "   IN DECIMAL IT IS $"   
B DB "ENTER A HEX DIGIT $"
;c db " and $"
;d DB " IS $"
.CODE
MAIN PROC         
    MOV AX,@DATA
    MOV DS,AX  
  

    MOV BL,-3 
    CMP BL,0
    JL NEGG 
    
    MOV DL,BL  
    ADD DL,48
    MOV AH,2
    INT 21H
    JMP EXIT
    NEGG:
    MOV BL,5
    MOV AH,2
    MOV DL,BL 
    ADD DL,48
    INT 21H
    EXIT:
    
    
   
    
    MAIN ENDP
END MAIN