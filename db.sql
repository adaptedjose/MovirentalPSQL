-- Estructura de base de datos 'Movirental'

-- Agregar llaves condicionales: 
-- Llaves unique: IDs
-- Llaves not null: Nombres
-- Llaves check: Valores no negativos

create database movirental;

-- drop database movirental;

create table cliente(
	idCliente int primary key unique,
	nombreCliente varchar(100) not null,
	contactoCliente varchar(100),
	direccionCliente varchar(100),
	alquileresCliente int
);

-- Creación ENUM para categoría de películas
create type categoriaPelicula as enum('Acción', 'Comedia', 'Drama', 'Romance', 'Ficción');

create table categoria(
	idCategoria int primary key unique,
	nombreCategoria categoriaPelicula not null
);

-- Creación ENUM para categoría de películas
create type estadoPelicula as enum('Disponible', 'Alquilada');


create table pelicula(
	idPelicula int primary key unique,
	tituloPelicula varchar(100) not null,
	generoPelicula varchar(100),
	directorPelicula varchar(100),
	anioPelicula varchar(10), --añoPelicula en diagrama ER
	disponibilidadPelicula estadoPelicula,
	alquilerPelicula int check (alquilerPelicula > 5000)
);

create table categoriaPelicula(
	idCategoria int unique,
	idPelicula int unique,
	primary key(idCategoria, idPelicula),
	foreign key (idCategoria) references categoria(idCategoria),
	foreign key (idPelicula) references pelicula(idPelicula)
);

create table alquiler(
	idAlquiler int primary key unique,
	idCliente int unique,
	idPelicula int, unique
	fechaPrestamo date,
	fechaDevolucion date,
	costoTotalAlquiler int check (costoTotalAlquiler > 0),
	foreign key (idCliente) references cliente(idCliente),
	foreign key (idPelicula) references pelicula(idPelicula)
);

create table sucursal(
	idSucursal int primary key unique,
	nombreSucursal varchar(100) not null,
	ubicacionSucursal varchar(100),
);

create table clienteSucursal(
	idCliente int unique,
	idSucursal int unique,
	primary key(idCliente, idSucursal),
	foreign key(idCliente) references cliente(idCliente),
	foreign key(idSucursal) references sucursal(idSucursal)
);

create table pago(
	idPago int primary key unique,
	fechaPago date,
	montoPago int check (montoPago > 0),
	idCliente int unique,
	foreign key(idCliente) references cliente(idCliente)
); 

create table inventario(
	idInventario int primary key unique,
	ingresosTotalesSucursal int check (ingresosTotalesSucursal > 0),
	idAlquiler int unique,
	foreign key(idAlquiler) references alquiler(idAlquiler)
);

create table inventarioSucursal(
	idInventario int unique,
	idSucursal int unique,
	primary key(idInventario, idSucursal),
	foreign key(idInventario) references inventario(idInventario),
	foreign key(idSucursal) references sucursal(idSucursal)
);
