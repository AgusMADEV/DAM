import matplotlib.pyplot as plt
import psutil

carga = psutil.cpu_percent(interval=1)
print(carga)

archivo = open("Tomato/carga.txt",'a')
archivo.write(str(carga)+"\n")
archivo.close()