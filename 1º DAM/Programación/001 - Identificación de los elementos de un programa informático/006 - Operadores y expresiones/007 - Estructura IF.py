print('Programa calculadora v0.1 por Agustín Morcillo Aguado')

operando1 = input('Introduce tu primera operador: ')
operando2 = input('Introduce tu segunda operador: ')
operador = input("Introduce el operador (+,-,*,/):")

operando1 = int(operando1)
operando2 = int(operando2)

if operador == "+":
    resultado = operando1 + operando2
elif operador == "-":
    resultado = operando1 - operando2
elif operador == "*":
    resultado = operando1 * operando2
elif operador == "/":
    resultado = operando1 / operando2
    
print('El resultado de la operación es:',resultado)


