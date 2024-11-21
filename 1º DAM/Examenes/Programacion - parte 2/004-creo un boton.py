import tkinter as tk

ventana = tk.Tk();

tk.Label(ventana,text="Introduce tu base imponible de factura").pack(padx=15,pady=4)
tk.Entry(ventana,text="Introduce tu base imponible de factura").pack(padx=10,pady=4)

tk.Label(ventana,text="Dale al botón para calcular el IVA y el IRPF de tu base").pack(padx=15,pady=4)
boton = tk.Button(ventana,text="¡Vamos allá!")
boton.pack(padx=50,pady=4)

ventana.mainloop();
