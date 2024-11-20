import mysql.connector                              # Importamos mysql connector

conexion = mysql.connector.connect(                 
    host="localhost",
    user="programacionexamen",
    password="programacionexamen",
    database="programacionexamen"
)                                                   # Conectamos con mysql

def seleccionaDocumentacionesgraficas():
    cursor = conexion.cursor(dictionary = True)                 # Creo un cursor y le damos el dictionary para que sea un Json
    peticion = "SELECT * FROM documentaciongrafica"             # Creamos una peticion de seleccionar todo de la tabla documentaciongrafica
    cursor.execute(peticion)                                    # Ejecutamos la peticion
    filas = cursor.fetchall()                                   # Traemos las filas
    return(filas)                                                # Imprimimos las filas

def seleccionaDocumentaciongrafica(Identificador):
    try:
        Identificador = int(Identificador)
        cursor = conexion.cursor(dictionary = True)                 # Creo un cursor y le damos el dictionary para que sea un Json
        peticion = f"SELECT * FROM documentaciongrafica WHERE Identificador = {Identificador}"             # Creamos una peticion de seleccionar todo de la tabla documentaciongrafica
        cursor.execute(peticion)                                    # Ejecutamos la peticion
        filas = cursor.fetchall()
        if filas != []:                                   # Traemos las filas
            return (filas)                                                # Imprimimos las filas
        else:
            return False
    except:
        return False
    
def insertaDocumentaciongrafica(Titulo,Imagen,Texto):
    cursor = conexion.cursor(dictionary = True)                 # Creo un cursor y le damos el dictionary para que sea un Json
    peticion = f"""
    INSERT INTO documentaciongrafica
    VALUES (
        NULL,
        '{Titulo}',
        '{Imagen}',
        '{Texto}'
    )"""
    cursor.execute(peticion)                            # Ejecutamos la peticion
    conexion.commit()
    return True
    
def eliminaDocumentaciongrafica(Identificador):
    cursor = conexion.cursor(dictionary = True)                 # Creo un cursor y le damos el dictionary para que sea un Json
    peticion = f"""
    DELETE FROM documentaciongrafica
    WHERE Identificador = '{Identificador}'
    """
    cursor.execute(peticion)                            # Ejecutamos la peticion
    conexion.commit()                                   # 'Guarda' la conexion
    return True

def actualizaDato(Identificador,cadena,valor):
    cursor = conexion.cursor(dictionary = True)                 # Creo un cursor y le damos el dictionary para que sea un Json
    peticion = f"""
        UPDATE documentaciongrafica
        SET
            {cadena} = '{valor}'
        WHERE Identificador = '{Identificador}'
        """
    cursor.execute(peticion)                            # Ejecutamos la peticion
    conexion.commit()                                   # 'Guarda' la conexion

def actualizaDocumentaciongrafica(Identificador,Titulo,Imagen,Texto):
    if Titulo != "":
        actualizaDato(Identificador,"Titulo",Titulo)
    if Imagen != "":
        actualizaDato(Identificador,"Imagen",Imagen)
    if Texto != "":
        actualizaDato(Identificador,"Texto",Texto)
    return True
