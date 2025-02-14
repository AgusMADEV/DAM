import mysql.connector                              # Importamos mysql connector

conexion = mysql.connector.connect(                 
    host="localhost",
    user="programacionexamen",
    password="programacionexamen",
    database="programacionexamen"
)                                                   # Conectamos con mysql

while True:
    
    print("Selecciona una de estas operaciones:")
    print("1.-Listar los registros.")
    print("2.-Insertar un nuevo registro.")
    print("3.-Eliminar un registro.")
    print("4.-Actualizar un registro.")
    print("5.-Cerrar programa.")

    opcion = input("¿Qué desea realizar? ")

    if opcion == "1":
        cursor = conexion.cursor(dictionary = True)                 # Creo un cursor y le damos el dictionary para que sea un Json
        peticion = "SELECT * FROM documentaciongrafica"             # Creamos una peticion de seleccionar todo de la tabla documentaciongrafica
        cursor.execute(peticion)                                    # Ejecutamos la peticion
        filas = cursor.fetchall()                                   # Traemos las filas
        print(filas)                                                # Imprimimos las filas
    elif opcion == "2":
        cursor = conexion.cursor(dictionary = True)                 # Creo un cursor y le damos el dictionary para que sea un Json
        Titulo = input("Inserta un nuevo Titulo al registro: ")
        Imagen = input("Inserta una nueva Imagen al registro: ")
        Texto = input("Inserta un nuevo Texto al registro: ")
        peticion = f"""
        INSERT INTO documentaciongrafica
        VALUES (
            NULL,
            '{Titulo}',
            '{Imagen}',
            '{Texto}'
        )"""
        cursor.execute(peticion)                            # Ejecutamos la peticion
        conexion.commit()
    elif opcion == "3":
        cursor = conexion.cursor(dictionary = True)                 # Creo un cursor y le damos el dictionary para que sea un Json
        Identificador = input("Indica el Identificador del registro que desea eliminar: ")
        peticion = f"""
        DELETE FROM documentaciongrafica
        WHERE Identificador = '{Identificador}'
        """
        cursor.execute(peticion)                            # Ejecutamos la peticion
        conexion.commit()                                   # 'Guarda' la conexion
    elif opcion == "4":
        cursor = conexion.cursor(dictionary = True)                 # Creo un cursor y le damos el dictionary para que sea un Json
        Identificador = input("Indica el Identificador del registro que desea actualizar: ")
        Titulo = input("Inserta un nuevo Titulo al registro (dejar en blanco para no modificar): ")
        Imagen = input("Inserta una nueva Imagen al registro: (dejar en blanco para no modificar): ")
        Texto = input("Inserta un nuevo Texto al registro: (dejar en blanco para no modificar): ")
        if Titulo != "":
            peticion = f"""
            UPDATE documentaciongrafica
            SET
                Titulo = '{Titulo}'
            WHERE Identificador = '{Identificador}'
            """
            cursor.execute(peticion)                            # Ejecutamos la peticion
            conexion.commit()                                   # 'Guarda' la conexion

        if Imagen != "":
            peticion = f"""
            UPDATE documentaciongrafica
            SET
                Imagen = '{Imagen}'
            WHERE Identificador = '{Identificador}'
            """
            cursor.execute(peticion)                            # Ejecutamos la peticion
            conexion.commit()                                   # 'Guarda' la conexion

        if Texto != "":
            peticion = f"""
            UPDATE documentaciongrafica
            SET
                Texto = '{Texto}'
            WHERE Identificador = '{Identificador}'
            """
            cursor.execute(peticion)                            # Ejecutamos la peticion
            conexion.commit()                                   # 'Guarda' la conexion
    elif opcion == "5":
        conexion.close()
        break
print("Adeu adeu, el programa a finalizado exitosamente.")


