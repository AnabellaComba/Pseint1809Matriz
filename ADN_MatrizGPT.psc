Proceso ADN_Matriz
    Definir muestra Como Caracter
    Definir longitud1 Como Entero
    Definir i, j Como Entero
    Definir tamaño Como Entero
    Definir matriz Como Caracter  // Definimos una matriz de 4x4 como máximo
    Definir diagonal1, diagonal2 Como Caracter
    diagonal1 <- ""
    diagonal2 <- ""
    Dimension matriz[4, 4] 
    // Solicitar al usuario que ingrese una muestra
    Repetir
        Escribir "Ingrese una muestra de ADN (A, B, C, D):"
        Leer muestra
        
        // Obtener la longitud de la muestra
        longitud1 <- Longitud(muestra)
        
        // Validar la longitud
        Si longitud = 9 Entonces
            tamaño <- 3
        Sino
            Si longitud = 16 Entonces
                tamaño <- 4
            Sino
                Escribir "La muestra debe tener 9 o 16 caracteres."
                continuar // Vuelve al inicio del bucle
            FinSi
        FinSi
        
        // Validar caracteres de la muestra
        Para i <- 1 Hasta longitud
            Si No(muestra[i] = 'A' O muestra[i] = 'B' O muestra[i] = 'C' O muestra[i] = 'D') Entonces
                Escribir "La muestra debe contener solo caracteres A, B, C o D."
                continuar // Vuelve al inicio del bucle
            FinSi
        FinPara
        
        // Construir la matriz
        j <- 1
        Para i <- 1 Hasta longitud
            matriz[j, i % tamaño] <- muestra[i]
            Si (i % tamaño) = 0 Entonces
                j <- j + 1
            FinSi
        FinPara
        
        // Mostrar la matriz
        Escribir "Matriz generada:"
        Para i <- 1 Hasta tamaño
            Para j <- 1 Hasta tamaño
                Escribir matriz[i, j], SinSaltos
            FinPara
            Escribir "" // Nueva línea
        FinPara
        
        // Verificar las diagonales
        Para i <- 1 Hasta tamaño
            diagonal1 <- diagonal1 + matriz[i, i] // Diagonal principal 1
            diagonal2 <- diagonal2 + matriz[i, tamaño - i + 1] // Diagonal principal 2
        FinPara
        
        // Verificar si las diagonales tienen el mismo carácter
        Si Longitud(diagonal1) > 0 Y diagonal1 = Repetir(diagonal1[1], tamaño) Entonces
				Si diagonal2 = Repetir(diagonal2[1], tamaño) Entonces
						Escribir "¡Felicidades! La muestra contiene patrones específicos en sus diagonales."
					Sino
						Escribir "La muestra NO contiene los patrones especificados en sus diagonales."
					FinSi
				Sino
					Escribir "La muestra NO contiene los patrones especificados en sus diagonales."
				FinSi
				
			Hasta Que longitud = 0 // Salir si longitud es cero (opcional, si deseas terminar)
FinProceso
