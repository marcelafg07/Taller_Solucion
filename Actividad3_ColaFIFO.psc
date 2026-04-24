Algoritmo SimuladorColaFIFO
	Definir cola Como Cadena;
	Definir inicio, final, tamanio, operacion Como Entero;
	Definir solicitud Como Cadena;
	Definir continuar Como Caracter;

	Dimension cola[10];
	inicio <- 0;
	final <- -1;
	tamanio <- 0;
	continuar <- "S";

	Mientras continuar = "S" O continuar = "s" Hacer
		Escribir "1. Enqueue";
		Escribir "2. Dequeue";
		Escribir "3. Ver cola";
		Escribir "4. Salir";
		Leer operacion;
		
		Segun operacion Hacer
			Caso 1:
				Si tamanio < 10 Entonces
					final <- final + 1;
					Escribir "Ingrese solicitud:";
					Leer solicitud;
					cola[final] <- solicitud;
					tamanio <- tamanio + 1;
				Sino
					Escribir "Cola llena";
				FinSi;
			Caso 2:
				Si tamanio > 0 Entonces
					Escribir "Atendiendo: ", cola[inicio];
					inicio <- inicio + 1;
					tamanio <- tamanio - 1;
				Sino
					Escribir "Cola vacía";
				FinSi;
			Caso 3:
				Si tamanio > 0 Entonces
					Para i <- inicio Hasta final Hacer
						Escribir cola[i];
					FinPara;
				Sino
					Escribir "Cola vacía";
				FinSi;
			Caso 4:
				continuar <- "N";
		FinSegun;
	FinMientras;
FinAlgoritmo
