from funciones import *                                                 # Importamos todo del archivo de funciones.py
from flask import Flask, request                                        # De flask , importamos Flask y request
from flask_cors import CORS                                             # De flask_cors , importamos CORS

aplicacion = Flask(__name__)                                            
CORS(aplicacion)                                                        # Creamos la aplicacion y la habilitamos con CORS

host="localhost",
user="examenprogramacion",
password="examenprogramacion",
database="examenprogramacion"                                           # Introducimos los datos de usuario de la base de datos que queremos cargar

@aplicacion.route("/documentaciongrafica")                              # Le damos la ruta de la tabla que queremos 'documentaciongrafica'
def home():
    return seleccionaDocumentacionesgraficas()                          # Definimos y llamamos a la funcion de seleccionar los datos de la tabla

if __name__ == "__main__":                                              # Iniciamos la aplicacion
    aplicacion.run()