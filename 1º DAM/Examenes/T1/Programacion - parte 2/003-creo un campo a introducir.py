import tkinter as tk

ventana = tk.Tk();

tk.Label(ventana,text="Introduce tu base imponible de factura").pack(padx=15,pady=4)
tk.Entry(ventana,text="Introduce tu base imponible de factura").pack(padx=10,pady=4)

ventana.mainloop();
