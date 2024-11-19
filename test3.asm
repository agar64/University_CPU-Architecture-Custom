     goto main (1 2)
     wb 0      (3)
          
n    ww 9      (4 5 6 7)     (1)
A    ww 2      (12 13 14 15) (3)
B    ww 0      (16 17 18 19) (4)
aux  ww 0
c1   ww 1      (20 21 22 23) (5)
c0   ww 0

main add x, n         (x = n)
     jz  x, hlt       (0 não é primo)
     sub x, c1        (x = x - 1)
     jz  x, hlt       (1 não é primo)
     sub x, c1        (x = x - 1)
     jz  x, hlt2      (2 é primo)	 
     mov x, aux       (aux = x)
     sub x, aux       (x = 0)
     rshft x, n       (x = n/2)
     mov x, B         (B = n/2)
     sub x, B         (x = 0)
     add x, n         (x = n)


lp1  mod x, A         (x = x % A)
     jz  x, hlt
	 mov x, aux
	 sub x, aux
	 add x, A
	 add x, c1
	 mov x, A
	 sub x, A
	 add x, B
	 sub x, A
     goto hlt2

hlt  mov x, n
	 halt


hlt2 add x, c0        (x = 1)
     mov x, n         (n = 1)
	 halt