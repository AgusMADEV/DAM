'''
    Programa agenda
    (c) 2024 Agustín Morcillo Aguado
'''
# Bienvenida #############################################

TITULO = "Programa Agenda"
AUTOR = "Agustín Morcillo Aguado"
print(TITULO,"por",AUTOR)

# Menú principal ##########################################

print("Escoge una opción")
print("1.-Insertar")
print("2.-Listar")
print("3.-Actualizar")
print("4.-Eliminar")

# El usuario escoge una opción #############################

opcion = input("Selecciona una opcion (1-4):")
print("Has seleccionado la opcion:",opcion)

# Selecciono la operación a realizar #######################

if opcion == "1":
    print("Vamos a insertar un nuevo cliente")
elif opcion == "2":
    print("Vamos a listar los clientes")
elif opcion == "3":
    print("Vamos a actualizar un cliente")
elif opcion == "4":
    print("Vamos a eliminar un cliente")
