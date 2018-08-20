org 00h
mov a, #00h
mov p1,a
mov a, #0ffh
mov p3, a
Ljmp main
main: mov a, p3
mov b, a
LCALL tiempo
mov a, p3
add a,b
mov p1,a
Lcall tiempo
ljmp main
tiempo: nop
ret
end