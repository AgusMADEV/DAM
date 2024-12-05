# Declaración de variables de diferentes tipos
nombre = "Mikel"       # Tipo cadena
edad = 18                # Tipo entero
altura = 2.0       # Tipo decimal (float)
es_adulto = True         # Tipo booleano

# Mostramos los valores por pantalla
print("Nombre:", nombre)
print("Edad:", edad)
print("Altura:", altura)
print("¿Es adulto?", es_adulto)

# Usamos las variables en una operación
edad_futura = edad + 5   # Sumar 5 años a la edad actual
print("En 5 años, tendrás:", edad_futura)

# Convertimos edad a cadena
mensaje = "Hola, " + nombre + ". En 5 años tendrás " + str(edad_futura) + " años."
print(mensaje)
