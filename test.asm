     goto main (1 2)
     wb 0      (3)
          
n    ww 5      (4 5 6 7)     (1)
it1  ww 0      (8 9 10 11)   (2)
it2  ww 0      (12 13 14 15) (3)
it3  ww 0      (16 17 18 19) (4)
c1   ww 1      (20 21 22 23) (5)

main add x, n         x = 5
     mov x, it1       it1 = 5
lp1  mov x, it2       it2 = 5
	 sub x, c1        x = 4
	 mov x, n  	      n = 4
     add x, n         x = 4 + 4
	 mov x, it3       it3 = x
	 sub x, it3       x = 0
	 add x, it2       x = it2
	 sub x, c1        x = x - 1
     jz  x, out
	 mov x, it2
	 sub x, c1
     goto lp1
out  halt        
     halt
	 
	 
	 sub x, c1        (x = 4)
	 mov x, n  	      (n = 4)
     add x, n         (x = 4 + 4) 
	 add x, it2       (x = it2)
	 sub x, c1        (x = x - 1)
     jz  x, out
	 mov x, it2       (it2 = x (4))
	 sub x, it2
	 add x, it1
	 sub x, c1        (x = x - 1 (4))