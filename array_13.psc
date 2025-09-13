Funcion guardar_datos(distancia, tiempo)
	Definir c Como Entero
	Para c <- 1 Hasta 2 Con Paso 1 Hacer
		Escribir "Ingrese la distancia recorrida (km) del carro ", c, ":"
		Leer distancia[c]
		Escribir "Ingrese el tiempo tomado (horas) del carro ", c, ":"
		Leer tiempo[c]
	FinPara
FinFuncion

Funcion mostrar_datos(distancia, tiempo)
	Definir c Como Entero
	Escribir "======= Datos ingresados ======="
	Para c <- 1 Hasta 2 Con Paso 1 Hacer
		Escribir "Carro ", c, ": Distancia = ", distancia[c], " km | Tiempo = ", tiempo[c], " horas"
	FinPara
FinFuncion

Funcion modificar_datos(distancia, tiempo)
	Definir carro Como Entero
	Escribir "Ingrese el número del carro a modificar (1-2):"
	Leer carro
	Si carro >= 1 y carro <= 2 Entonces
		Escribir "Ingrese la nueva distancia (km):"
		Leer distancia[carro]
		Escribir "Ingrese el nuevo tiempo (horas):"
		Leer tiempo[carro]
	SiNo
		Escribir "Número inválido. Debe ser 1 o 2."
	FinSi
FinFuncion

Funcion calcular_velocidad(distancia, tiempo, velocidad)
	Definir c Como Entero
	Para c <- 1 Hasta 2 Con Paso 1 Hacer
		Si tiempo[c] > 0 Entonces
			velocidad[c] <- distancia[c] / tiempo[c]
		SiNo
			velocidad[c] <- 0
		FinSi
	FinPara
FinFuncion

Funcion mostrar_velocidad(velocidad)
	Definir c Como Entero
	Escribir "======= Velocidades calculadas (km/h) ======="
	Para c <- 1 Hasta 2 Con Paso 1 Hacer
		Escribir "Carro ", c, ": Velocidad promedio = ", velocidad[c]
	FinPara
FinFuncion

Funcion promedio <- calcular_promedio(velocidad)
	Definir c Como Entero
	Definir suma Como Real
	suma <- 0
	Para c <- 1 Hasta 2 Con Paso 1 Hacer
		suma <- suma + velocidad[c]
	FinPara
	promedio <- suma / 2
FinFuncion

Algoritmo array_13
	Definir distancia, tiempo, velocidad Como Real
	Definir promedio Como Real
	Definir opcion Como Entero
	Dimension distancia[2], tiempo[2], velocidad[2]
	
	Repetir
		Escribir "=========== menu ==========="
		Escribir "1. Ingresar distancia y tiempo"
		Escribir "2. Mostrar datos ingresados"
		Escribir "3. Modificar datos"
		Escribir "4. Calcular velocidad promedio"
		Escribir "5. Mostrar velocidades"
		Escribir "6. Calcular promedio de velocidades"
		Escribir "7. Salir"
		Leer opcion
		
		Segun opcion Hacer
			1:
				guardar_datos(distancia, tiempo)
			2:
				mostrar_datos(distancia, tiempo)
			3:
				modificar_datos(distancia, tiempo)
			4:
				calcular_velocidad(distancia, tiempo, velocidad)
				Escribir "Cálculo de velocidades realizado correctamente."
			5:
				mostrar_velocidad(velocidad)
			6:
				promedio <- calcular_promedio(velocidad)
				Escribir "El promedio de velocidad es: ", promedio
			7:
				Escribir "Saliendo del programa..."
			De Otro Modo:
				Escribir "Opción inválida. Intente nuevamente."
		FinSegun
	Hasta Que opcion = 7
FinAlgoritmo
