#Bada Boom!!! <generadores> 20 pts
	
#	Defina un generador que reciba un numero entero positivo mayor a 0 N,
#	dicho generador proporciona numero de 1 hasta N
#	con las siguientes condiciones:
#		1) si es multiplo de 3 coloque la cadena "Bada"
#		2) si es multiplo de 5 coloque la cadena "Boom!!"
#		3) si es multiplo de 3 y 5 coloque "Bada Boom!!"
		
def genBadaBoom(N):
	d=1
	while d<=N:
		if d % 3 == 0 :
			yield "Bada"
		
		elif d % 3 == 0 and d % 5:
			yield "Bada Boom"
			
		elif d % 5 == 0:
			yield "Boom"
			
		else:
			yield d
			
		d = d + 1
		
a = genBadaBoom(10)
z = [e for e in a]
print(z)
#[1,2,"Bada",4,"Boom","Bada",7,8,"Bada","Boom"]











