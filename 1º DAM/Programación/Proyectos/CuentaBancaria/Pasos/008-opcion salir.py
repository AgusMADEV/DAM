'''
    Programa cuenta bancaria de primer tema
    (c) 2024 Agustín Morcillo Aguado
    Este programa está hecho con Python
'''

print("Bienvenido/a al sistema bancario de AgusMADEV")
titular = input("Ingrese el nombre del titular de la cuenta: ")

while(True):
    
    print("Bienvenido",titular,", elija una opción: ")
    print("1.-Depositar dinero.")
    print("2.-Retirar dinero.")
    print("3.-Mostrar saldo.")
    print("4.-Salir.")

    opcion = input("Selecciona una opción (1-4): ")

    if opcion == "1":
        input("Ingrese la cantidad a depositar: ")
    elif opcion == "2":
        input("Ingrese una cantidad a retirar: ")
    elif opcion == "3":
        print("Este es el saldo de la cuenta: ")
    elif opcion == "4":
        print("Gracias por usar el sistema bancario. ¡Adiós!")
        exit()
    
