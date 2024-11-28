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

    opcion = input("¿Qué desea realizar? ")

    if opcion == "1":
        cursor = conexion.cursor(dictionary = True)         # Creo un cursor y le damos el dictionary para que sea un Json
        peticion = "SELECT * FROM documentaciongrafica"     # Creamos una peticion de seleccionar todo de la tabla documentaciongrafica
        cursor.execute(peticion)                            # Ejecutamos la peticion
        filas = cursor.fetchall()                           # Traemos las filas
        print(filas)                                        # Imprimimos las filas