import mysql.connector                              # Importamos mysql connector

conexion = mysql.connector.connect(                 
    host="localhost",
    user="programacionexamen",
    password="programacionexamen",
    database="programacionexamen"
)                                                   # Conectamos con mysql

def seleccionaDocumentaciongrafica():
    cursor = conexion.cursor(dictionary = True)                 # Creo un cursor y le damos el dictionary para que sea un Json
    peticion = "SELECT * FROM documentaciongrafica"             # Creamos una peticion de seleccionar todo de la tabla documentaciongrafica
    cursor.execute(peticion)                                    # Ejecutamos la peticion
    filas = cursor.fetchall()                                   # Traemos las filas
    return(filas)                                                # Imprimimos las filas

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

def actualizaDocumentaciongrafica(Identificador,Titulo,Imagen,Texto):
    cursor = conexion.cursor(dictionary = True)                 # Creo un cursor y le damos el dictionary para que sea un Json
    if Titulo != "":
        peticion = f"""
        UPDATE documentaciongrafica
        SET
            Titulo = '{Titulo}'
        WHERE Identificador = '{Identificador}'
        """
        cursor.execute(peticion)                            # Ejecutamos la peticion
        conexion.commit()                                   # 'Guarda' la conexion

    if Imagen != "":
        peticion = f"""
        UPDATE documentaciongrafica
        SET
            Imagen = '{Imagen}'
        WHERE Identificador = '{Identificador}'
        """
        cursor.execute(peticion)                            # Ejecutamos la peticion
        conexion.commit()                                   # 'Guarda' la conexion

    if Texto != "":
        peticion = f"""
        UPDATE documentaciongrafica
        SET
            Texto = '{Texto}'
        WHERE Identificador = '{Identificador}'
        """
        cursor.execute(peticion)                            # Ejecutamos la peticion
        conexion.commit()                                   # 'Guarda' la conexion
    return True
