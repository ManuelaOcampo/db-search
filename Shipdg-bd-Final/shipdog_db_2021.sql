-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-04-2021 a las 22:14:21
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `shipdog_db_2021`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_Cliente` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Apellidos` varchar(40) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Telefono` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_Cliente`, `Nombre`, `Apellidos`, `Direccion`, `Telefono`) VALUES
(1, 'Tatiana', 'Campos Rojas', 'Carrera10A n 56-70', '3135929711'),
(100, 'Manuela ', 'Ocampo Giraldo', 'Carrera 1A calle 9A 05 Villapilar', '8875467'),
(101, 'Mario', 'Marin Gonzales', 'Calle 56 n 78 13 ', '8857932'),
(102, 'Camilo', 'Hernandez perez', 'Carrera 58 n 16 10', '8823456'),
(103, 'Tomas', 'fernandez giraldo', 'Av 10 N 16 51', '8899234'),
(104, 'Felipe', 'Toro ramirez', 'Calle 54 n 78 10', '9982345'),
(106, 'Mariela', 'Martinez gonzales', 'Carrera 1A calle 98-76', '3122457886'),
(107, 'cami', 'Serna salazar', 'Calle 54 n 78-90', '3105677823'),
(108, 'Martin', 'Cardenas Fernandez', 'Av 20 n 45-67', '3145879087'),
(113, 'cami', 'Serna salazar', 'Carrera 1A calle 98-76', '3105677823'),
(1138, 'cami', 'Cardenas Fernandez', 'Av 20 n 45-67', '3122457886'),
(1139, 'Mariela', 'Serna salazar', 'Carrera 1A calle 98-76', '3105677823'),
(1140, 'Maria antonia', 'Ocampo Ocampo', 'Carrera 67b- 81 92', '300789456'),
(1141, 'Juan jose', 'Ramirez Hoyos', 'Chipre casa 2', '3123457698'),
(1144, 'Marllely', 'Henao Alvarez', 'Calle 51C n 13B 25', '3148662438'),
(1146, 'Milena', 'Cardenas Rojas', 'Calle 10 n 58 15', '3104506798'),
(1149, 'Mariela', 'Cardenas Fernandez', 'Calle 54 n 78-90', '3157860986'),
(1150, 'Mallerly', 'ocampo henao', 'Av 5 Calle 10 n 14 10', '3148667531'),
(1151, 'Mariana ', 'Marin Fernandez', 'Campohermoso', '3145678976'),
(1153, 'Paula Andrea', 'Giraldo Orozco', 'Carrera 1A calle 9A 05 Villapilar', '3208920119'),
(1154, 'Any', 'Orozco', 'Villapilar Carrera 1 Calle 9A 05 blq 15 apto 201', '3154367890');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comidas`
--

CREATE TABLE `comidas` (
  `id_Comida` int(11) NOT NULL,
  `Nombre_Producto` varchar(20) NOT NULL,
  `Ingredientes` varchar(100) NOT NULL,
  `Salsas` varchar(100) NOT NULL,
  `Adiciones` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comidas`
--

INSERT INTO `comidas` (`id_Comida`, `Nombre_Producto`, `Ingredientes`, `Salsas`, `Adiciones`) VALUES
(1, 'Perro Caliente', 'Pan,Salchicha zenu,Ensalada, cebolla, ripio', 'Mayonesa, bbq, Tomate, rosada, Mostaza, piña', 'Queso'),
(2, 'Hamburguesa', 'Pan, carne,Ensalada,cebolla,ripio', 'Mayonesa, bbq, Tomate, rosada, Mostaza, piña', 'Queso, tomate, lechuga'),
(3, 'Arepa burguer', 'Arepa, carne,Ensalada,cebolla,ripio', 'Mayonesa, bbq, Tomate, rosada, Mostaza, piña', 'Queso'),
(4, 'Salchipapa', 'Salchicha Zenú, papas a la francesa', 'Mayonesa, bbq, Tomate, rosada, Mostaza, piña', 'Queso'),
(5, 'Hamburguesa ranchera', 'Pan, Carne, Salchicha ranchera, ensalada, cebolla, ripio', 'Mayonesa, bbq, Tomate, rosada, Mostaza, piña', 'Queso, tomate, lechuga');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `domicilios`
--

