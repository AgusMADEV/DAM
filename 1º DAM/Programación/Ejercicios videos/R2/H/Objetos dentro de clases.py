class Dirección:
    def __init__(self, calle, ciudad):
        self.calle = calle
        self.ciudad = ciudad

class Persona:
    def __init__(self, nombre, direccion):
        self.nombre = nombre
        self.direccion = direccion  # Aquí la propiedad direccion es un objeto

    def mostrar_info(self):
        print(f"""Nombre: {self.nombre}""")
        print(f"""Dirección: {self.direccion.calle}, {self.direccion.ciudad}""")

# Crear un objeto Dirección
direccion1 = Dirección("Calle Falsa", "Springfield")

# Crear un objeto Persona con el objeto Dirección como parámetro
persona1 = Persona("Homer Simpson", direccion1)

# Mostrar la información de la persona
persona1.mostrar_info()
