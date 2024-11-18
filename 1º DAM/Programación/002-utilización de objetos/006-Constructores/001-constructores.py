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
        print("grrrrrrrr")

perro1 = Perro()
perro1.nombre = "Lilo"
perro1.edad = 8
perro1.peso = 5.5
perro1.altura = 5


