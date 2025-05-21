-- Consultas de la base de datos 'Movirental'

-- 1. Calcular los ingresos generados por cada sucursal en el último mes.

select ingresosTotalesSucursal FROM inventario;

-- 2. Consultar el cliente con el mayor monto total de pagos realizados.

SELECT idCLiente, nombreCliente, alquileresCliente FROM cliente WHERE alquileresCliente > 0 LIMIT 1;

-- 3. Obtener el porcentaje de películas alquiladas por género.

SELECT idPelicula, tituloPelicula FROM pelicula ORDER BY avg(generoPelicula/sum(idPelicula)*100);

-- 4. Identificar las sucursales con mayor número de transacciones de alquiler.

SELECT idAlquiler from inventario WHERE idAlquiler > 0 LEFT JOIN sucursal LIMIT 1;

-- 5. Listar todas las películas disponibles para alquiler, incluyendo detalles como título, género y precio.

select * from pelicula where estadoPelicula = "Disponible";

-- 6. Obtener el historial de alquileres de un cliente específico, incluyendo las fechas y los títulos de las películas.

SELECT c.idCliente, c.nombreCliente, c.alquileresCliente FROM cliente c JOIN alquiler a ORDER BY a.fechaPrestamo;

-- 7. Consultar las películas con precios de alquiler superiores a un valor específicado.

SELECT idPelicula, nombrePelicula FROM pelicula WHERE alquilerPelicula > 5000;

-- 8. Listar las películas lanzadas en los últimos 5 años que están disponibles para alquiler.

SELECT --