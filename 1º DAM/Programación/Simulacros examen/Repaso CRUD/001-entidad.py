import mysql.connector

conexion = mysql.connector.connect(
    host="localhost",
    user="repasop",
    password="repasop",
    database="repasop"
)

cursor = conexion.cursor(dictionary = True)

peticion = "SELECT * FROM datos"

cursor.execute(peticion)

filas = cursor.fetchall()

print(filas)