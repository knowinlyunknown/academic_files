TITLE prg12 : Debugging Logical operation
.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    MOV AX, 6A78H
    MOV BX, 5B28H
    MOV CX, 290AH

    AND AX,BX
    OR CX,AX
    NEG AX

    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN