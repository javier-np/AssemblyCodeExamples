org 00h
ljmp 20h; brinca al registro 20
org 20h

ljmp main
main:mov psw,#10h;banco 2
mov r0, #4Ah ;J
mov r1, #41h ;A
mov r2, #56h ;V
mov r3, #49h ;I
mov r4, #45h ;E
mov r5, #52h ;R
mov psw,#18h ; banco 3
mov r0, #50h ;P
mov r1, #55h ;U
mov r2, #47h ;G
mov r3, #41h ;A

ret
end