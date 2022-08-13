#lista,  que corresponde con los datos del dueño de un perro. 
# Muestra el tel. del dueño si el D.N.I es mayor a 260100000
#Duen
# 
# ño:1
dueno =[28957346,"Juan","Perez",4789689,"Belgrano 101"]
if ( dueno[0]> 26000000):
    print(dueno[3])
else: 
    print ("El D.N.I es menor a 26000000")

for x in dueno:
    print(x)    

#Dueño 2 recorre la lista con un bucle mostrando los elementos 
# a exepciòn de D.N.I y el apellido.

dueno2 =[23546987,"Maria","Perez",4789689,"Pueyrredon 811"]
#for i in dueno2:
#  print(i)
for i in range(0,len(dueno2)):
    if (i!=0 and i!=2): 
        print(dueno2[i]) 



# dueno_2=[23546987,"Maria","Perez",4789689,"Pueyrredon 811" ]
#   for i in  len dueno 