Funcion guardar_Datos (cantidad,precio)
	definir p Como Entero
	para p <-1 hasta 3 con paso 1 hacer 
		Escribir "ingrese el precio unitario del producto",p,":"
		leer precio[p]
		Escribir "ingrese la cantidad unitaria del producto",p,":"
		leer cantidad[p]
	FinPara
FinFuncion
Funcion mostrardatos (cantidad, precio)
	Definir p Como Entero
	Escribir "productos registrados"
	para p <-1 hasta 3 con paso 1 Hacer
		Escribir "producto",p,"-> precio:",precio[p],"->cantidad:",cantidad[p]
	FinPara
FinFuncion
Funcion modificar_Datos(cantidad,precio)
	Definir posdato Como Entero
	Escribir "ingrese la posicion del producto a modificar(1-3)"
	leer posdato
	si posdato>=1 y posdato<=3 Entonces
	Escribir "ingrese el nuevo precio"
	leer precio[posdato]
	Escribir "ingrese nueva cantidad"
	leer cantidad[posdato]
	finsi
FinFuncion
Funcion total<-calculartotal(precio,cantidad)
	Definir p Como Entero
	Definir sums Como Real 
	sums<-0
	para p <-1 hasta 3 con paso 1 Hacer
		sums<-sums +(precio[p]*cantidad[p])
	FinPara
	total<-sums
FinFuncion
Funcion descuento<-calcular_Descuento(precio,cantidad)
	Definir total Como Real
	total<- calculartotal(precio,cantidad)
	descuento<-total/100*5
FinFuncion
Algoritmo array_4
	Definir precio,cantidad,descuento,total,p,opcion Como Real
	Definir tipo_producto Como Caracter
	dimension cantidad[3],precio[3]
	Repetir
		Escribir "====================menu================="
		Escribir "1.guardar datos"
		Escribir "2.mostrar datos"
		Escribir "3.modificar datos"
		Escribir "4.total sin descuento"
		Escribir "5.total con descuento"
		Escribir "6.salir del programa"
		leer opcion
		Segun opcion hacer
			1:
				guardar_Datos(precio,cantidad)
			2:
				mostrardatos(precio,cantidad)

			3:
				modificar_Datos(precio,cantidad)
				
			4:
				total<-cantidad[1]*precio[1]
				Escribir "el precio total sin descuento es",total
			5:
				total<-calculartotal(precio,cantidad)
				descuento<-calcular_Descuento(precio,cantidad)
				
				Escribir "el precio total con el decuento aplicado es de:",total-descuento
			6:
				Escribir "salir del programa"
				leer opcion
			De Otro Modo:
				Escribir "opcion invalida"
		FinSegun
	Hasta Que opcion =6
	
FinAlgoritmo
