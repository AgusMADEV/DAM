class Libro:
    def __init__(self,titulo,autor,genero):
        self.titulo = titulo
        self.autor = autor
        self.genero = genero

libro1 = Libro("Harry Potter and the Philosopher's Stone","J.K. Rowling", "Novela")

print(libro1.titulo)
print(libro1.autor)
print(libro1.genero)
