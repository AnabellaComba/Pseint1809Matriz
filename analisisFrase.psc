Algoritmo analisisFrase
	Definir frase, vectorVocales, vectorConsonantes Como Caracter

	Dimension vectorVocales(100)
	Dimension vectorConsonantes(100)
	
	Repetir
		Escribir "Ingrese una frase"
		Leer frase
		Escribir Longitud(frase)
	Mientras Que Longitud(frase)>100
	
	recorrerFrase(frase, vectorVocales, vectorConsonantes)
	
FinAlgoritmo


SubProceso recorrerFrase(frase Por Valor, vectorVocales Por Referencia, vectorConsonantes Por Referencia)
	Definir i, contadorVocales, contadorConsonantes Como Entero
	Definir unCaracter Como Caracter
	contadorVocales = 0
	contadorConsonantes = 0
	
	Para i = 0 Hasta Longitud(frase) -1 Hacer
		unCaracter = Subcadena(frase, i, i)
		Escribir unCaracter, " | "
		
		Si unCaracter == 'a' o unCaracter == 'e' o unCaracter == 'i' o unCaracter == 'o' o unCaracter == 'u' Entonces
			Escribir "Soy una vocal ", unCaracter
			vectorVocales[i] = unCaracter
			vectorConsonantes[i] = ""
			contadorVocales = contadorVocales + 1
		SiNo
			Escribir "No soy una vocal ", unCaracter
			vectorConsonantes[i] = unCaracter
			vectorVocales[i] = ""
			contadorConsonantes = contadorConsonantes + 1
		Fin Si
	
	Fin Para
	
	Escribir "El vector vocales tiene un tamaño de: ", contadorVocales
	Para i=0 Hasta Longitud(frase) -1 Hacer
		si vectorVocales[i] != "" Entonces
			Escribir "Soy el elemento del vector vocales: ", i, ") ", vectorVocales[i]
		FinSi
		
	Fin Para
	
	Escribir "El vector consonante tiene un tamaño de: ", contadorConsonantes
	Para i=0 Hasta Longitud(frase) -1 Hacer
		si vectorConsonantes[i] != "" Entonces
			Escribir "Soy el elemento del vector vocales: ", i, ") ", vectorConsonantes[i]
		FinSi

	Fin Para
FinSubProceso
	