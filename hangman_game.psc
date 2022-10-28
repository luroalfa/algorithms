Algoritmo Ahorcado
	Definir wordBank, definition, word, input, guess, guessed  Como Caracter;
	Definir x, errror, sum, numAzar Como Entero;
	Definir found, win Como Logico;
	sum=0;
	found = Falso;
	win = Falso;
	errror = 0;
	Dimension wordBank[20];
	Dimension definition[20];
	//Loading wordBank
	Intro();
	LoadingWorBank(wordBank);
	LoadingDefinition(definition);	
	Escribir "Las siguientes palabras adivinar son palabras relacionadas al curso.";
	Escribir "Suerte!";
	Esperar Tecla;
	Borrar Pantalla;
	numAzar = azar(20);
	word = wordBank[numAzar];
	Dimension guess[Longitud(word)];
	Dimension guessed[Longitud(word)];
	LoadingWords(guess, guessed, word);	
	Hacer
		Escribir word;
		Escribir "La palabra adivinar contiene " Longitud(word) " letras.";
		Escribir "";	
		PrintGuessed(guessed,word);			
		Escribir Sin Saltar "Adivina la palabra:";
		Leer input;
		//We check if the word matches the input.
		Para x<-0 Hasta Longitud(word)-1 Hacer
			Si input = guess[x]
				guessed[x]=input;
				found = Verdadero;
				Escribir "Excelente letra adivinada! siga así!";
			FinSi
		FinPara
		Si found = falso
			errror = errror + 1;	
			Segun errror Hacer
				1: Opportunity1();
				2: Opportunity2();
				3: Opportunity3();
				4: Opportunity4();
				5: GameOver();				
			Fin Segun
		FinSi
		found = Falso;
		//Verificamos si la palabra contine este caracter _
		Para x<-0 Hasta Longitud(word)-1 Hacer
			si !(guessed[x]="_")
				sum= sum + 1;
			FinSi
		FinPara
		si sum = Longitud(word)
			win = Verdadero;
		FinSi
		sum=0;		
		Esperar Tecla;
		Borrar Pantalla;		
	Hasta Que (errror>4 o win = Verdadero)	
	Si win = Verdadero
		Winner(wordBank,definition, numAzar);
	FinSi
FinAlgoritmo
SubProceso Opportunity1()
	Escribir "______  ups!";
	Escribir "|/   |";
	Escribir "|     ";
	Escribir "|     ";
	Escribir "|     ";
	Escribir "|     ";
	Escribir "|     ";
	Escribir "|_____";
	Escribir "Tienes 4 oportunidades más";
FinSubProceso
SubProceso Opportunity2()
	Escribir "______ ";
	Escribir "|/   | uy no!";
	Escribir "|   (_)";
	Escribir "|      ";
	Escribir "|      ";
	Escribir "|      ";
	Escribir "|      ";
	Escribir "|_____ ";
	Escribir "Tienes 3 oportunidades más";
FinSubProceso
SubProceso Opportunity3()
	Escribir "______ ";
	Escribir "|/   | ¡Cuidado! Me ahorco!";
	Escribir "|   (_)";
	Escribir "|    | ";
	Escribir "|    | ";
	Escribir "|      ";
	Escribir "|      ";
	Escribir "|_____ ";
	Escribir "Tienes 2 oportunidades más";
FinSubProceso
SubProceso Opportunity4()
	Escribir "______  ";
	Escribir "|/   |  Una más y estoy muerto!";
	Escribir "|   (_) ";
	Escribir "|   \|/ ";
	Escribir "|    |  ";
	Escribir "|   / \ ";
	Escribir "|       ";
	Escribir "|_____  ";
	Escribir "Tienes 1 oportunidad más";	
