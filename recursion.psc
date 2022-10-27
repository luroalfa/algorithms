Algoritmo recursion
	
	Escribir "Una suma recursiva de 5: " recursiveSum(5);
	
	Escribir "El factorial de 5: " factorial(5);
	
	factorialWithoutRecursion(5);
	
FinAlgoritmo

Funcion res <- recursiveSum(num)
	Definir res Como Entero;
	Si num = 0 
		res = 0; //Caso base
	SiNo
		res = num + recursiveSum(num-1);//Caso recursivo
	FinSi
FinFuncion

Funcion res <- factorial(num)
	Definir res Como Entero;
	Si num = 0 
		res = 1; //Caso base
	SiNo
		res = num* Factorial(num-1);//Caso recursivo
	FinSi
FinFuncion

SubProceso factorialWithoutRecursion(num)
	Definir x Como Entero;
	num=5;
	Para x<-num Hasta 1 Hacer
		Si (x-1)>0
			num = num * (x-1);
		FinSi
	FinPara
	Escribir "El factorial de 5 sin recursividad: " num;
FinSubProceso


