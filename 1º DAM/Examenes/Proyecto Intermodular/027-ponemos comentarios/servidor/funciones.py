import mysql.connector                              # Importamos mysql connector

conexion = mysql.connector.connect(                 
    host="localhost",
    user="examenprogramacion",
    password="examenprogramacion",
    database="examenprogramacion"
)                                                   # Conectamos con mysql

def seleccionaDocumentacionesgraficas():                        # Creo la funcion de seleccionaDGs
    cursor = conexion.cursor(dictionary = True)                 # Creo un cursor y le damos el dictionary para que sea un Json
    peticion = "SELECT * FROM documentaciongrafica"             # Creamos una peticion de seleccionar todo de la tabla documentaciongrafica
    cursor.execute(peticion)                                    # Ejecutamos la peticion
    filas = cursor.fetchall()                                   # Traemos las filas
    return(filas)                                                # Imprimimos las filas

def seleccionaDocumentaciongrafica(Identificador):               # Funcion para seleccionar DG según su Identificador
    try:
        Identificador = int(Identificador)                      # Intento convertir el Id en un entero
        cursor = conexion.cursor(dictionary = True)                 # Creo un cursor y le damos el dictionary para que sea un Json
        peticion = f"SELECT * FROM documentaciongrafica WHERE Identificador = {Identificador}"             # Creamos una peticion de seleccionar todo de la tabla documentaciongrafica
        cursor.execute(peticion)                                    # Ejecutamos la peticion
        filas = cursor.fetchall()                                   # Traemos el resultado
        if filas != []:                                             # Si la lista no está vacía
            return (filas)                                                # Imprimimos las filas
        else:                                                       # si está vacia 
            return False                                            # Devolvemos False
    except:
        return False                                                #Si hay algún error, devolvemos False
    
def insertaDocumentaciongrafica(documentaciongraficacategorias_Nombrecategoria,Imagen,Texto):           # Funcion para insertar un nuevo registro en DG 
    cursor = conexion.cursor(dictionary = True)                 # Creo un cursor y le damos el dictionary para que sea un Json
    peticion = f"""                                             
    INSERT INTO documentaciongrafica
    VALUES (
        NULL,
        '{documentaciongraficacategorias_Nombrecategoria}',
        '{Imagen}',
        '{Texto}'

    )"""                                                # Peticion de insertar en DG los siguientes valores
    cursor.execute(peticion)                            # Ejecutamos la peticion
    conexion.commit()                                   # Confirmamos los datos en la BD
    return True                                         # Nos devuelve True
    
def eliminaDocumentaciongrafica(Identificador):                 # Funcion para eliminar un nuevo registro en DG 
    cursor = conexion.cursor(dictionary = True)                 # Creo un cursor y le damos el dictionary para que sea un Json
    peticion = f"""
    DELETE FROM documentaciongrafica
    WHERE Identificador = '{Identificador}'
    """                                                 # peticion para eliminar de DG en el Id especificado
    cursor.execute(peticion)                            # Ejecutamos la peticion
    conexion.commit()                                   # 'Guarda' la conexion
    return True                                         # Nos devuelve True

def actualizaDato(Identificador,cadena,valor):                  # Funcion para actualizar un dato en DG 
    cursor = conexion.cursor(dictionary = True)                 # Creo un cursor y le damos el dictionary para que sea un Json
    peticion = f"""
        UPDATE documentaciongrafica
        SET
            {cadena} = '{valor}'
        WHERE Identificador = '{Identificador}'
        """                                             # Peticion de actualizar la columna especifica enn el Id especificado
    cursor.execute(peticion)                            # Ejecutamos la peticion
    conexion.commit()                                   # 'Guarda' la conexion

def actualizaDocumentaciongrafica(Identificador,documentaciongraficacategorias_Nombrecategoria,Imagen,Texto):       # Funcion para actualizar los datos del DG
    if documentaciongraficacategorias_Nombrecategoria != "":
        actualizaDato(Identificador,"documentaciongraficacategorias_Nombrecategoria",documentaciongraficacategorias_Nombrecategoria)            # Si el Titulo no está vacío, llamamos la funcion actualizadato
    if Imagen != "":
        actualizaDato(Identificador,"Imagen",Imagen)            # Si la Imagen no está vacío, llamamos la funcion actualizadato
    if Texto != "":
        actualizaDato(Identificador,"Texto",Texto)            # Si el Texto no está vacío, llamamos la funcion actualizadato
    return True                                                 # Nos devuelve True
