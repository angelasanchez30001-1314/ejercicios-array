Funcion guardar_datos(unidades, precio)
	Definir c Como Entero
	Para c <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir "Ingrese las unidades vendidas del producto ", c, ":"
		Leer unidades[c]
		Escribir "Ingrese el precio unitario del producto ", c, ":"
		Leer precio[c]
	FinPara
FinFuncion

Funcion mostrar_datos(unidades, precio)
	Definir c Como Entero
	Escribir "======= Datos de ventas ======="
	Para c <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir "Producto ", c, ": Unidades vendidas = ", unidades[c], " | Precio unitario = ", precio[c]
	FinPara
FinFuncion

Funcion modificar_datos(unidades, precio)
	Definir producto Como Entero
	Escribir "Ingrese el número del producto a modificar (1-3):"
	Leer producto
	Si producto >= 1 y producto <= 3 Entonces
		Escribir "Ingrese las nuevas unidades vendidas del producto ", producto, ":"
		Leer unidades[producto]
		Escribir "Ingrese el nuevo precio unitario del producto ", producto, ":"
		Leer precio[producto]
	SiNo
		Escribir "Número inválido. Debe estar entre 1 y 3."
	FinSi
FinFuncion

Funcion total <- calcular_total(unidades, precio)
	Definir c Como Entero
	Definir suma Como Real
	suma <- 0
	Para c <- 1 Hasta 3 Con Paso 1 Hacer
		suma <- suma + (unidades[c] * precio[c])
	FinPara
	total <- suma
FinFuncion

Funcion total_unidades <- calcular_total_unidades(unidades)
	Definir c Como Entero
	Definir suma_unidades Como Entero
	suma_unidades <- 0
	Para c <- 1 Hasta 3 Con Paso 1 Hacer
		suma_unidades <- suma_unidades + unidades[c]
	FinPara
	total_unidades <- suma_unidades
FinFuncion

Algoritmo array_14
	Definir unidades Como Entero
	Definir precio, total Como Real
	Definir total_unidades Como Entero
	Definir opcion Como Entero
	Dimension unidades[3], precio[3]
	
	Repetir
		Escribir "=========== menu ==========="
		Escribir "1. Ingresar unidades vendidas y precios"
		Escribir "2. Mostrar datos de ventas"
		Escribir "3. Modificar datos"
		Escribir "4. Calcular total a pagar"
		Escribir "5. Mostrar total de unidades vendidas"
		Escribir "6. Salir"
		Leer opcion
		
		Segun opcion Hacer
			1:
				guardar_datos(unidades, precio)
			2:
				mostrar_datos(unidades, precio)
			3:
				modificar_datos(unidades, precio)
			4:
				total <- calcular_total(unidades, precio)
				Escribir "El total a pagar es: $", total
			5:
				total_unidades <- calcular_total_unidades(unidades)
				Escribir "El total de unidades vendidas es: ", total_unidades
			6:
				Escribir "Saliendo del programa..."
			De Otro Modo:
				Escribir "Opción inválida. Intente nuevamente."
		FinSegun
	Hasta Que opcion = 6
FinAlgoritmo

