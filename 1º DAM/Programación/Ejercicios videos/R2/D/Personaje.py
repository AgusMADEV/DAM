class Personaje:
    def __init__(self, nombre, vida):
        self.nombre = nombre  # Propiedad
        self.vida = vida      # Propiedad

    def recibir_dano(self, dano):
        self.vida -= dano
        if self.vida <= 0:
            self.vida = 0
            print(f"{self.nombre} ha recibido {dano} de daño. {self.nombre} ha sido derrotado.")
        else:
            print(f"{self.nombre} ha recibido {dano} de daño. Vida restante: {self.vida}")

    def curarse(self, puntos):
        self.vida += puntos
        print(f"{self.nombre} se ha curado {puntos} puntos. Vida actual: {self.vida}")

# Creación de un personaje
personaje = Personaje("Goku", 500)

# Uso de propiedades
print(f"Nombre del personaje: {personaje.nombre}")
print(f"Vida inicial: {personaje.vida}")

# Uso de métodos
personaje.recibir_dano(90)
personaje.curarse(80)
personaje.recibir_dano(5)
