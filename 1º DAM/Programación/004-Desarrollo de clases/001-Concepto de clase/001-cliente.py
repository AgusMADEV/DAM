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
        print(
            "Nombre:",
            self.nombre,
            " - Apellidos:",
            self.apellidos,
            " - Email:",
            self.email,
            " - Teléfono:",
            self.telefono)

cliente1 = Cliente(
    "Agustin",
    "Morcillo",
    "agus@morcillo.com",
    677321410
    )
cliente2 = Cliente(
    "Elena",
    "Botezatu",
    "elena@botezatu.com",
    643668986
    )
cliente1.dameDatos()
cliente2.dameDatos()
      
        

