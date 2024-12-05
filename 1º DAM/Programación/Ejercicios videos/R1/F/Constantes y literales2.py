# Constantes
MULTIPLICADOR_SUPER_SAIYAN = 50  # El multiplicador para la transformación Super Saiyan
MULTIPLICADOR_SUPER_SAIYAN_2 = 100  # El multiplicador para la transformación Super Saiyan 2
MULTIPLICADOR_SUPER_SAIYAN_3 = 150  # El multiplicador para la transformación Super Saiyan 3

# Literal: Nivel de poder inicial
nivel_poder = 5  # Literal de tipo entero (nivel de poder base de Goku)

# Elección de la transformación (puede ser 'SS', 'SS2', 'SS3')
transformacion = 'SS3'  # Literal de tipo string

# Cálculo del poder de lucha según la transformación
if transformacion == 'SS':
    poder_lucha = nivel_poder * MULTIPLICADOR_SUPER_SAIYAN
elif transformacion == 'SS2':
    poder_lucha = nivel_poder * MULTIPLICADOR_SUPER_SAIYAN_2
elif transformacion == 'SS3':
    poder_lucha = nivel_poder * MULTIPLICADOR_SUPER_SAIYAN_3
else:
    poder_lucha = nivel_poder  # Sin transformación, el poder es el nivel base

# Mostrar resultados
print("=== Cálculo del Poder de Lucha del Saiyan ===")
print(f"""Nivel de poder base: {nivel_poder}""")
print(f"""Transformación: {transformacion}""")
print(f"""Poder de lucha: {poder_lucha}""")
