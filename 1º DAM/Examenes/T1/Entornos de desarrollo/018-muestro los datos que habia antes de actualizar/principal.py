from funciones import *

while True:
    
    print("Selecciona una de estas operaciones:")
    print("1.-Listar los registros.")
    print("2.-Insertar un nuevo registro.")
    print("3.-Eliminar un registro.")
    print("4.-Actualizar un registro.")
    print("5.-Cerrar programa.")

    opcion = input("¿Qué desea realizar? ")

    if opcion == "1":
        print(seleccionaDocumentacionesgraficas())
    elif opcion == "2":
        Titulo = input("Inserta un nuevo Titulo al registro: ")
        Imagen = input("Inserta una nueva Imagen al registro: ")
        Texto = input("Inserta un nuevo Texto al registro: ")
        print(insertaDocumentaciongrafica(Titulo,Imagen,Texto))
    elif opcion == "3":
        Identificador = input("Indica el Identificador del registro que desea eliminar: ")
        print(eliminaDocumentaciongrafica(Identificador))
    elif opcion == "4":
        Identificador = input("Indica el Identificador del registro que desea actualizar: ")
        campos = seleccionaDocumentaciongrafica(Identificador)
        print(campos)
        Titulo = input(f"Inserta un nuevo Titulo al registro (dejar en blanco para no modificar) (antes era {campos[0]['Titulo']}): ")
        Imagen = input(f"Inserta una nueva Imagen al registro: (dejar en blanco para no modificar) (antes era {campos[0]['Imagen']}): ")
        Texto = input(f"Inserta un nuevo Texto al registro: (dejar en blanco para no modificar) (antes era {campos[0]['Texto']}): ")
        print(actualizaDocumentaciongrafica(Identificador,Titulo,Imagen,Texto))
    elif opcion == "5":
        conexion.close()
        break
print("Adeu adeu, el programa a finalizado exitosamente.")

