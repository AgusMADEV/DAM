class Perro:
    def __init__(self):
        self.altura = None
        self.edad = None
        self.peso = None
        self.nombre = None
    def ladra(self,numero):
        cadena = "Guau "*numero
        print(cadena)
    def gruñe(self):
        print("grrrrrrr")

perro1 = Perro()
print("El nombre del perro1 es ",perro1.nombre)
perro1.nombre = "Lilo"
print("El nombre del perro1 es ",perro1.nombre)
perro1.ladra(5)