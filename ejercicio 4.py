perro2 = [14,'fido','12/12/2012','macho',23546987]
y=0
for i in range (len(perro2)):
    if i==0: 
        y=1
        print (perro2[y*(-1)])
    else:
        y=i+1
        print (perro2[y*(-1)])