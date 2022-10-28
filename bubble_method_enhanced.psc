//Metodo de la burbuja mejorada.
Algoritmo BubbleMethod
	Definir vector Como Entero;
	Dimension vector[4];
	fillVector(vector, 4);
	sortVector(vector,4);
	printVector(vector);
FinAlgoritmo
///@Params: vector, limit
///This subprocess is responsible for sorting the vector with the enhanced bubble method.
///Return: nothing
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
///@Params: vector
///This vector is responsible for showing the vector. 
///Return: nothing.
SubProceso printVector(vector)
	Definir r Como Entero;
	Para r<-0 Hasta 3 Hacer
		Escribir vector[r];
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