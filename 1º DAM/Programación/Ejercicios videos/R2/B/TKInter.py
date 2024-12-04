import ttkbootstrap as tk                                                   # Importo la librería ttkbootstrap para interfaces gráficas
from ttkbootstrap.constants import *                                        # Imortamos todo de  ttkbootstrap.constants                                    

ventana = tk.Window(themename="cosmo")                                  # Creamos la ventana y le establecemos un tema 

operando1 = tk.IntVar()                                                     # Creamos la variable operando1 que sea in entero                                                            # Creamos la constante IRPF

def impuesto(a,b):                                                          # Definimos la funcion Impuesto
    return a*b/100                                                          #Se nos devuelve la operacion del impuesto

def calcula():                                                              # Definimos la funcion calcula                                              # Función que se ejecuta al pulsar el boton
    global resultadoTotal                                    # Meto aqui dentro la variable de etiquetaresultado
    print("voy a calcular algo")                               # Imprimo un mensaje con mis intenciones
    op1 = operando1.get()
    iva = impuesto(operando1.get(),21)                                     # Obtengo el valor del campo 1
    resuntadoiva.config(text=(iva))
    irpf = impuesto(operando1.get(),15)                                        # Obtengo el valor del campo 2
    resultadoirpf.config(text=(irpf))
    total = op1 + iva - irpf                                        # Realizo un cálculo
    resultadoTotal.config(text=str(total))                 # Imprimo ese cálculo en la pantalla                         

    
tk.Label(ventana,text="Introduce tu base imponible de factura").pack(padx=15,pady=4)    # Creo una etiqueta texto
tk.Entry(ventana,textvariable = operando1).pack(padx=10,pady=10)                        # Creo una etiqueta para el operador 1

tk.Label(ventana,text="Dale al botón para calcular todo").pack(padx=15,pady=4)          # Creo una etiqueta texto
boton1 = tk.Button(ventana,text="¡Vamos allá!",command=calcula)                         # Creo boton que cuando se pulse ejecute la funcion calcula
boton1.pack(padx=50,pady=4)

tk.Label(ventana,text="----- RESULTADOS -----").pack(padx=15,pady=4)                    # Creo una etiqueta texto
resuntadoiva = tk.Label(ventana,text="IVA")
resuntadoiva.pack(padx=15,pady=4)                                                       # Creo una etiqueta texto que cambia al resultado del IVA

resultadoirpf = tk.Label(ventana,text="IRPF")                                           # Creo una etiqueta texto
resultadoirpf.pack(padx=15,pady=4)                                                      # Creo una etiqueta texto que cambia al resultado del IRPF

tk.Label(ventana,text="-----------------------------------").pack(padx=15,pady=4)       # Creo una etiqueta texto

resultadoTotal = tk.Label(ventana,text="TOTAL")
resultadoTotal.pack(padx=15,pady=4)                                                     # Creo una etiqueta texto que cambia al resultado del TOTAL

ventana.mainloop();                                                                     # Bucle Main
