.model small
.stack 100h
.data
.code 
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AH,1
    INT 21H

    MOV BL,AL 
    ADD BL,32

    MOV AH,2
    INT 21H
    MOV DL,0AH 
  
    MOV DL,0DH 
    MOV AH,2 
    INT 21H 


    MOV DL,BL
    MOV AH,2
    INT 21H


    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN