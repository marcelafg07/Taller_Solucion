Algoritmo BusquedaBinaria
	Definir registros Como Entero;
	Definir inicio, final, mitad, meta Como Entero;
	Definir encontrado Como Logico;

	Dimension registros[8];
	registros[0] <- 1002;
	registros[1] <- 1045;
	registros[2] <- 2098;
	registros[3] <- 3301;
	registros[4] <- 3311;
	registros[5] <- 4005;
	registros[6] <- 5020;
	registros[7] <- 6081;

	encontrado <- Falso;

	Escribir "=== SISTEMA BÚSQUEDA BINARIA ===";
	Escribir "Ingrese el número de registro a localizar:";
	Leer meta;

	inicio <- 0;
	final <- 7;

	Mientras (inicio <= final) Y (encontrado = Falso) Hacer
		mitad <- Trunc((inicio + final) / 2);
		
		Escribir "Comparando con posición ", mitad, ": ", registros[mitad];
		
		Si registros[mitad] = meta Entonces
			Escribir "✓ ¡ÉXITO! Registro localizado";
			Escribir "Posición: ", mitad;
			encontrado <- Verdadero;
		Sino
			Si registros[mitad] < meta Entonces
				inicio <- mitad + 1;
			Sino
				final <- mitad - 1;
			FinSi;
		FinSi;
	FinMientras;

	Si encontrado = Falso Entonces
		Escribir "✗ Registro no encontrado";
	FinSi;
FinAlgoritmo
