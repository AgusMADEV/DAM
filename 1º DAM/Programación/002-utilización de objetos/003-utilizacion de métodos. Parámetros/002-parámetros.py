class Gato:
    def __init__(self):
        self.altura = None
        self.edad = None
        self.peso = None
    def maulla(self,numero):
        cadena = "Miau "*numero
        print(cadena)
    def estufera(self):
        print("fffffff")

gato1 = Gato()
gato1.maulla(20)
gato1.estufera()
