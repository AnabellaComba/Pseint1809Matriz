Proceso ADN_Matriz
    Definir muestra Como Caracter
    Definir longitud1 Como Entero
    Definir i, j Como Entero
    Definir tama�o Como Entero
    Definir matriz Como Caracter  // Definimos una matriz de 4x4 como m�ximo
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
            tama�o <- 3
        Sino
            Si longitud = 16 Entonces
                tama�o <- 4
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
            matriz[j, i % tama�o] <- muestra[i]
            Si (i % tama�o) = 0 Entonces
                j <- j + 1
            FinSi
        FinPara
        
        // Mostrar la matriz
        Escribir "Matriz generada:"
        Para i <- 1 Hasta tama�o
            Para j <- 1 Hasta tama�o
                Escribir matriz[i, j], SinSaltos
            FinPara
            Escribir "" // Nueva l�nea
        FinPara
        
        // Verificar las diagonales
        Para i <- 1 Hasta tama�o
            diagonal1 <- diagonal1 + matriz[i, i] // Diagonal principal 1
            diagonal2 <- diagonal2 + matriz[i, tama�o - i + 1] // Diagonal principal 2
        FinPara
        
        // Verificar si las diagonales tienen el mismo car�cter
        Si Longitud(diagonal1) > 0 Y diagonal1 = Repetir(diagonal1[1], tama�o) Entonces
				Si diagonal2 = Repetir(diagonal2[1], tama�o) Entonces
						Escribir "�Felicidades! La muestra contiene patrones espec�ficos en sus diagonales."
					Sino
						Escribir "La muestra NO contiene los patrones especificados en sus diagonales."
					FinSi
				Sino
					Escribir "La muestra NO contiene los patrones especificados en sus diagonales."
				FinSi
				
			Hasta Que longitud = 0 // Salir si longitud es cero (opcional, si deseas terminar)
FinProceso
