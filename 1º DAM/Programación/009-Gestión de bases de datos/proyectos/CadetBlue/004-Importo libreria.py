import os
import time
from datetime import datetime

try:
    os.mkdir("D:/agustin/backups")
except:
    print("La carpeta ya existe, continuamos para bingo...")

ahora = datetime.now()
fecha = ahora.strftime("%Y-%m-%d-%H-%M-%S")
epoch = str(round(time.time()))
fechacompuesta = fecha+"_"+epoch
print(fechacompuesta)