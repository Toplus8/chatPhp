-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-11-2022 a las 20:00:20
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `chat`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `id_msg` int(11) NOT NULL,
  `id_room` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `msg` varchar(200) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mensajes`
--

INSERT INTO `mensajes` (`id_msg`, `id_room`, `id_user`, `msg`, `date`) VALUES
(1, 1, 2, 'hola', '2022-11-23 20:47:18'),
(2, 1, 2, 'adios', '2022-11-23 20:47:18'),
(3, 1, 2, 'jelou', '2022-11-23 20:47:18'),
(4, 1, 2, 'jajajjajajajaja\r\n', '2022-11-23 20:47:18'),
(5, 1, 2, 'QATAR\r\n', '2022-11-23 20:47:18'),
(6, 1, 2, 'hola', '2022-11-23 20:47:18'),
(7, 1, 2, 'e', '2022-11-23 20:47:18'),
(8, 1, 2, '1', '2022-11-23 20:47:18'),
(9, 1, 2, '1', '2022-11-23 20:47:18'),
(10, 1, 2, '1', '2022-11-23 20:47:18'),
(11, 2, 2, 'a', '2022-11-23 20:47:18'),
(12, 2, 2, 'que tal', '2022-11-23 20:47:18'),
(13, 2, 2, 'hola que tal', '2022-11-23 20:47:18'),
(14, 2, 2, 'hola que t', '2022-11-23 20:47:18'),
(15, 2, 2, '122', '2022-11-23 20:47:18'),
(16, 1, 2, 'regregrereg', '2022-11-23 20:47:18'),
(17, 1, 2, 'erger', '2022-11-23 20:47:18'),
(18, 1, 2, 'rhre', '2022-11-23 20:47:18'),
(19, 1, 2, 'reh', '2022-11-23 20:47:18'),
(20, 1, 2, 'herh', '2022-11-23 20:47:18'),
(21, 1, 2, 'erh', '2022-11-23 20:47:18'),
(22, 1, 2, 'erh', '2022-11-23 20:47:18'),
(23, 1, 2, 'erh', '2022-11-23 20:47:18'),
(24, 1, 2, 'reh', '2022-11-23 20:47:18'),
(25, 1, 2, 'h', '2022-11-23 20:47:18'),
(26, 1, 2, '', '2022-11-23 20:47:18'),
(27, 1, 2, 'h', '2022-11-23 20:47:18'),
(28, 1, 2, 'h', '2022-11-23 20:47:18'),
(29, 1, 2, 'h', '2022-11-23 20:47:18'),
(30, 1, 2, 'h', '2022-11-23 20:47:18'),
(31, 1, 2, 'h', '2022-11-23 20:47:18'),
(32, 1, 2, 'h', '2022-11-23 20:47:18'),
(33, 1, 2, 'h', '2022-11-23 20:47:18'),
(34, 1, 2, 'h', '2022-11-23 20:47:18'),
(35, 1, 2, 'h', '2022-11-23 20:47:18'),
(36, 1, 2, 'h', '2022-11-23 20:47:18'),
(37, 1, 2, 'h', '2022-11-23 20:47:18'),
(38, 1, 2, 'h', '2022-11-23 20:47:18'),
(39, 1, 2, '', '2022-11-23 20:47:18'),
(40, 1, 2, '', '2022-11-23 20:47:18'),
(41, 1, 2, 'gfhf', '2022-11-23 20:47:18'),
(42, 1, 2, 'gfhf', '2022-11-23 20:47:18'),
(43, 1, 2, 'gfhf', '2022-11-23 20:47:18'),
(44, 1, 2, 'gfhf', '2022-11-23 20:47:18'),
(45, 1, 2, 'gfhf', '2022-11-23 20:47:18'),
(46, 1, 2, 'gfhf', '2022-11-23 20:47:18'),
(47, 1, 2, 'gfhf', '2022-11-23 20:47:18'),
(48, 1, 2, 'ada', '2022-11-23 20:47:18'),
(49, 1, 2, '', '2022-11-23 20:47:18'),
(50, 1, 2, 'asfaf', '2022-11-23 20:47:18'),
(51, 1, 2, 'asfaf', '2022-11-23 20:47:18'),
(52, 1, 2, 'asfaf', '2022-11-23 20:47:18'),
(53, 1, 2, 'asfaf', '2022-11-23 20:47:18'),
(54, 2, 1, 'gejhjkerlh', '2022-11-23 20:47:18'),
(55, 2, 1, 'gejhjkerlh', '2022-11-23 20:47:18'),
(56, 2, 1, 'aa', '2022-11-23 20:47:18'),
(57, 1, 1, '', '2022-11-23 20:47:18'),
(58, 1, 1, 'aa', '2022-11-23 20:47:18'),
(59, 1, 1, 'aa', '2022-11-23 20:47:18'),
(60, 1, 1, 'aa', '2022-11-23 20:47:18'),
(61, 1, 1, 'aa', '2022-11-23 20:47:18'),
(62, 1, 1, 'aa', '2022-11-23 20:47:18'),
(63, 1, 1, 'aa', '2022-11-23 20:47:18'),
(64, 1, 1, 'aa', '2022-11-23 20:47:18'),
(65, 1, 1, 'aa', '2022-11-23 20:47:18'),
(66, 1, 1, 'aa', '2022-11-23 20:47:18'),
(67, 1, 1, 'aa', '2022-11-23 20:47:18'),
(68, 1, 1, 'aa', '2022-11-23 20:47:18'),
(69, 1, 1, 'aa', '2022-11-23 20:47:18'),
(70, 1, 1, 'aa', '2022-11-23 20:47:18'),
(71, 1, 1, 'aa', '2022-11-23 20:47:18'),
(72, 1, 1, 'sgpijjgsdñk', '2022-11-23 20:47:18'),
(73, 2, 1, 'Holoa mque tal', '2022-11-23 20:47:18'),
(75, 1, 3, 'hola\r\n', '2022-11-23 20:47:18'),
(76, 1, 2, 'fdgdfgdf', '2022-11-23 20:47:18'),
(77, 2, 2, 'sdgg', '2022-11-23 20:47:18'),
(78, 2, 2, 'sfsadfgs', '2022-11-23 20:47:18'),
(79, 2, 2, '11', '2022-11-23 20:47:18'),
(80, 2, 2, '11', '2022-11-23 20:47:18'),
(81, 14, 2, 'Hola', '2022-11-23 20:47:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salas`
--

