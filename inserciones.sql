-- Inserciones de base de datos 'Movirental'

-- Inserciones clientes 
insert into cliente (idCliente, nombreCliente, contactoCliente, direccionCliente, alquileresCliente) values (1, "Arnulfo Gutierrez", "3015004908", "Calle 25 #12-90", 4),
(2, "Manuel Acevedo", "3163551471", "Diagonal 25 #12-90", 5),
(3, "Alejandra Gómez", "3114560989", "Carrera 25 #12-90", 1),
(4, "Juan Martínez", "3015104908", "Calle 27 #11-67", 10),
(5, "Darío Jimenez", "3014004909", "Carrera 27 #11-67", 6),
(6, "Aldair Gutierrez", "3105004908", "Diagonal 27 #11-67", 5),
(7, "Teófilo Gutierrez", "3115004908", "Calle 28 #90-90", 4),
(8, "Andrés Martinez", "3015004910", "Carrera 28 #90-90", 3),
(9, "Gabriela Manrique", "3015004911", "Diagonal 28 #90-90", 2),
(10, "Arnulfo García", "3015004912", "Calle 45 #12-90", 1); 

-- Inserciones categorias
insert into categoria(idCategoria, nombreCategoria) values (1, "Acción"),
(2, "Comedia"),
(3, "Drama"),
(4, "Romance"),
(5, "Infantil");

-- Inserciones peliculas
insert into pelicula(idPelicula, tituloPelicula, generoPelicula, directorPelicula, anioPelicula, dispnibilidadPelicula, alquilerPelicula) values 
(1, "Matrix", "Acción", "Juanito Alimaña", "1999", "Disponible", 5000),
(2, "Matrix 2" , "Acción", "Juanito Alimaña", "2004", "Alquilada", 10000),
(3, "Matrix 3", "Acción", "Juanito Alimaña", "2010", "Disponible", 15000),
(4, "Toy Story", "Infantil", "Wooody Allen", "1999", "Alquilada", 5000),
(5, "Toy Story 2", "Infantil", "Wooody Allen", "2004", "Disponible", 5000),
(6, "Toy Story 3 ", "Infantil", "Wooody Allen", "2010", "Alquilada", 10000),
(7, "Toy Story 4", "Infantil", "Wooody Allen", "2015", "Disponible", 15000),
(8, "Son como niños", "Comedia", "Robin Williams", "1989", "Alquilada", 5000),
(9, "Son como niños 2", "Comedia", "Robin Williams", "1999", "Disponible", 5000),
(10, "Son como niños 3", "Comedia", "Robin Williams", "2009", "Alquilada", 10000),
(11, "Titanic", "Drama", "Sofía Vergara", "1979", "Alquilada", 5000),
(12, "Titanic", "Drama", "Sofía Vergara", "1989", "Disponible", 10000),
(13, "Titanic", "Drama", "Sofía Vergara", "1999", "Alquilada", 15000),
(14, "Destino Final", "Acción", "Antonio Morales", "1999", "Disponible", 5000),
(15, "Destino Final 2", "Acción", "Antonio Morales", "2003", "Alquilada", 15000);

-- Inserciones alquiler
insert into alquiler(idAlquiler, idCliente, idPelicula, fechaPrestamo, fechaDevolucion,costoTotalAlquiler) values
(1, 1, 1, '2025-05-21', '2025-05-23', 5000),
(2, 2, 2, '2025-05-20', '2025-05-22', 10000),
(3, 3, 3, '2025-05-19', '2025-05-21', 15000),
(4, 4, 4, '2025-05-18', '2025-05-20', 5000),
(5, 5, 5, '2025-05-17', '2025-05-19', 5000),
(6, 6, 6, '2025-05-16', '2025-05-18', 10000),
(7, 7, 7, '2025-05-15', '2025-05-17', 15000),
(8, 8, 8, '2025-05-14', '2025-05-16', 5000),
(9, 9, 9, '2025-05-13', '2025-05-15', 5000),
(10, 10, 10, '2025-05-12', '2025-05-14', 10000);
 
-- Inserciones sucursales
insert into sucursal(idSucursal, nombreSucursal, ubicacionSucursal) values
(1, "MovirentalBucaramanga", "Bucaramanga"),
(2, "MovirentalBogotá", "Bogotá"),
(3, "MovirentalMedellín", "Medellín"),
(4, "MovirentalCali", "Cali"),
(5, "MovirentalBarranquilla", "Barranquilla");

-- Inserciones inventarios
insert into inventario(idInventario, ingresosTotalesSucursal, idAlquiler) values
(1, 1000000, 1),
(2, 1000000, 2),
(3, 1000000, 3),
(4, 1000000, 4),
(5, 1000000, 5);











