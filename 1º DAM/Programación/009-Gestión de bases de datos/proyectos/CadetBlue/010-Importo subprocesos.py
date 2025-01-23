import os
import time
from datetime import datetime
import shutil

try:                                                                # Intentamos
    os.mkdir("D:/agustin/backups")                                  # Crear la carpeta backups
except:                                                             # En el caso de que dé error
    print("La carpeta ya existe, continuamos para bingo...")        # Saco un mensaje por la consola    

ahora = datetime.now()                                              # Atrapo el tiempo actual
fecha = ahora.strftime("%Y-%m-%d-%H-%M-%S")                         # Lo formateo para poder entenderlo
epoch = str(round(time.time()))                                     # Obtengo la era unix
fechacompuesta = fecha+"_"+epoch                                    # Creo una fecha compuesta
print(fechacompuesta)
os.mkdir("D:/agustin/backups/"+fechacompuesta)                      # Creo una carpeta con la fecha compuesta
origen = "D:/xampp/htdocs/proyecto"
destino = "D:/agustin/backups/"+fechacompuesta+"/programacion"
shutil.copytree(origen,destino)
os.mkdir("D:/agustin/backups/"+fechacompuesta+"/basededatos")       # Creo una carpeta de base de datos
servidor = "localhost"
usuario = "proyectoapple"
contrasena = "proyectoapple"
basededatos = "proyectoapple"

comando = [
        "mysqldump",
        f"--host={servidor}",
        f"--user={usuario}",
        f"--password={contrasena}",
        basededatos
    ]