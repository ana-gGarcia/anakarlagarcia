##Primos  <generadores>  30 pts

##	Realice una generador que devuelva  de todos lo numeros primos
	##existentes de 0 hasta n-1 que cumpla con el siguiente prototipo:
	
##	def gprimo(N):
	
	##	pass
	
	
	##a = gprimo(10)
	##z = [e for e in a]
	##print(z)
	# [2, 3 ,5 ,7 ]
def gprimo(N):
	a = 1
	b = 1
	c = 0
	while b < N:
		while a < N:
			if b % a == 0:
				c = c + 1
			a = a + 1
		if c == 2:
			yield b
		c = 0
		b = b + 1
		a = 1

n = gprimo(12)
z = [e for e in n]
print(z)



