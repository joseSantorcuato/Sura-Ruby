README

Conexión Ruby a base de datos trabajamos sobre una base de datos postgresql y mysql.
La base se llama datos_personales (postgresql) y rubysql (mysql).
Para poder ejecutar estos archivos debes tener instalados ambos motores y tener las bases de datos.
Debes instalar ambas gemas mysql2 y pg.

LA BASE DE DATOS POSTGRESQL TIENE LA SIGUIENTE ESTRUCTURA:

CREATE TABLE datos (nombre varchar(80), apellido_p varchar(80), apellido_m varchar(80),edad int,fecha_ingreso date);




LA BASE DE DATOS MYSQL TIENE LA SIGUIENTE ESTRUCTURA:

--

CREATE TABLE `registros` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
--
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id`);


--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
