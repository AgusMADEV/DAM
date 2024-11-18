class Cliente:
    def __init__(self,nuevoid,nuevonombre,nuevosapellidos,nuevoemail):
        self.identificador = nuevoid
        self.nombre = nuevonombre
        self.apellidos = nuevosapellidos
        self.email = nuevoemail

class Producto:
    def __init__(self,nuevoid,nuevonombre,nuevadescripcion,nuevoprecio):
        self.identificador = nuevoid
        self.nombre = nuevonombre
        self.descripcion = nuevadescripcion
        self.precio = nuevoprecio

clientes = []
productos = []

print("Programa de Consola")
print("v0.1 por Aguastín Morcillo Aguado")

while True:
    print("###########################")
    print("Elija la entidad:")
    print("1.-Clientes")
    print("2.-Productos")

    entidad = input("Indica la opción seleccionada: ")

    print("###########################")
    print("Selecciona operación:")
    print("1.-Insertar registro")
    print("2.-Listar registro")
    print("3.-Actualizar registro")
    print("4.-Eliminar registro")

    opcion = input("Selecciona una de estas operaciones: ")

    if opcion == "1":
        print("Insertamos un nuevo registro")
        identificador = input("Introduce el ID del nuevo cliente: ")
        nombre = input("Introduce el nombre del nuevo cliente: ")
        apellidos = input("Introduce el apellid del nuevo cliente: ")
        email = input("Introduce eel email del nuevo cliente: ")
        cliente = Cliente(identificador,nombre,apellidos,email)
        clientes.append(cliente)
        
    elif opcion == "2":
        print("Listamos los registro")
    elif opcion == "3":
        print("Actualizamos los registro")
    elif opcion == "4":
        print("Eliminamos registros")
