import pickle

class Alumno:                                                                      # Defino una clase de alumno
    def __init__(self,nuevoid,nuevonombre,nuevosapellidos,nuevoemail):
        self.identificador = nuevoid
        self.nombre = nuevonombre
        self.apellidos = nuevosapellidos
        self.email = nuevoemail

class Asignatura:                                                                    # Defino una clase de asignatura
    def __init__(self,nuevoid,nuevonombre):
        self.identificador = nuevoid
        self.nombre = nuevonombre

alumnos = []                                                                       # Creo una lista vacia que es donde voy a guardar a los alumnos
asignaturas = []                                                                      # Creo una lista vacia que es donde voy a guardar a los asignaturas

print("Programa de Consola")                                                        # imprimo mensaje de bienvenida
print("v0.1 porAgustín Morcillo Aguado")                                            # Imprimo el autor

while True:                                                                         # Entro en un bucle infinito
    print("########################")                                               # Imprimo un separador visual
    print("Selecciona entidad")                                                     # Invito a seleccionar una entida
    print("1.-Alumno")
    print("2.-Asignatura")

    entidad = input("Indica la opcion seleccionada:")                               # Atrapo el valor de la entidad

    print("Selecciona operacion")                                                   # Ahora muestro el menu de operaciones
    print("1.-Insertar un nuevo registro")
    print("2.-Listar registros")
    print("3.-Actualizar registro")
    print("4.-Eliminar registro")

    opcion = input("Selecciona una de estas operaciones:")                          # Atrapo la opción del usuario

    if opcion == "1":                                                               # Empezamos insertando un registro
        print("Insertamos un nuevo registro")                                       # Imprimo un mensaje
        identificador = input("Introduce el id del nuevo alumnos: ")                  # Introduzco los datos que pido para la clase
        nombre = input("Introduce el nombre del nuevo alumnos: ")
        apellidos = input("Introduce los apellidos del nuevo alumnos: ")
        email = input("Introduce el email del nuevo alumnos: ")
        alumnos.append(Alumno(identificador,nombre,apellidos,email))              # Añado la instancia a la lista de alumnos
        
    elif opcion == "2":                                                             # Si la opcion es la de listar
        print("Listamos los registros")                                             # Pongo un print
        contador = 0
        for alumno in alumnos:                                                    # Para cada uno de los alumnos en la lista de alumnos
            print("------------------")                                             # Pongo un separador
            print("Id de Python:"+str(contador))
            print("id: "+alumno.identificador)                                     # Imprimo cada una de las caracteristicas
            print("nombre: "+alumno.nombre)
            print("apellidos: "+alumno.apellidos)
            print("email: "+alumno.email)
            contador+= 1
    elif opcion == "3":
        print("Actualizamos los registros")
        idlista = input("Selecciona el elemento de la lista de Python que quieres actualizar:")
        identificador = input("Introduce el id del alumno modificado: ")                  # Introduzco los datos que pido para la clase
        nombre = input("Introduce el nombre del alumno modificado: ")
        apellidos = input("Introduce los apellidos del alumno modificado: ")
        email = input("Introduce el email del alumno modificado ")
        alumnos[int(idlista)].identificador = identificador
        alumnos[int(idlista)].nombre = nombre
        alumnos[int(idlista)].apellidos = apellidos
        alumnos[int(idlista)].email = email
    elif opcion == "4":
        print("Eliminamos registros")
        idlista = input("Selecciona el elemento de la lista de Python que quieres eliminar:")
        alumnos.pop(int(idlista))










