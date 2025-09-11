funcion datos_guardar(precio,cantidad)
	definir A Como Entero
	para A <-1 hasta 3 con paso 1 Hacer
		Escribir "ingrese el precio unitario del producto",A,":"
		leer precio[A]
		Escribir "ingrese la cantidad que desea llevar",v
		leer cantidad[A]		
	FinPara
FinFuncion
Funcion mostrar_Datos(precio, cantidad)
	definir A Como Entero
	Escribir "productos registrados"
	para A <- 1 hasta 3 con paso 1 Hacer
		escribir "producto", A,"-> precio:",precio[A],"cantidad",cantidad[A]

		
	FinPara
FinFuncion

	Funcion modificar_Dato(precio,cantidad)
		Definir dato_pas como entero
		Escribir "ingrese la posicion del producto a modificar (1-3):"
		leer dato_pas
		si dato_pas>=1 y dato_pas<=3 Entonces
			Escribir "producto", dato_pas,"actual->precio:",precio[dato_pas],"cantidad:",cantidad[dato_pas]
			leer precio[dato_pas]
			Escribir "ingrese la nueva cantidad"
			leer cantidad[dato_pas]
		SiNo
			Escribir "posicion invalida"
			
		FinSi
FinFuncion
Funcion total<- calcula_Total(precio,cantidad)
	definir A como entero
	Definir suma Como Real
	suma<-0
	para A <- 1 hasta 3 con paso 1 Hacer
		suma<- suma + (precio[A] * cantidad[A])
	FinPara
	total<-suma
FinFuncion
Funcion iva<-calcular_iva(precio,cantidad)
	Definir total Como Real
	total<-calcula_Total(precio,cantidad)
	iva<-total*0.19
FinFuncion
Algoritmo totalconiva
	Definir opcion Como Entero
	Definir total, iva Como Real
	dimension precio[3], cantidad[3]


	Repetir
		Escribir "====================menu===================="
		Escribir "1.guardar datos"
		Escribir "2.mostrar datos"
		Escribir "3.modificar datos"
		Escribir "4.calcular total sin iva"
		Escribir "5.calcular iva"
		Escribir "6.calcular total con iva"
		Escribir "7.salir del programa"
		leer opcion
		Segun opcion hacer
			1:
				datos_guardar(precio,cantidad)
				
				2:
					mostrar_Datos(precio,cantidad)
			
			3:
				modificar_Dato(precio,cantidad)
		    4:
				total<-calcula_Total(precio,cantidad)
				Escribir "el total sin iva es:",total
				 

			5:
				iva<-calcula_Total(precio,cantidad)
				
				Escribir "el iva (19%) es:",iva
			6:
				total<-calcula_Total(precio,cantidad)
				iva<-calcular_iva(precio,cantidad)
				Escribir "el total con iva es:",total+ iva
				
					
			7:
				Escribir "Saliendo del programa"
			De Otro Modo:
				Escribir "opcion invalida"
		FinSegun
	Hasta Que opcion=7
	
	
FinAlgoritmo
