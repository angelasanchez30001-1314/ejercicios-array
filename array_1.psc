Funcion guardar_Datos (numeros)
	Definir s Como Entero
	para s<-1 hasta 5  con paso 1 hacer
		Escribir "escribe los numeros que deseas sumar"
		leer numeros[s]
		
	FinPara
FinFuncion
Funcion mostrardatos (numeros)
	Definir s Como Entero
	Escribir "numeros registrados"
	para s <- 1 Hasta 5  con paso 1 Hacer
		Escribir "los numeros a sumar son",s,":",numeros[s]
	FinPara
FinFuncion
Funcion modificar_Datos (numeros)
	definir dato_pos Como Entero
	Escribir"ingrese la posicion del producto que desea modificar(1-5)"
	leer dato_pos
	si dato_pos>=1 y dato_pos<=5 Entonces
		Escribir "numero",numeros[dato_pos]
		Leer numeros[dato_pos]
	SiNo
		Escribir "posicion invalida"
		
	FinSi
FinFuncion
Funcion total<-calculartotal (numeros)
	Definir s Como Entero
	definir sums Como Real
	sums<-0
	para s <- 1 hasta 5 con paso 1 hacer
		sums<-sums+numeros[5]
	FinPara
	total<-sums
	
FinFuncion
Algoritmo suma
	definir total,s,sums,numeros como real
	Definir opcion Como entero
	Definir respuesta Como entero
	dimension numeros[5]
	Repetir
		Escribir "===================menu==================="
		Escribir "1.guardar datos"
		Escribir "2.mostrar datos"
		Escribir "3.modificar datos"
		Escribir "4.mostra total"
		Escribir "5.salir del programa"
		Escribir "seleccione una opcion del (1-4)"
		leer opcion
		Segun opcion hacer
			1:
				guardar_Datos(numeros)
			2:
			    mostrardatos(numeros)
			3:
				modificar_Datos(numeros)
			4:
			    total<-calculartotal(numeros)
				Escribir "el total es",total
				
			5:escribir"saliendo del programa"
				leer opcion
			De Otro Modo:
				Escribir "opcion invalida"
			
		FinSegun
		
	Hasta Que opcion =5
	
FinAlgoritmo

	
	
	


	
	
	
	
