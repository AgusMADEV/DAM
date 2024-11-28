import tkinter as tk

ventana = tk.Tk();
ventana.geometry("500x350")

operando1 = tk.IntVar()

def iva(a):
    return a*21/100
def irpf(a):
    return a*15/100

def calcula():
    print("Calcular")
    global operando1

    numeroresultadoIva = iva(operando1.get())
    resultadoIVA.config(text=numeroresultadoIva)
    
    numeroresultadoIRPF = irpf(operando1.get())
    resultadoIRPF.config(text=numeroresultadoIRPF)

    
tk.Label(ventana,text="Introduce tu base imponible de factura").pack(padx=15,pady=4)
tk.Entry(ventana,textvariable = operando1).pack(padx=10,pady=4)

tk.Label(ventana,text="Dale al botón para calcular el IVA y el IRPF de tu base").pack(padx=15,pady=4)
boton1 = tk.Button(ventana,text="¡Vamos allá!",command=calcula)
boton1.pack(padx=50,pady=4)

tk.Label(ventana,text="Resultados aparecen aquí").pack(padx=15,pady=4)
resultadoIVA = tk.Label(ventana,text="IVA")
resultadoIVA.pack(padx=15,pady=4)
resultadoIRPF = tk.Label(ventana,text="IRPF")
resultadoIRPF.pack(padx=15,pady=4)

tk.Label(ventana,text="Vamos a calcular el total").pack(padx=15,pady=4)
boton1 = tk.Button(ventana,text="¡Magia!",)
boton1.pack(padx=50,pady=4)

tk.Label(ventana,text="TOTAL").pack(padx=15,pady=4)
resultadoTotal = tk.Label(ventana,text="X")
resultadoTotal.pack(padx=15,pady=4)

ventana.mainloop();
