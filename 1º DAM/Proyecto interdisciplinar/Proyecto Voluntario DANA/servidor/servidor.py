from flask import Flask, jsonify, request      # Importamos request para manejar datos entrantes
from flask_cors import CORS
import mysql.connector

app = Flask(__name__)
CORS(app)

# Endpoint para insertar un nuevo artículo en la tabla blog
@app.route('/insertamensaje', methods=['POST'])
def insertamensaje():
    datos = request.get_json()  # Obtiene el JSON enviado por el cliente
    nombre = datos.get('nombre')
    email = datos.get('email')
    asunto = datos.get('asunto')
    texto = datos.get('texto')

    try:
        # Conexión y ejecución de inserción en la base de datos
        conexion = mysql.connector.connect(
            host="localhost",
            user="navidana",
            password="navidana",
            database="navidana"
        )
        cursor = conexion.cursor()
        peticion = "INSERT INTO contacto (nombre, email, asunto, texto) VALUES (%s, %s, %s, %s)"
        cursor.execute(peticion, (nombre, email, asunto, texto))
        conexion.commit()  # Confirma la inserción
        cursor.close()
        conexion.close()
        return jsonify({"mensaje": "Artículo insertado exitosamente"}), 201
    except mysql.connector.Error as err:
        print("Error: ", err)
        return jsonify({"error": "Hubo un problema al insertar el artículo"}), 500

if __name__ == '__main__':
    app.run(debug=True)