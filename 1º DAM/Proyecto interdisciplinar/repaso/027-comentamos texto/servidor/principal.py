from funciones import *  # Importamos las funciones necesarias
from flask import Flask  # Usamos Flask para crear la app web
from flask_cors import CORS  # Permitimos conexiones desde otros dominios con CORS

aplicacion = Flask(__name__)
CORS(aplicacion)                        # Creamos la app Flask y habilitamos CORS

host = "localhost"
user = "dragonball"
password = "dragonball"
database = "dragonball"                 # Datos de conexión a la base de datos

@aplicacion.route("/personajes")        # Ruta principal que devuelve los personajes
def home():
    return seleccionaPersonajes()  # Llama a una función que obtiene los personajes

if __name__ == "__main__":          # Iniciamos la app
    aplicacion.run()
