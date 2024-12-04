# Importar la clase Producto de la librería tienda
from tienda import Producto

# Crear un objeto de la clase Producto
producto1 = Producto("Laptop", 1000)
producto2 = Producto("Smartphone", 600)

# Mostrar la información de los productos
producto1.mostrar_informacion()

# Aplicar un descuento y mostrar el nuevo precio
nuevo_precio = producto2.calcular_descuento(15)
print(f"Nuevo precio del {producto2.nombre} después del descuento: {nuevo_precio}€")

nuevo_precio = producto1.calcular_descuento(50)
print(f"Nuevo precio del {producto1.nombre} después del descuento: {nuevo_precio}€")
