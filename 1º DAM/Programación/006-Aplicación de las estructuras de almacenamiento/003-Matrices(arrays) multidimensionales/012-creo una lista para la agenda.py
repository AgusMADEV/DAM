'''
    Programa agenda con colecciones bidimensionales
    (c) 2024 Agustín Morcillo Aguado
'''

print("Programa agenda (c) 2024 Agustín Morcillo Aguado")

agenda = []

while(True):
    print("Selecciona una de las siguientes opciones")
    print("1.-Insertar un nuevo registro")
    print("2.-Listar los registros")
    selecciona_opcion = input("Selecciona una de las opciones:")

    print("La opcion que has escogido es:",selecciona_opcion)

    if(selecciona_opcion == "1"):
        print("Vamos a insertar un registro")
    elif(selecciona_opcion == "2"):
        print("Vamos a leer los registros")
