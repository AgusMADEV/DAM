class Cliente:
    def __init__(self,
                 nuevonombre,
                 nuevosapellidos,
                 nuevoemail,
                 nuevotelefono
                 ):
        self.nombre = nuevonombre
        self.apellidos = nuevosapellidos
        self.email = nuevoemail
        self.telefono = nuevotelefono

    def dameDatos(self):
        print("Nombre:",
              self.nombre,
              " - Apellidos:",
              self.apellidos,
              " - Email:",
              self.email,
              " - Telefono:",
              self.telefono
              )
        
cliente1 = Cliente (
        "Agustín",
        "Morcillo Aguado",
        "agustin.morcillo@gmail.com",
        677321410
        )
cliente2 = Cliente (
        "Elena",
        "Botezatu",
        "psicoelenaa@gmail.com",
        648594752
        )
cliente1.dameDatos()
cliente2.dameDatos()

print(cliente1)
cliente1 = None
print(cliente1)
