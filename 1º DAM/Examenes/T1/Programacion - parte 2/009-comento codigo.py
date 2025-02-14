import ttkbootstrap as tk                                                   # Importo la librería ttkbootstrap para interfaces gráficas
from ttkbootstrap.constants import *                                        # Imortamos todo de  ttkbootstrap.constants                                    

ventana = tk.Window(themename="cosmo")                                  # Creamos la ventana y le establecemos un tema 

operando1 = tk.IntVar()                                                     # Creamos la variable operando1 que sea in entero
iva = 21                                                                    # Le damos un valor a IVA
irpf = 15                                                                   # Creamos la constante IRPF

def impuesto(a,b):                                                          # Definimos la funcion Impuesto
    return a*b/100                                                          #Se nos devuelve la operacion del impuesto

def calcula():                                                              # Definimos la funcion calcula
    print("Calcular")
    global operando1
    global iva
    global irpf                                                             # Traemos las variables 
    
    numeroresultadoIva = impuesto(operando1.get(),iva)                      # Llamamos a la funcion impuestos y que coja los valores op1 e iva
    resultadoIVA.config(text=numeroresultadoIva)                            # Imprimo el calculo en la pantalla

    numeroresultadoIRPF = impuesto(operando1.get(),irpf)                    # Llamamos a la funcion impuestos y que coja los valores op1 e irpf
    resultadoIRPF.config(text=numeroresultadoIRPF)                          # Imprimo el calculo en la pantalla

    numeroresultadoTotal = (operando1.get()-numeroresultadoIRPF+numeroresultadoIva)     
    resultadoTotal.config(text=numeroresultadoTotal)                                    # Imprimo el calculo en la pantalla

    
tk.Label(ventana,text="Introduce tu base imponible de factura").pack(padx=15,pady=4)    # Creo una etiqueta texto
tk.Entry(ventana,textvariable = operando1).pack(padx=10,pady=10)                        # Creo una etiqueta para el operador 1

tk.Label(ventana,text="Dale al botón para calcular todo").pack(padx=15,pady=4)          # Creo una etiqueta texto
boton1 = tk.Button(ventana,text="¡Vamos allá!",command=calcula)                         # Creo boton que cuando se pulse ejecute la funcion calcula
boton1.pack(padx=50,pady=4)

tk.Label(ventana,text="----- RESULTADOS -----").pack(padx=15,pady=4)                    # Creo una etiqueta texto
resultadoIVA = tk.Label(ventana,text="IVA")
resultadoIVA.pack(padx=15,pady=4)                                                       # Creo una etiqueta texto que cambia al resultado del IVA

resultadoIRPF = tk.Label(ventana,text="IRPF")                                           # Creo una etiqueta texto
resultadoIRPF.pack(padx=15,pady=4)                                                      # Creo una etiqueta texto que cambia al resultado del IRPF

tk.Label(ventana,text="-----------------------------------").pack(padx=15,pady=4)       # Creo una etiqueta texto

resultadoTotal = tk.Label(ventana,text="TOTAL")
resultadoTotal.pack(padx=15,pady=4)                                                     # Creo una etiqueta texto que cambia al resultado del TOTAL

ventana.mainloop();                                                                     # Bucle MAin
