Funcion guardar_datos(horas, tarifa)
	Definir t Como Entero
	Para t <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir "Ingrese las horas trabajadas para el servicio ", t, ":"
		Leer horas[t]
		Escribir "Ingrese la tarifa por hora del servicio ", t, ":"
		Leer tarifa[t]
	FinPara
FinFuncion

Funcion mostrar_datos(horas, tarifa)
	Definir t Como Entero
	Escribir "======= Datos ingresados ======="
	Para t <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir "Servicio ", t, ": Horas = ", horas[t], " | Tarifa = ", tarifa[t]
	FinPara
FinFuncion

Funcion modificar_datos(horas, tarifa)
	Definir servicio Como Entero
	Escribir "Ingrese el número del servicio a modificar (1-3):"
	Leer servicio
	Si servicio >= 1 y servicio <= 3 Entonces
		Escribir "Ingrese las nuevas horas trabajadas:"
		Leer horas[servicio]
		Escribir "Ingrese la nueva tarifa por hora:"
		Leer tarifa[servicio]
	SiNo
		Escribir "Número inválido. Debe estar entre 1 y 3."
	FinSi
FinFuncion

Funcion calcular_costos(horas, tarifa, costos)
	Definir t Como Entero
	Para t <- 1 Hasta 3 Con Paso 1 Hacer
		costos[t] <- horas[t] * tarifa[t]
	FinPara
FinFuncion

Funcion mostrar_costos(costos)
	Definir t Como Entero
	Escribir "======= Costos individuales ======="
	Para t <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir "Servicio ", t, ": Costo total = ", costos[t]
	FinPara
FinFuncion

Funcion total <- calcular_total_general(costos)
	Definir t Como Entero
	Definir suma Como Real
	suma <- 0
	Para t <- 1 Hasta 3 Con Paso 1 Hacer
		suma <- suma + costos[t]
	FinPara
	total <- suma
FinFuncion

Algoritmo array_10
	Definir horas, tarifa, costos Como Real
	Definir total Como Real
	Definir opcion Como Entero
	Dimension horas[3], tarifa[3], costos[3]
	
	Repetir
		Escribir "=========== menu ==========="
		Escribir "1. Ingresar datos (horas y tarifa)"
		Escribir "2. Mostrar datos ingresados"
		Escribir "3. Modificar datos"
		Escribir "4. Calcular costos individuales"
		Escribir "5. Mostrar costos individuales"
		Escribir "6. Calcular y mostrar total general"
		Escribir "7. Salir"
		Leer opcion
		
		Segun opcion Hacer
			1:
				guardar_datos(horas, tarifa)
			2:
				mostrar_datos(horas, tarifa)
			3:
				modificar_datos(horas, tarifa)
			4:
				calcular_costos(horas, tarifa, costos)
				Escribir "Cálculo de costos realizado correctamente."
			5:
				mostrar_costos(costos)
			6:
				total <- calcular_total_general(costos)
				Escribir "El costo total general es: ", total
			7:
				Escribir "Saliendo del programa..."
			De Otro Modo:
				Escribir "Opción inválida. Intente nuevamente."
		FinSegun
	Hasta Que opcion = 7
FinAlgoritmo
