Funcion guardar_consumos(consumo, precio)
	Definir p Como Entero
	Para p <- 1 Hasta 4 Con Paso 1 Hacer
		Escribir "Ingrese el consumo del servicio ", p, ":"
		Leer consumo[p]
		Escribir "Ingrese el precio por unidad del servicio ", p, ":"
		Leer precio[p]
	FinPara
FinFuncion

Funcion mostrar_consumos(consumo, precio)
	Definir p Como Entero
	Escribir "======= Consumos y precios de servicios ======="
	Para p <- 1 Hasta 4 Con Paso 1 Hacer
		Escribir "Servicio ", p, ": Consumo = ", consumo[p], " | Precio unitario = ", precio[p]
	FinPara
FinFuncion

Funcion modificar_consumo(consumo, precio)
	Definir servicio Como Entero
	Escribir "Ingrese el número del servicio a modificar (1-4):"
	Leer servicio
	Si servicio >= 1 y servicio <= 4 Entonces
		Escribir "Ingrese el nuevo consumo del servicio ", servicio, ":"
		Leer consumo[servicio]
		Escribir "Ingrese el nuevo precio por unidad del servicio ", servicio, ":"
		Leer precio[servicio]
	SiNo
		Escribir "Número inválido. Debe estar entre 1 y 4."
	FinSi
FinFuncion

Funcion total <- calcular_total(consumo, precio)
	Definir p Como Entero
	Definir suma Como Real
	suma <- 0
	Para p <- 1 Hasta 4 Con Paso 1 Hacer
		suma <- suma + (consumo[p] * precio[p])
	FinPara
	total <- suma
FinFuncion

Algoritmo array_16
	Definir consumo, precio Como Real
	Definir total Como Real
	Definir opcion Como Entero
	Dimension consumo[4], precio[4]
	
	Repetir
		Escribir "=========== menu ==========="
		Escribir "1. Ingresar consumos y precios"
		Escribir "2. Mostrar consumos y precios"
		Escribir "3. Modificar datos"
		Escribir "4. Calcular total a pagar"
		Escribir "5. Salir"
		Leer opcion
		
		Segun opcion Hacer
			1:
				guardar_consumos(consumo, precio)
			2:
				mostrar_consumos(consumo, precio)
			3:
				modificar_consumo(consumo, precio)
			4:
				total <- calcular_total(consumo, precio)
				Escribir "El total a pagar por servicios es: $", total
			5:
				Escribir "Saliendo del programa..."
			De Otro Modo:
				Escribir "Opción inválida. Intente nuevamente."
		FinSegun
	Hasta Que opcion = 5
FinAlgoritmo
