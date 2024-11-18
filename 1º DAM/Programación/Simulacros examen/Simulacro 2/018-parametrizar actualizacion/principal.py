from funciones import *

while True:
    print("Escoge una opción:")
    print("1.-Listar los registros")
    print("2.-Insertar un registro")
    print("3.-Eliminar un registro")
    print("4.-Actualizar un registro")
    print("5.-Cerrar el programa")
    opcion = input("Escoge una opcion: ")

    if opcion == "1":
        print(seleccionaCapitulos())
    elif opcion == "2":
        Titulo = input("Introduce el Título del capítulo: ")            # Le pido un nuevo titulo al usuario
        Subtitulo = input("Introduce el Subtitulo del capítulo: ")      # Le pido un nuevo Subtitulo al usuario
        Imagen = input("Introduce la Imagen del capítulo: ")            # Le pido un nuevo Imagen al usuario
        Video = input("Introduce el Video del capítulo: ")              # Le pido un nuevo Video al usuario
        Texto = input("Introduce el Texto del capítulo: ")              # Le pido un nuevo Texto al usuario
        print(insertaCapitulos(Titulo,Subtitulo,Imagen,Video,Texto))
    elif opcion == "3":
        Identificador = input("Introduce el Identificador del capítulo a eliminar: ")            # Le pido el identificador a eliminar al usuario
        print(eliminaCapitulo(Identificador))
    elif opcion == "4":
        Identificador = input("Introduce el Identificador del capítulo a actualizar: ")
        Titulo = input("Introduce el nuevo Título del capítulo (en blanco para no modificarlo): ")            # Le pido un nuevo titulo al usuario
        Subtitulo = input("Introduce el nuevo Subtitulo del capítulo (en blanco para no modificarlo): ")      # Le pido un nuevo Subtitulo al usuario
        Imagen = input("Introduce la nueva Imagen del capítulo (en blanco para no modificarlo): ")            # Le pido un nuevo Imagen al usuario
        Video = input("Introduce el nuevo Video del capítulo (en blanco para no modificarlo): ")              # Le pido un nuevo Video al usuario
        Texto = input("Introduce el nuevo Texto del capítulo (en blanco para no modificarlo): ")              # Le pido un nuevo Texto al usuario
        print(actualizaCapitulo(Identificador,Titulo,Subtitulo,Imagen,Video,Texto))
    elif opcion == "5": 
        conexion.close()
        break

print("El programa ha finalizado")
 
