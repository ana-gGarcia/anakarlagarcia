T = ['lupa','cepillo','martillo','camara','piqueta']
S = ['lampara','pedernal', 'olla','cuchillo']
C = ['atun', 'frijoles', 'comilitar', 'carnseca']

L = [(com1,com2,com3) for com1 in T for com2 in  S for com3 in C ]
print ([(com1,com2,com3) for com1 in T for com2 in  S for com3 in C ])
print("Cantidad de conjuntos posibles")
print(len(L))