CREATE TABLE `salas` (
  `id_room` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `id_receiver` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `salas`
--

INSERT INTO `salas` (`id_room`, `id_user`, `status`, `id_receiver`) VALUES
(1, 1, 1, 0),
(2, 1, 1, 0),
(8, 2, 1, 0),
(14, 2, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_user` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `role` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `lastActionAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_user`, `name`, `pass`, `role`, `status`, `lastActionAt`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 1, 0, '2022-11-28 19:49:15'),
(2, 'jota', '202cb962ac59075b964b07152d234b70', 0, 1, '2022-11-28 19:57:34'),
(3, 'robert', '202cb962ac59075b964b07152d234b70', 0, 0, '2022-11-28 19:53:06');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`id_msg`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_room` (`id_room`);

--
-- Indices de la tabla `salas`
--
ALTER TABLE `salas`
  ADD PRIMARY KEY (`id_room`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `salas_ibfk_2` (`id_receiver`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `id_msg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT de la tabla `salas`
--
ALTER TABLE `salas`
  MODIFY `id_room` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD CONSTRAINT `mensajes_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `usuarios` (`id_user`),
  ADD CONSTRAINT `mensajes_ibfk_2` FOREIGN KEY (`id_room`) REFERENCES `salas` (`id_room`);

--
-- Filtros para la tabla `salas`
--
ALTER TABLE `salas`
  ADD CONSTRAINT `salas_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `usuarios` (`id_user`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
