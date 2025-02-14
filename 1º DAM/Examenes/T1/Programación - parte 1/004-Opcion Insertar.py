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

    opcion = input("¿Qué desea realizar? ")

    if opcion == "1":
        cursor = conexion.cursor(dictionary = True)         # Creo un cursor y le damos el dictionary para que sea un Json
        peticion = "SELECT * FROM documentaciongrafica"     # Creamos una peticion de seleccionar todo de la tabla documentaciongrafica
        cursor.execute(peticion)                            # Ejecutamos la peticion
        filas = cursor.fetchall()                           # Traemos las filas
        print(filas)                                        # Imprimimos las filas
    elif opcion == "2":
        cursor = conexion.cursor(dictionary = True)         # Creo un cursor y le damos el dictionary para que sea un Json
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

