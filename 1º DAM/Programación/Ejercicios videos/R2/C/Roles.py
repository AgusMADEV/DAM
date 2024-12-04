class Usuario:
    def __init__(self, nombre, rol):
        self.nombre = nombre
        self.rol = rol

# Instanciando objetos
usuario1 = Usuario("Luis", "Usuario estándar")
usuario2 = Usuario("Elena", "Usuario estándar")

print(f"Usuario 1: {usuario1.nombre}, Rol: {usuario1.rol}")  # Salida: Usuario 1: Agustín, Rol: Administrador
print(f"Usuario 2: {usuario2.nombre}, Rol: {usuario2.rol}")  # Salida: Usuario 2: María, Rol: Usuario estándar
