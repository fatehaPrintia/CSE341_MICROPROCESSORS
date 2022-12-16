.MODEL SMALL
.STACK 100H
.DATA 
A DW "ENTER A HEX DIGIT: $"
B DW "IN DECIMAL IT IS $"
C DW "DO YOU WANT TO DO IT AGAIN? $"
D DW "ILLEGAL CHARACTER - ENTER 0 .. 9 OR A .. F: C $"     

.CODE
MAIN PROC 
    
    MOV AX, @DATA
    MOV DS, AX 
    ABAR:
    ;HEXA INPUT
    LEA DX,A
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H 
    MOV CL, AL 
    
    MOV AH,2
    MOV DL, 0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    ;DECIMAL PRINT     
    LEA DX,B
    MOV AH,9
    INT 21H 
    
    CMP CL,48
    JE PRINTNUM
    CMP CL,49
    JE PRINTNUM
    CMP CL,50
    JE PRINTNUM
    CMP CL,51
    JE PRINTNUM
    CMP CL,52
    JE PRINTNUM
    CMP CL,53
    JE PRINTNUM
    CMP CL,54
    JE PRINTNUM
    CMP CL,55
    JE PRINTNUM
    CMP CL,56
    JE PRINTNUM
    CMP CL,57
    JE PRINTNUM
    CMP CL,"A"
    JE PRINTa
    CMP CL,"B"
    JE PRINTb
    CMP CL,"C"
    JE PRINTc
    CMP CL,"D"
    JE PRINTd
    CMP CL,"E"
    JE PRINTe
    CMP CL,"F"
    JE PRINTf 
    JMP ERROR
   
    
    
    PRINTNUM:
    MOV DL,CL  
    MOV AH,2
    INT 21H
    JMP EXIT
    
    PRINTa:
    MOV DL,31H  
    MOV AH,2
    INT 21H
    MOV DL,30H
    INT 21H
    JMP EXIT 
    
    PRINTb:
    MOV DL,31H  
    MOV AH,2
    INT 21H
    MOV DL,31H
    INT 21H
    JMP EXIT
    
    PRINTc:
    MOV DL,31H  
    MOV AH,2
    INT 21H
    MOV DL,32H
    INT 21H
    JMP EXIT
    
    PRINTd:
   MOV DL,31H  
    MOV AH,2
    INT 21H
    MOV DL,33H
    INT 21H
    JMP EXIT
    
    PRINTe:
    MOV DL,31H  
    MOV AH,2
    INT 21H
    MOV DL,34H
    INT 21H
    JMP EXIT
    
    PRINTf:
    MOV DL,31H  
    MOV AH,2
    INT 21H
    MOV DL,35H
    INT 21H
    JMP EXIT
    
    ERROR:
    LEA DX,D
    MOV AH,9
    INT 21H       
    
    
    
    EXIT: 
    
    MOV AH,2
    MOV DL, 0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    ;LOOP
    LEA DX,C
    MOV AH,9
    INT 21H 
    
    MOV AH,1 
    INT 21H 
    
    CMP AL,"y"
    JE ABAR 
    CMP AL,"Y"
    JE ABAR 
    
    
    
    
    MAIN ENDP
END MAIN
