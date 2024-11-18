class CuentaBancaria:
      def __init__(self, titular, saldo=0):
      
        self.titular = titular 
        self.saldo = saldo 

    def depositar(self, cantidad):
         if cantidad > 0:
            self.saldo += cantidad
            print(f"Has depositado {cantidad}. Nuevo saldo: {self.saldo}")
        else:
            print("La cantidad debe ser positiva.")

    def retirar(self, cantidad):
        if 0 < cantidad <= self.saldo:
            self.saldo -= cantidad
            print(f"Has retirado {cantidad}. Nuevo saldo: {self.saldo}")
        else:
            print("Fondos insuficientes o cantidad inválida.")
            
    def mostrar_saldo(self):
        print(f"El saldo actual de {self.titular} es: {self.saldo}")

def main():
    print("Bienvenido al sistema bancario.")
    
    titular = input("Ingrese el nombre del titular de la cuenta: ")
    cuenta = CuentaBancaria(titular)
    
    while True:
        print("\nBienvenido",titular,",elija la opción que quiere realizar,:")
        print("1. Depositar dinero")
        print("2. Retirar dinero")
        print("3. Mostrar saldo")
        print("4. Salir")
        
        opcion = input("Seleccione una opción (1-4): ")
        
        if opcion == '1':
            cantidad = float(input("Ingrese la cantidad a depositar: "))
            cuenta.depositar(cantidad)
        elif opcion == '2':
            cantidad = float(input("Ingrese la cantidad a retirar: "))
            cuenta.retirar(cantidad)
        elif opcion == '3':
            cuenta.mostrar_saldo()
        elif opcion == '4':
            print("Gracias por usar el sistema bancario. ¡Adiós!")
            break
        else:
            print("Opción inválida, intente nuevamente.")

if __name__ == "__main__":
    main()
