     goto main (1 2)
     wb 0      (3)
          
n    ww 6      (4 5 6 7)     (1)
A    ww 0      (12 13 14 15) (3)
B    ww 0      (16 17 18 19) (4)
C    ww 0
D    ww 0
c1   ww 1      (20 21 22 23) (5)

main add x, n         (x = 6)
     jz  x, hlt       (0º número é 0)
	 mov x, A         (A = 5)
	 sub x, A         (x = 0)
	 add x, c1        (x = 1)
lp1  add x, B         (x = x + B)
	 mov x, C         (C = x)
	 sub x, C         (x = 0)
	 add x, A         (x = A)
     jz  x, hlt
	 sub x, c1        (x = x - 1)
     jz  x, hlt
	 mov x, A         (A = x)
	 sub x, A         (x = 0)
	 add x, B         (x = B)
	 mov x, D         (D = B)
	 sub x, B         (x = 0)
	 add x, C         (x = C)
	 mov x, B         (B = x)
	 sub x, B         (x = 0)
	 add x, D         (x = D)
     goto lp1
hlt  add x, C
     mov x, n
	 halt