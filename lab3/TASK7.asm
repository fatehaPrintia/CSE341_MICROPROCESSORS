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
    
      
    LEA DX,B
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL 
    
    
    
    LEA DX,A
    MOV AH,9
    INT 21H 
    
    MOV DL,"1"
    MOV AH,2
    INT 21H 
    
    SUB BL,17
     
    MOV AH,2
    MOV DL,BL
    INT 21H  
    
      
   
    
    
    
    
    
    
   
    
    MAIN ENDP
END MAIN