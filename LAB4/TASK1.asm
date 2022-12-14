
.MODEL SMALL
.STACK 100H
.DATA       
.CODE   
MAIN PROC  
    

   MOV AX,4 
   NEG AX   
   MOV BX,0
   CMP AX,BX
   JL NEGATIVE   
   JMP EXIT
   
   NEGATIVE:
   MOV AX,5
   
   
   
   EXIT:
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN