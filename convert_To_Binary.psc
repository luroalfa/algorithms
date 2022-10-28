Algoritmo ConvertToBinary
	Escribir "Numero 10 en binario: " binaryConverter(10);
	Escribir "Numero binario 1010 en entero: " integerConverter(1010);
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
	FinMientras
FinFuncion
///@Params: numberToConvert
///This function convert an binary number to integer.
///Return: Real, a binary.
Funcion integer <- integerConverter(num)
	Definir x, baseTwo, vect, results, counter, integer Como Entero;
	Dimension baseTwo[Longitud(ConvertirATexto(num))];
	Dimension vect[Longitud(ConvertirATexto(num))];
	counter = Longitud(ConvertirATexto(num))-1;
	results = 0;
	//This loop is responsible of fill vectors.
	Para x<-0 Hasta Longitud(ConvertirATexto(num))-1 Hacer
		vect[x] = ConvertirANumero(Subcadena(ConvertirATexto(num),x,x));//Filling the vector with each of the numbers.
		baseTwo[counter] = 2^x;//Filling the vector with even numbers.
		counter = counter-1;//Decrementing counter.
	FinPara
	//This loop is responsible for adding the base 2 multiplications with the binary.
	Para x<-0 Hasta Longitud(ConvertirATexto(num))-1 Hacer
		results = results + (vect[x] * baseTwo[x]);
	FinPara
	integer = results;//Return integer.
FinFuncion
	