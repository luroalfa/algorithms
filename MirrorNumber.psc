Algoritmo NumeroEspejo
	Escribir returnMirror(10);
FinAlgoritmo


Funcion espejo <- returnMirror(num)
	Definir espejo Como Caracter;
	Definir vect Como Caracter;
	Dimension vect[2];
	si num<10 
		espejo = ConvertirATexto(num);
	SiNo
		vect[0] = Subcadena(ConvertirATexto(num),0,0);
		vect[1] = Subcadena(ConvertirATexto(num),1,1);
		espejo = Concatenar(vect[1],vect[0]);
	FinSi
FinFuncion
	