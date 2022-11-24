
.MODEL SMALL
.STACK 100H
.DATA       
.CODE   
MAIN PROC  
    

   MOV AX,0
   ;NEG AX   
   CMP AX,0
   JL NEGATIVE
   JE EQUAL 
   MOV BX,1  
   JMP EXIT
   
   NEGATIVE:
   MOV BX,-1

   EQUAL: MOV BX,0
   
   
   EXIT:
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN