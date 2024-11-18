import os

try:
    os.makedirs("basededatos")
except:
    print("La carpeta de base de datos ya existe, continuamos...")

print("Bienvenidos a Mi Querido Diario v0.2")
print("Selecciona una de las siguientes opciones")
print("1.-Introducir un nuevo registro")
print("2.-Leer registros existentes")
opcion = input("Selecciona una de las opciones anteriores:")
print("La opcion que has seleccionado es:",opcion)

if opcion == "1":
    print("Has elegido introducir un nuevo registro")
elif opcion == "2":
    print("Has elegido leer los registros existentes")
else:
    print("La opcion que has elegido no es valida")
