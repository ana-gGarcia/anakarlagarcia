Base = [
		["Laura","Queretaro"],
		["Alena","Paris"], 
		["Claudia","SFrancisco"],
		["Queretaro","Mexico"],
		["Paris","Francia"],
		["SFrancisco","EUA"],
		["Mexico","America"],
		["Francia","Europa"],
		["EUA","America"]
]

def esta(E1,E2):
	

	if not E1:
		return False
		
	if not E2:
		return False
		
	B=[ e for e in Base if e[0]==E1 ]
	
	if not B:
		return False
		
	
	A=B[0][1]
	E,A=B[0]
	
	if E2== A:
		
		return True
	return esta(A,E2)
	

print("Alena","Europa")
R = esta("Alena","Europa")
print(R)
# true
print("Laura","America")
R = esta("Laura","America")
print(R)
# true
print("Laura","Europa")
R = esta("Laura","Europa")
print(R)
# fal

print("Mexico","America")
R = esta("Mexico","America")
print(R)
# true


