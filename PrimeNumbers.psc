Algoritmo PrimeNumbers
	
	Escribir findPrimeNumber(63);
	
FinAlgoritmo


Funcion prime <- findPrimeNumber(num)
	Definir x, count Como Entero;
	Definir prime Como Logico;
	x = 1;
	count = 0;
	Mientras x <= num Hacer
		si num mod x == 0
			count = count + 1;			
		FinSi
		x = x+1;
	FinMientras
	
	Si count = 2
		prime = Verdadero;
	SiNo
		prime = Falso;
	FinSi
FinFuncion
	