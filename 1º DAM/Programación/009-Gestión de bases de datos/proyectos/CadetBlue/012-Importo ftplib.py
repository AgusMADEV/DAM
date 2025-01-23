import os
import time
from datetime import datetime
import shutil
import subprocess
import paramiko

def upload_folder_to_sftp(sftp, local_folder, remote_folder):
    """Sube una carpeta completa al servidor SFTP"""
    try:
        # Intenta crear el directorio remoto
        sftp.mkdir(remote_folder)
        print(f"Directorio remoto creado: {remote_folder}")
    except IOError:
        print(f"El directorio remoto ya existe: {remote_folder}")
    
    # Recorre los archivos y subcarpetas en el directorio local
    for item in os.listdir(local_folder):
        local_path = os.path.join(local_folder, item)
        remote_path = f"{remote_folder}/{item}"
        
        if os.path.isfile(local_path):
            # Subir archivo
            print(f"Subiendo archivo: {item}")
            sftp.put(local_path, remote_path)
        elif os.path.isdir(local_path):
            # Subir subcarpeta
            print(f"Subiendo carpeta: {item}")
            upload_folder_to_sftp(sftp, local_path, remote_path)

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
origen = "D:/xampp/htdocs/proyecto"                                 # Carpeta de origen que voy a copiar a otra
destino = "D:/agustin/backups/"+fechacompuesta+"/programacion"      # La carpeta a la que va destinada
shutil.copytree(origen,destino)                                     # Copio la carpeta
os.mkdir("D:/agustin/backups/"+fechacompuesta+"/basededatos")       # Creo una carpeta de base de datos
servidor = "localhost"
usuario = "proyectoapple"
contrasena = "proyectoapple"
basededatos = "proyectoapple"                                       # Datos del servidor

comando = [
        "mysqldump",
        f"--host={servidor}",
        f"--user={usuario}",
        f"--password={contrasena}",
        basededatos
    ]                                                               # Preparo el comando de copia
archivo = open("D:/agustin/backups/"+fechacompuesta+"/basededatos/exportacion.sql",'w') # Creo un archivo de destino
subprocess.run(comando,stdout=archivo,check=True)                                       # Ejecuto el proceso
archivo.close()                                                                         # Cierro el archivo

servidorftp = 'home462793689.1and1-data.host'                           # Datos de conexión al SFTP
puertoftp = 22
usuarioftp = 'acc861510062'
contrasenaftp = 'TAME123$'

carpetalocal = "/home/josevicente/backups/"+fechacompuesta              # Carpeta de origen en mi ordenador
carpetaremota = ""                                                      # Carpeta de destino en el FTP

ssh = paramiko.SSHClient()                                              # Arranco un cliente SSH
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())               # Acepto la clave de licencia
ssh.connect(
    servidorftp,
    port=puertoftp,
    username=usuarioftp,
    password=contrasenaftp)                                             # Me conecto por ssh  

sftp = ssh.open_sftp()                                                  # Abro una conexion SFTP en SSH

upload_folder_to_sftp(sftp, carpetalocal, carpetaremota)                # Subo recursivamente
sftp.close()                                                            # Cierro el SFTP
ssh.close()                                                             # Cierro el SSH