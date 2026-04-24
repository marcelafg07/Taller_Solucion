Algoritmo Comparativa
	Definir registros Como Entero;
	Definir i, meta, compLineal, compBinaria Como Entero;
	Definir inicio, final, mitad Como Entero;
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

	Escribir "Ingrese el número a buscar:";
	Leer meta;

	// BÚSQUEDA LINEAL
	compLineal <- 0;
	encontrado <- Falso;

	Para i <- 0 Hasta 7 Hacer
		compLineal <- compLineal + 1;
		Si registros[i] = meta Entonces
			encontrado <- Verdadero;
			i <- 7;
		FinSi;
	FinPara;

	// BÚSQUEDA BINARIA
	compBinaria <- 0;
	inicio <- 0;
	final <- 7;
	encontrado <- Falso;

	Mientras inicio <= final Hacer
		mitad <- Trunc((inicio + final) / 2);
		compBinaria <- compBinaria + 1;

		Si registros[mitad] = meta Entonces
			encontrado <- Verdadero;
			inicio <- final + 1;
		Sino
			Si registros[mitad] < meta Entonces
				inicio <- mitad + 1;
			Sino
				final <- mitad - 1;
			FinSi;
		FinSi;
	FinMientras;

	Escribir "";
	Escribir "Comparaciones Lineal: ", compLineal;
	Escribir "Comparaciones Binaria: ", compBinaria;

	Si compBinaria < compLineal Entonces
		Escribir "La búsqueda binaria fue más eficiente";
	Sino
		Escribir "La búsqueda lineal fue más eficiente";
	FinSi;

FinAlgoritmo
