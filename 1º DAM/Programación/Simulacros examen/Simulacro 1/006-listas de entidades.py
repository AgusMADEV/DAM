class Cliente:
    def __init__(self,nuevoid,nuevonombre,nuevosapellidos,nuevoemail):
        self.id = nuevoid
        self.nombre = nuevonombre
        self.apellidos = nuevosapellidos
        self.email = nuevoemail

class Producto:
    def __init__(self,nuevoid,nuevonombre,nuevadescripcion,nuevoprecio):
        self.id = nuevoid
        self.nombre = nuevonombre
        self.descripcion = nuevadescripcion
        self.precio = nuevoprecio

clientes = []
productos = []

print("Programa de Consola")
print("v0.1 por Aguastín Morcillo Aguado")

print("Elija la entidad:")
print("1.-Clientes")
print("2.-Productos")

entidad = input("Indica la opción seleccionada: ")

print("Selecciona operación:")
print("1.-Insertar registro")
print("2.-Listar registro")
print("3.-Actualizar registro")
print("4.-Eliminar registro")
