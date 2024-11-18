class Perro:
    def __init__(self):
        self.altura = None
        self.edad = None
        self.peso = None
    def ladra(self,numero):
        cadena = "Guau "*numero
        print(cadena)
    def gruñe(self):
        print("grrrrrrr")

perro1 = Perro()
perro1.ladra(19)
perro1.gruñe()