from funciones import *                                                 # Importamos todo del archivo de funciones.py

while True:                                                             # Bucle infinito para el menú CRUD
    
    print("Selecciona una de estas operaciones:")
    print("1.-Listar los registros.")
    print("2.-Insertar un nuevo registro.")
    print("3.-Eliminar un registro.")
    print("4.-Actualizar un registro.")
    print("5.-Cerrar programa.")                                        # Imprimimos las opciones que le damos al usuario

    opcion = input("¿Qué desea realizar? ")                             # Solicitamos uan opcion al usuario y la transformamos en la variable 'opcion'

    if opcion == "1":
        print(seleccionaDocumentacionesgraficas())                          # Si opcion es Listar(1), imprimimos la funcion seleccionaDocumentacionesgraficas
    elif opcion == "2":                                                     # Si la opcion es Insertar(2)
        Titulo = input("Inserta un nuevo Titulo al registro: ")
        Imagen = input("Inserta una nueva Imagen al registro: ")
        Texto = input("Inserta un nuevo Texto al registro: ")               # Le pedimos al usuario los dartos a insertar
        print(insertaDocumentaciongrafica(Titulo,Imagen,Texto))             # Imprimimos el nuevo registro 
    elif opcion == "3":                                                     # Si opcion es Eliminar(3)
        Identificador = input("Indica el Identificador del registro que desea eliminar: ")      # Solicitamos el Id que se quiere eliminar
        campos = seleccionaDocumentaciongrafica(Identificador)                                  # comprobamos si el id existe
        if campos != False:                                                                     
            print(eliminaDocumentaciongrafica(Identificador))
            print(f"Se ha eliminado con exito el registro {campos[0]['Identificador']}")        # Si existe, eliminamos con la funcion de Eliminar e imprimimos un mensaje con el Id que se ha eliminado
        else:
            print("---------------------------------")
            print("El valor introducido no es válido")
            print("---------------------------------")                                          # Si no existe, le informamos al usuario que el id que ha solicitado no es válido
    elif opcion == "4":                                                                             # Si la opcion es Actualizar(4)
        Identificador = input("Indica el Identificador del registro que desea actualizar: ")        # Solicitamos el Id que se quiere eliminar
        campos = seleccionaDocumentaciongrafica(Identificador)                                      # comprobamos si el id existe
        if campos != False:                                                                         # Si existe
            print(campos)                                                                           # Le mostramos a los usuarios los datos actuales
            Titulo = input(f"Inserta un nuevo Titulo al registro (dejar en blanco para no modificar) (antes era {campos[0]['Titulo']}): ")          
            Imagen = input(f"Inserta una nueva Imagen al registro: (dejar en blanco para no modificar) (antes era {campos[0]['Imagen']}): ")
            Texto = input(f"Inserta un nuevo Texto al registro: (dejar en blanco para no modificar) (antes era {campos[0]['Texto']}): ")        # Solicitamos los nuevos datos,(dejando en blanco si no se quiere modificar)
            print(actualizaDocumentaciongrafica(Identificador,Titulo,Imagen,Texto))              # Actualizamos registro
        else:
            print("---------------------------------")
            print("El valor introducido no es válido")
            print("---------------------------------")                  # Si no existe el campo, imprimimos que no es valido
    elif opcion == "5":                                                 # Si se elige la opcion de hasta luego Jose Vicente
        conexion.close()                                                # Cerramos la conexion con la bd
        break                                                           # Y salimos del bucle infinito
print("Adeu adeu, el programa a finalizado exitosamente.")              # E imprimimos mensaje de despedida

