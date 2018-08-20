org 00h
mov a,#00h
mov p0,a;salida a display 1
mov a,#00h
mov p1,a;salida a display 2
mov a,#0ffh
mov p2,a;entrada de datos
mov a,#00h
mov p3,a;salida

ljmp main

main: 
mov a, p2
LCALL tiempo
mov b, p2
LCALL tiempo
add a,b
DA a ;ajuste a decimal
mov p3,a
Lcall tiempo
ANL a, #0fh;and logico 00001111
mov R2,a
mov a, p3;tomo valor de suma de puerto 3
swap a;volteo nibbles del acumulador
ANL a, #0fh
mov R3,a

ljmp cero1;se escribe el primer digito en el display 1

cero1:
cjne R3,#00h, uno1
mov p0, #40h;1000000
ljmp cero2

uno1:
cjne R3,#01h,dos1
mov p0, #79h;1111001
ljmp cero2

dos1:
cjne R3,#02h,tres1
mov p0, #24h;0100100
ljmp cero2

tres1:
cjne R3,#03h,cuatro1
mov p0, #30h;0110000
ljmp cero2

cuatro1:
cjne R3,#04h,cinco1
mov p0, #19h;0011001
ljmp cero2

cinco1:
cjne R3,#05h,seis1
mov p0, #12h;0010010
ljmp cero2

seis1:
cjne R3,#06h,siete1
mov p0, #02h;0000010
ljmp cero2

siete1:
cjne R3,#07h,ocho1
mov p0, #38h;0111000
ljmp cero2

ocho1:
cjne R3,#08h,nueve1
mov p0, #00h;0000000
ljmp cero2

nueve1:
cjne R3,#09h,cero2
mov p0, #18h;0011000
ljmp cero2

cero2:
cjne R2,#00h, uno2
mov p1, #40h;1000000
ljmp main

uno2:
cjne R2,#01h,dos2
mov p1, #79h;1111001
ljmp main

dos2:
cjne R2,#02h,tres2
mov p1, #24h;0100100
ljmp main

tres2:
cjne R2,#03h,cuatro2
mov p1, #30h;0110000
ljmp main

cuatro2:
cjne R2,#04h,cinco2
mov p1, #19h;0011001
ljmp main

cinco2:
cjne R2,#05h,seis2
mov p1, #12h;0010010
ljmp main

seis2:
cjne R2,#06h,siete2
mov p1, #02h;0000010
ljmp main

siete2:
cjne R2,#07h,ocho2
mov p1, #38h;0111000
ljmp main

ocho2:
cjne R2,#08h,nueve2
mov p1, #00h;0000000
ljmp main

nueve2:
cjne R2,#09h,error
mov p1, #18h;0011000
ljmp main

error:
ljmp main

tiempo: nop
ret
end