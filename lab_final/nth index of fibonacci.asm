.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV AH,1
    INT 21H
    MOV CH,AL
    CMP CH,"1"
    JE EQL
    CMP CH,"2"
    JE EQL1
    MOV BH,0
    MOV BL,1
    MOV DL,0
    SUB CH,48
    SUB CH,3
    MOV CL,0
PUS:
    MOV DL,BH
    ADD DL,BL
    CMP CL,CH
    JE OUTT
    INC CL
    MOV BH,BL
    MOV BL,DL
JMP PUS
EQL:
    MOV DL ,"0"
    MOV AH,2
    INT 21H
JMP EXIT
EQL1:
    MOV DL ,"1"
    MOV AH,2
    INT 21H
JMP EXIT

OUTT:
    ADD DL,48
    MOV AH,2
    INT 21H
EXIT:
MAIN ENDP
END MAIN