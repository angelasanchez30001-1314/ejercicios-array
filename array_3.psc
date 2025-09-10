Algoritmo array_3
	definir producto,precio,cantidad,iva,total,p,opcion Como Real
	definir tipo_producto Como Caracter
	dimension precio[10],cantidad[10]
	Repetir
		Escribir "====================menu===================="
		Escribir "1.escribir tipo de producto"
		Escribir "2.cantidad de producto"
		Escribir "3.precio del producto"
		Escribir "4.precio total del prodcuto"
		Escribir "5.total con iva"
		Escribir "6.salir del programa"
		leer opcion
		Segun opcion hacer
			1:
					Escribir "cual es el producto que deseas comprar"
					leer tipo_producto
				
				2:
					para p<-1 hasta 1 Hacer
					FinPara
					Escribir "que cantidad de producto desea llevar:"
					Leer cantidad[1]
			
			3:
				para p<-1 hasta 1 Hacer
					Escribir "que precio tiene el producto deseado:"
					leer precio[p]
				FinPara
		    4:
				total<-cantidad[1]*precio[1]
				Escribir "precio total de prodcutos:",total
				 

			5:
				iva<-total*0.19
					Escribir "total con iva agregado:",iva
					
			6:
				Escribir"desea salir del programa(1.si/2.no)"
				leer respuesta
				si respuesta=1 Entonces
					Escribir "chao"
				SiNo
					Escribir "regresar al menu"
					
				FinSi
		FinSegun
	Hasta Que opcion=6
	
	
FinAlgoritmo
