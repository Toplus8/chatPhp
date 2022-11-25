-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2022 a las 14:52:25
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

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
-- Estructura de tabla para la tabla `duo`
--

CREATE TABLE `duo` (
  `id_duo` int(11) NOT NULL,
  `id_user1` int(11) NOT NULL,
  `id_user2` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(53, 1, 2, 'asfaf', '2022-11-23 20:47:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salas`
--

CREATE TABLE `salas` (
  `id_room` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `salas`
--

INSERT INTO `salas` (`id_room`, `id_user`, `status`) VALUES
(1, 1, 1),
(2, 1, 1);

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
(1, 'admin', '202cb962ac59075b964b07152d234b70', 1, 1, '2022-11-25 03:26:56'),
(2, 'jota', '202cb962ac59075b964b07152d234b70', 0, 0, '2022-11-25 03:27:12');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `duo`
--
ALTER TABLE `duo`
  ADD PRIMARY KEY (`id_duo`),
  ADD KEY `id_user1` (`id_user1`),
  ADD KEY `id_user2` (`id_user2`);

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
  ADD KEY `id_user` (`id_user`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `duo`
--
ALTER TABLE `duo`
  MODIFY `id_duo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `id_msg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `salas`
--
ALTER TABLE `salas`
  MODIFY `id_room` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `duo`
--
ALTER TABLE `duo`
  ADD CONSTRAINT `duo_ibfk_1` FOREIGN KEY (`id_user1`) REFERENCES `usuarios` (`id_user`),
  ADD CONSTRAINT `duo_ibfk_2` FOREIGN KEY (`id_user2`) REFERENCES `usuarios` (`id_user`);

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
  ADD CONSTRAINT `salas_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `usuarios` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
