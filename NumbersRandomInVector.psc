Proceso NumeroAleatorioSinRepetir
	definir vector como entero;
	definir repeat Como Logico;
	Dimension vector[75];	
	generateRandomNumbers(vector);
	sortVector(vector,75);
	printVector(vector);
FinProceso

SubProceso generateRandomNumbers(vector)
	definir numberRandom, r, c como entero;
	definir repeat Como Logico;
	para r=0 hasta 74 Hacer
		Repetir
			repeat = falso;
			numberRandom = azar(75)+1;
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

SubProceso printVector(vector)
	Definir r Como Entero;
	Para r<-0 Hasta 74 Hacer
		Escribir vector[r];
	FinPara
FinSubProceso

SubProceso sortVector(vector,limit)
	definir x, aux como entero;
	Definir flag Como Logico;	
	Hacer
		flag = Falso;
		Para x=0 Hasta limit-2 Hacer 
			Si vector[x] > vector[x+1] Entonces
				aux = vector[x]; 
				vector[x] = vector[x+1]; 
				vector[x+1] = aux;  	
				flag = Verdadero;
			Fin Si
		Fin Para
	Hasta Que (flag = Falso) 
FinSubProceso