CREATE TABLE `domicilios` (
  `id_Domi` int(11) NOT NULL,
  `N_Contacto` decimal(10,0) NOT NULL,
  `Lugar` varchar(100) NOT NULL,
  `TiempoEstimado` varchar(40) NOT NULL,
  `Pedido` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `domicilios`
--

INSERT INTO `domicilios` (`id_Domi`, `N_Contacto`, `Lugar`, `TiempoEstimado`, `Pedido`) VALUES
(1, '3154679040', 'Cable, Calle51C n 67 82', '20 min', '2 Perros calientes con adición de queso y todas las salsas'),
(2, '3124567808', 'Villapilar, Calle 51D N 13 45', '15 min', '2 hamburguesas sencillas con poquitas salsas'),
(3, '3157488640', 'Puertas del sol, Calle 51D n 56 17 casa 10', '30 min', '2 hamburguesas rancheras, 2 perros calientes con todo '),
(4, '3124567808', 'Asuncion, carrera 56 n 78 19', '25 min', '2 perros calientes, 1 hamburguesa todo con adición de queso y todas las salsas'),
(5, '3124567808', 'Chipre, Calle 91C N 54 31', '15 min', '2 Arepa burguer con todo, 1 salchipapa con todo'),
(9, '3122456789', 'Manzana 2 casa 40', '30 min', '2 hamburguesas con todo'),
(10, '3122456789', 'villapilar casa 32', '30 min', '2 perros calientes'),
(11, '3135929711', 'villapilar paisajes de sierra alta', '20 min', '2 hamburguesas con todo'),
(12, '3122456789', 'villapilar casa 32', '20 min', '1 Perro 1 hamburguesa con todo'),
(15, '3135929711', 'Villahermosa', '15 min', 'perro, hamburguesa, 1 arepa'),
(16, '3148664356', 'Villa hermosa Carre 10 n 54 c 10', '30 min', '2 perros calientes'),
(17, '3145678097', 'campohermoso calle 10 b n 56 7', '15 min', '1 Perro 1 hamburguesa con todo'),
(18, '3208976578', 'Carrera 1A calle 9A 05 Villapilar', '10 min', '2 perros calientes'),
(19, '3154367890', 'Villapilar Carrera 1 Calle 9A 05 blq 15 apto 201', '30 min', '2 hamburguesas con todo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE `ubicacion` (
  `Id` int(11) NOT NULL,
  `Nombre barrio` varchar(40) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Especificaciones` varchar(100) NOT NULL,
  `Horario` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ubicacion`
--

INSERT INTO `ubicacion` (`Id`, `Nombre barrio`, `Direccion`, `Especificaciones`, `Horario`) VALUES
(10, 'La enea', 'Calle 51C n 43A 21 ', 'Casa roja en la esquina', '4pm a 10 pm'),
(20, 'La estrella', 'Calle 42B N 51C 13', 'Casa amarilla Segundo piso', '3:30 pm a 9pm'),
(30, 'Cable', 'Carrera 71D n 43 56', 'Dentro del Centro comercial cable plaza local 101', '4:30pm a 9:30 pm'),
(40, 'Alta suiza', 'Calle 101B n 54D 102', 'Por el parque de la alta suiza', '3:30 pm a 9pm'),
(50, 'Villahermosa', 'Calle 43D n 21 12', 'En la casa naranja, primer piso', '4:30pm a 9:30 pm');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_Cliente`);

--
-- Indices de la tabla `comidas`
--
ALTER TABLE `comidas`
  ADD PRIMARY KEY (`id_Comida`);

--
-- Indices de la tabla `domicilios`
--
ALTER TABLE `domicilios`
  ADD PRIMARY KEY (`id_Domi`);

--
-- Indices de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_Cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1155;

--
-- AUTO_INCREMENT de la tabla `comidas`
--
ALTER TABLE `comidas`
  MODIFY `id_Comida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `domicilios`
--
ALTER TABLE `domicilios`
  MODIFY `id_Domi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
