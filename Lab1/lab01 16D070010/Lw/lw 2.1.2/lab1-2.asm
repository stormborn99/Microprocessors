Org 0h
ljmp main
Org 100h

main:
MOV 61H, #078H
MOV 60H, #036H
MOV 71H, #079H
MOV 70H, #03AH
MOV A, 70H
CPL A
MOV 70H, A
MOV A, 71H
CPL A
MOV 71H, A
ADD A, #1
MOV 71H, A
MOV A, 70H
ADDC A, #0
MOV 70H, A
MOV A, 61H
ADD A, 71H
MOV 64H, A
CLR A
MOV A, 60H
ADDC A, 70H
MOV 63H, A
CLR A
MOV ACC.0, C
MOV 80H, A
CLR A
CLR C
MOV A, 60H
ADD A, #128
CLR A
MOV ACC.0, C
MOV 81H, A
CLR A
CLR C
MOV A, 70H
ADD A, #128
CLR A
MOV ACC.0, C
MOV 82H, A
CLR A
CLR C
MOV A, 80H
ADD A, 81H
ADD A, 82H
RRC A
CLR A
MOV ACC.0, C
MOV 62H, A
HERE:SJMP HERE
END