FinSubProceso
SubProceso GameOver()
	Escribir "______krk-krk";
	Escribir "|/   |  HAAARGHH...";
	Escribir "|   (_) ";
	Escribir "|   /|\ ";
	Escribir "|    |  ";
	Escribir "|   | | ";
	Escribir "|       ";
	Escribir "|_____  ";
	Escribir "Tiene 0 oportunidades.";
	Escribir "Te has acorcado!";	
	Escribir "                                          uuuuuuu                     ";
	Escribir "                                      uu$$$$$$$$$$$uu                 ";
	Escribir "                                   uu$$$$$$$$$$$$$$$$$uu              ";
	Escribir "                                  u$$$$$$$$$$$$$$$$$$$$$u             ";
	Escribir "                                 u$$$$$$$$$$$$$$$$$$$$$$$u            ";
	Escribir "                                u$$$$$$$$$$$$$$$$$$$$$$$$$u           ";
	Escribir "                                u$$$$$$$$$$$$$$$$$$$$$$$$$u           ";
	Escribir "                                u$$$$$$"   "$$$"   "$$$$$$u           ";
	Escribir "                                *$$$$*      u$u       $$$$*           ";
	Escribir "                                 $$$u       u$u       u$$$            ";
	Escribir "                                 $$$u      u$$$u      u$$$            ";
	Escribir "                                  *$$$$uu$$$   $$$uu$$$$*             ";
	Escribir "                                   *$$$$$$$*   *$$$$$$$*              ";
	Escribir "                                     u$$$$$$$u$$$$$$$u                ";
	Escribir "                                      u$*$*$*$*$*$*$u                 ";
	Escribir "                           uuu        $$u$ $ $ $ $u$$       uuu       ";
	Escribir "                          u$$$$        $$$$$u$u$u$$$       u$$$$      ";
	Escribir "                           $$$$$uu      *$$$$$$$$$*     uu$$$$$$      ";
	Escribir "                         u$$$$$$$$$$$uu    *****    uuuu$$$$$$$$$$    ";
	Escribir "                         $$$$***$$$$$$$$$$uuu   uu$$$$$$$$$***$$$*    ";
	Escribir "                          ***      **$$$$$$$$$$$uu **$***             ";
	Escribir "                                    uuuu **$$$$$$$$$$uuu              ";
	Escribir "                           u$$$uuu$$$$$$$$$uu **$$$$$$$$$$$uuu$$$     ";
	Escribir "                           $$$$$$$$$$****           **$$$$$$$$$$$*    ";
	Escribir "                            *$$$$$*                      **$$$$**     ";
	Escribir "                              $$$*                         $$$$*      ";
	Escribir "______    ______   __       __  ________         ______   __     __  ________  _______     ";
	Escribir "/      \  /      \ /  \     /  |/        |       /      \ /  |   /  |/        |/       \   ";
	Escribir "/$$$$$$  |/$$$$$$  |$$  \   /$$ |$$$$$$$$/       /$$$$$$  |$$ |   $$ |$$$$$$$$/ $$$$$$$  | ";
	Escribir "$$ | _$$/ $$ |__$$ |$$$  \ /$$$ |$$ |__          $$ |  $$ |$$ |   $$ |$$ |__    $$ |__$$ | ";
	Escribir "$$ |/    |$$    $$ |$$$$  /$$$$ |$$    |         $$ |  $$ |$$  \ /$$/ $$    |   $$    $$<  ";
	Escribir "$$ |$$$$ |$$$$$$$$ |$$ $$ $$/$$ |$$$$$/          $$ |  $$ | $$  /$$/  $$$$$/    $$$$$$$  | ";
	Escribir "$$ \__$$ |$$ |  $$ |$$ |$$$/ $$ |$$ |_____       $$ \__$$ |  $$ $$/   $$ |_____ $$ |  $$ | ";
	Escribir "$$    $$/ $$ |  $$ |$$ | $/  $$ |$$       |      $$    $$/    $$$/    $$       |$$ |  $$ | ";
	Escribir "$$$$$$/  $$/   $$/ $$/      $$/ $$$$$$$$/        $$$$$$/      $/     $$$$$$$$/ $$/   $$/   ";
FinSubProceso
SubProceso Winner(wordBank,definition, numAzar)
	Escribir "Has ganado el juego.";
	Escribir " \   / \O/    O/  \O/ ";
	Escribir "  \ /   Y_   <|   _Y  ";
	Escribir "   Y   /  |  / \_| |  ";
	Escribir "  /O\ /   |_|   |_  |_  ";
	Escribir "";
	Escribir "La palabra adivinada es: " wordBank[numAzar];
	Escribir definition[numAzar];
	Escribir "";
	Escribir "  .-=========-.";
	Escribir "  \ -=======- /";
	Escribir "  _|   .=.   |_";
	Escribir " ((|  {{1}}  |))";
	Escribir "  \|   /|\   |/";
	Escribir "   \__  `  __/";
	Escribir "     _`) (`_";
	Escribir "   _/_______\_";
	Escribir "  /___________\";	
