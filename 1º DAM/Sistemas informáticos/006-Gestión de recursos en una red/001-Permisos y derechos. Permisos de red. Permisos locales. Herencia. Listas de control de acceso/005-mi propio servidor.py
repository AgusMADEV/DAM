import requests
import time

url = "http://localhost/dam/1%c2%ba%20DAM/Lenguajes%20de%20marcas%20y%20sistemas%20de%20gesti%c3%b3n%20de%20informaci%c3%b3n/003-/proyectos/Proyecto%20Apple%20(Mi)/040-Enrutador/front/"
for _ in range(0,1000):
    try:
        response = requests.get(url)
        # Verificar si la solicitud fue exitosa
        if response.status_code == 200:
            #print("Contenido de la página:")
            #print(response.text)  # Imprime el contenido de la página
            print("ok")
        else:
            print(f"Error en la solicitud: {response.status_code}")
    except requests.exceptions.RequestException as e:
        print(f"Error al cargar la URL: {e}")
    
    #time.sleep(1)