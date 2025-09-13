Funcion guardar_nacimientos(nacimiento)
	Definir e Como Entero
	Para e <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir "Ingrese el año de nacimiento de la persona ", e, ":"
		Leer nacimiento[e]
	FinPara
FinFuncion

Funcion mostrar_nacimientos(nacimiento)
	Definir e Como Entero
	Escribir "======= Años de nacimiento registrados ======="
	Para e <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir "Persona ", e, ": ", nacimiento[e]
	FinPara
FinFuncion

Funcion modificar_nacimiento(nacimiento)
	Definir persona Como Entero
	Escribir "Ingrese el número de la persona a modificar (1-3):"
	Leer persona
	Si persona >= 1 y persona <= 3 Entonces
		Escribir "Ingrese el nuevo año de nacimiento:"
		Leer nacimiento[persona]
	SiNo
		Escribir "Número inválido. Debe estar entre 1 y 3."
	FinSi
FinFuncion

Funcion calcular_edades(nacimiento, edades, año_actual)
	Definir e Como Entero
	Para e <- 1 Hasta 3 Con Paso 1 Hacer
		edades[e] <- año_actual - nacimiento[e]
	FinPara
FinFuncion

Funcion mostrar_edades(edades)
	Definir e Como Entero
	Escribir "======= Edades actuales ======="
	Para e <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir "Persona ", e, ": ", edades[e], " años"
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
	Definir año_actual, promedio Como Entero
	Definir opcion Como Entero
	Dimension nacimiento[3], edades[3]
	
	Repetir
		Escribir "=========== menu ==========="
		Escribir "1. Ingresar años de nacimiento"
		Escribir "2. Mostrar años de nacimiento"
		Escribir "3. Modificar año de nacimiento"
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
				Escribir "Ingrese el año actual:"
				Leer año_actual
				calcular_edades(nacimiento, edades, año_actual)
				Escribir "Cálculo de edades realizado correctamente."
			5:
				mostrar_edades(edades)
			6:
				promedio <- calcular_promedio(edades)
				Escribir "El promedio de edades es: ", promedio, " años"
			7:
				Escribir "Saliendo del programa..."
			De Otro Modo:
				Escribir "Opción inválida. Intente nuevamente."
		FinSegun
	Hasta Que opcion = 7
FinAlgoritmo
