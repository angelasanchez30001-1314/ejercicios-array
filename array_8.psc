Funcion guardar_datos(ingresos, gastos)
	Definir i Como Entero
	Para i <- 1 Hasta 7 Con Paso 1 Hacer
		Escribir "Ingrese el ingreso del día ", i, ":"
		Leer ingresos[i]
		Escribir "Ingrese el gasto del día ", i, ":"
		Leer gastos[i]
	FinPara
FinFuncion

Funcion mostrar_datos(ingresos, gastos)
	Definir i Como Entero
	Escribir "======= Datos registrados por día ======="
	Para i <- 1 Hasta 7 Con Paso 1 Hacer
		Escribir "Día ", i, ": Ingreso = ", ingresos[i], " | Gasto = ", gastos[i]
	FinPara
FinFuncion

Funcion modificar_dia(ingresos, gastos)
	Definir dia Como Entero
	Escribir "Ingrese el número de día a modificar (1-7):"
	Leer dia
	Si dia >= 1 y dia <= 7 Entonces
		Escribir "Ingrese el nuevo ingreso del día ", dia, ":"
		Leer ingresos[dia]
		Escribir "Ingrese el nuevo gasto del día ", dia, ":"
		Leer gastos[dia]
	SiNo
		Escribir "Día inválido. Debe estar entre 1 y 7."
	FinSi
FinFuncion

Funcion ganancia <- calcular_ganancia(ingresos, gastos)
	Definir i Como Entero
	Definir total Como Real
	total <- 0
	Para i <- 1 Hasta 7 Con Paso 1 Hacer
		total <- total + (ingresos[i] - gastos[i])
	FinPara
	ganancia <- total
FinFuncion

Funcion mostrar_ganancia_diaria(ingresos, gastos)
	Definir i Como Entero
	Escribir "======= Ganancia neta diaria ======="
	Para i <- 1 Hasta 7 Con Paso 1 Hacer
		Escribir "Día ", i, ": Ganancia neta = ", ingresos[i] - gastos[i]
	FinPara
FinFuncion

Algoritmo array_8
	Definir ingresos, gastos Como Real
	Definir ganancia Como Real
	Definir opcion Como Entero
	Dimension ingresos[7], gastos[7]
	
	Repetir
		Escribir "=========== menu ==========="
		Escribir "1. Ingresar ingresos y gastos"
		Escribir "2. Mostrar datos ingresados"
		Escribir "3. Modificar datos de un día"
		Escribir "4. Mostrar ganancia neta diaria"
		Escribir "5. Calcular ganancia neta total"
		Escribir "6. Salir"
		Leer opcion
		Segun opcion Hacer
			1:
				guardar_datos(ingresos, gastos)
			2:
				mostrar_datos(ingresos, gastos)
			3:
				modificar_dia(ingresos, gastos)
			4:
				mostrar_ganancia_diaria(ingresos, gastos)
			5:
				ganancia <- calcular_ganancia(ingresos, gastos)
				Escribir "La ganancia neta total de la semana es: ", ganancia
			6:
				Escribir "Saliendo del programa..."
			De Otro Modo:
				Escribir "Opción inválida. Intente nuevamente."
		FinSegun
	Hasta Que opcion = 6
FinAlgoritmo

