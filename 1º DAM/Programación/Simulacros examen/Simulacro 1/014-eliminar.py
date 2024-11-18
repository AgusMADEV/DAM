class Cliente:                                                            #Defino una clase de cliente
    def __init__(self,nuevoid,nuevonombre,nuevosapellidos,nuevoemail):
        self.identificador = nuevoid
        self.nombre = nuevonombre
        self.apellidos = nuevosapellidos
        self.email = nuevoemail

class Producto:                                                           #Defino una clase de producto    
    def __init__(self,nuevoid,nuevonombre,nuevadescripcion,nuevoprecio):
        self.identificador = nuevoid
        self.nombre = nuevonombre
        self.descripcion = nuevadescripcion
        self.precio = nuevoprecio

clientes = []                                                           #Creo una lista vacia que es donde voy a guardar los clientes
productos = []                                                          #Creo una lista vacia que es donde voy a guardar los productos

print("Programa de Consola")                                             #Imprimo mensaje de bienvenida
print("v0.1 por Aguastín Morcillo Aguado")                               #Imprimo la version y el autor

while True:                                                              #Creo un bucle infinito
    print("###########################")                                 #Imprimo un separador visual
    print("Elija la entidad:")                                           #Invito a seleccionar una entidad
    print("1.-Clientes")
    print("2.-Productos")

    entidad = input("Indica la opción seleccionada: ")                   #Atrapo el valor de la entidad

    print("###########################")                                 #Ahora muestro el menu de operaciones
    print("Selecciona operación:")
    print("1.-Insertar registro")
    print("2.-Listar registro")
    print("3.-Actualizar registro")
    print("4.-Eliminar registro")

    opcion = input("Selecciona una de estas operaciones: ")               #Atrapo el valor de la operacion

    if opcion == "1":                                                     #Empezamos a insertar un registro
        print("Insertamos un nuevo registro")                             #Imprimo un mensaje
        identificador = input("Introduce el ID del nuevo cliente: ")      #Introduzco los datos que pido para la clase
        nombre = input("Introduce el nombre del nuevo cliente: ")
        apellidos = input("Introduce el apellid del nuevo cliente: ")
        email = input("Introduce eel email del nuevo cliente: ")
        cliente = Cliente(identificador,nombre,apellidos,email)           #Creo una nueva instancia
        clientes.append(cliente)                                          #Añado la instancia a la lista de clientes
        
    elif opcion == "2":                                                   #Si la opcion es la de listar
        print("Listamos los registro")                                    #Pongo un print
        contador = 0
        for cliente in clientes:                                          #Para cada uno de los clientes en la lista de clientes
            print("------------------------")                             #Pongo un separador
            print("ID de Python:",contador)                              #Imprimo cada una de las caracteristicas
            print("ID: "+cliente.identificador)
            print("nombre: "+cliente.nombre)
            print("apellidos: "+cliente.apellidos)
            print("email: "+cliente.email)
            contador+= 1
    elif opcion == "3":
        print("Actualizamos los registro")
        idlista = input("Selecciona el elemento de la lista de Python que quieres actualizar: ")
        identificador = input("Introduce el ID del cliente modificado: ")      #Introduzco los datos que pido para la clase
        nombre = input("Introduce el nombre del cliente modificado: ")
        apellidos = input("Introduce el apellid del cliente modificado: ")
        email = input("Introduce eel email del cliente modificado: ")
        clientes[int(idlista)].identificador = identificador
        clientes[int(idlista)].nombre = nombre
        clientes[int(idlista)].apellidos = apellidos
        clientes[int(idlista)].email = email
    elif opcion == "4":
        print("Eliminamos registros")
        idlista = input("Seleccina el elemento de la lista de Pyhton que quieres eliminar: ")
        clientes.pop(int(idlista))
        
