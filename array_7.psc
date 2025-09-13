Funcion guardar_ventas(ventas)
	Definir i Como Entero
	Para i <- 1 Hasta 7 Con Paso 1 Hacer
		Escribir "Ingrese el total de ventas del día ", i, ":"
		Leer ventas[i]
	FinPara
FinFuncion

Funcion mostrar_ventas(ventas)
	Definir i Como Entero
	Escribir "======= Ventas registradas por día ======="
	Para i <- 1 Hasta 7 Con Paso 1 Hacer
		Escribir "Día ", i, ": ", ventas[i]
	FinPara
FinFuncion

Funcion modificar_venta(ventas)
	Definir dia Como Entero
	Escribir "Ingrese el número de día a modificar (1-7):"
	Leer dia
	Si dia >= 1 y dia <= 7 Entonces
		Escribir "Ingrese el nuevo valor de ventas para el día ", dia, ":"
		Leer ventas[dia]
	SiNo
		Escribir "Día inválido. Debe estar entre 1 y 7."
	FinSi
FinFuncion

Funcion total <- calcular_total(ventas)
	Definir i Como Entero
	Definir suma Como Real
	suma <- 0
	Para i <- 1 Hasta 7 Con Paso 1 Hacer
		suma <- suma + ventas[i]
	FinPara
	total <- suma
FinFuncion

Algoritmo array_7
	Definir ventas Como Real
	Definir total Como Real
	Definir opcion Como Entero
	Dimension ventas[7]
	Repetir
		Escribir "=========== menu ==========="
		Escribir "1. Ingresar ventas"
		Escribir "2. Mostrar ventas"
		Escribir "3. Modificar una venta"
		Escribir "4. Calcular total semanal"
		Escribir "5. Salir"
		Leer opcion
		Segun opcion Hacer
			1:
				guardar_ventas(ventas)
			2:
				mostrar_ventas(ventas)
			3:
				modificar_venta(ventas)
			4:
				total <- calcular_total(ventas)
				Escribir "El total de ventas de la semana es: ", total
			5:
				Escribir "Saliendo del programa..."
			De Otro Modo:
				Escribir "Opción inválida. Intente nuevamente."
		FinSegun
	Hasta Que opcion = 5
FinAlgoritmo

