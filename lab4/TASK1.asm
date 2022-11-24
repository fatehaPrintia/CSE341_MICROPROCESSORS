
.MODEL SMALL
.STACK 100H
.DATA 
 a db "*$"    
.CODE   
MAIN PROC 
    
    mov ax,@data
    mov ds,ax 
    
    mov cx,80

    mov ah,9
    start:
        LEA DX,A
        int 21h
        
    loop start
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN