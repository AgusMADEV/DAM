class Saludador:
    def saludar(self, nombre, idioma):
        if idioma == "es":
            return f"¡Hola, {nombre}!"
        elif idioma == "en":
            return f"Hello, {nombre}!"
        elif idioma == "fr":
            return f"Bonjour, {nombre}!"
        else:
            return f"Hola, {nombre}! (idioma no reconocido)"

# Creando una instancia y usando el método con parámetros
saludador = Saludador()
print(saludador.saludar("Agustín", "es"))  # Salida: ¡Hola, Agustín!
print(saludador.saludar("Elena", "fr"))   # Salida: Bonjour, Elena!
print(saludador.saludar("Myke", "en"))   
print(saludador.saludar("John", "de"))    # Salida: Hola, John! (idioma no reconocido)