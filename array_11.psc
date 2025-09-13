Funcion guardar_datos(peso, altura)
	Definir m Como Entero
	Para m <- 1 Hasta 2 Con Paso 1 Hacer
		Escribir "Ingrese el peso (kg) de la persona ", m, ":"
		Leer peso[m]
		Escribir "Ingrese la altura (m) de la persona ", m, ":"
		Leer altura[m]
	FinPara
FinFuncion

Funcion mostrar_datos(peso, altura)
	Definir m Como Entero
	Escribir "======= Datos ingresados ======="
	Para m <- 1 Hasta 2 Con Paso 1 Hacer
		Escribir "Persona ", m, ": Peso = ", peso[m], " kg | Altura = ", altura[m], " m"
	FinPara
FinFuncion

Funcion modificar_datos(peso, altura)
	Definir persona Como Entero
	Escribir "Ingrese el número de la persona a modificar (1-2):"
	Leer persona
	Si persona >= 1 y persona <= 2 Entonces
		Escribir "Ingrese el nuevo peso (kg):"
		Leer peso[persona]
		Escribir "Ingrese la nueva altura (m):"
		Leer altura[persona]
	SiNo
		Escribir "Número inválido. Debe estar entre 1 y 2."
	FinSi
FinFuncion

Funcion calcular_imc(peso, altura, imc)
	Definir m Como Entero
	Para m <- 1 Hasta 2 Con Paso 1 Hacer
		imc[m] <- peso[m] / (altura[m] ^ 2)
	FinPara
FinFuncion

Funcion mostrar_imc(imc)
	Definir m Como Entero
	Escribir "======= Índice de Masa Corporal (IMC) ======="
	Para m <- 1 Hasta 2 Con Paso 1 Hacer
		Escribir "Persona ", m, ": IMC = ", imc[m]
	FinPara
FinFuncion

Funcion promedio <- calcular_promedio(imc)
	Definir m Como Entero
	Definir suma Como Real
	suma <- 0
	Para m <- 1 Hasta 2 Con Paso 1 Hacer
		suma <- suma + imc[m]
	FinPara
	promedio <- suma / 2
FinFuncion

Algoritmo array_11
	Definir peso, altura, imc Como Real
	Definir promedio Como Real
	Definir opcion Como Entero
	Dimension peso[2], altura[2], imc[2]
	
	Repetir
		Escribir "=========== menu==========="
		Escribir "1. Ingresar peso y altura"
		Escribir "2. Mostrar datos ingresados"
		Escribir "3. Modificar datos"
		Escribir "4. Calcular IMC"
		Escribir "5. Mostrar IMC"
		Escribir "6. Calcular promedio de IMC"
		Escribir "7. Salir"
		Leer opcion
		
		Segun opcion Hacer
			1:
				guardar_datos(peso, altura)
			2:
				mostrar_datos(peso, altura)
			3:
				modificar_datos(peso, altura)
			4:
				calcular_imc(peso, altura, imc)
				Escribir "Cálculo de IMC realizado correctamente."
			5:
				mostrar_imc(imc)
			6:
				promedio <- calcular_promedio(imc)
				Escribir "El promedio de IMC es: ", promedio
			7:
				Escribir "Saliendo del programa..."
			De Otro Modo:
				Escribir "Opción inválida. Intente nuevamente."
		FinSegun
	Hasta Que opcion = 7
FinAlgoritmo
