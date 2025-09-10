Algoritmo array_5
	Definir base,altura,area,opcion,p Como Real
	Dimension base[10],altura[10]
	Repetir
		Escribir "===========================menu==================="
		Escribir "1.cual es la base de su triangulo"
		Escribir "2.cual es la altura de su triangulo"
		Escribir "3.el area de su triangulo es"
		Escribir "4.salir del programa"
		Leer opcion
		segun opcion hacer
			1:
				para p<-1 hasta 1
				Escribir "base triangulo"
				leer base[1]
			FinPara
		2:
			para p<-1 hasta 1
				Escribir "altura del triangulo"
				leer altura[1]
			FinPara
		3:
			area<-base[1]*altura[1]
			Escribir "el area el triangulo es",area
		4:
			Escribir"desea salir del programa(1.si/2.no)"
			leer respuesta
			si respuesta=1 Entonces
				Escribir "chao"
			SiNo
				Escribir "regresar al menu"
				
			FinSi
				
		FinSegun
	Hasta Que opcion=4
	
FinAlgoritmo
