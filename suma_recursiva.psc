///Solicitar un número y sumar todos los números anteriores al número digitado, utilizando recursividad.
Algoritmo suma_recursiva
	Definir num Como Real;
	Escribir "Digite el número que quiera sumar de forma recursiva.";
	Leer num;
	Escribir "El resultado es: " sumaRecursiva(num);
FinAlgoritmo

Funcion result <- sumaRecursiva(num)
	Definir result Como Real;
	Si num = 1
		result = 1;//Base case
	SiNo
		result = num + sumaRecursiva(num-1);//Recursive case
	FinSi
FinFuncion
