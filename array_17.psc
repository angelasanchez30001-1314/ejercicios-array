Funcion guardar_datos(paginas, precio)
	Definir p Como Entero
	Para p <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir "Ingrese la cantidad de p�ginas para la impresi�n ", p, ":"
		Leer paginas[p]
		Escribir "Ingrese el precio por p�gina para la impresi�n ", p, ":"
		Leer precio[p]
	FinPara
FinFuncion

Funcion mostrar_datos(paginas, precio)
	Definir p Como Entero
	Escribir "======= Datos de impresi�n ======="
	Para p <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir "Impresi�n ", p, ": P�ginas = ", paginas[p], " | Precio por p�gina = $", precio[p]
	FinPara
FinFuncion

Funcion modificar_datos(paginas, precio)
	Definir impresion Como Entero
	Escribir "Ingrese el n�mero de la impresi�n a modificar (1-3):"
	Leer impresion
	Si impresion >= 1 y impresion <= 3 Entonces
		Escribir "Ingrese la nueva cantidad de p�ginas:"
		Leer paginas[impresion]
		Escribir "Ingrese el nuevo precio por p�gina:"
		Leer precio[impresion]
	SiNo
		Escribir "N�mero inv�lido. Debe estar entre 1 y 3."
	FinSi
FinFuncion

Funcion total <- calcular_costo_total(paginas, precio)
	Definir p Como Entero
	Definir suma Como Real
	suma <- 0
	Para p <- 1 Hasta 3 Con Paso 1 Hacer
		suma <- suma + (paginas[p] * precio[p])
	FinPara
	total <- suma
FinFuncion

Algoritmo array_17
	Definir paginas, precio Como Real
	Definir total Como Real
	Definir opcion Como Entero
	Dimension paginas[3], precio[3]
	
	Repetir
		Escribir "=========== menu ==========="
		Escribir "1. Ingresar datos de impresi�n"
		Escribir "2. Mostrar datos"
		Escribir "3. Modificar datos"
		Escribir "4. Calcular costo total"
		Escribir "5. Salir"
		Leer opcion
		
		Segun opcion Hacer
			1:
				guardar_datos(paginas, precio)
			2:
				mostrar_datos(paginas, precio)
			3:
				modificar_datos(paginas, precio)
			4:
				total <- calcular_costo_total(paginas, precio)
				Escribir "El costo total de impresi�n es: $", total
			5:
				Escribir "Saliendo del programa..."
			De Otro Modo:
				Escribir "Opci�n inv�lida. Intente nuevamente."
		FinSegun
	Hasta Que opcion = 5
FinAlgoritmo
