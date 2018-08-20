org 00h
mov a,#0ffh ;configuracion de puerto de entrada
mov a,#00h
mov p1,a;configuracion de puerto de salida
ljmp main

main: mov a, p0
cjne a, #08h, main
ljmp rutina

rutina: mov a,#01h
mov p1,a;cada vez que sale un dato por un puerto se debe ejecutar una subrutina de tiempo
lcall tiempo
mov a,#00h
mov p1,a
lcall tiempo
ljmp main
tiempo: nop
ret
end

