.MODEL SMALL
ORG 100H
.DATA
A DB 5 DUP(?) 
B DB " PAL$"  
C DB "NOT  PAL$"
.CODE
MAIN PROC 
    
    MOV AX,@DATA
    MOV DS,AX
    
    CALL PALINDROME
    RET
    
    PALINDROME PROC 
         MOV CX,5
       MOV SI,0
       INPUT:    
       MOV AH,1
       INT 21H    
  
       MOV A[SI],AL 
       INC SI 
       LOOP INPUT
       
       MOV SI,0
       MOV DI,4
       MOV CX,4
       CHECK:
       MOV AL,A[SI]
       MOV AH,A[DI]
       CMP AL,AH
       JNE NOT_PALINDROME
       INC SI
       DEC DI
       LOOP CHECK
       
       LEA DX,B
       MOV AH ,9 
       INT 21H 
       JMP EXIT 
       
       NOT_PALINDROME:
       LEA DX, C
       MOV AH ,9 
       INT 21H
       EXIT:
       RET
       
    PALINDROME ENDP
    END
                 
    MAIN ENDP
END MAIN