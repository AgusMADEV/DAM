class Producto:
    def __init__(self, nombre, precio):
        self.nombre = nombre
        self.precio = precio

    def calcular_descuento(self, porcentaje):
        descuento = self.precio * (porcentaje / 100)
        return self.precio - descuento

    def mostrar_informacion(self):
        print(f"Producto: {self.nombre}")
        print(f"Precio: {self.precio}€")
