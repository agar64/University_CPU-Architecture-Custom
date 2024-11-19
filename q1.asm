     goto main (1 2)
     wb 0      (3)
          
n    ww 5      (4 5 6 7)     (1)
it1  ww 0      (8 9 10 11)   (2)
it2  ww 0      (12 13 14 15) (3)
it3  ww 0      (16 17 18 19) (4)
c1   ww 1      (20 21 22 23) (5)

main add x, n         (x = 5)
     mov x, it1       (it1 = 5)
     sub x, c1        (x = 4)
	 mov x, it2       (it2 = 4)
	 sub x, it2       (x = 0)
	 add x, n         (x = n)
lp1  add x, it3       (x = x + it3)
	 mov x, it3       (it3 = x)
	 sub x, it3       (x = 0)
	 add x, it2       (x = it2)
     jz  x, hlt
	 sub x, c1        (x = x - 1)
     jz  x, out
	 mov x, it2       (it2 = x)
	 sub x, it2       (x = 0)
	 add x, n         (x = n)
     goto lp1
out  add x, it3       (x = it3)
     mov x, n         (n = it3)
	 sub x, n         (x = 0)
     add x, it1       (x = it1)
     jz  x, hlt
     sub x, c1        (x = it1 - 1)
	 mov x, it1       (it1 = x)
	 sub x, c1        (x = 4)
	 mov x, it2       (it2 = 4)
	 sub x, it2       (x = 0)
     goto lp1
hlt  add x, it3
     mov x, n
	 halt