class Libro:
    def __init__(self,titulo,autor,genero):
        self.titulo = titulo
        self.autor = autor
        self.genero = genero

    def mostar_informacion(self):
        print(f"""'{self.titulo}' de {self.autor}. Genero: {self.genero}.""" )


libro1 = Libro("Harry Potter and the Philosopher's Stone","J.K. Rowling", "Novela")
libro2 = Libro("Harry Potter and el caliz de fuego","J.K. Rowling", "Novela")
libro2.mostar_informacion()

