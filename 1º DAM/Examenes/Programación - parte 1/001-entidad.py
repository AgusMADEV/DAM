import mysql.connector

conexion = mysql.connector.connect(
    host="localhost",
    user="programacionexamen",
    password="programacionexamen",
    database="programacionexamen"
)

cursor = conexion.cursor(dictionary = True)
peticion = "SELECT * FROM documentaciongrafica"
cursor.execute(peticion)
filas = cursor.fetchall()
print(filas)