.MODEL SMALL
.STACK 100H
.DATA 
A DW 5 DUP(?)   
B DB "NOT UNIQUE $"
C DB "UNIQUE $"
.CODE  
MAIN PROC
    MOV AX, @DATA
    MOV DS , AX
   
    MOV CX, 5
    MOV SI,0 
    MOV AH,1
    
    INPUT:  
    INT 21H 
    MOV BL,AL
    MOV BH,0
    PUSH BX
    MOV A[SI],BX
    INC SI  
    LOOP INPUT
        
    MOV CX,5
    OUTER:    
    POP BX  
    MOV SI,0 
    
;    MOV AH,2
;    MOV DL,"1"
;    INT 21H
    
    MOV AH,0
    MOV AL,0
        INNER: 
        CMP AH,5
        JE BAIRE 
        MOV DX,A[SI]
        MOV DH,0
        CMP BX,DX
        JE COUNTER
        JMP EXIT:
        COUNTER:
        INC AL
        EXIT:
        INC SI
        INC AH
        JMP INNER 
    BAIRE:
    CMP AL,1
    JE NORMAL
    JMP NOT_UNIQUE 
    NORMAL:
    LOOP OUTER
    
    UNIQUE: 
    MOV AH,9
    LEA DX,C
    INT 21H
    JMP DONE
    
    
    NOT_UNIQUE:
    MOV AH,9
    LEA DX,B
    INT 21H
    
    DONE:
    

     
    MAIN ENDP
END MAIN
