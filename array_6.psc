funcion guardar_datos (celsius)
	definir c Como Entero
	para c<-1 hasta 3 con paso 1 hacer 
		Escribir "ingrese la temperatura en grados celsius",c,":"
		leer celsius[c]
		
	FinPara
FinFuncion
Funcion mostrar_Datos(celsius)
	definir c Como Entero
	Escribir "prodcutos regstrados"
	para c<-1 hasta 3 con paso 1 Hacer
		Escribir "grados celsius :",celsius[c]
		
		
	FinPara
FinFuncion
Funcion modificar_datos (celsius)
	Definir posdato Como Entero
		Escribir"ingrese la posicion a modificar(1-3)"
		leer posdato
		si posdato >=1 y posdato <=3 Entonces
		Escribir "ingrese los nuevos grados celsius"
		leer celsius[posdato]
	FinSi
FinFuncion

		
Funcion fahrenheit<-calcular_fah (celsius)
	Definir c Como Entero
	Definir operaci como real
	operaci<-0
	para c<- 1 hasta 3 con paso 1 Hacer
		operaci<-(celsius[3]*9/2)+32
		
	FinPara
	fahrenheit<-operaci
	
	
FinFuncion
Algoritmo array_6
	definir celsius,fahrenheit,opcion,c,operaci como real
	dimension celsius[3]
	Repetir
		Escribir "===================menu===================="
		Escribir "1.ingresar datos"
		Escribir "2.mostrar datos"
		Escribir "3.modificar datos"
		Escribir "4.grados en fahrenheit"
		Escribir "5.salir del programa"
		leer opcion
		segun opcion hacer
			1:
			    guardar_datos(celsius)
			2:
				mostrar_Datos(celsius)
			3:
				modificar_datos(celsius)
				
			4:
				fahrenheit<-calcular_fah(celsius)
				Escribir "los celsius pasados a fahrenheit dan :",fahrenheit
				
			5:
				Escribir "Salir del programa"
				leer opcion
			De Otro Modo:
				Escribir"opcion invalida"
				
				
		FinSegun
		
	Hasta Que opcion=5
	
FinAlgoritmo