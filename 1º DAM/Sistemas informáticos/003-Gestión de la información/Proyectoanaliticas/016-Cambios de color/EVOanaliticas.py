import sqlite3
import matplotlib.pyplot as plt

class EVOanaliticas:
    def __init__(self):
        self.conexion = sqlite3.connect("registros.db")
        self.conexion.row_factory = sqlite3.Row
        self.cursor = self.conexion.cursor()

    def graficaTarta(self, peticion, salida, titulo):
        self.cursor.execute(peticion)
        filas = self.cursor.fetchall()
        valores = []
        numeros = []
        for fila in filas:
            diccionario = dict(fila)
            valores.append(diccionario['valor'])
            numeros.append(diccionario['numero'])

        # Generar colores únicos para cada segmento
        colores = plt.cm.tab10(range(len(valores)))  # Usa el colormap 'tab10' para colores variados

        plt.figure()
        plt.pie(
            numeros,
            labels=valores,
            autopct='%1.1f%%',
            colors=colores  # Aplica colores distintos a cada segmento
        )
        plt.title(titulo)
        plt.savefig("imagenes/" + salida)
        plt.close()

    def graficaBarras(self, peticion, salida, titulo):
        self.cursor.execute(peticion)
        filas = self.cursor.fetchall()
        valores = []
        numeros = []
        for fila in filas:
            diccionario = dict(fila)
            valores.append(diccionario['valor'])
            numeros.append(diccionario['numero'])

        # Colores personalizados para las barras
        colores = plt.cm.plasma(range(len(valores)))

        plt.figure()
        plt.bar(valores, numeros, color=colores)  # Añade el parámetro 'color'
        plt.xlabel('Categorías')
        plt.ylabel('Frecuencia')
        plt.title(titulo)
        plt.xticks(rotation=45, ha='right')
        plt.tight_layout()
        plt.savefig("imagenes/" + salida)
        plt.close()

    def graficaBarrasHorizontales(self, peticion, salida, titulo):
        self.cursor.execute(peticion)
        filas = self.cursor.fetchall()
        valores = []
        numeros = []
        for fila in filas:
            diccionario = dict(fila)
            valores.append(diccionario['valor'])
            numeros.append(diccionario['numero'])

        # Colores personalizados para las barras horizontales
        colores = plt.cm.cividis(range(len(valores)))

        plt.figure()
        plt.barh(valores, numeros, color=colores)  # Añade el parámetro 'color'
        plt.xlabel('Frecuencia')
        plt.ylabel('Categorías')
        plt.title(titulo)
        plt.tight_layout()
        plt.savefig("imagenes/" + salida)
        plt.close()
