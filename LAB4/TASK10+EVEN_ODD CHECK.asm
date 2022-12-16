.MODEL SMALL  


    
.STACK 100H
.DATA    
 A DB " min $" 
 B DB " max $"    
 C DB " EVEN $"
 D DB " ODD $"
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
    
    MOV CH,2
    MOV AL,BH
    MOV AH,0
    DIV CH
    CMP AH,0
    JE EVEN1 
    
    LEA DX,D
    MOV AH,9
    INT 21H
    
    
    JMP EXIT1
    EVEN1:
    LEA DX,C
    MOV AH,9
    INT 21H
    EXIT1:
    
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
    
    MOV CH,2
    MOV AL,BL
    MOV AH,0
    DIV CH
    CMP AH,0
    JE EVEN2 
    
    LEA DX,D
    MOV AH,9
    INT 21H
    
    
    JMP EXIT2
    EVEN2:
    LEA DX,C
    MOV AH,9
    INT 21H
    EXIT2:
    
    JMP GREATER
    MIN1:
    LEA DX,A
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CL
    INT 21H  
    MOV CH,2
    MOV AL,CL
    MOV AH,0
    DIV CH
    CMP AH,0
    JE EVEN3 
    
    LEA DX,D
    MOV AH,9
    INT 21H
    
    
    JMP EXIT3
    EVEN3:
    LEA DX,C
    MOV AH,9
    INT 21H
    EXIT3:
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
    MOV CH,2
    MOV AL,BH
    MOV AH,0
    DIV CH
    CMP AH,0
    JE EVEN4 
    
    LEA DX,D
    MOV AH,9
    INT 21H
    
    
    JMP EXIT4
    EVEN4:
    LEA DX,C
    MOV AH,9
    INT 21H
    EXIT4:
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
   MOV CH,2
    MOV AL,BL
    MOV AH,0
    DIV CH
    CMP AH,0
    JE EVEN5 
    
    LEA DX,D
    MOV AH,9
    INT 21H
    
    
    JMP EXIT5
    EVEN5:
    LEA DX,C
    MOV AH,9
    INT 21H
    EXIT5:
    JMP EXIT
    MAX1:
    LEA DX,B
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CL
    INT 21H
    MOV CH,2
    MOV AL,CL
    MOV AH,0
    DIV CH
    CMP AH,0
    JE EVEN6 
    
    LEA DX,D
    MOV AH,9
    INT 21H
    
    
    JMP EXIT6
    EVEN6:
    LEA DX,C
    MOV AH,9
    INT 21H
    EXIT6:
    

      
    EXIT:
;    
;    MOV AX,4C00H
;    INT 21H
    MAIN ENDP
END MAIN