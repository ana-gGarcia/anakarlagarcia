requisitos = {
	"Oracle","SQL/PL","Linux","Unix","Shell","C++",
	"Proc*C","TuxedoV12", "VB6", "Java","WebServices","MicroServicios"
} 

print(requisitos)
tiene = set()
minrequi = list(requisitos);


n1 = int(input('Cuenta con una LIC o a fines  1 para si o 2 para no  \n>'))
print(n1) # Un salto de linea de separador


if n1 == 1:
	n2 = int(input('experiencia minima de 2 anos  1 para si o 2 para no  \n>'))
	
	def trabajo(lenguajes):
		if not lenguajes:
			return[]
		else:
			print(lenguajes[0])
			conju = input()
		
			if conju == 1:
				
				tiene.add(lenguajes[0])
				
			trabajo(lenguajes[1:])

	trabajo(minrequi)


	conjuntos = requisitos-tiene
	necesita = len(conjuntos)
	if necesita <= 5:
		print("Usted puede trabajar ")
	else:
		print("no cuenta con el minimo ")
	print(conjuntos)
	
else:
	n3 = int(input('Gracias por tu atencion \n>'))








