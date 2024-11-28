import mysql.connector                              # Importamos conector para mysql

conexion = mysql.connector.connect(
    host="localhost",
    user="repasop",
    password="repasop",
    database="repasop"
)                                                   # Me conecto a la base de datos

while True:
    print("Elige la opción que quieras realizar:")
    print("1.- Listar los registros")
    print("2.- Insertar un nuevo registros")
    print("3.- Eliminar un registro")
    
    opcion = input("Selecciona una opcion: ")

    if opcion == "1":
        cursor = conexion.cursor(dictionary = True)         # Creo un cursor y con el dictionary me aseguro que viene en Json
        peticion = "SELECT * FROM datos"                    # Pido todo de la tabla 'datos'
        cursor.execute(peticion)                            # Ejecuto la petición
        filas = cursor.fetchall()                           # Saco las filas
        print(filas)                                        # Imprimo las filas
    elif opcion == "2":
        cursor = conexion.cursor(dictionary = True)         # Creo un cursor y con el dictionary me aseguro que viene en Json
        Titulo = input("Introduce el Titulo del dato: ")
        Subtitulo = input("Introduce el Subtitulo del dato: ")
        Texto = input("Introduce el Texto del dato: ")
        peticion = f"""
        INSERT INTO datos
        VALUES (
            NULL,
            '{Titulo}',
            '{Subtitulo}',
            '{Texto}'
        )"""
        cursor.execute(peticion)                            # Ejecuto la petición
        conexion.commit()
    elif opcion == "3":
        cursor = conexion.cursor(dictionary = True)         # Creo un cursor y con el dictionary me aseguro que viene en Json
        Identificador = input("Introduce el Identificador de dato que desea eliminar: ")
        peticion = f"""
        DELETE FROM datos 
        WHERE Identificador = {Identificador}
        """
        cursor.execute(peticion)                            # Ejecuto la petición
        conexion.commit()
        