//Escribir una función recursiva que encuentre el mayor elemento de una lista (vector).
Algoritmo mayor_elemento
	Definir vector, limit, numMayor Como Entero;
	limit = 25;
	Dimension vector[limit];//size	
	fillVector(vector, limit);//fill
	showVector(vector, limit);//show
	Escribir "";
	numMayor = vector[limit-1];//Initialize the variable with any numbers in this case with the last position
	Escribir "El número mayor de la lista (vector) es: " searchM(vector, limit, numMayor);	
FinAlgoritmo
///@Params: vector limit and major number
///This function is responsible of find a major number with recursive method
Funcion m <- searchM(vector, limit, numMayor)
	Definir m Como Entero;
	Si limit > 0//base case
		Si numMayor < vector[limit-1]
			numMayor = vector[limit-1];			
		FinSi
		m = searchM(vector, limit-1, numMayor);//Recursive case
	SiNo
		m = numMayor;//If we are in this base case, so we return the major number
	FinSi
FinFuncion
///@Params: vector, limit.
///This vector is responsible for showing the vector. 
///Return: nothing.
SubProceso showVector(vector, limit)
	Definir r Como Entero;
	Para r<-0 Hasta limit-1 Hacer
		Escribir vector[r] " " Sin Saltar;
	FinPara
FinSubProceso
///@Params: vector, limit.
///This vector is responsible for filling the vector with random numbers.
///Return: nothing.
SubProceso fillVector(vector, limit)
	Definir r Como Entero;
	Para r<-0 Hasta limit-1 Hacer
		vector[r] = azar(limit);
	FinPara
FinSubProceso