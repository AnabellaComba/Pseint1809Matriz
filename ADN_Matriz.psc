Proceso ADN_Matriz
    Definir muestra, t Como Caracter
    Definir longitud1 Como Entero
    Definir i, j Como Entero
    Definir tamano Como Entero
	
    Definir matriz Como Caracter   // Definimos una matriz de 4x4 como máximo
	
    Definir diagonal1, diagonal2 Como Caracter
    diagonal1 <- ""
    diagonal2 <- ""
    
    // Solicitar al usuario que ingrese una muestra

        Escribir "Ingrese una muestra de ADN (A, B, C, D):"
        Leer muestra
        
        // Obtener la longitud de la muestra
        longitud1 = Longitud(muestra)
        
        // Validar la longitud
        Si longitud1 = 9 Entonces
            tamano = 3
			
        Sino
            Si longitud1 = 16 Entonces
                tamano <- 4
				
            Sino
                Escribir "La muestra debe tener 9 o 16 caracteres."
            FinSi
        FinSi
        Dimension matriz[tamano, tamano] 
        // Validar caracteres de la muestra
        Para i = 0 Hasta longitud1 -1
			t= Mayusculas(Subcadena(muestra,i,i))
            Si No( t = 'A' O t = 'B' O t = 'C' O t = 'D') Entonces
                Escribir "La muestra debe contener solo caracteres A, B, C o D."
            FinSi
        FinPara
        
        // Construir la matriz
      
        Para i = 0 Hasta longitud1 -1
            Para j= 0 hasta longitud1-1
			matriz(i,j) = Subcadena(muestra,i,i)
            Si (i % tamano) = 0 Entonces
                j <- j + 1
            FinSi
		FinPara
		
        FinPara
        
        // Mostrar la matriz
        Escribir "Matriz generada:"
        Para i <- 1 Hasta tamano
            Para j <- 1 Hasta tamano
//                Escribir matriz[i, j], SinSaltos
            FinPara
            Escribir "" // Nueva línea
        FinPara
        
        // Verificar las diagonales
        Para i <- 1 Hasta tamano
//            diagonal1 <- diagonal1 + matriz[i, i] // Diagonal principal 1
//            diagonal2 <- diagonal2 + matriz[i, tamano - i + 1] // Diagonal principal 2
        FinPara
        
        // Verificar si las diagonales tienen el mismo carácter
        Si Longitud(diagonal1) > 0 Y diagonal1 = (diagonal1[1], tamano) Entonces
				Si diagonal2 = (diagonal2[1], tamano) Entonces
						Escribir "¡Felicidades! La muestra contiene patrones específicos en sus diagonales."
					Sino
						Escribir "La muestra NO contiene los patrones especificados en sus diagonales."
				FinSi
				Sino
					Escribir "La muestra NO contiene los patrones especificados en sus diagonales."
		FinSi
				
	
FinProceso
