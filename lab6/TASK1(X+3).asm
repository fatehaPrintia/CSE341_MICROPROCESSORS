.MODEL SMALL
 .STACK 100H

 .DATA
   A  DB  1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
  
 
 .CODE
   MAIN PROC    
   
   mov AX, @data   
   MOV DS,AX

   
   
   MOV CX,5
   MOV AH,2  
   MOV SI,0  
   
   START:
   MOV DL,A[SI]
   ADD DL,30H 
   
   INT 21H
   ADD SI,3H   
   
   LOOP START
   
   MAIN ENDP
 END MAIN