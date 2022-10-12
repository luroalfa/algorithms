Algoritmo BubbleMethod
	Definir vector Como Entero;
	Dimension vector[4];
	vector[0]=30;
	vector[1]=9;
	vector[2]=19;
	vector[3]=1;
	sortVector(vector,4);
	printVector(vector);
FinAlgoritmo
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

SubProceso printVector(vector)
	Definir r Como Entero;
	Para r<-0 Hasta 3 Hacer
		Escribir vector[r];
	FinPara
FinSubProceso
