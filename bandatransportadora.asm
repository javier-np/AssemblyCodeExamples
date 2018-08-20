org 00h
mov a, #0ffh ;puerto de salida
mov p1,a
mov a, #00h ;puerto de entrada
mov p0, a
;programa principal

ljmp main
main: mov a, p0
cjne a, #04h, main
ljmp rutina1

rutina1: mov a,#00h
mov p1,a;cada vez que sale un dato por un puerto se debe ejecutar una subrutina de tiempo
lcall tiempo
rutina2: mov a,p0
cjne a, #06h, rutina2
mov a, #01h
mov p1,a
lcall tiempo
rutina3: mov a,p0
cjne a, #05h,rutina3
mov a, #00h
mov p1,a
lcall tiempo
ljmp main
tiempo: nop
ret
