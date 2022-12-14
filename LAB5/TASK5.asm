.MODEL SMALL
 .STACK 100H

 .DATA
   A  DB  1,2,3,4,5
   X DB ?
  
 
 .CODE
   MAIN PROC    
   
   mov AX, @data   
   MOV DS,AX

   MOV AH,1
   INT 21H  
   MOV BL,AL
   

   INT 21H
   MOV X,AL 
   SUB X,48
    
   MOV SI,BX
   SUB SI,48
   
   MOV DL,A[SI] 
 
   ADD DL,X
   ADD DL,48 
   
   MOV AH,2
   INT 21H
   
   MAIN ENDP
 END MAIN