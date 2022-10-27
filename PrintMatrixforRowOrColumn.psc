Algoritmo PrintMatrixforRowOrColumns
	Definir matrix, r, c Como Entero;
	Dimension matrix[10,10];
	
	fillMatrix(matrix);
	
	printMatrixRow(matrix);
	Escribir "";
	Escribir "";
	Escribir "++++++++++++++++++++++++++++++++++++++++++++++++++++";
	Escribir "";
	Escribir "";
	printMatrixColumn(matrix);
	
FinAlgoritmo
SubProceso printMatrixRow(matrix)
	Definir r, c Como Entero;
	Para r<-0 Hasta 9 Hacer
		Para c<-0 Hasta 9 Hacer
			si matrix[r,c] <10
				Escribir Sin Saltar " |  " matrix[r,c];
			SiNo
				Escribir Sin Saltar " | " matrix[r,c];
			FinSi 
		FinPara
		Escribir " | ";
	FinPara
FinSubProceso
SubProceso printMatrixColumn(matrix)
	Definir r, c Como Entero;
	Para c<-0 Hasta 9 Hacer
		Para r<-0 Hasta 9 Hacer
			si matrix[r,c] <10
				Escribir Sin Saltar " |  " matrix[r,c];
			SiNo
				Escribir Sin Saltar " | " matrix[r,c];
			FinSi 
		FinPara
		Escribir " | ";
	FinPara
FinSubProceso
SubProceso fillMatrix(matrix)
	Definir r, c Como Entero;
	Para r<-0 Hasta 9 Hacer
		Para c<-0 Hasta 9 Hacer
			matrix[r,c]=azar(15)+1;
		FinPara
	FinPara
FinSubProceso