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
    
    opcion = input("Selecciona una opcion: ")

    if opcion == "1":
        cursor = conexion.cursor(dictionary = True)         # Creo un cursor y con el dictionary me aseguro que viene en Json
        peticion = "SELECT * FROM datos"                    # Pido todo de la tabla 'datos'
        cursor.execute(peticion)                            # Ejecuto la petición
        filas = cursor.fetchall()                           # Saco las filas
        print(filas)                                        # Imprimo las filas