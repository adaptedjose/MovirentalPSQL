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
(1, "Matrix", "Acción", "Juanito Alimaña", "1999", "Disponible", "5000"),
(2, "Matrix 2" , "Acción", "Juanito Alimaña", "2004", "Alquilada", "10000"),
(3, "Matrix 3", "Acción", "Juanito Alimaña", "2010", "Disponible", "15000"),
(4, "Toy Story", "Infantil", "Wooody Allen", "1999", "Alquilada", "5000"),
(5, "Toy Story 2", "Infantil", "Wooody Allen", "2004", "Disponible", "5000"),
(6, "Toy Story 3 ", "Infantil", "Wooody Allen", "2010", "Alquilada", "10000"),
(7, "Toy Story 4", "Infantil", "Wooody Allen", "2015", "Disponible", "15000"),
(8, "Son como niños", "Comedia", "Robin Williams", "1989", "Alquilada", "5000"),
(9, "Son como niños 2", "Comedia", "Robin Williams", "1999", "Disponible", "5000"),
(10, "Son como niños 3", "Comedia", "Robin Williams", "2009", "Alquilada", "10000"),
(11, "Titanic", "Drama", "Sofía Vergara", "1979", "Alquilada", "5000"),
(12, "Titanic", "Drama", "Sofía Vergara", "1989", "Disponible", "10000"),
(13, "Titanic", "Drama", "Sofía Vergara", "1999", "Alquilada", "15000"),
(14, "Destino Final", "Acción", "Antonio Morales", "1999", "Disponible", "5000"),
(15, "Destino Final 2", "Acción", "Antonio Morales", "2003", "Alquilada", "15000");

-- Inserciones 
