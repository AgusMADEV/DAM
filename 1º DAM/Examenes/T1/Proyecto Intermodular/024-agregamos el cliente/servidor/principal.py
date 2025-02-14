from funciones import *                                                 # Importamos todo del archivo de funciones.py
from flask import Flask, request
from flask_cors import CORS

aplicacion = Flask(__name__)
CORS(aplicacion)

host="localhost",
user="programacionexamen",
password="programacionexamen",
database="programacionexamen"

@aplicacion.route("/documentaciongrafica")
def home():
    return seleccionaDocumentacionesgraficas()

if __name__ == "__main__":
    aplicacion.run()