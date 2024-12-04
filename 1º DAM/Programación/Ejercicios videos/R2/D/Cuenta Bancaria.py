class CuentaBancaria:
    def __init__(self, titular, saldo):
        self.titular = titular  # Propiedad
        self.saldo = saldo      # Propiedad

    def depositar(self, cantidad):
        self.saldo += cantidad
        print(f"Se han depositado {cantidad}€. Saldo actual: {self.saldo}€")

    def retirar(self, cantidad):
        if cantidad > self.saldo:
            print("Fondos insuficientes.")
        else:
            self.saldo -= cantidad
            print(f"Se han retirado {cantidad}€. Saldo actual: {self.saldo}€")

# Creación de una cuenta bancaria
cuenta = CuentaBancaria("Agustín", 1000)

# Uso de propiedades
print(f"Titular: {cuenta.titular}")
print(f"Saldo inicial: {cuenta.saldo}€")

# Uso de métodos
cuenta.depositar(500)
cuenta.retirar(200)
cuenta.depositar(500)
cuenta.retirar(1500)
