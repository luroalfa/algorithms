Proceso NumeroAleatorioSinRepetir
	definir vector, numberRandom, r, c como entero;
	definir repeat Como Logico;
	Dimension vector[5];	
	
FinProceso

SubProceso generateRandomNumbers(vector)
	definir numberRandom, r, c como entero;
	definir repeat Como Logico;
	para r=0 hasta 4 Hacer
		Repetir
			repeat = falso;
			numberRandom = azar(15)+1;
			si r>=1 Entonces
				para c=0 hasta r-1 Hacer
					si vector[c] == numberRandom//If the vector and numberRandom match, we repeat the loop
						repeat = verdadero;
					FinSi
				FinPara
			FinSi
		Hasta Que repeat = falso
		vector[r] = numberRandom;//Add to vector
	FinPara
FinSubProceso
	