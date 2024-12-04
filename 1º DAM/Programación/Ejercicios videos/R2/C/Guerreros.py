class Guerrero:
    def __init__(self, nombre, nivel_poder, raza):
        self.nombre = nombre
        self.nivel_poder = nivel_poder
        self.raza = raza

    def atacar(self, objetivo):
        print(f"{self.nombre} ataca a {objetivo.nombre} con un poder de {self.nivel_poder}!")

    def transformarse(self):
        if self.raza == "Saiyajin":
            self.nivel_poder *= 50
            print(f"{self.nombre} se ha transformado en Super Saiyajin! Nuevo poder: {self.nivel_poder}")
        else:
            print(f"{self.nombre} no puede transformarse en Super Saiyajin.")

# Instanciando y usando los objetos
goku = Guerrero("Goku", 9001, "Saiyajin")
freezer = Guerrero("Freezer", 12000, "Alienígena")

# Goku se transforma y ataca a Freezer
goku.transformarse()
freezer.transformarse()
goku.atacar(freezer)
