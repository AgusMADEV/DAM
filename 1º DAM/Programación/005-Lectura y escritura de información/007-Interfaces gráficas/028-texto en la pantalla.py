from PIL import Image, ImageDraw, ImageFont

imagencargada = Image.open('marcas.jpg')

escalada = imagencargada.resize((1920,1080))

width, height = 1920, 1080

imagen = Image.new(
    'RGB',
    (width, height),
    color=(255, 0, 0)
    )

imagen.paste(
    escalada,
    (0,0)
    )

dibujo = ImageDraw.Draw(imagen)

try:
    fuente = ImageFont.truetype("parrafo.ttf", 80) 
except IOError:
    fuente = ImageFont.load_default()

texto = "Lenguajes de marcas"
posiciontexto = (200, 860)  

colortexto = (255,255,255)  

dibujo.text(posiciontexto, texto, font=fuente, fill=colortexto)

ruta = 'imagenes/imagen.jpg'

imagen.save(ruta)
