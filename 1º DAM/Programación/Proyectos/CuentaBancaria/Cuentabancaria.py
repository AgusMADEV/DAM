import pickle
# Clase que define una Cuenta Bancaria (objetos)
class CuentaBancaria:
    def __init__(self, titular, saldo=0):
        self.titular = titular  # Variable de instancia
        self.saldo = saldo  # Variable de instancia

    # Método para depositar dinero (función)
    def depositar(self, cantidad):
        if cantidad > 0:
            self.saldo += cantidad  # Operador de suma
            print(f"Has depositado {cantidad}. Nuevo saldo: {self.saldo}")
        else:
            print("La cantidad debe ser positiva.")

    # Método para retirar dinero (función)
    def retirar(self, cantidad):
        if 0 < cantidad <= self.saldo:
            self.saldo -= cantidad  # Operador de resta
            print(f"Has retirado {cantidad}. Nuevo saldo: {self.saldo}")
        else:
            print("Fondos insuficientes o cantidad inválida.")

    # Método para mostrar el saldo actual (función)
    def mostrar_saldo(self):
        print(f"El saldo actual de {self.titular} es: {self.saldo}")
saldo = []
# Función principal (entrada/salida, variables, estructuras de control)
def main():
    print("Bienvenido al sistema bancario.")
    
    # Entrada de datos
    titular = input("Ingrese el nombre del titular de la cuenta: ")
    cuenta = CuentaBancaria(titular)  # Creación del objeto CuentaBancaria
    
    while True:  # Estructura de control (bucle)
        print("\nOpciones:")
        print("1. Depositar dinero")
        print("2. Retirar dinero")
        print("3. Mostrar saldo")
        print("4.Guardar")
        print("5.Cargar")
        print("6. Salir")
        
        # Entrada de opción
        opcion = input("Seleccione una opción (1-4): ")
        
        # Estructura de control (condicionales)
        if opcion == '1':
            cantidad = float(input("Ingrese la cantidad a depositar: "))
            cuenta.depositar(cantidad)
        elif opcion == '2':
            cantidad = float(input("Ingrese la cantidad a retirar: "))
            cuenta.retirar(cantidad)
        elif opcion == '3':
            cuenta.mostrar_saldo()
        elif opcion == '4':
            archivo = open("entrenadores.dat",'wb')
            pickle.dump(saldo,archivo)
            archivo.close()
        elif opcion == '5':
            archivo = open("entrenadores.dat",'rb')
            saldo = pickle.load(archivo)
            archivo.close()
        elif opcion == '6':
            print("Gracias por usar el sistema bancario. ¡Adiós!")
            break  # Romper el bucle
        else:
            print("Opción inválida, intente nuevamente.")

# Llamada a la función principal
if __name__ == "__main__":
    main()
