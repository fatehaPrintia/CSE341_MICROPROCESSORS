.MODEL SMALL
 .STACK 100H

 .DATA
   PROMPT_1  DB  'Enter a string of Capital Letters : $'
   PROMPT_2  DB  0DH,0AH,'The longest consecutive increasing string is : $'
   INVALID   DB  0DH,0AH,'Invalid string of Capital Letters. Try again : $'
 
 .CODE
   MAIN PROC
     MOV AX, @DATA                ; initialize DS
     MOV DS, AX

     LEA DX, PROMPT_1             ; load and display the string PROMPT_1
     MOV AH, 9
     INT 21H

     JMP @START                   ; jump to label @START

     @TRY_AGAIN:                  ; jump label

     LEA DX, INVALID              ; load and display the string INVALID
     MOV AH, 9
     INT 21H

     @START:                      ; jump label
                                   
     MOV AH, 1                    ; set input function
     INT 21H                      ; read a character

     CMP AL, 0DH                  ; compare AL with CR
     JE @TRY_AGAIN                ; jump to label @TRY_AGAIN if AL=CR

     CMP AL, 41H                  ; compare AL with 41H
     JB @TRY_AGAIN                ; jump to label @TRY_AGAIN if AL<41H

     CMP AL, 5AH                  ; comapre AL with 5AH
     JA @TRY_AGAIN                ; jump to label @TRY_AGAIN if AL>5AH

     MOV BL, AL                   ; set BL=AL
     MOV BH, AL                   ; set BH=AL
     MOV DH, AL                   ; set DH=AL
     MOV DL, 1                    ; set DL=1
     MOV CL, 1                    ; set CL=1

     @INPUT:                      ; loop label
       INT 21H                    ; read a character

       CMP AL, 0DH                ; compare AL with CR
       JE @END_INPUT              ; jump to label @END_INPUT if AL=CR

       CMP AL, 41H                ; compare AL with 41H
       JB @TRY_AGAIN              ; jump to label @TRY_AGAIN if AL<41H

       CMP AL, 5AH                ; comapre AL with 5AH
       JA @TRY_AGAIN              ; jump to label @TRY_AGAIN if AL>5AH

       INC BL                     ; set BL=BL+1

       CMP AL, BL                 ; compare AL with BL
       JNE @CHECK_AND_REPLACE     ; jump to label @CHECK_AND_REPLACE if AL!=BL

       INC CL                     ; set CL=CL+1
       JMP @INPUT                 ; jump to label @INPUT

       @CHECK_AND_REPLACE:        ; jump label

       CMP CL, DL                 ; compare CL with DL
       JLE @SKIP_UPDATION_1       ; jump to label @SKIP_UPDATION_1 if CL<=DL

       MOV DH, BH                 ; set DH=BH
       MOV DL, CL                 ; set DL=CL

       @SKIP_UPDATION_1:          ; jump label

       MOV BH, AL                 ; set BH=AL
       MOV BL, AL                 ; set BL=AL
       MOV CL, 1                  ; set CL=1
     JMP @INPUT                   ; jump to label @INPUT

     @END_INPUT:                  ; jump label

     CMP CL, DL                   ; compare CL with DL
     JLE @SKIP_UPDATION_2         ; jump to label @SKIP_UPDATION_2 if CL<=DL

     MOV DH, BH                   ; set DH=BH
     MOV DL, CL                   ; set DL=CL

     @SKIP_UPDATION_2:            ; jump label

     MOV BX, DX                   ; set BX=DX

     LEA DX, PROMPT_2             ; load and display the string PROMPT_2
     MOV AH, 9
     INT 21H

     XOR CX, CX                   ; clear CX
     MOV CL, BL                   ; set CL=BL

     MOV DL, BH                   ; set DL=BH
     MOV AH, 2                    ; set output function

     @OUTPUT:                     ; loop label
       INT 21H                    ; print a character
       INC DL                     ; set DL=DL+1
     LOOP @OUTPUT                 ; jump to label @OUTPUT if CX!=0

     MOV AH, 4CH                  ; return control to DOS
     INT 21H
   MAIN ENDP
 END MAIN