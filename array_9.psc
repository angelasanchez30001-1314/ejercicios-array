Funcion guardar_nacimientos(nacimiento)
	Definir e Como Entero
	Para e <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir "Ingrese el a�o de nacimiento de la persona ", e, ":"
		Leer nacimiento[e]
	FinPara
FinFuncion

Funcion mostrar_nacimientos(nacimiento)
	Definir e Como Entero
	Escribir "======= A�os de nacimiento registrados ======="
	Para e <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir "Persona ", e, ": ", nacimiento[e]
	FinPara
FinFuncion

Funcion modificar_nacimiento(nacimiento)
	Definir persona Como Entero
	Escribir "Ingrese el n�mero de la persona a modificar (1-3):"
	Leer persona
	Si persona >= 1 y persona <= 3 Entonces
		Escribir "Ingrese el nuevo a�o de nacimiento:"
		Leer nacimiento[persona]
	SiNo
		Escribir "N�mero inv�lido. Debe estar entre 1 y 3."
	FinSi
FinFuncion

Funcion calcular_edades(nacimiento, edades, a�o_actual)
	Definir e Como Entero
	Para e <- 1 Hasta 3 Con Paso 1 Hacer
		edades[e] <- a�o_actual - nacimiento[e]
	FinPara
FinFuncion

Funcion mostrar_edades(edades)
	Definir e Como Entero
	Escribir "======= Edades actuales ======="
	Para e <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir "Persona ", e, ": ", edades[e], " a�os"
	FinPara
FinFuncion

Funcion promedio <- calcular_promedio(edades)
	Definir e Como Entero
	Definir suma Como Entero
	suma <- 0
	Para e <- 1 Hasta 3 Con Paso 1 Hacer
		suma <- suma + edades[e]
	FinPara
	promedio <- suma / 3
FinFuncion

Algoritmo array_9
	Definir nacimiento, edades Como Entero
	Definir a�o_actual, promedio Como Entero
	Definir opcion Como Entero
	Dimension nacimiento[3], edades[3]
	
	Repetir
		Escribir "=========== menu ==========="
		Escribir "1. Ingresar a�os de nacimiento"
		Escribir "2. Mostrar a�os de nacimiento"
		Escribir "3. Modificar a�o de nacimiento"
		Escribir "4. Calcular edades"
		Escribir "5. Mostrar edades"
		Escribir "6. Calcular promedio de edades"
		Escribir "7. Salir"
		Leer opcion
		
		Segun opcion Hacer
			1:
				guardar_nacimientos(nacimiento)
			2:
				mostrar_nacimientos(nacimiento)
			3:
				modificar_nacimiento(nacimiento)
			4:
				Escribir "Ingrese el a�o actual:"
				Leer a�o_actual
				calcular_edades(nacimiento, edades, a�o_actual)
				Escribir "C�lculo de edades realizado correctamente."
			5:
				mostrar_edades(edades)
			6:
				promedio <- calcular_promedio(edades)
				Escribir "El promedio de edades es: ", promedio, " a�os"
			7:
				Escribir "Saliendo del programa..."
			De Otro Modo:
				Escribir "Opci�n inv�lida. Intente nuevamente."
		FinSegun
	Hasta Que opcion = 7
FinAlgoritmo
