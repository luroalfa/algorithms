Algoritmo sort_vector
	Definir vector, limit Como Entero;
	Escribir "Cuantos números deseas ordenar";
	//Leer limit;
	limit = 5;
	Dimension vector[limit];
	fillVector(vector, limit);
	printVector(vector, limit);
	sort(vector, limit);
	Escribir "Ordered list";
	printVector(vector, limit);
FinAlgoritmo

SubProceso sort(vector, limit)
	Definir aux, i Como Entero;
	si limit>1
		Para i <- 0 Hasta limit -2 Hacer
			Si vector[i] > vector[i+1]
				aux = vector[i];
				vector[i] = vector[i+1];
				vector[i+1] = aux;
			FinSi
			sort(vector, limit-1);
		FinPara
	FinSi
	
FinSubProceso

SubProceso printVector(vector, limit)
	Definir r Como Entero;
	Escribir "";
	Para r <- 0 Hasta limit-1 Hacer
		Escribir vector[r] " ";
	FinPara
	Escribir "";
FinSubProceso

SubProceso fillVector(vector, limit)
	Definir r Como Entero;
	Para r <- 0 Hasta limit-1 Hacer
		vector[r] = 10-r;
	FinPara
FinSubProceso
	