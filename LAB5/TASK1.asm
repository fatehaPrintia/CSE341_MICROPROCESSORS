.MODEL SMALL
 .STACK 100H

 .DATA
   A  DB "1"," 2"," 3"," 4"," 5"," 14"," 15"," 16"
  
 
 .CODE
   MAIN PROC    
   
   mov AX, @data   
   MOV DS,AX

   
   
   MOV CX,18
   MOV AH,2  
   MOV SI,0  
   
   START:
   MOV DL,A[SI] 
   
   INT 21H
   INC SI   
   
   LOOP START
   
   MAIN ENDP
 END MAIN