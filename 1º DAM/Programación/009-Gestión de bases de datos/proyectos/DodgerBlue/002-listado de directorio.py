import os

ruta = "/xampp/htdocs/GitHub/proyecto"

carpetas = os.listdir(ruta)

for carpeta in carpetas:
    print(carpeta)