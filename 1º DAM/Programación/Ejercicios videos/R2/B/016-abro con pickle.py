import pickle

class Entrenador:                                                            #Defino una clase de cliente
    def __init__(self,nuevoid,nuevonombre,nuevosapellidos):
        self.identificador = nuevoid
        self.nombre = nuevonombre
        self.apellidos = nuevosapellidos

class Pokemon:                                                           #Defino una clase de producto    
    def __init__(self,nuevoid,nuevonombre,nuevotipo):
        self.identificador = nuevoid
        self.nombre = nuevonombre
        self.descripcion = nuevotipo

entrenadores = []                                                           #Creo una lista vacia que es donde voy a guardar los clientes
pokemons = []                                                          #Creo una lista vacia que es donde voy a guardar los productos

print("Programa de Consola")                                             #Imprimo mensaje de bienvenida
print("v0.1 por Agustín Morcillo Aguado")                               #Imprimo la version y el autor

while True:                                                              #Creo un bucle infinito
    print("###########################")                                 #Imprimo un separador visual
    print("Elija la entidad:")                                           #Invito a seleccionar una entidad
    print("1.-Entrenadores")
    print("2.-Pokemons")

    entidad = input("Indica la opción seleccionada: ")                   #Atrapo el valor de la entidad

    print("###########################")                                 #Ahora muestro el menu de operaciones
    print("Selecciona operación:")
    print("1.-Insertar registro")
    print("2.-Listar registro")
    print("3.-Actualizar registro")
    print("4.-Eliminar registro")
    print("5.-Guardar")
    print("6.-Cargar")

    opcion = input("Selecciona una de estas operaciones: ")               #Atrapo el valor de la operacion

    if opcion == "1":                                                     #Empezamos a insertar un registro
        print("Insertamos un nuevo registro")                             #Imprimo un mensaje
        identificador = input("Introduce el ID del nuevo entrenador: ")      #Introduzco los datos que pido para la clase
        nombre = input("Introduce el nombre del nuevo entrenador: ")
        apellidos = input("Introduce el apellid del nuevo entrenador: ")
        entrenador = Entrenador(identificador,nombre,apellidos)           #Creo una nueva instancia
        entrenadores.append(entrenador)                                          #Añado la instancia a la lista de clientes
        
    elif opcion == "2":                                                   #Si la opcion es la de listar
        print("Listamos los registro")                                    #Pongo un print
        contador = 0
        for entrenador in entrenadores:                                          #Para cada uno de los clientes en la lista de clientes
            print("------------------------")                             #Pongo un separador
            print("ID de Python:",contador)                              #Imprimo cada una de las caracteristicas
            print("ID: "+entrenador.identificador)
            print("nombre: "+entrenador.nombre)
            print("apellidos: "+entrenador.apellidos)
            contador+= 1
    elif opcion == "3":
        print("Actualizamos los registro")
        idlista = input("Selecciona el elemento de la lista de Python que quieres actualizar: ")
        identificador = input("Introduce el ID del entrenador modificado: ")      #Introduzco los datos que pido para la clase
        nombre = input("Introduce el nombre del entrenador modificado: ")
        apellidos = input("Introduce el apellido del entrenador modificado: ")
        entrenadores[int(idlista)].identificador = identificador
        entrenadores[int(idlista)].nombre = nombre
        entrenadores[int(idlista)].apellidos = apellidos
    elif opcion == "4":
        print("Eliminamos registros")
        idlista = input("Seleccina el elemento de la lista de Pyhton que quieres eliminar: ")
        entrenadores.pop(int(idlista))
    elif opcion == "5":
        archivo = open("B/entrenadores.dat",'wb')
        pickle.dump(entrenadores,archivo)
        archivo.close()
    elif opcion == "6":
        archivo = open("B/entrenadores.dat",'rb')
        entrenadores = pickle.load(archivo)
        archivo.close()
