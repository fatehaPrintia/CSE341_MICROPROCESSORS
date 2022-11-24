.MODEL SMALL
.STACK 100H
.DATA 
   A DB 'ADD:$'
   B DB 'MUL$'  
   C DB 'SUB$'   
   D DB 'DIV$'
.CODE
    MAIN PROC  
       
        MOV AX,@DATA
        MOV DS,AX
        ;//ADD
        LEA DX,A
        MOV AH,9
        INT 21H  

        MOV CX,6

        MOV BH,3

        MOV DH,BH
        ADD DH,CH
                   
        ;//MUL           
        LEA DX,B
        MOV AH,9
        INT 21H 
         
        MOV AL,CH           
        MUL BH
        
        MOV DL,AL
        MOV AH,2   
        INT 21H  
         
        ;//SUB
         LEA DX,C
        MOV AH,9
        INT 21H 
         
        MOV AL,CH           
        MUL BH
        
        MOV DL,AL
        MOV AH,2
        INT 21H  
        
        ;//DIV
        LEA DX,D
        MOV AH,9
        INT 21H 
         
        MOV AX,CX           
        DIV BH
        
        MOV DX,AX
        MOV AH,2
        INT 21H  
        
        MOV AH,4CH
        INT 21H
        MAIN ENDP
    END MAIN