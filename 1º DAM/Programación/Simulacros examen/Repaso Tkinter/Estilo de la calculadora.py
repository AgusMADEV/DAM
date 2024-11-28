# pip install ttkbootstrap
import ttkbootstrap as tk                                                   # Importo la librería ttkbootstrap para interfaces gráficas
from ttkbootstrap.constants import *                                        # Importo constantes necesarias para el diseño de la interfaz

# Configuración de la ventana principal
ventana = tk.Window(themename="superhero")                                  # Creo una ventana principal con un tema específico
ventana.geometry("500x500")                                                 # Establezco el tamaño de la ventana
ventana.title("Calculadora neandertal")                                     # Defino el título de la ventana

# Variables para guardar los datos ingresados por el usuario
operando1 = tk.IntVar()                                                     # Variable para el primer número (entero)
operando2 = tk.IntVar()                                                     # Variable para el segundo número (entero)
operacion = tk.StringVar()                                                  # Variable para la operación (cadena de texto)

# Funciones para las operaciones básicas
def suma(a, b):
    return a + b                                                            # Retorna la suma de dos números

def resta(a, b):
    return a - b                                                            # Retorna la resta de dos números

def multiplicacion(a, b):
    return a * b                                                            # Retorna la multiplicación de dos números

def division(a, b):
    return a / b                                                            # Retorna la división de dos números

# Función para realizar el cálculo basado en la operación seleccionada
def calcula():
    print("Vamos a calcular algo")                                          # Mensaje para verificar que se ejecuta la función
    global operando1                                                        # Uso las variables globales para acceder a sus valores
    global operando2
    global operacion
    global resultado

    numeroresultado = None                                                  # Inicializo la variable para guardar el resultado

    # Selección de la operación en función de la entrada del usuario
    if operacion.get() == "+":                                              # Si la operación es suma
        numeroresultado = suma(operando1.get(), operando2.get())
    elif operacion.get() == "-":                                            # Si la operación es resta
        numeroresultado = resta(operando1.get(), operando2.get())
    elif operacion.get() == "*":                                            # Si la operación es multiplicación
        numeroresultado = multiplicacion(operando1.get(), operando2.get())
    elif operacion.get() == "/":                                            # Si la operación es división
        numeroresultado = division(operando1.get(), operando2.get())
    else:                                                                   # Si la operación no es válida
        numeroresultado = "No permitido"

    resultado.config(text=numeroresultado)                                  # Actualizo el texto de la etiqueta con el resultado


# Etiqueta y campo para el primer operando
tk.Label(ventana, text="Introduce el primer operando").pack(padx=20, pady=4)
tk.Entry(ventana, textvariable=operando1).pack(padx=20, pady=4)

# Etiqueta y campo para el segundo operando
tk.Label(ventana, text="Introduce el segundo operando").pack(padx=20, pady=4)
tk.Entry(ventana, textvariable=operando2).pack(padx=20, pady=4)

# Etiqueta y campo para seleccionar la operación
tk.Label(ventana, text="Escoge operación").pack(padx=20, pady=4)
tk.Entry(ventana, textvariable=operacion).pack(padx=20, pady=4)

# Botón para ejecutar el cálculo
tk.Label(ventana, text="Pulsa para ejecutar").pack(padx=20, pady=4)
tk.Button(ventana, text="¡Vamos allá!", command=calcula).pack(padx=20, pady=4)

# Etiqueta para mostrar el resultado
tk.Label(ventana, text="El resultado aparecerá aquí").pack(padx=20, pady=4)
resultado = tk.Label(ventana, text="X")             # Etiqueta donde se mostrará el resultado del cálculo
resultado.pack(padx=20, pady=4)

# Bucle principal de la ventana
ventana.mainloop()
