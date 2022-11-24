.MODEL SMALL
 .STACK 100H

 .DATA
   ;A  DB 1,4,3
   A DB 3 DUP(?)
  
 
 .CODE
   MAIN PROC    
   
   mov AX, @data   
   MOV DS,AX
  
   mov SI,0 
   MOV CX,3 
   
   
   INP:
   MOV AH,1      
   INT 21H
   MOV A[SI],AL
   INC SI
   
   LOOP INP
   
   
   
   MOV SI,0
   MOV CX,3  
   
   mov AL,A[si]   
   
   START:
                
   cmp AL,A[SI]        
   jLE greater
   INC SI
   
   JMP LESS   
   
   greater:     
   MOV AL,A[SI]
   INC SI    
   
   
   LESS:
   
   LOOP START
   
   PRINT: 
   MOV DL,AL
   MOV AH,2
   INT 21H
   
  
   MAIN ENDP
 END MAIN