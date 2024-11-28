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
        print(seleccionaDocumentaciongrafica())
    elif opcion == "2":
        insertaDocumentaciongrafica()
    elif opcion == "3":
        eliminaDocumentaciongrafica()
    elif opcion == "4":
        actualizaDocumentaciongrafica()
    elif opcion == "5":
        conexion.close()
        break
print("Adeu adeu, el programa a finalizado exitosamente.")


