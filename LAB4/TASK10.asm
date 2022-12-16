.MODEL SMALL
.STACK 100H
.DATA    
 A DB " min $" 
 B DB " max $"
.CODE
MAIN PROC         
    MOV AX,@DATA
    MOV DS,AX  
  
    MOV AH,1
    INT 21H
    MOV BL,AL
    INT 21H
    MOV BH,AL
    INT 21H    
    MOV CL,AL
    
    
    CMP BL,BH
    JL MIN
    CMP BH,CL
    JG MIN1
    
    LEA DX,A
    MOV AH,9
    INT 21H
    
    MOV DL,BH
    MOV AH,2
    INT 21H
    
    JMP GREATER
  
    MIN:
    CMP BL,CL
    JG MIN1
    
    LEA DX,A
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    JMP GREATER
    MIN1:
    LEA DX,A
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CL
    INT 21H  
    
    GREATER:   
    CMP BL,BH
    JG MAX
    CMP BH,CL
    JL MAX1
    
    LEA DX,B
    MOV AH,9
    INT 21H
    
    MOV DL,BH
    MOV AH,2
    INT 21H
    
    JMP EXIT
  
    MAX:
    CMP BL,CL
    JL MAX1
    
    LEA DX,B
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    JMP EXIT
    MAX1:
    LEA DX,B
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CL
    INT 21H  
    EXIT:
    
    
    MAIN ENDP
END MAIN