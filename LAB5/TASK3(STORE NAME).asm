.MODEL SMALL
 .STACK 100H

 .DATA
   A  DB  7 dup(?)
   B DB "PRINTIA $"
 
 .CODE
   MAIN PROC    
   
   mov AX, @data   
   MOV DS,AX


   MOV CX,7
   MOV SI,0  
   
   START: 
     
   MOV AH,1
   INT 21H
   MOV A[SI],AL  
   INC SI      
                
   LOOP START   
   
   MOV CX,7 
   MOV AH,2 
   MOV SI,0
   
   ARR:
          
   MOV DL,A[SI]
   INT 21H  
   INC SI
   LOOP ARR
   
   MAIN ENDP
   
 END MAIN