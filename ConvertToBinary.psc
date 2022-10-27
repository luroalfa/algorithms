Algoritmo ConvertToBinary
	//Escribir binaryConverter(10);
	Escribir integerConverter(1010);
FinAlgoritmo
///@Params: numberToConvert
///This function convert an integer number to binary.
///Return: Real, a binary.
Funcion binary <- binaryConverter(numberToConvert)
	Definir binary, residuo Como Real;
	binary = 0;
	residuo = 1;
	Mientras numberToConvert>=1 Hacer
		si numberToConvert mod 2 = 1
			binary = binary + residuo;
		FinSi
		numberToConvert = trunc(numberToConvert/2);
		residuo = residuo * 10;
		Escribir lista_de_expresiones;
	FinMientras
FinFuncion


Funcion integer <- integerConverter(num)
	Definir x, baseTwo, counter Como Entero;
	Definir vect Como Caracter;
	Dimension baseTwo[Longitud(ConvertirATexto(num))];
	Dimension vect[Longitud(ConvertirATexto(num))];
	counter = Longitud(ConvertirATexto(num))-1;
	Para x<-0 Hasta Longitud(ConvertirATexto(num))-1 Hacer
		vect[x] = Subcadena(ConvertirATexto(num),x,x);
		baseTwo[counter] = 2^x;
		counter = counter-1;
	FinPara
	
	Para x<-0 Hasta Longitud(ConvertirATexto(num))-1 Hacer
		Escribir vect[x] " "Sin Saltar;
	FinPara
	Escribir "";
	Para x<-0 Hasta Longitud(ConvertirATexto(num))-1 Hacer
		Escribir baseTwo[x] " "Sin Saltar;
	FinPara
	
FinFuncion
	