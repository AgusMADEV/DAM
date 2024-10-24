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
        self.telefono = nuevoemail

cliente1 = Cliente (
        "Agustín",
        "Morcillo Aguado",
        "agustin.morcillo@gmail.com",
        677321410
        )
cliente2 = Cliente (
        "Elena",
        "Botezatu",
        "agustin.morcillo@gmail.com",
        648594752
        )
