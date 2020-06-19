def fibo(N):
	A = 0
	B = 1
	
	while A <= N-1:
		yield A
	
		 
		C = A + B
		A = B 
		B = C 
		
a = fibo(10)
z= [e for e in a]
print (z)	



