#include <iostream>															// Incluyo una librería de flujo (stream) de entrada (input) y salida (output)
	
int main(){																		// Creo una funcion, pero es el punto de entrada de la ejecucion, la funcion devuelve un entero
	std::string nombre = "Agustin Morcillo";								// De la libreria std, importo el tipo de dato string, y creo una variable
	int edad = 25;
	std::cout << "Alo Presidentes desde C++, mi nombre es " << nombre << ", tengo " << edad << " años y estoy aprendiendo C++";	// De la libreria estanda (std) quiero usar el comando C-out, y saco una cadena
	return 0;																	// Cumplo la promesa de devolver un entero
}