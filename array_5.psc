Funcion guardar_Datos (base,altura)
	definir p Como Entero
	para p <-1 hasta 3 con paso 1 hacer 
		Escribir "ingrese la base del triangulo",p,":"
		leer base[p]
		Escribir "ingrese la altura del triangulo",p,":"
		leer altura[p]
	FinPara
FinFuncion
Funcion mostrardatos (base, altura)
	Definir p Como Entero
	Escribir "productos registrados"
	para p <-1 hasta 3 con paso 1 Hacer
		Escribir "triangulo",p,"-> base:",base[p],"->altura:",altura[p]
	FinPara
FinFuncion
Funcion modificar_Datos(base,altura)
	Definir posdato Como Entero
	Escribir "ingrese la posicion del producto a modificar(1-3)"
	leer posdato
	si posdato>=1 y posdato<=3 Entonces
		Escribir "ingrese la nueva base"
		leer base[posdato]
		Escribir "ingrese la nueva altura"
		leer altura[posdato]
	finsi
FinFuncion
Funcion area<-calculartotal(base,altura)
	Definir p Como Entero
	Definir sums Como Real 
	sums<-0
	para p <-1 hasta 3 con paso 1 Hacer
		sums<-base[3]*altura[3]/2
	FinPara
	area<-sums
FinFuncion

Algoritmo array_5
	Definir base,altura,area,opcion,p Como Real
	Dimension base[3],altura[3]
	Repetir
		Escribir "===========================menu==================="
		Escribir "1.guardar datos"
		Escribir "2.mostrar datos"
		Escribir "3.modificar datos"
		Escribir "4.area del triangulo"
		Escribir "5.salir del programa"
		Leer opcion
		segun opcion hacer
			1:
			guardar_Datos(base,altura)
		2:
			mostrardatos(base,altura)
		3:
			modificar_Datos(base,altura)
		4:
			area<-calculartotal(base,altura)
		    Escribir "el area del triangulo es",area
			
		5:
			Escribir "Salir del programa"
			leer opcion
		De Otro Modo:
		    Escribir"opcion invalida"
				
		FinSegun
	Hasta Que opcion=5
	
FinAlgoritmo
