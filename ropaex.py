#	Una tienda de ropa quiere saber cuantos conjuntos se pueden crear 
#	a partir de un grupo de 5 camisas (roja,negra,azul,morada y cafe),      
#	4 pantalones (negro, azul, cafe obscuro y crema) y uno de 4 accesorios
#	posibles (cinturon, tirantes, lentes, fedora)
#	1) Obtenga una lista con todos los conjuntos posibles e imprimala en pantalla
#	2) imprima un mensaje donde mencione la cantidad de conjuntos posibles

C = ['roja','negra','azul','morada','cafe']
P = ['negro','azul', 'cafeob_scuro','crema']
A = ['cinturon', 'tirantes', 'lentes', 'fedora']

L = [(com1,com2,com3) for com1 in C for com2 in  P for com3 in A ]
print ([(com1,com2,com3) for com1 in C for com2 in  P for com3 in A ])
print("Cantidad de conjuntos posibles")
print(len(L))


F = [(com1,com2,com3) for com1 in C for com2 in  P for com3 in A]
print ([(com1,com2,com3) for com1 in C for com2 in  P for com3 in A ])
print("Cantidad de conjuntos posibles")
print(len(F))


