class Perro:
    def __init__(self,nuevonombre,nuevaaltura,nuevopeso,nuevaedad):
        self.altura = nuevaaltura
        self.edad = nuevaedad
        self.peso = nuevopeso
        self.nombre = nuevonombre
    def ladra(self,numero):
        cadena = "Guau "*numero
        print(cadena)
    def gruñe(self):
        print("grrrrrrr")

perro1 = Perro("Lilo",8,5,8)

print("El nombre del perro es ",perro1.nombre)
print("La edad del perro es ",perro1.edad)
print("EL peso del perro es ",perro1.peso)
print("La altura del perro es ",perro1.altura)
