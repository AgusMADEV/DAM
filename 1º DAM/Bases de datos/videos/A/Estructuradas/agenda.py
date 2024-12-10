import json

personas = [
    {
        "nombre:": "Agustín",
         "apellidos:": "Morcillo Aguado",
        "telefono:": "123456789",
        "email:": "agus@morcillo.com"
    },
    {
        "nombre:": "Elena",
         "apellidos:": "Botezatu",
        "telefono:": "987654321",
        "email:": "elena@botezatu.com"
    },
    {
        "nombre:": "Elena",
         "apellidos:": "Botezatu",
        "telefono:": "987654321",
        "email:": "elena@botezatu.com"
    }
]

clientes_json = json.dumps(personas)
print(clientes_json)