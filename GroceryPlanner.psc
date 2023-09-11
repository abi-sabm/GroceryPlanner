Algoritmo GroceryPlanner
	// Con Dimension se puede crear un arreglo, una lista, para almacenar la información 
    Dimension nombreProducto[50]  // Arreglo para los nombres de los productos
    Dimension cantidadProducto[50]  // Arreglo para las cantidades del producto
	
    Definir opcionMenu, volver, stock, lista como Entero
    Definir productoElegido, nuevoNombre, nuevaCantidad como Cadena
	
    stock <- 0 
	i <- 0 // i (item) hace referecia a la posición del producto en el arreglo 
	
	Escribir "¡Bienvenido a Grocery Planner!"
    
	Repetir
		Escribir " "
        Escribir "Menú principal"
        Escribir "    1. Ver stock de productos"
        Escribir "    2. Agregar producto"
        Escribir "    3. Modificar producto"
        Escribir "    4. Eliminar producto"
		Escribir "   -------------------------------"
		Escribir "    5. Ver Lista de Compras"
		Escribir "    6. Agregar producto a la lista"
		Escribir "    7. Quitar producto de la lista"
		Escribir " "
		Escribir "    8. Volver al Menú principal"
		Escribir "    9. Salir"
        
		Leer opcionMenu
		
        Segun opcionMenu Hacer
            Caso 1:
                // Consultar el stock de productos
                Si stock = 0 Entonces
					Escribir " "					
                    Escribir "No hay stock para mostrar"
                Sino
                    Escribir "Stock de productos:"
                    Para i <- 1 Hasta stock Hacer
                        Escribir "Item: ", i // posición 1
                        Escribir "Nombre: ", nombreProducto[i] // nombre en posición 1
                        Escribir "Cantidad: ", cantidadProducto[i] // cantidad en posición 1
						Escribir " "
						// Se recorre el arreglo hasta la última posición
                    Fin Para
                FinSi
				
				Escribir " "
				Escribir "    8. Volver al Menú principal"
				Leer volver
            Caso 2:
                // Agregar producto
                Si stock < 50 Entonces
                    Escribir "Ingrese el nombre del producto:"
                    Leer nuevoNombre
                    Escribir "Ingrese la cantidad del producto:"
                    Leer nuevaCantidad
					
                    // Agregar el nuevo producto al stock
                    stock <- stock + 1 // Se suma 1 producto (num) a la variable stock
                    // Se le asigna a nombreP[en la posición del Stock (num)] el nuevo nombre
					nombreProducto[stock] <- nuevoNombre
					// Se le asigna a cantP[en la posición del Stock (num)] la nueva cantidad
                    cantidadProducto[stock] <- nuevaCantidad
					
					Escribir " "
                    Escribir "Producto agregado!"
                Sino
					Escribir " "
                    Escribir "No se pueden agregar más productos al stock."
                FinSi
				
				Escribir " "
				Escribir "    8. Volver al Menú principal"
				Leer volver
            Caso 3:
                // Modificar producto
                Si stock = 0 Entonces
					Escribir " "	
                    Escribir "No hay productos en el stock para modificar."
                Sino
					Escribir "Stock de productos"
                    Para i <- 1 Hasta stock Hacer
                        Escribir "Item: ", i // posición 1
                        Escribir "Nombre: ", nombreProducto[i] // nombre en posición 1
                        Escribir "Cantidad: ", cantidadProducto[i] // cantidad en posición 1
						Escribir " "
					FinPara
					
					Escribir " "
					Escribir "Ingrese el número del producto que desea modificar:"
                    Leer i
					
                    Si i >= 1 Y i <= stock Entonces 
                        Escribir "Ingrese el nuevo nombre del producto:"
                        Leer nuevoNombre
                        Escribir "Ingrese la nueva cantidad del producto:"
                        Leer nuevaCantidad
						
                        // Actualizar los datos del producto seleccionado
                        nombreProducto[i] <- nuevoNombre
                        cantidadProducto[i] <- nuevaCantidad
						
						Escribir " "
                        Escribir "Producto modificado exitosamente."
                    Sino
						Escribir " "
                        Escribir "Número de producto no válido."
                    FinSi
				FinSi
				
				Escribir " "	
				Escribir "    8. Volver al Menú principal"
				Leer volver
            Caso 4:
                // Eliminar producto
                Si stock = 0 Entonces
					Escribir " "
                    Escribir "No hay productos para eliminar."
                Sino
					Escribir "Stock de productos"
                    Para i <- 1 Hasta stock Hacer
                        Escribir "Item: ", i // posición 1
                        Escribir "Nombre: ", nombreProducto[i] // nombre en posición 1
                        Escribir "Cantidad: ", cantidadProducto[i] // cantidad en posición 1
						Escribir " "
					FinPara
					
					Escribir " "
                    Escribir "Ingrese el número del producto que desea eliminar:"
                    Leer i
					
                    Si i >= 1 Y i <= stock Entonces
                        // Desplazar los productos un (item) lugar atrás
                        Para x <- i Hasta stock - 1 Hacer
                            nombreProducto[x] <- nombreProducto[x + 1]
                            cantidadProducto[x] <- cantidadProducto[x + 1]
                        Fin Para
						
                        // Reducir la cantidad de productos
                        stock <- stock - 1
						
						Escribir " "
                        Escribir "Producto eliminado."
                    Sino
						Escribir " "
                        Escribir "Número de producto no válido."
                    FinSi
                FinSi
				
				Escribir " "	
				Escribir "    8. Volver al Menú principal"
				Leer volver
			Caso 5:
				// Ver lista de compras
				Si lista = 0 Entonces
					Escribir " "					
                    Escribir "Aún no hay productos en la Lista."
                Sino
                    Escribir "Productos en Lista de Compras:"
                    Para i <- 1 Hasta lista Hacer
                        Escribir "Item: ", i 
                        Escribir "Nombre: ", nombreProducto[i] 
                        Escribir "Cantidad: ", cantidadProducto[i] 
						Escribir " "
                    Fin Para
                FinSi
				
				Escribir " "
				Escribir "    8. Volver al Menú principal"
				Leer volver
			Caso 6:
				// Agregar producto a la lista
				Si lista < 50 Entonces
                    Escribir "Ingrese el nombre del producto:"
                    Leer nuevoNombre
                    Escribir "Ingrese la cantidad del producto:"
                    Leer nuevaCantidad
					
                    lista <- lista + 1 
					nombreProducto[lista] <- nuevoNombre
                    cantidadProducto[lista] <- nuevaCantidad
					
					Escribir " "
                    Escribir "Producto agregado!"
                Sino
					Escribir " "
                    Escribir "No se pueden agregar más productos al stock."
                FinSi
				
				Escribir " "
				Escribir "    8. Volver al Menú principal"
				Leer volver
			Caso 7:
				// Quitar producto de la lista
				Si lista = 0 Entonces
					Escribir " "
                    Escribir "No hay productos para eliminar."
                Sino
					Escribir "Productos en Lista de Compras"
                    Para i <- 1 Hasta lista Hacer
                        Escribir "Item: ", i
                        Escribir "Nombre: ", nombreProducto[i] 
                        Escribir "Cantidad: ", cantidadProducto[i]
						Escribir " "
					FinPara
					
					Escribir " "
                    Escribir "Ingrese el número del producto que desea eliminar:"
                    Leer i
					
                    Si i >= 1 Y i <= lista Entonces
                        Para x <- i Hasta lista - 1 Hacer
                            nombreProducto[x] <- nombreProducto[x + 1]
                            cantidadProducto[x] <- cantidadProducto[x + 1]
                        Fin Para
						
                        lista <- lista - 1
						
						Escribir " "
                        Escribir "Producto eliminado."
                    Sino
						Escribir " "
                        Escribir "Número de producto no válido."
                    FinSi
                FinSi
				
				Escribir " "	
				Escribir "    8. Volver al Menú principal"
				Leer volver
            Caso 9:
                // Salir del programa
                Escribir "Saliendo del programa."
				Escribir "Gracias por utilizar Grocery Planner"
            Otro:
                Escribir "Opción no válida. Por favor, elija una opción válida."
        Fin Segun
		Hasta Que opcionMenu = 9
FinAlgoritmo
