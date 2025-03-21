import mysql.connector                          # Importo el conector de MySQL

conexion = mysql.connector.connect(
    host="localhost",
    user="examenprogramacion",
    password="examenprogramacion",
    database="examenprogramacion"
)                                               # Me conecto a la base de datos

def seleccionaCapitulos():
    cursor = conexion.cursor(dictionary = True)     # Creo un cursor y me aseguro de que la info me viene en JSON
    peticion = "SELECT * FROM capitulos"            # Pido todo de capitulos
    cursor.execute(peticion)                        #Ejecuto la peticion
    filas = cursor.fetchall()                       # Saco las filas
    return filas                                    # Imprimo las filas

def insertaCapitulos(Titulo,Subtitulo,Imagen,Video,Texto):
    cursor = conexion.cursor(dictionary = True)                     # Creo un cursor y me aseguro de que la info me viene en JSON
    peticion = f"""
    INSERT INTO capitulos
    VALUES (
        NULL,
        '{Titulo}',
        '{Subtitulo}',
        '{Imagen}',
        '{Video}',
        '{Texto}'
    )"""                                                                                    # Inserto un nuevo capitulo
    cursor.execute(peticion)                                                                # Ejecuto la peticion
    filas = cursor.fetchall()                                                               # Saco las filas
    conexion.commit()
    return True

def eliminaCapitulo(Identificador):
    cursor = conexion.cursor(dictionary = True)                                              # Creo un cursor y me aseguro de que la info me viene en JSON
    peticion = f"""                                                                          
    DELETE FROM capitulos
    WHERE Identificador = {Identificador}
    """                                                                                       # Formateo el string
    cursor.execute(peticion)                                                                  # Ejecuto la peticion
    filas = cursor.fetchall()                                                                 # Saco las filas                                                                          # Imprimo las filas   
    conexion.commit()
    return True

def actualizaCapitulo():
    cursor = conexion.cursor(dictionary = True)                     # Creo un cursor y me aseguro de que la info me viene en JSON                                                                                   
    Identificador = input("Introduce el Identificador del capítulo a actualizar: ")
    Titulo = input("Introduce el nuevo Título del capítulo (en blanco para no modificarlo): ")            # Le pido un nuevo titulo al usuario
    Subtitulo = input("Introduce el nuevo Subtitulo del capítulo (en blanco para no modificarlo): ")      # Le pido un nuevo Subtitulo al usuario
    Imagen = input("Introduce la nueva Imagen del capítulo (en blanco para no modificarlo): ")            # Le pido un nuevo Imagen al usuario
    Video = input("Introduce el nuevo Video del capítulo (en blanco para no modificarlo): ")              # Le pido un nuevo Video al usuario
    Texto = input("Introduce el nuevo Texto del capítulo (en blanco para no modificarlo): ")              # Le pido un nuevo Texto al usuario
    if Titulo != "":
        peticion = f"""
        UPDATE capitulos
        SET
            Titulo = '{Titulo}'
        WHERE
        Identificador = {Identificador}
        """ 
        cursor.execute(peticion)                                                                                      # Ejecuto la peticion
        filas = cursor.fetchall()                                                                                     # Saco las filas
        print(filas)                                                                                                  # Imprimo las filas
        conexion.commit() 
    if Subtitulo != "":
        peticion = f"""
        UPDATE capitulos
        SET
            Subtitulo = '{Subtitulo}'
        WHERE
        Identificador = {Identificador}
        """ 
        cursor.execute(peticion)                                                                                      # Ejecuto la peticion
        filas = cursor.fetchall()                                                                                     # Saco las filas
        print(filas)                                                                                                  # Imprimo las filas
        conexion.commit()  
    if Imagen != "":
        peticion = f"""
        UPDATE capitulos
        SET
            Imagen = '{Imagen}'
        WHERE
        Identificador = {Identificador}
        """ 
        cursor.execute(peticion)                                                                                      # Ejecuto la peticion
        filas = cursor.fetchall()                                                                                     # Saco las filas
        print(filas)                                                                                                  # Imprimo las filas
        conexion.commit()  
    if Video != "":
        peticion = f"""
        UPDATE capitulos
        SET
            Video = '{Video}'
        WHERE
        Identificador = {Identificador}
        """ 
        cursor.execute(peticion)                                                                                      # Ejecuto la peticion
        filas = cursor.fetchall()                                                                                     # Saco las filas
        print(filas)                                                                                                  # Imprimo las filas
        conexion.commit()  
    if Texto != "":
        peticion = f"""
        UPDATE capitulos
        SET
            Texto = '{Texto}'4
        WHERE
        Identificador = {Identificador}
        """ 
        cursor.execute(peticion)                                                                                      # Ejecuto la peticion
        filas = cursor.fetchall()                                                                                     # Saco las filas
        print(filas)                                                                                                  # Imprimo las filas
        conexion.commit()
    return True