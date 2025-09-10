Algoritmo array_4
	Definir precio,cantidad,descuento,total,p,opcion Como Real
	Definir tipo_producto Como Caracter
	dimension cantidad[10],precio[10]
	Repetir
		Escribir "====================menu================="
		Escribir "1.escribir tipo de producto"
		Escribir "2.cantidad de producto"
		Escribir "3.precio del producto"
		Escribir "4.precio total del prodcuto"
		Escribir "5.total con descuento"
		Escribir "6.salir del programa"
		leer opcion
		Segun opcion hacer
			1:
				Escribir"que tipo de producto deseas comprar"
				leer tipo_producto
			2:
				para p<-1 hasta 1 hacer
					Escribir "cantidad de producto deseada"
					Leer cantidad[1]
					
				FinPara
			3:
				para p<-1 hasta 1 Hacer
					Escribir "precio del producto"
					leer precio[1]
				FinPara
			4:
				total<-cantidad[1]*precio[1]
				Escribir "el precio total sin descuento es",total
			5:
				descuento<-total*0.5/100
				Escribir "el precio total con el decuento aplicado es de:",descuento
			6:
				Escribir"desea salir del programa(1.si/2.no)"
				leer respuesta
				si respuesta=1 Entonces
					Escribir "chao"
				SiNo
					Escribir "regresar al menu"
					
				FinSi
		FinSegun
	Hasta Que opcion =6
	
FinAlgoritmo
