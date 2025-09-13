Funcion guardar_calorias(calorias)
	Definir c Como Entero
	Para c <- 1 Hasta 7 Con Paso 1 Hacer
		Escribir "Ingrese las calor�as consumidas el d�a ", c, ":"
		Leer calorias[c]
	FinPara
FinFuncion

Funcion mostrar_calorias(calorias)
	Definir c Como Entero
	Escribir "======= Calor�as consumidas por d�a ======="
	Para c <- 1 Hasta 7 Con Paso 1 Hacer
		Escribir "D�a ", c, ": ", calorias[c], " calor�as"
	FinPara
FinFuncion

Funcion modificar_caloria(calorias)
	Definir dia Como Entero
	Escribir "Ingrese el n�mero del d�a a modificar (1-7):"
	Leer dia
	Si dia >= 1 y dia <= 7 Entonces
		Escribir "Ingrese las nuevas calor�as para el d�a ", dia, ":"
		Leer calorias[dia]
	SiNo
		Escribir "N�mero de d�a inv�lido. Debe estar entre 1 y 7."
	FinSi
FinFuncion

Funcion total <- calcular_total_calorias(calorias)
	Definir c Como Entero
	Definir suma Como Entero
	suma <- 0
	Para c <- 1 Hasta 7 Con Paso 1 Hacer
		suma <- suma + calorias[c]
	FinPara
	total <- suma
FinFuncion

Algoritmo array_12
	Definir calorias Como Entero
	Definir total Como Entero
	Definir opcion Como Entero
	Dimension calorias[7]
	
	Repetir
		Escribir "=========== menu ==========="
		Escribir "1. Ingresar calor�as por d�a"
		Escribir "2. Mostrar calor�as por d�a"
		Escribir "3. Modificar calor�as de un d�a"
		Escribir "4. Calcular calor�as totales de la semana"
		Escribir "5. Salir"
		Leer opcion
		
		Segun opcion Hacer
			1:
				guardar_calorias(calorias)
			2:
				mostrar_calorias(calorias)
			3:
				modificar_caloria(calorias)
			4:
				total <- calcular_total_calorias(calorias)
				Escribir "El total de calor�as consumidas en la semana es: ", total
			5:
				Escribir "Saliendo del programa..."
			De Otro Modo:
				Escribir "Opci�n inv�lida. Intente nuevamente."
		FinSegun
	Hasta Que opcion = 5
FinAlgoritmo
