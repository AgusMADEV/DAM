import mysql.connector                              # Importamos mysql connector

conexion = mysql.connector.connect(                 
    host="localhost",
    user="dragonball",
    password="dragonball",
    database="dragonball"
)                                                   # Conectamos con mysql

def seleccionaPersonajes():                        # Creo la funcion de seleccionaDGs
    cursor = conexion.cursor(dictionary = True)                 # Creo un cursor y le damos el dictionary para que sea un Json
    peticion = "SELECT * FROM personajes"             # Creamos una peticion de seleccionar todo de la tabla documentaciongrafica
    cursor.execute(peticion)                                    # Ejecutamos la peticion
    filas = cursor.fetchall()                                   # Traemos las filas
    return(filas)                                                # Imprimimos las filas

def seleccionaPersonaje(Identificador):               # Funcion para seleccionar DG según su Identificador
    try:
        Identificador = int(Identificador)                      # Intento convertir el Id en un entero
        cursor = conexion.cursor(dictionary = True)                 # Creo un cursor y le damos el dictionary para que sea un Json
        peticion = f"SELECT * FROM personajes WHERE Identificador = {Identificador}"             # Creamos una peticion de seleccionar todo de la tabla documentaciongrafica
        cursor.execute(peticion)                                    # Ejecutamos la peticion
        filas = cursor.fetchall()                                   # Traemos el resultado
        if filas != []:                                             # Si la lista no está vacía
            return (filas)                                                # Imprimimos las filas
        else:                                                       # si está vacia 
            return False                                            # Devolvemos False
    except:
        return False                                                #Si hay algún error, devolvemos False
    
def insertaPersonaje(Nombre,Raza,Poder,id_planetaorigen):           # Funcion para insertar un nuevo registro en DG 
    cursor = conexion.cursor(dictionary = True)                 # Creo un cursor y le damos el dictionary para que sea un Json
    peticion = f"""                                             
    INSERT INTO personajes
    VALUES (
        NULL,
        '{Nombre}',
        '{Raza}',
        '{Poder}',
        '{id_planetaorigen}'
    )"""                                                # Peticion de insertar en DG los siguientes valores
    cursor.execute(peticion)                            # Ejecutamos la peticion
    conexion.commit()                                   # Confirmamos los datos en la BD
    return True                                         # Nos devuelve True
    
def eliminaPersonaje(Identificador):                 # Funcion para eliminar un nuevo registro en DG 
    cursor = conexion.cursor(dictionary = True)                 # Creo un cursor y le damos el dictionary para que sea un Json
    peticion = f"""
    DELETE FROM personajes
    WHERE Identificador = '{Identificador}'
    """                                                 # peticion para eliminar de DG en el Id especificado
    cursor.execute(peticion)                            # Ejecutamos la peticion
    conexion.commit()                                   # 'Guarda' la conexion
    return True                                         # Nos devuelve True

def actualizaDato(Identificador,cadena,valor):                  # Funcion para actualizar un dato en DG 
    cursor = conexion.cursor(dictionary = True)                 # Creo un cursor y le damos el dictionary para que sea un Json
    peticion = f"""
        UPDATE personajes
        SET
            {cadena} = '{valor}'
        WHERE Identificador = '{Identificador}'
        """                                             # Peticion de actualizar la columna especifica enn el Id especificado
    cursor.execute(peticion)                            # Ejecutamos la peticion
    conexion.commit()                                   # 'Guarda' la conexion

def actualizaPersonaje(Identificador,Nombre,Raza,Poder,id_planetaorigen):       # Funcion para actualizar los datos del DG
    if Nombre != "":
        actualizaDato(Identificador,"Nombre",Nombre)            # Si el Titulo no está vacío, llamamos la funcion actualizadato
    if Raza != "":
        actualizaDato(Identificador,"Raza",Raza)            # Si la Imagen no está vacío, llamamos la funcion actualizadato
    if Poder != "":
        actualizaDato(Identificador,"Poder",Poder)            # Si el Texto no está vacío, llamamos la funcion actualizadato
    if id_planetaorigen != "":
        actualizaDato(Identificador,"id_planetaorigen",id_planetaorigen)            # Si el Texto no está vacío, llamamos la funcion actualizadato
    return True                                                 # Nos devuelve True
