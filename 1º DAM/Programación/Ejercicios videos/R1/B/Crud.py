"""
    Programa CRUD TOTAL
    (c) v0.1 Agustín Morcillo Aguado
    El objetivo de este programa es construir el CRUD contra MySQL
"""  
import mysql.connector                                                                                  # Importo la librería para poder conectarme a MySQL

servidor = "localhost"                                                                                  # Creo una variable en la que apunto a mi servidor
usuario = "miempresa"                                                                                   # Creo una variable para definir el usuario
contrasena = "miempresa"                                                                                # Creo una variable para definir la contraseña del usuario 
base_de_datos = "miempresa"                                                                             # Creo una variable para definir la base de datos a la que me conecto

conexion = mysql.connector.connect(
    host=servidor,
    database=base_de_datos,
    user=usuario,
    password=contrasena
)                                                                                                       # Establezco una conexión con la base de datos con los datos seleccionados
 
print("#################")
print("Programa CRUD al completo")                                                                      # Lanzamos un mensaje de bienvenida en la pantalla
print("#################")

while True:                                                                                             # Entramos en un bucle infinito
    
    print("Selecciona una opción")                                                                      # Invitamos al usuario a esgoger una opcion
    print("1.-Crear nuevo cliente")
    print("2.-Leer clientes existentes")
    print("3.-Actualizar cliente existente")
    print("4.-Eliminar cliente")
    print("5.-Salir del programa")

    opcion = input("Selecciona una de las opciones:")                                                   # Tomamos una opción por parte del usuario
    print("Has seleccionado la opcion:",opcion)                                                         # Le informamos al usuario de la opción que ha escogido
 
    if opcion == "1":                                                                                   # En el caso de que haya escogido la opción de crear
        
        print("Vamos a insertar un nuevo cliente.")                                                     # Aviso al usuario de la operación que voy a realizar
        nombre = input("Introduce un nuevo nombre:")                                                    # Le pido el nombre y lo meto en una variable
        apellidos = input("Introduce los nuevos apellidos:")                                            # Le pido los apellidos y los meto en una variable
        email = input("Introduce el email:")                                                            # Le pido el email y lo meto en una variable
        poblacion = input("Introduce la poblacion:")                                                    # Le pido la población y la meto en una variable
        fechadenacimiento = input("Introduce la fecha de nacimiento:")                                  # Le pido la fecha de nacimiento y la meto en una variable
        
        peticion = "INSERT INTO clientes VALUES (NULL,'"+nombre+"','"+apellidos+"','"+email+"','"+poblacion+"','"+fechadenacimiento+"');"                                                                                                                                                                           # Preparo una petición de inserción a la base de datos
        
        cursor = conexion.cursor()                                                                      # Una petición en Python requiere un cursor
        cursor.execute(peticion)                                                                        # En el cursor, ejecuto la petición que he dejado preparada arriba
        conexion.commit()                                                                               # Por último, proceso la petición en el servidor
        
    elif opcion == "2":                                                                                 # En el caso de que haya escogido la opción de actualizar
        print("vamos a listar los clientes")                                                            # Imprimo mensaje
        peticion = "SELECT * FROM clientes;"                                                            # Preparo una petición de inserción a la base de datos
        cursor = conexion.cursor()                                                                      # Una petición en Python requiere un cursor
        cursor.execute(peticion)                                                                        # En el cursor, ejecuto la petición que he dejado preparada arriba
        filas = cursor.fetchall()                                                                       # En una variable llamadas filas, almaceno los resultados que me da la base de datos
        for fila in filas:                                                                              # Como filas representa a todas las filas, yo quiero coger una a una                                           #print(fila)                                                                                # Imprimo cada fila individualmente
            print("###########################")                                                        # Separador totalmente cosmético
            print("El identificador es:", fila[0])                                                      
            # Cada uno de los datos es un elemento de colección de la tupla
            print("El nombre es:", fila[1])
            print("El apellido es:", fila[2])
            print("El email es:", fila[3])
            print("La localidad es es:", fila[4])
            print("La fecha de nacimiento es:", fila[5])
            
    elif opcion == "3":                                                                                 # En el caso de que haya escogido la opción de actualizar
        print("Vamos a actualizar a un cliente")                                                        # Imprimo mensaje
        identificador = input("Introduce el id del cliente que vas a actualizar:")                      # Le pido el id que actualizaré
        nombre = input("Introduce un nuevo nombre:")                                                    # Le pido el nombre y lo meto en una variable
        apellidos = input("Introduce los nuevos apellidos:")                                            # Le pido los apellidos y los meto en una variable
        email = input("Introduce el email:")                                                            # Le pido el email y lo meto en una variable
        poblacion = input("Introduce la poblacion:")                                                    # Le pido la población y la meto en una variable
        fechadenacimiento = input("Introduce la fecha de nacimiento:")                                  # Le pido la fecha de nacimiento y la meto en una variable
        peticion = """
                    UPDATE clientes
                    SET
                    nombre ='"""+nombre+"""',
                    apellidos ='"""+apellidos+"""',
                    email ='"""+email+"""',
                    poblacion ='"""+poblacion+"""',
                    fechadenacimiento ='"""+fechadenacimiento+"""'
                    WHERE identificador ='"""+identificador+"""'
                    ;""" 
        cursor = conexion.cursor()                                                                      # Una petición en Python requiere un cursor
        cursor.execute(peticion)                                                                        # En el cursor, ejecuto la petición que he dejado preparada arriba
        conexion.commit()                                                                               # Por último, proceso la petición en el servidor
        
    elif opcion == "4":                                                                                 # En el caso de que haya escogido la opción de eliminar
        print("Vamos a eliminar a un cliente")                                                          # Imprimo mensaje
        identificador = input("Introudce el id del cliente que vas a eliminar:")                        # Le pido el id que eliminaré
        try:                                                                                            # Preparo un caso de error (try)
            peticion = """
                        DELETE FROM clientes 
                        WHERE identificador = """+identificador+"""                             
                    ;"""                                                                                # Preparo una petición de inserción a la base de datos
            cursor = conexion.cursor()                                                                  # Una petición en Python requiere un cursor
            cursor.execute(peticion)                                                                    # En el cursor, ejecuto la petición que he dejado preparada arriba
            conexion.commit()                                                                           # Por último, proceso la petición en el servidor
        except:                                                                                         # En caso de error fuerzo al programa a seguir
            print("La operaicon no se ha podido realizar por algun error en la base de datos...")       # Imprimo mensaje del error
            
    elif opcion == "5":                                                                                 # En el caso de que haya escogido la opción de salir
        exit()                                                                                          # Cerramos programa
    else:                                                                                               # En el caso de que no se seleccione ninguna opcion valida
        print("Lo que has escogido no es una opción válida")                                            # Imprimo mensaje