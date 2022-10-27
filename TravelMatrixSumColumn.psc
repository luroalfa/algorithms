Algoritmo TravelMatrixSumColumn
	Definir matrix, r, c, vectorSumColumn Como Entero;
	Dimension matrix[10,10];
	Dimension vectorSumColumn[10];
	fillOrPrintMatrix(Verdadero, matrix);
	Escribir "Imprimimos la matriz";
	fillOrPrintMatrix(Falso, matrix);
	travelMatrixColumn(matrix, vectorSumColumn);
	Para r<-0 Hasta 9 Hacer
		Escribir " + " vectorSumColumn[r] Sin Saltar;
	FinPara
	Escribir "--> Vector suma";
	Escribir "Sumamos todas las columnas y la guardamos en el vector";
FinAlgoritmo
SubProceso travelMatrixColumn(matrix, vectorSumColumn)
	Definir r, c, suma Como Entero;
	Para c<-0 Hasta 9 Hacer
		suma = 0;
		Para r<-0 Hasta 9 Hacer
			suma = suma + matrix[r,c];
		FinPara
		vectorSumColumn[c] = suma;
	FinPara
FinSubProceso
SubProceso fillOrPrintMatrix(fill, matrix)
	Definir r, c Como Entero;
	Para r<-0 Hasta 9 Hacer
		Para c<-0 Hasta 9 Hacer
			Si fill
				matrix[r,c]=azar(15)+1;
			SiNo
				si matrix[r,c] <10
					Escribir Sin Saltar " |  " matrix[r,c];
				SiNo
					Escribir Sin Saltar " | " matrix[r,c];
				FinSi 
			FinSi
		FinPara
		Si !fill
			Escribir " | ";
		FinSi
	FinPara
FinSubProceso