FinSubProceso
SubProceso PrintGuessed(guessed,word)
	Definir x Como Entero;
	Para x<-0 Hasta Longitud(word)-1 Hacer
		Escribir Sin Saltar guessed[x];
	FinPara
	Escribir "";
FinSubProceso
SubProceso LoadingWords(guess, guessed, word)
	Definir x Como Entero;
	Para x<-0 Hasta Longitud(word)-1 Hacer
		guess[x] = SubCadena(word,x,x);
		guessed[x] = "_";
	FinPara
FinSubProceso
SubProceso LoadingDefinition(definition)
	definition[0]="Es un conjunto de instrucciones definidas y ordenadas para realizar un cálculo o desarrollar una tarea.";
	definition[1]="Es un tipo de dato para almacenar caracteres.";
	definition[2]="Es una colección ordenada de datos, para almacenar multiples valores.";
	definition[3]="Es una colección ordenada de datos, para almacenar multiples valores en una sola variable.";
	definition[4]="Todo vector se compone de un determinado número de elementos, cada elemento es referenciado por la posición que ocupa dentro del vector. Dichas posiciones son llamadas índice y siempre son correlativos.";
	definition[5]="Manera de describir la estructura de un vector.";
	definition[6]="Manera de describir la estructura de una matriz.";
	definition[7]="Es un intérprete de un lenguaje de programación basado en pseudocódigo.";
	definition[8]="Manera declarar un vector o matriz en PSeint.";
	definition[9]="Programa que se encarga de traducir un archivo fuente escrito en un lenguaje de ensamblador, a código máquina.";
	definition[10]="Programa que permite traducir el código fuente de alto nivel a un lenguaje de nivel inferior.";
	definition[11]="Se trata de un falso lenguaje, que puede ser leído por un humano y no interpretado por una máquina.";
	definition[12]="Es la destreza natural para razonar sin apelar a la ciencia. ";
	definition[13]="Son los datos sobre los que el algoritmo opera.";
	definition[14]="Es el resultado que entrega el algoritmo.";
	definition[15]="Son los pasos que hay que seguir, utilizando la entrada.";
	definition[16]="Tipo de dato real que puede almacenar numeros decimales y muy grandes.";
	definition[17]="Es el nombre que se le da a un elemento de un algoritmo.";
	definition[18]="Representa un espacio en la memoria en el cual se puede almacenar un dato.";
	definition[19]="Es un valor almacenado en memoria parecido a la variable pero este no cambia su valor.";
FinSubProceso
SubProceso LoadingWorBank(wordBank)
	wordBank[0]="algoritmo";
	wordBank[1]="byte";
	wordBank[2]="vectores";
	wordBank[3]="matrices";
	wordBank[4]="indice";
	wordBank[5]="unidimensionales";
	wordBank[6]="bidimensionales";
	wordBank[7]="pseint";
	wordBank[8]="dimension";
	wordBank[9]="ensambladores";
	wordBank[10]="compiladores";
	wordBank[11]="pseudocodigo";
	wordBank[12]="logica";
	wordBank[13]="entrada";
	wordBank[14]="salida";
	wordBank[15]="proceso";
	wordBank[16]="float";
	wordBank[17]="identificador";
	wordBank[18]="variable";
	wordBank[19]="constante";
FinSubProceso
SubProceso Intro()
	Escribir " __     ___            ___         __   __                    ___      ___  __   __  ";
	Escribir "|__) | |__  |\ | \  / |__  |\ | | |  \ /  \     /\  |          | |  | |__  / _` /  \"; 
	Escribir "|__) | |___ | \|  \/  |___ | \| | |__/ \__/    /--\ |___    \__/ \__/ |___ \__| \__/"; 
	Escribir "";
	Escribir "888    888                                                   ";
	Escribir "888    888                                                   ";
	Escribir "888    888                                                   ";
	Escribir "8888888888  8888b.   .d88b.  88888b.d88b.   8888b.  88888b.  ";
	Escribir "888    888      88b d88P 88b 888  888  88b      88b 888  88b ";
	Escribir "888    888 .d888888 888  888 888  888  888 .d888888 888  888 ";
	Escribir "888    888 888  888 Y88b 888 888  888  888 888  888 888  888 ";
	Escribir "888    888  Y888888   Y88888 888  888  888  Y888888 888  888 ";
	Escribir "                         888                                 ";
	Escribir "                    Y8b d88P                                 ";
	Escribir "                      Y88P                                   ";      
    Escribir "";
	Escribir "Desarrollado por Luis Rodríguez Fallas.";
FinSubProceso