class Persona:
    def __init__(self, nombre, direccion):
        self.nombre = nombre
        self.direccion = direccion 

    def mostrar_informacion(self):
        print(f""" {self.nombre} -  Direccion: {self.direccion}""")


persona1 = Persona("Homer Simpson", "Calle Falsa, Springfield")

persona1.mostrar_informacion()

