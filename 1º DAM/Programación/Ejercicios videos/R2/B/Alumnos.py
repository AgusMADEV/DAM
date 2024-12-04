class Estudiante:
    def __init__(self, nombre, nota):
        self.nombre = nombre
        self.nota = nota

    def esta_aprobado(self):
        return self.nota >= 5

# Crear un estudiante
est1 = Estudiante("Agustín", 8)
est2 = Estudiante("Marcus",3)
print(f"""{est1.nombre} está aprobado: {est1.esta_aprobado()}""")  # Salida: Agustín está aprobado: True
print(f"""{est2.nombre} está aprobado: {est2.esta_aprobado()}""")  # Salida: Marcus está aprobado: False
