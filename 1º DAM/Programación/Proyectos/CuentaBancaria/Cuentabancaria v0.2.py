# Definimos una clase llamada CuentaBancaria (esto será la plantilla para crear objetos de tipo cuenta bancaria)
class CuentaBancaria:
    # El constructor de la clase (__init__) se ejecuta automáticamente cuando se crea un objeto de esta clase
    def __init__(self, titular, saldo=0):
        # Variables de instancia: cada objeto de tipo CuentaBancaria tendrá un titular y un saldo
        self.titular = titular  # Se almacena el nombre del titular de la cuenta
        self.saldo = saldo  # Se inicializa el saldo de la cuenta, por defecto es 0

    # Método para depositar dinero en la cuenta
    def depositar(self, cantidad):
        # Comprobamos si la cantidad es mayor que 0 (ya que no tendría sentido depositar una cantidad negativa o nula)
        if cantidad > 0:
            self.saldo += cantidad  # Sumamos la cantidad al saldo actual de la cuenta
            # Mostramos un mensaje de confirmación con el nuevo saldo
            print(f"Has depositado {cantidad}. Nuevo saldo: {self.saldo}")
        else:
            # Si la cantidad no es válida, se avisa al usuario
            print("La cantidad debe ser positiva.")

    # Método para retirar dinero de la cuenta
    def retirar(self, cantidad):
        # Verificamos que la cantidad a retirar sea mayor que 0 y que no exceda el saldo disponible
        if 0 < cantidad <= self.saldo:
            self.saldo -= cantidad  # Restamos la cantidad del saldo actual
            # Mostramos un mensaje confirmando la retirada y el saldo restante
            print(f"Has retirado {cantidad}. Nuevo saldo: {self.saldo}")
        else:
            # Si no hay fondos suficientes o la cantidad es inválida, avisamos al usuario
            print("Fondos insuficientes o cantidad inválida.")

    # Método para mostrar el saldo actual de la cuenta
    def mostrar_saldo(self):
        # Mostramos el saldo actual del titular de la cuenta
        print(f"El saldo actual de {self.titular} es: {self.saldo}")

# Función principal que maneja la interacción con el usuario y las operaciones bancarias
def main():
    # Mensaje de bienvenida para el usuario
    print("Bienvenido al sistema bancario.")
    
    # Pedimos al usuario que ingrese el nombre del titular de la cuenta
    titular = input("Ingrese el nombre del titular de la cuenta: ")
    # Creamos un objeto de tipo CuentaBancaria con el nombre del titular ingresado
    cuenta = CuentaBancaria(titular)
    
    # Bucle infinito que continúa hasta que el usuario elija salir
    while True:
        # Mostramos el menú de opciones para que el usuario elija una acción
        print("\nBienvenido",titular,",elija la opción que quiere realizar,:")
        print("1. Depositar dinero")
        print("2. Retirar dinero")
        print("3. Mostrar saldo")
        print("4. Salir")
        
        # Pedimos al usuario que seleccione una opción
        opcion = input("Seleccione una opción (1-4): ")
        
        # Estructura de control que determina qué acción realizar en función de la opción seleccionada
        if opcion == '1':
            # Si el usuario elige '1', solicitamos la cantidad a depositar
            cantidad = float(input("Ingrese la cantidad a depositar: "))
            # Llamamos al método depositar del objeto cuenta para realizar el depósito
            cuenta.depositar(cantidad)
        elif opcion == '2':
            # Si el usuario elige '2', solicitamos la cantidad a retirar
            cantidad = float(input("Ingrese la cantidad a retirar: "))
            # Llamamos al método retirar del objeto cuenta para realizar la retirada
            cuenta.retirar(cantidad)
        elif opcion == '3':
            # Si el usuario elige '3', mostramos el saldo actual llamando al método mostrar_saldo
            cuenta.mostrar_saldo()
        elif opcion == '4':
            # Si el usuario elige '4', finalizamos el programa mostrando un mensaje de despedida
            print("Gracias por usar el sistema bancario. ¡Adiós!")
            break  # Salimos del bucle while, lo que termina el programa
        else:
            # Si el usuario ingresa una opción no válida, mostramos un mensaje de error
            print("Opción inválida, intente nuevamente.")

# Este bloque verifica si el script se está ejecutando directamente (no si es importado)
if __name__ == "__main__":
    main()  # Ejecutamos la función principal
