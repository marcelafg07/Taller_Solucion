Algoritmo BusquedaLineal
	Definir registros Como Entero;
	Definir i, meta, comparaciones Como Entero;
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
	comparaciones <- 0;

	Escribir "=== BÚSQUEDA LINEAL ===";
	Escribir "Ingrese el valor a buscar:";
	Leer meta;

	Para i <- 0 Hasta 7 Hacer
		comparaciones <- comparaciones + 1;
		Escribir "Comparación ", comparaciones, ": ", registros[i];

		Si registros[i] = meta Entonces
			Escribir "✓ Encontrado en posición ", i;
			encontrado <- Verdadero;
			i <- 7;
		FinSi;
	FinPara;

	Si encontrado = Falso Entonces
		Escribir "✗ No encontrado";
	FinSi;
FinAlgoritmo
