///Solicitar un número para identificar si es primo o no.
Algoritmo search_prime_number
	Definir num Como Entero;
	Escribir "Ingrese un número.";
	Leer num;
	Si checkPrime(num, 2)
		Escribir "El número: " num " es primo";
	SiNo
		Escribir "El número: " num " no es primo";
	FinSi
FinAlgoritmo
Funcion isPrime = checkPrime(n, div)
	Definir counter Como Entero;
	Definir isPrime Como Logico;
	Si n/2 < div
		isPrime = Verdadero;//Base case
	SiNo		
		Si n % div = 0
			isPrime = Falso;
		SiNo
			isPrime = checkPrime(n, div+1);//Recursive case
		FinSi
	FinSi
FinFuncion