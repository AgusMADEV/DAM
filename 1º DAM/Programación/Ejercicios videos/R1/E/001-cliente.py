import pickle

class Alumno:
    def __init__(self,
                 nuevoid,
                 nuevonombre,
                 nuevosapellidos,
                 nuevoemail,
                 nuevotelefono,
                 nuevanota
                 ):
        self.identificador = nuevoid
        self.nombre = nuevonombre
        self.apellidos = nuevosapellidos
        self.email = nuevoemail
        self.telefono = nuevotelefono
        self.nota = nuevanota

alumnos = [] 

print("-----------------------------------")
print("    Programa Alumnado DAM     ")                                                                      # Lanzamos un mensaje de bienvenida en la pantalla
print("v0.1 por Agustín Morcillo Aguado")   
print("-----------------------------------")
        
while True:                                                              #Creo un bucle infinito                     #Ahora muestro el menu de operaciones
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
        identificador = input("Introduce el ID del nuevo alumno: ")      #Introduzco los datos que pido para la clase
        nombre = input("Introduce el nombre del nuevo alumno: ")
        apellidos = input("Introduce el apellid del nuevo alumno: ")
        email = input("Introduce el email del nuevo alumno: ")
        telefono = input("Introduce teléfono del nuevo alumno: ")
        nota = input("Introduce nota del nuevo alumno: ")
        alumno = Alumno(identificador,nombre,apellidos,email,telefono,nota)           #Creo una nueva instancia
        alumnos.append(alumno)                                          #Añado la instancia a la lista de clientes
        
    elif opcion == "2":                                                   #Si la opcion es la de listar
        print("Listamos los registro")                                    #Pongo un print
        contador = 0
        for alumno in alumnos:                                          #Para cada uno de los clientes en la lista de clientes
            print("------------------------")                             #Pongo un separador
            print("ID de Python:",contador)                              #Imprimo cada una de las caracteristicas
            print("ID: "+alumno.identificador)
            print("nombre: "+alumno.nombre)
            print("apellidos: "+alumno.apellidos)
            print("email: "+alumno.email)
            print("teléfono: "+alumno.telefono)
            print("nota: "+alumno.nota)
            contador+= 1
    elif opcion == "3":
        print("Actualizamos los registro")
        idlista = input("Selecciona el elemento de la lista de Python que quieres actualizar: ")
        identificador = input("Introduce el ID del cliente modificado: ")      #Introduzco los datos que pido para la clase
        nombre = input("Introduce el nombre del cliente modificado: ")
        apellidos = input("Introduce el apellid del cliente modificado: ")
        email = input("Introduce eel email del cliente modificado: ")
        telefono = input("Introduce teléfono del alumno modificado: ")
        nota = input("Introduce nota del alumno modificado: ")
        alumnos[int(idlista)].identificador = identificador
        alumnos[int(idlista)].nombre = nombre
        alumnos[int(idlista)].apellidos = apellidos
        alumnos[int(idlista)].email = email
        alumnos[int(idlista)].telefono = telefono
        alumnos[int(idlista)].nota = nota
    elif opcion == "4":
        print("Eliminamos registros")
        idlista = input("Seleccina el elemento de la lista de Pyhton que quieres eliminar: ")
        alumnos.pop(int(idlista))
    elif opcion == "5":
        archivo = open("alumnos.dat",'wb')
        pickle.dump(alumnos,archivo)
        archivo.close()
    elif opcion == "6":
        archivo = open("alumnos.dat",'rb')
        alumnos = pickle.load(archivo)
        archivo.close()
