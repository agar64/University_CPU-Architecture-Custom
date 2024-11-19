     goto main (1 2)
     wb 0      (3)
          
n    ww 6      (4 5 6 7)     (1)
A    ww 0      (12 13 14 15) (3)
B    ww 0      (16 17 18 19) (4)
c1   ww 1      (20 21 22 23) (5)
c31  ww 31
msk  ww 2147483648

main add x, n         (x = n)
     jz  x, hlt       (0 não é primo)
     goto lp1

hlt2 add x, c31       (x = 31)
     sub x, A         (x = 31 - A)
     mov x, n
hlt  halt


lp1  and x, msk       (x & msk)
	 sub x, msk       (x = x - msk)
     jz  x, hlt2      (hlt if zero)
     mov x, B         (B = x)
	 sub x, B         (x = 0)
	 add x, n         (x = n)
     lshft x, n       (x = n << 1)
     mov x, n         (n = x)
goto count


count sub x, n        (x = 0)
     add x, A        (x = A)
	 add x, c1       (x = x + 1)
	 mov x, A        (A = x)
	 sub x, A        (x = 0)
	 add x, n        (x = n)
     goto lp1