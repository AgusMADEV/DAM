from funciones import *  
from flask import Flask, request                                               # Importamos todo del archivo de funciones.py
from flask_cors import CORS

aplicacion = Flask(__name__)
CORS(aplicacion)

host="localhost",
user="dragonball",
password="dragonball",
database="dragonball"

@aplicacion.route("/personajes")
def home():
    return seleccionaPersonajes()

if __name__ == "__main__":
    aplicacion.run()