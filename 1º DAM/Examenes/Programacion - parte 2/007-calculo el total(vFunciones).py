import tkinter as tk

ventana = tk.Tk();

operando1 = tk.IntVar()
iva = 21
irpf = 15

def impuesto(a,b):
    return a*b/100

def calcula():
    print("Calcular")
    global operando1

    numeroresultadoIva = impuesto(operando1.get(),iva)
    resultadoIVA.config(text=numeroresultadoIva)

    numeroresultadoIRPF = impuesto(operando1.get(),irpf)
    resultadoIRPF.config(text=numeroresultadoIRPF)

    numeroresultadoTotal = (operando1.get()-numeroresultadoIRPF+numeroresultadoIva)
    resultadoTotal.config(text=numeroresultadoTotal)

    
tk.Label(ventana,text="Introduce tu base imponible de factura").pack(padx=15,pady=4)
tk.Entry(ventana,textvariable = operando1).pack(padx=10,pady=10)

tk.Label(ventana,text="Dale al botón para calcular el IVA y el IRPF de tu base").pack(padx=15,pady=4)
boton1 = tk.Button(ventana,text="¡Vamos allá!",command=calcula)
boton1.pack(padx=50,pady=4)

tk.Label(ventana,text="Resultados aparecen aquí").pack(padx=15,pady=4)
resultadoIVA = tk.Label(ventana,text="IVA")
resultadoIVA.pack(padx=15,pady=4)

resultadoIRPF = tk.Label(ventana,text="IRPF")
resultadoIRPF.pack(padx=15,pady=4)

tk.Label(ventana,text="-----------------------------------").pack(padx=15,pady=4)

resultadoTotal = tk.Label(ventana,text="TOTAL")
resultadoTotal.pack(padx=15,pady=4)

ventana.mainloop();
