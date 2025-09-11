Funcion guardar_Datos(materias)
	definir m Como Entero
	para m <- 1 hasta 3 con paso 1 Hacer
		Escribir "ingrese las notas"
		leer materias[m]
	FinPara
FinFuncion
Funcion mostrar_Datos (materias)
	definir m Como Entero
	Escribir "notas registradas"
	para m <- 1 hasta 3 con paso 1 Hacer
		Escribir "las notas registradas son",m,":",materias[m]
		
	FinPara
FinFuncion
Funcion modificar_Datos (materias)
	definir datos_pos Como Entero
	Escribir "ingrese la posicion que desea modificar(1-3)"
	leer datos_pos
	si datos_pos<=1 y datos_pos>=3 Entonces
		Escribir "materias",materias[datos_pos]
		leer materias[dato_pos]
	SiNo
		Escribir "posicion invalida"
	FinSi
FinFuncion
Funcion total<-calculartotal(materias)
	Definir m como entero
	Definir sums Como Real
	sums<-0
	para m<-1 hasta 3 con paso 1 Hacer
		sums<-sums+materias[3]/3
	FinPara
	total<-sums
FinFuncion
Algoritmo array_2
	definir sums,promedio,m,materias Como real
	Definir opcion Como entero
	dimension materias[3]
	Repetir
		Escribir "===================menu==================="
		Escribir "1.guardar datos"
		Escribir "2.modificar datos"
		Escribir "3.mostrar datos"
		Escribir "4.mostrar total"
		Escribir "5.salir del programa"
		Escribir "seleccione una opcion del (1-3)"
		leer opcion
		Segun opcion hacer
			1:
				
				guardar_Datos(materias)
			2:
			    mostrar_Datos(materias)
			3:
				modificar_Datos(materias)
			4:
				total<-calculartotal(materias)
				Escribir "el promedio de las materias es",total
				
			5:
				Escribir "salir del programa"
				leer opcion
			De Otro Modo:
				Escribir "opcion invalida"
				
		FinSegun
		
	Hasta Que opcion =5
	
FinAlgoritmo

	
	
