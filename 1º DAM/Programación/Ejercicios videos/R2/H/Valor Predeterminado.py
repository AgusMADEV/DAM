class Persona:
    def __init__(self, nombre, edad=18):
        self.nombre = nombre
        self.edad = edad

    def saludar(self):
        print(f"¡Hola, soy {self.nombre} y tengo {self.edad} años!")

# Crear objetos de la clase Persona
persona1 = Persona("Agustín")
persona2 = Persona("Elena", 25)

# Mostrar saludos
persona1.saludar()  # Edad predeterminada
persona2.saludar()  # Edad personalizada
