//Buscar el número espejo de algun número.
Algoritmo NumeroEspejo
	Escribir returnMirror(98);
FinAlgoritmo
///@Params: num
///This function is responsible of look the mirror number.
///Return: mirror number.
Funcion mirror <- returnMirror(num)
	Definir units, tens, mirror Como Entero;
	si num>9
		units = num % 10;//We look the unit.
		tens = (num-units)/10;//We look the tens.
		mirror = (units*10)+tens;//We add the numbers.
	SiNo
		mirror = num;//It's the same number
	FinSi
FinFuncion
	