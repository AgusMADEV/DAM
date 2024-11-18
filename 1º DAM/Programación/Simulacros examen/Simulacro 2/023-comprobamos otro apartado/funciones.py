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

def seleccionaCapitulo(Identificador):
    try:
        Identificador = int(Identificador)
        cursor = conexion.cursor(dictionary = True)     # Creo un cursor y me aseguro de que la info me viene en JSON
        peticion = f"SELECT * FROM capitulos WHERE Identificador = {Identificador}"            # Pido todo de capitulos
        cursor.execute(peticion)                        #Ejecuto la peticion
        filas = cursor.fetchall()                       # Saco las filas
        if filas != []:
            return filas
        else:
            return False                            
    except:
        return False

def insertaCapitulos(Numerador,Titulo,Subtitulo,Imagen,Video,Texto):
    cursor = conexion.cursor(dictionary = True)                     # Creo un cursor y me aseguro de que la info me viene en JSON
    peticion = f"""
    INSERT INTO capitulos
    VALUES (
        NULL,
        '{Numerador}',
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

def actualizaCampo(cadena,valor,Identificador):
    cursor = conexion.cursor(dictionary = True)
    peticion = f"""
        UPDATE capitulos
        SET
            {cadena} = '{valor}'
        WHERE
        Identificador = {Identificador}
        """ 
    cursor.execute(peticion)                                                                                      # Ejecuto la peticion
    filas = cursor.fetchall()                                                                                     # Saco las filas
    print(filas)                                                                                                  # Imprimo las filas
    conexion.commit() 

def actualizaCapitulo(Identificador,Numerador,Titulo,Subtitulo,Imagen,Video,Texto):                                                                                
    if Numerador != "":
        actualizaCampo("Numerador",Numerador,Identificador) 
    if Titulo != "":
        actualizaCampo("Titulo",Titulo,Identificador)      
    if Subtitulo != "":
        actualizaCampo("Subtitulo",Subtitulo,Identificador) 
    if Imagen != "":
        actualizaCampo("Imagen",Imagen,Identificador) 
    if Video != "":
        actualizaCampo("Video",Video,Identificador)  
    if Texto != "":
        actualizaCampo("Texto",Texto,Identificador)
    return True