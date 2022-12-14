.MODEL SMALL
.STACK 100H
.DATA    
A DB "?$"   
B DB "The sum of $"
c db " and $"
d DB " IS $"
.CODE
MAIN PROC         
    MOV AX,@DATA
    MOV DS,AX  
    
      
    LEA DX,A
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL 
    
    INT 21H
    MOV BH,AL 
    
    
    MOV AH,2
    MOV DL,0AH 
    INT 21H
    MOV DL,0DH
    INT 21H 
    
    LEA DX,B
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,BL
    INT 21H 
    
    LEA DX,C
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,BH
    INT 21H  
    
    LEA DX,D
    MOV AH,9
    INT 21H    
    
    ADD BL,BH
    SUB BL,48
    MOV AH,2
    MOV DL, BL
    INT 21H
    
    
    
    
    
    
    
   
    
    MAIN ENDP
END MAIN