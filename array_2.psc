Algoritmo array_2
	definir sums,promedio,s,materias,resultado Como real
	Definir opcion Como entero
	dimension materias[3]
	Repetir
		Escribir "===================menu==================="
		Escribir "1.guardar datos"
		Escribir "2.modificar datos"
		Escribir "3.mostrar datos"
		Escribir "4.salir del programa"
		Escribir "seleccione una opcion del (1-4)"
		leer opcion
		Segun opcion hacer
			1:
				para s<-1 hasta 3 Hacer
					Escribir "ingrese la nota",s ,":"
					leer materias[s]
					sums<-sums+materias[s]
					sums<-sums/3
					Escribir "el resultado es",sums
					
				FinPara
			2:
			    para s<-1 hasta 3 Hacer
					Escribir "modificar numeros",s,":"
					leer materias[s]
					sums<-sums+materias[s]
				FinPara
			3:
				para s<-1 hasta 3 Hacer
					Escribir "los numeros a sumar son :",s,"es",materias[s]
				FinPara
			4:
				Escribir"desea salir del programa(1.si/2.no)"
				leer respuesta
				si respuesta=1 Entonces
					Escribir "chao"
				SiNo
					Escribir "regresar al menu"
					
				FinSi
				
		FinSegun
		
	Hasta Que opcion =4
	
FinAlgoritmo

	
	
