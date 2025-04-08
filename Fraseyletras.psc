//Diseña un algoritmo que permita al usuario ingresar una frase.  
//Deberás asegurarte de que la longitud de la frase no exceda los 100 caracteres;
//en caso de superar este límite, se solicitará al usuario que vuelva a ingresar la frase hasta que cumpla
//con esta condición. 
//Una vez ingresada la frase, el programa separará los caracteres en dos vectores:
//uno para almacenar exclusivamente las vocales (A-E-I-O-U) 
//	y otro para las consonantes, así como para los caracteres especiales y los espacios. 
//Los elementos en cada vector se acomodarán inicialmente por orden de aparición en la frase. 
//Además, se requiere la implementación de un subprograma que permita mostrar los vectores creados,
//así como el recuento total de elementos en cada uno de ellos.

Algoritmo Fraseyletras
	
	Definir frase como cadena
	definir longcadena, ContadordeCa como entero
	Definir CadenaVocal, CadenaConsonante Como Caracter
	Escribir "Ingrese una Frase de 100 Carácteres"
	leer frase
	CadenaVocal = " "
	CadenaConsonante= " "
	ContadordeCa = 0 
	
Mientras Longitud(frase) > 100
		Escribir "Volver a ingresar una frase que no exceda los 100 carácteres"
		Leer frase
	FinMientras
	
	
	longcadena = Longitud(frase)
	
	
	fillvector(frase, CadenaVocal, CadenaConsonante, longcadena, ContadordeCa)
	
	
	
FinAlgoritmo


SubProceso fillvector(frase Por Referencia, CadenaVocal, CadenaConsonante, longcadena, ContadordeCa)
	Definir t, cuentaV, cuentaC Como Entero
	Definir i Como Caracter
	cuentaC = 0
	cuentaV = 0
	

	Para t=0 Hasta longcadena -1 Hacer
		i= Subcadena(frase,t,t)
		
		Si 	i = "a" o i = "A" o i = "e" o i = "E" o i = "i" o i = "I" o i = "o" o i = "O" o i = "U" o i = "u" Entonces
			CadenaVocal= CadenaVocal + " "+ Subcadena(frase,t,t)
			cuentaV = cuentaV + 1
			ContadordeCa = ContadordeCa + 1
		SiNo
			CadenaConsonante= CadenaConsonante + " "+ Subcadena(frase,t,t)
			cuentaC = cuentaC + 1
			ContadordeCa = ContadordeCa + 1
			
		FinSi
	
		
	FinPara
	Escribir 'Se ha verificado la frase: ', frase
	Escribir ContadordeCa, " son la cantidad de caracteres en la frase"
	Escribir CadenaConsonante " Consonantes en orden"
	Escribir  "La cantidad de consonantes y espacios u otros caracteres son: ", cuentaC
	Escribir CadenaVocal " Vocales en orden"
	Escribir  "La cantidad de vocales son: ", cuentaV

	
FinSubProceso
