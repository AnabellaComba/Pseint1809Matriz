Algoritmo actividad1
	
	Definir contador, i, contadorVocal, contadorReminder,x, z Como Entero
	Definir frase, fraseMin como cadena
	Definir char, vectorVocal, vectorReminder Como Caracter
	
	
	
	Repetir
		Escribir "Ingrese una frase de no más de 100 caracteres"
		Leer frase
		contador = Longitud(frase)
	Mientras Que contador > 100
	
	fraseMin=Minusculas(frase)
	contadorVocal=0
	contadorReminder=0
	
	Para i=0 Hasta Longitud(frase)-1 Hacer
		
		char = Subcadena(fraseMin,i,i)
		si char="a" o char="e" o char="i" o char="o" o char="u"
			contadorVocal= contadorVocal+1
		SiNo
			contadorReminder=contadorReminder+1
		FinSi
	FinPara
	
	Dimension vectorVocal(contadorVocal)
	Dimension vectorReminder(contadorReminder)
	x =contadorVocal
	z=contadorReminder
	contadorVocal=0
	contadorReminder=0
	
	Para i=0 Hasta Longitud(frase)-1 Hacer
		
		char = Subcadena(fraseMin,i,i)
		si char="a" o char="e" o char="i" o char="o" o char="u"
			vectorVocal(contadorVocal)=char
			contadorVocal= contadorVocal+1
		SiNo
			vectorReminder(contadorReminder) =char
			contadorReminder=contadorReminder+1
		FinSi
	FinPara
	
	imprimirVectorVocal(vectorVocal,x)
	imprimirVectorReminder(vectorReminder,z)
FinAlgoritmo



SubProceso imprimirVectorVocal(vectorVocal,x)
	
	Definir i Como Entero
	
	Para i=0 Hasta x-1 Hacer
		Escribir vectorVocal(i) " | " Sin Saltar
	FinPara
	Escribir "Hay ", x
FinSubProceso



SubProceso imprimirVectorReminder(vectorReminder,z)
	
	Definir i Como Entero
	Para i=0 Hasta z-1 Hacer
		Escribir vectorReminder(i) " || " Sin Saltar
	FinPara
	Escribir "hay " z
FinSubProceso