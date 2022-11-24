.MODEL SMALL
.STACK 100H
.DATA 
    A DB 'Please insert a character:$'
.CODE
    MAIN PROC  
       
        MOV AX,@DATA
        MOV DS,AX
    
        LEA DX,A
        MOV AH,9
        INT 21H  
        
        MOV AH,1
        INT 21H
        
        MOV DL,AL
        MOV AH,2
        INT 21H
        
        MOV AH,4CH
        INT 21H
        MAIN ENDP
    END MAIN