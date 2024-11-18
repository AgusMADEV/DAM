class Perro:
        def __init__(self,nuevonombre,nuevaaltura,nuevopeso,nuevaedad):
                self.altura = nuevaaltura
                self.edad = nuevaedad
                self.peso = nuevopeso
                self.nombre = nuevonombre
        def dameDatos(self):
                print("Nombre:",
                self.nombre,
                " - Altura:",
                self.altura,
                " - Peso:",
                self.peso,
                " - Edad:",
                self.edad
                )
perro1 = Perro ("Lilo", 8, 5,8)
perro2 = Perro ("Dipsy", 3, 1.5,2)
perro3 = Perro ("Zeus", 10, 9,18)
        
perro1.dameDatos()
perro2.dameDatos()
perro3.dameDatos()