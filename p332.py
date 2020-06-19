#Estrategias de Evaluacion Perezosa
#Python
#Generadores 

#LMT -->limite
def migenerador(LMT):
	N = 1
	while N <= 3:
	
		yield N
		N = N + 1
	N = 1  
		
		#generador de numeros de dos en  dos 
	N = 1
	while N <= 2:
		yield N
		N = N + 1
		
G = migenerador(10)
M = [a for a in G] #Generador consumido 
print (M)
