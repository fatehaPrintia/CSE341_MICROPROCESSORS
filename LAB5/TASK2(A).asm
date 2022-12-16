.MODEL SMALL  


    
.STACK 100H
.DATA    
 A DB "*$" 

.CODE
MAIN PROC         
    MOV AX,@DATA
    MOV DS,AX  
    
    MOV CX,80
    MOV BX,1
    MOV DX,0
    LOOOP: 
    CMP BX,148
    JG EXIT
    ADD DX,BX
    ADD BX,3
    
  
    LOOP LOOOP
    EXIT:   
    MOV AH,2

    INT 21H
    MAIN ENDP
END MAIN