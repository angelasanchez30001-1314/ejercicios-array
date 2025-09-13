Funcion guardar_tiempos(tiempos)
	Definir t Como Entero
	Para t <- 1 Hasta 5 Con Paso 1 Hacer
		Escribir "Ingrese el tiempo parcial (en horas) del tramo ", t, ":"
		Leer tiempos[t]
	FinPara
FinFuncion

Funcion mostrar_tiempos(tiempos)
	Definir t Como Entero
	Escribir "======= Tiempos parciales del viaje ======="
	Para t <- 1 Hasta 5 Con Paso 1 Hacer
		Escribir "Tramo ", t, ": ", tiempos[t], " horas"
	FinPara
FinFuncion

Funcion total <- calcular_tiempo_total(tiempos)
	Definir t Como Entero
	Definir suma Como Real
	suma <- 0
	Para t <- 1 Hasta 5 Con Paso 1 Hacer
		suma <- suma + tiempos[t]
	FinPara
	total <- suma
FinFuncion

Funcion modificar_tiempo(tiempos)
	Definir tramo Como Entero
	Escribir "Ingrese el número del tramo a modificar (1-5):"
	Leer tramo
	Si tramo >= 1 y tramo <= 5 Entonces
		Escribir "Ingrese el nuevo tiempo (horas) para el tramo ", tramo, ":"
		Leer tiempos[tramo]
	SiNo
		Escribir "Número de tramo inválido. Debe estar entre 1 y 5."
	FinSi
FinFuncion

Algoritmo array_15
	Definir tiempos Como Real
	Definir total Como Real
	Definir opcion Como Entero
	Dimension tiempos[5]
	
	Repetir
		Escribir "=========== menu ==========="
		Escribir "1. Ingresar tiempos parciales"
		Escribir "2. Mostrar tiempos ingresados"
		Escribir "3. Modificar tiempo de un tramo"
		Escribir "4. Calcular tiempo total del viaje"
		Escribir "5. Salir"
		Leer opcion
		
		Segun opcion Hacer
			1:
				guardar_tiempos(tiempos)
			2:
				mostrar_tiempos(tiempos)
			3:
				modificar_tiempo(tiempos)
			4:
				total <- calcular_tiempo_total(tiempos)
				Escribir "El tiempo total del viaje es: ", total, " horas"
			5:
				Escribir "Saliendo del programa..."
			De Otro Modo:
				Escribir "Opción inválida. Intente nuevamente."
		FinSegun
	Hasta Que opcion = 5
FinAlgoritmo
