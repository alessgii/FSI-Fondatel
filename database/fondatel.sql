-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2026 at 03:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fondatel`
--

-- --------------------------------------------------------

--
-- Table structure for table `alimentos`
--

CREATE TABLE `alimentos` (
  `idalimentos` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` float NOT NULL,
  `foto` longblob NOT NULL,
  `categoria` varchar(45) NOT NULL COMMENT 'entrada, plato principal, postre, bebida',
  `estado` varchar(45) NOT NULL COMMENT 'disponible, agotado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `alimentos`
--

INSERT INTO `alimentos` (`idalimentos`, `nombre`, `descripcion`, `precio`, `foto`, `categoria`, `estado`) VALUES
(1, 'Rollos primavera', 'Rollos fritos rellenos de col, zanahoria y brotes de soya', 65, '', 'entrada', 'disponible'),
(2, 'Wontons fritos', 'Pastelitos fritos rellenos de cerdo con salsa agridulce', 70, '', 'entrada', 'disponible'),
(3, 'Dumplings al vapor', 'Empanadillas al vapor rellenas de cerdo y cebollín', 85, '', 'entrada', 'disponible'),
(4, 'Har Gow', 'Dim sum de camarón en masa translúcida al vapor', 95, '', 'entrada', 'disponible'),
(5, 'Siu Mai', 'Dim sum de cerdo y camarón al vapor', 95, '', 'entrada', 'disponible'),
(6, 'Sopa agripicante', 'Sopa con tofu, hongos y huevo, sabor agripicante', 75, '', 'entrada', 'disponible'),
(7, 'Sopa wonton', 'Caldo de pollo con wontons rellenos de cerdo', 80, '', 'entrada', 'disponible'),
(8, 'Sopa de huevo', 'Caldo de pollo con huevo batido y cebollín', 60, '', 'entrada', 'disponible'),
(9, 'Bao de cerdo', 'Pan suave al vapor relleno de cerdo estilo char siu', 70, '', 'entrada', 'disponible'),
(10, 'Ensalada de pepino', 'Pepino marinado con ajo, vinagre de arroz y aceite de sésamo', 55, '', 'entrada', 'disponible'),
(11, 'Costillitas de cerdo', 'Costillas de cerdo glaseadas con salsa hoisin', 120, '', 'entrada', 'disponible'),
(12, 'Guotie', 'Empanadillas selladas a la plancha rellenas de cerdo y col', 85, '', 'entrada', 'disponible'),
(13, 'Pollo agridulce', 'Pollo empanizado con salsa agridulce, piña y pimiento', 135, '', 'plato principal', 'agotado'),
(14, 'Pollo kung pao', 'Pollo salteado con cacahuate, chile seco y pimiento', 140, '', 'plato principal', 'disponible'),
(15, 'Pollo a la naranja', 'Pollo empanizado con salsa de naranja', 140, '', 'plato principal', 'disponible'),
(16, 'Pollo General Tso', 'Pollo crujiente en salsa dulce y ligeramente picante', 145, '', 'plato principal', 'disponible'),
(17, 'Res con brócoli', 'Tiras de res salteadas con brócoli en salsa de soya', 155, '', 'plato principal', 'disponible'),
(18, 'Res mongoliana', 'Res salteada con cebolla en salsa de soya y jengibre', 160, '', 'plato principal', 'disponible'),
(19, 'Cerdo agridulce', 'Cerdo empanizado con salsa agridulce', 135, '', 'plato principal', 'disponible'),
(20, 'Chow mein de pollo', 'Fideos salteados con pollo y verduras', 125, '', 'plato principal', 'disponible'),
(21, 'Chow mein vegetariano', 'Fideos salteados con verduras mixtas', 110, '', 'plato principal', 'disponible'),
(22, 'Arroz frito especial', 'Arroz frito con pollo, cerdo, camarón y huevo', 130, '', 'plato principal', 'disponible'),
(23, 'Arroz frito con camarón', 'Arroz frito con camarón, huevo y chícharos', 135, '', 'plato principal', 'disponible'),
(24, 'Chop suey', 'Verduras salteadas con pollo en salsa ligera', 120, '', 'plato principal', 'disponible'),
(25, 'Camarones con verduras', 'Camarones salteados con verduras mixtas', 175, '', 'plato principal', 'disponible'),
(26, 'Camarones agridulces', 'Camarones empanizados con salsa agridulce', 180, '', 'plato principal', 'disponible'),
(27, 'Pato pekinés', 'Pato asado con piel crujiente, servido con crepas y salsa hoisin', 320, '', 'plato principal', 'disponible'),
(28, 'Mapo tofu', 'Tofu en salsa picante de chile y pasta de frijol', 115, '', 'plato principal', 'disponible'),
(29, 'Tofu con verduras', 'Tofu salteado con verduras en salsa de soya', 105, '', 'plato principal', 'disponible'),
(30, 'Cerdo char siu', 'Cerdo asado cantonés con glaseado dulce', 150, '', 'plato principal', 'disponible'),
(31, 'Lo mein de res', 'Fideos de huevo salteados con res y verduras', 140, '', 'plato principal', 'disponible'),
(32, 'Pollo al limón', 'Pollo empanizado con salsa de limón', 135, '', 'plato principal', 'agotado'),
(33, 'Res con pimientos', 'Res salteada con pimiento morrón y cebolla', 150, '', 'plato principal', 'disponible'),
(34, 'Pollo con almendras', 'Pollo salteado con almendras y verduras', 140, '', 'plato principal', 'disponible'),
(35, 'Pescado agridulce', 'Filete de pescado empanizado con salsa agridulce', 165, '', 'plato principal', 'disponible'),
(36, 'Fideos estilo Singapur', 'Fideos de arroz con curry, camarón, cerdo y verduras', 150, '', 'plato principal', 'disponible'),
(37, 'Cerdo Sichuan', 'Cerdo salteado con chile y pimienta de Sichuan', 145, '', 'plato principal', 'disponible'),
(38, 'Pollo con verduras', 'Pollo salteado con brócoli, zanahoria y hongos', 130, '', 'plato principal', 'disponible'),
(39, 'Galletas de la fortuna', 'Galletas crujientes con mensaje (3 piezas)', 35, '', 'postre', 'disponible'),
(40, 'Bolitas de sésamo', 'Bolitas de arroz glutinoso fritas rellenas de pasta de frijol', 60, '', 'postre', 'disponible'),
(41, 'Plátano caramelizado', 'Plátano frito cubierto con caramelo', 65, '', 'postre', 'agotado'),
(42, 'Helado frito', 'Helado empanizado y frito con miel', 75, '', 'postre', 'disponible'),
(43, 'Pastel de luna', 'Pastel tradicional relleno de pasta de loto', 70, '', 'postre', 'disponible'),
(44, 'Natilla de mango', 'Postre frío de mango', 65, '', 'postre', 'disponible'),
(45, 'Té verde', 'Taza de té verde caliente', 35, '', 'bebida', 'disponible'),
(46, 'Té de jazmín', 'Taza de té de jazmín caliente', 35, '', 'bebida', 'disponible'),
(47, 'Té helado de limón', 'Té negro frío con limón', 45, '', 'bebida', 'disponible'),
(48, 'Refresco', 'Refresco embotellado', 35, '', 'bebida', 'disponible'),
(49, 'Agua mineral', 'Agua mineral embotellada', 30, '', 'bebida', 'disponible'),
(50, 'Té de crisantemo', 'Taza de té de crisantemo caliente', 40, '', 'bebida', 'disponible');

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `codigoc` varchar(20) NOT NULL,
  `nombrec` varchar(100) NOT NULL,
  `rfc` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`codigoc`, `nombrec`, `rfc`) VALUES
('C001', 'Ana Torres Salazar', NULL),
('C002', 'Ricardo Martínez Rojas', NULL),
('C003', 'Mariana Castillo Salazar', NULL),
('C004', 'Gabriela Ortiz Salazar', NULL),
('C005', 'Andrea Reyes Navarro', NULL),
('C006', 'Fernando Sánchez Mendoza', NULL),
('C007', 'Mariana López Guerrero', NULL),
('C008', 'Sofía Martínez Vega', NULL),
('C009', 'José Reyes Silva', NULL),
('C010', 'Miguel Vázquez Ibarra', NULL),
('C011', 'Patricia Díaz Campos', NULL),
('C012', 'Andrea Cruz Guerrero', NULL),
('C013', 'Andrea Torres Guerrero', NULL),
('C014', 'Daniela Gómez Ibarra', NULL),
('C015', 'Sofía Jiménez Medina', NULL),
('C016', 'Roberto Ortiz Ibarra', NULL),
('C017', 'José Díaz Silva', NULL),
('C018', 'Fernando Morales Guerrero', NULL),
('C019', 'Alejandro Ortiz Salazar', NULL),
('C020', 'Valeria Martínez Campos', NULL),
('C021', 'Ricardo Castillo Vega', NULL),
('C022', 'Alejandro Cruz Ibarra', NULL),
('C023', 'Gabriela Ortiz Vega', NULL),
('C024', 'Ricardo Cruz Mendoza', NULL),
('C025', 'Eduardo Sánchez Medina', NULL),
('C026', 'María Cruz Guerrero', NULL),
('C027', 'Diego Castillo Campos', NULL),
('C028', 'Valeria González Vega', NULL),
('C029', 'Laura Martínez Vega', NULL),
('C030', 'Fernanda Reyes Salazar', NULL),
('C031', 'Carlos Gómez Campos', NULL),
('C032', 'Fernanda Flores Salazar', NULL),
('C033', 'Roberto Cruz Vega', NULL),
('C034', 'Alejandro Morales Rojas', NULL),
('C035', 'Sofía Ramírez Mendoza', NULL),
('C036', 'María González Navarro', NULL),
('C037', 'Fernando Cruz Vega', NULL),
('C038', 'Patricia Rodríguez Ibarra', NULL),
('C039', 'Diego Reyes Vega', NULL),
('C040', 'Ricardo Reyes Campos', NULL),
('C041', 'Daniela Hernández Ibarra', NULL),
('C042', 'Jorge Jiménez Guerrero', NULL),
('C043', 'Fernando Cruz Ibarra', NULL),
('C044', 'Fernando Pérez Campos', NULL),
('C045', 'Andrea Reyes Guerrero', NULL),
('C046', 'Roberto Ramírez Vega', NULL),
('C047', 'Patricia Martínez Rojas', NULL),
('C048', 'Andrea Morales Medina', NULL),
('C049', 'Fernando García Guerrero', NULL),
('C050', 'José Jiménez Navarro', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `empleados`
--

CREATE TABLE `empleados` (
  `codigo` varchar(20) NOT NULL,
  `nombree` varchar(100) NOT NULL,
  `puesto` varchar(45) NOT NULL COMMENT 'cocinero, mesero, cajero',
  `turno` varchar(45) NOT NULL COMMENT 'matutino, vespertino, nocturno',
  `nom_usr` varchar(20) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `estadoe` varchar(45) NOT NULL COMMENT 'activo, inactivo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `empleados`
--

INSERT INTO `empleados` (`codigo`, `nombree`, `puesto`, `turno`, `nom_usr`, `nip`, `estadoe`) VALUES
('C01', 'Wei Menshong Gutierrez', 'cajero', 'completo', 'C01', '1234', 'activo'),
('G01', 'Lao Tzu', 'gerente', 'completo', 'G01', '1234', 'activo'),
('K01', 'Wen Li Zhang Hernández', 'cocinero', 'matutino', 'K01', '1234', 'activo'),
('K02', 'Carlos Eduardo Ibarra Núñez', 'cocinero', 'matutino', 'K02', '1234', 'activo'),
('K03', 'Mei Lin Chen Ramírez', 'cocinero', 'vespertino', 'K03', '1234', 'activo'),
('K04', 'Héctor Manuel Aguilar Beltrán', 'cocinero', 'nocturno', 'K04', '1234', 'activo'),
('M01', 'Luis Fernando Ortega Ruiz', 'mesero', 'matutino', 'M01', '1234', 'activo'),
('M02', 'Ana Karen Villalobos Soto', 'mesero', 'matutino', 'M02', '1234', 'activo'),
('M03', 'Jorge Armando Salinas Peña', 'mesero', 'vespertino', 'M03', '1234', 'activo'),
('M04', 'Daniela Guadalupe Mora Estrada', 'mesero', 'vespertino', 'M04', '1234', 'activo'),
('M05', 'Ricardo Iván Cervantes León', 'mesero', 'nocturno', 'M05', '1234', 'activo'),
('M06', 'Paola Itzel Delgado Rojas', 'mesero', 'nocturno', 'M06', '1234', 'activo');

-- --------------------------------------------------------

--
-- Table structure for table `mesas`
--

CREATE TABLE `mesas` (
  `numero` int(11) NOT NULL,
  `estadom` varchar(45) NOT NULL COMMENT 'ocupada, libre, reservada',
  `capacidad` int(11) NOT NULL COMMENT 'numero de sillas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `mesas`
--

INSERT INTO `mesas` (`numero`, `estadom`, `capacidad`) VALUES
(1, 'reservada', 2),
(2, 'libre', 2),
(3, 'libre', 2),
(4, 'libre', 4),
(5, 'libre', 4),
(6, 'ocupada', 4),
(7, 'libre', 4),
(8, 'libre', 6),
(9, 'libre', 6),
(10, 'libre', 8),
(11, 'libre', 8),
(12, 'libre', 10);

-- --------------------------------------------------------

--
-- Table structure for table `ordenes`
--

CREATE TABLE `ordenes` (
  `folio` int(11) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `observaciones` varchar(255) NOT NULL DEFAULT 'N/A',
  `estadoo` varchar(45) NOT NULL COMMENT 'ordenado, preparando, entregado, devuelto, cancelado, pagado',
  `silla` int(11) NOT NULL,
  `clientes_codigoc` varchar(20) NOT NULL,
  `mesas_numero` int(11) NOT NULL,
  `alimentos_idalimentos` int(11) NOT NULL,
  `empleados_codigo_mesero` varchar(20) NOT NULL,
  `empleados_codigo_cocinero` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ordenes`
--

INSERT INTO `ordenes` (`folio`, `fecha_hora`, `observaciones`, `estadoo`, `silla`, `clientes_codigoc`, `mesas_numero`, `alimentos_idalimentos`, `empleados_codigo_mesero`, `empleados_codigo_cocinero`) VALUES
(1, '2026-10-01 08:32:30', 'N/A', 'pagado', 3, 'C014', 11, 45, 'M01', 'K01'),
(2, '2026-10-01 13:20:34', 'Orden cancelada', 'cancelado', 1, 'C036', 7, 10, 'M02', 'K01'),
(3, '2026-10-01 13:32:12', 'N/A', 'pagado', 1, 'C030', 7, 19, 'M02', 'K02'),
(4, '2026-10-01 16:34:30', 'Platillo devuelto por el cliente', 'devuelto', 1, 'C036', 2, 16, 'M04', 'K03'),
(5, '2026-10-01 17:07:06', 'Sin cebolla', 'pagado', 1, 'C043', 11, 38, 'M04', 'K03'),
(6, '2026-10-01 17:14:32', 'Platillo devuelto por el cliente', 'devuelto', 2, 'C030', 2, 24, 'M04', 'K03'),
(7, '2026-10-01 18:12:35', 'N/A', 'pagado', 1, 'C029', 2, 39, 'M03', 'K03'),
(8, '2026-10-02 11:10:39', 'N/A', 'pagado', 8, 'C035', 10, 2, 'M01', 'K02'),
(9, '2026-10-02 14:41:58', 'N/A', 'pagado', 2, 'C035', 2, 18, 'M03', 'K03'),
(10, '2026-10-02 16:42:48', 'Sin picante', 'pagado', 1, 'C022', 2, 49, 'M03', 'K03'),
(11, '2026-10-02 23:00:03', 'Platillo devuelto por el cliente', 'devuelto', 3, 'C046', 4, 31, 'M05', 'K04'),
(12, '2026-10-03 08:26:55', 'N/A', 'pagado', 4, 'C016', 6, 42, 'M01', 'K02'),
(13, '2026-10-03 12:46:24', 'N/A', 'pagado', 2, 'C031', 2, 36, 'M01', 'K02'),
(14, '2026-10-03 13:48:16', 'Orden cancelada', 'cancelado', 1, 'C034', 7, 31, 'M01', 'K02'),
(15, '2026-10-03 18:31:20', 'N/A', 'pagado', 3, 'C028', 9, 40, 'M03', 'K03'),
(16, '2026-10-03 19:19:13', 'Sin cebolla', 'pagado', 2, 'C008', 9, 39, 'M05', 'K04'),
(17, '2026-10-03 21:45:33', 'N/A', 'pagado', 2, 'C008', 9, 7, 'M06', 'K04'),
(18, '2026-10-03 22:41:21', 'Platillo devuelto por el cliente', 'devuelto', 2, 'C004', 4, 18, 'M06', 'K04'),
(19, '2026-10-03 23:49:19', 'Orden cancelada', 'cancelado', 2, 'C011', 2, 3, 'M05', 'K04'),
(20, '2026-10-04 08:53:23', 'Orden cancelada', 'cancelado', 6, 'C003', 9, 24, 'M01', 'K01'),
(21, '2026-10-04 11:02:08', 'Platillo devuelto por el cliente', 'devuelto', 4, 'C004', 4, 20, 'M02', 'K01'),
(22, '2026-10-04 15:53:22', 'N/A', 'pagado', 2, 'C040', 5, 45, 'M03', 'K03'),
(23, '2026-10-04 18:17:37', 'Orden cancelada', 'cancelado', 1, 'C036', 2, 44, 'M03', 'K03'),
(24, '2026-10-04 19:37:54', 'N/A', 'pagado', 3, 'C026', 9, 31, 'M05', 'K04'),
(25, '2026-10-04 21:10:06', 'N/A', 'pagado', 4, 'C029', 7, 47, 'M05', 'K04'),
(26, '2026-10-04 23:29:36', 'N/A', 'pagado', 2, 'C022', 9, 27, 'M05', 'K04'),
(27, '2026-10-05 08:30:51', 'N/A', 'pagado', 2, 'C049', 1, 9, 'M02', 'K01'),
(28, '2026-10-05 09:51:42', 'Orden cancelada', 'cancelado', 2, 'C012', 3, 34, 'M01', 'K02'),
(29, '2026-10-05 11:17:18', 'Sin cebolla', 'pagado', 1, 'C032', 7, 44, 'M01', 'K01'),
(30, '2026-10-05 11:50:16', 'Sin picante', 'pagado', 1, 'C038', 6, 2, 'M02', 'K02'),
(31, '2026-10-05 13:01:56', 'N/A', 'pagado', 3, 'C037', 4, 47, 'M02', 'K01'),
(32, '2026-10-05 15:30:37', 'N/A', 'pagado', 1, 'C048', 1, 12, 'M03', 'K03'),
(33, '2026-10-05 17:05:26', 'N/A', 'pagado', 2, 'C033', 8, 46, 'M04', 'K03'),
(34, '2026-10-06 08:42:45', 'N/A', 'pagado', 2, 'C017', 1, 2, 'M02', 'K01'),
(35, '2026-10-06 09:41:34', 'Orden cancelada', 'cancelado', 1, 'C029', 7, 40, 'M02', 'K02'),
(36, '2026-10-06 13:44:03', 'Sin picante', 'pagado', 4, 'C025', 6, 19, 'M01', 'K01'),
(37, '2026-10-06 15:14:42', 'N/A', 'pagado', 3, 'C040', 5, 28, 'M04', 'K03'),
(38, '2026-10-06 16:29:31', 'Orden cancelada', 'cancelado', 1, 'C040', 3, 38, 'M04', 'K03'),
(39, '2026-10-06 18:33:30', 'Sin picante', 'pagado', 5, 'C049', 12, 27, 'M03', 'K03'),
(40, '2026-10-07 08:06:09', 'N/A', 'pagado', 1, 'C039', 2, 23, 'M01', 'K02'),
(41, '2026-10-07 15:07:39', 'N/A', 'pagado', 4, 'C023', 5, 30, 'M04', 'K03'),
(42, '2026-10-07 20:00:06', 'N/A', 'pagado', 1, 'C028', 1, 46, 'M05', 'K04'),
(43, '2026-10-08 12:06:20', 'Platillo devuelto por el cliente', 'devuelto', 8, 'C044', 11, 4, 'M01', 'K02'),
(44, '2026-10-08 14:27:32', 'N/A', 'pagado', 3, 'C027', 9, 16, 'M04', 'K03'),
(45, '2026-10-09 15:10:20', 'N/A', 'pagado', 4, 'C001', 6, 28, 'M04', 'K03'),
(46, '2026-10-09 18:55:12', 'N/A', 'pagado', 2, 'C025', 6, 24, 'M04', 'K03'),
(47, '2026-10-09 21:02:11', 'N/A', 'pagado', 2, 'C031', 3, 11, 'M05', 'K04'),
(48, '2026-10-10 13:08:17', 'Sin cebolla', 'pagado', 1, 'C008', 9, 15, 'M02', 'K01'),
(49, '2026-10-10 17:34:18', 'N/A', 'pagado', 1, 'C021', 6, 21, 'M04', 'K03'),
(50, '2026-10-10 18:18:46', 'Orden cancelada', 'cancelado', 2, 'C030', 6, 44, 'M03', 'K03'),
(51, '2026-10-10 22:59:35', 'N/A', 'pagado', 4, 'C012', 4, 8, 'M06', 'K04'),
(52, '2026-10-11 11:20:17', 'Sin cebolla', 'pagado', 4, 'C007', 8, 38, 'M01', 'K02'),
(53, '2026-10-11 12:45:32', 'N/A', 'pagado', 8, 'C005', 11, 30, 'M02', 'K01'),
(54, '2026-10-11 13:16:16', 'Sin cebolla', 'pagado', 1, 'C027', 6, 12, 'M02', 'K01'),
(55, '2026-10-11 14:38:29', 'N/A', 'pagado', 5, 'C007', 9, 24, 'M04', 'K03'),
(56, '2026-10-11 15:29:13', 'Orden cancelada', 'cancelado', 5, 'C017', 10, 29, 'M03', 'K03'),
(57, '2026-10-11 16:19:02', 'Poco picante', 'pagado', 2, 'C006', 2, 39, 'M03', 'K03'),
(58, '2026-10-11 17:28:20', 'N/A', 'pagado', 5, 'C039', 10, 36, 'M04', 'K03'),
(59, '2026-10-11 21:21:06', 'N/A', 'pagado', 5, 'C030', 9, 20, 'M05', 'K04'),
(60, '2026-10-11 22:38:14', 'N/A', 'pagado', 10, 'C023', 12, 36, 'M06', 'K04'),
(61, '2026-10-11 23:16:31', 'N/A', 'pagado', 4, 'C013', 10, 42, 'M06', 'K04'),
(62, '2026-10-11 23:44:46', 'N/A', 'pagado', 2, 'C026', 11, 45, 'M06', 'K04'),
(63, '2026-10-12 10:04:49', 'Sin cebolla', 'pagado', 2, 'C028', 11, 47, 'M02', 'K02'),
(64, '2026-10-12 10:29:43', 'Sin picante', 'pagado', 1, 'C025', 6, 24, 'M02', 'K02'),
(65, '2026-10-12 10:35:44', 'N/A', 'pagado', 4, 'C002', 7, 49, 'M02', 'K02'),
(66, '2026-10-12 12:24:12', 'N/A', 'pagado', 4, 'C020', 6, 49, 'M02', 'K01'),
(67, '2026-10-12 16:08:45', 'N/A', 'pagado', 1, 'C004', 1, 49, 'M04', 'K03'),
(68, '2026-10-12 16:53:48', 'N/A', 'pagado', 1, 'C007', 10, 28, 'M04', 'K03'),
(69, '2026-10-12 19:26:53', 'Sin picante', 'pagado', 1, 'C005', 2, 40, 'M05', 'K04'),
(70, '2026-10-12 19:29:40', 'N/A', 'pagado', 6, 'C050', 9, 20, 'M06', 'K04'),
(71, '2026-10-12 19:59:49', 'Sin cebolla', 'pagado', 2, 'C027', 8, 21, 'M06', 'K04'),
(72, '2026-10-12 23:58:31', 'N/A', 'pagado', 2, 'C046', 9, 4, 'M05', 'K04'),
(73, '2026-10-13 08:35:45', 'Platillo devuelto por el cliente', 'devuelto', 4, 'C029', 7, 44, 'M01', 'K02'),
(74, '2026-10-13 10:03:53', 'N/A', 'pagado', 1, 'C018', 2, 31, 'M01', 'K01'),
(75, '2026-10-13 12:33:51', 'N/A', 'pagado', 5, 'C007', 12, 14, 'M01', 'K01'),
(76, '2026-10-13 13:00:17', 'Poco picante', 'pagado', 1, 'C001', 7, 25, 'M02', 'K02'),
(77, '2026-10-13 14:09:38', 'N/A', 'pagado', 3, 'C020', 4, 37, 'M03', 'K03'),
(78, '2026-10-13 17:11:22', 'N/A', 'pagado', 5, 'C009', 8, 11, 'M03', 'K03'),
(79, '2026-10-13 20:15:49', 'N/A', 'pagado', 2, 'C038', 11, 45, 'M05', 'K04'),
(80, '2026-10-13 20:34:33', 'N/A', 'pagado', 2, 'C041', 3, 42, 'M06', 'K04'),
(81, '2026-10-14 11:43:23', 'Sin cebolla', 'pagado', 1, 'C023', 9, 16, 'M01', 'K02'),
(82, '2026-10-14 13:01:22', 'N/A', 'pagado', 2, 'C030', 1, 27, 'M02', 'K02'),
(83, '2026-10-14 14:53:53', 'N/A', 'pagado', 4, 'C021', 5, 20, 'M03', 'K03'),
(84, '2026-10-14 15:49:08', 'Platillo devuelto por el cliente', 'devuelto', 1, 'C005', 12, 20, 'M04', 'K03'),
(85, '2026-10-14 16:20:08', 'Orden cancelada', 'cancelado', 4, 'C035', 11, 1, 'M04', 'K03'),
(86, '2026-10-14 18:20:58', 'N/A', 'pagado', 6, 'C032', 11, 36, 'M03', 'K03'),
(87, '2026-10-14 18:37:57', 'N/A', 'pagado', 4, 'C044', 10, 39, 'M04', 'K03'),
(88, '2026-10-14 21:55:05', 'Poco picante', 'pagado', 2, 'C013', 1, 37, 'M06', 'K04'),
(89, '2026-10-14 23:58:34', 'N/A', 'pagado', 1, 'C049', 9, 2, 'M06', 'K04'),
(90, '2026-10-15 09:59:25', 'Orden cancelada', 'cancelado', 1, 'C031', 1, 10, 'M02', 'K02'),
(91, '2026-10-15 11:33:50', 'Sin cebolla', 'pagado', 6, 'C017', 11, 8, 'M02', 'K02'),
(92, '2026-10-15 12:27:17', 'Sin cebolla', 'pagado', 3, 'C030', 4, 47, 'M01', 'K02'),
(93, '2026-10-15 14:23:17', 'N/A', 'pagado', 4, 'C026', 9, 45, 'M03', 'K03'),
(94, '2026-10-15 15:55:44', 'N/A', 'pagado', 2, 'C028', 5, 20, 'M03', 'K03'),
(95, '2026-10-15 19:45:13', 'N/A', 'pagado', 1, 'C024', 4, 15, 'M06', 'K04'),
(96, '2026-10-15 23:57:50', 'Sin picante', 'pagado', 4, 'C048', 12, 23, 'M06', 'K04'),
(97, '2026-10-16 09:14:43', 'N/A', 'pagado', 1, 'C015', 3, 50, 'M01', 'K01'),
(98, '2026-10-16 11:55:53', 'N/A', 'pagado', 4, 'C018', 8, 50, 'M01', 'K02'),
(99, '2026-10-16 14:23:10', 'N/A', 'pagado', 4, 'C005', 5, 26, 'M04', 'K03'),
(100, '2026-10-16 18:00:02', 'N/A', 'pagado', 2, 'C004', 2, 36, 'M04', 'K03'),
(101, '2026-10-17 12:10:42', 'Orden cancelada', 'cancelado', 6, 'C015', 10, 18, 'M01', 'K01'),
(102, '2026-10-17 12:59:47', 'Sin picante', 'pagado', 2, 'C018', 3, 31, 'M02', 'K01'),
(103, '2026-10-17 14:27:39', 'N/A', 'pagado', 4, 'C026', 5, 6, 'M03', 'K03'),
(104, '2026-10-17 14:50:56', 'Sin picante', 'pagado', 1, 'C001', 12, 5, 'M04', 'K03'),
(105, '2026-10-17 16:39:40', 'Platillo devuelto por el cliente', 'devuelto', 2, 'C041', 1, 9, 'M03', 'K03'),
(106, '2026-10-17 16:52:06', 'N/A', 'pagado', 1, 'C004', 1, 14, 'M03', 'K03'),
(107, '2026-10-17 18:03:42', 'N/A', 'pagado', 1, 'C003', 4, 14, 'M03', 'K03'),
(108, '2026-10-17 19:38:41', 'N/A', 'pagado', 4, 'C034', 9, 48, 'M05', 'K04'),
(109, '2026-10-17 20:19:13', 'Platillo devuelto por el cliente', 'devuelto', 1, 'C007', 7, 21, 'M05', 'K04'),
(110, '2026-10-18 09:41:55', 'N/A', 'pagado', 1, 'C016', 2, 35, 'M02', 'K01'),
(111, '2026-10-18 10:39:50', 'N/A', 'pagado', 1, 'C001', 5, 1, 'M01', 'K01'),
(112, '2026-10-18 12:38:39', 'Poco picante', 'pagado', 1, 'C032', 8, 7, 'M02', 'K01'),
(113, '2026-10-18 12:46:09', 'Poco picante', 'pagado', 4, 'C006', 10, 9, 'M02', 'K02'),
(114, '2026-10-18 14:54:54', 'Sin picante', 'pagado', 2, 'C050', 12, 42, 'M04', 'K03'),
(115, '2026-10-18 15:58:30', 'N/A', 'pagado', 4, 'C012', 6, 40, 'M04', 'K03'),
(116, '2026-10-18 16:08:21', 'Sin picante', 'pagado', 1, 'C013', 9, 14, 'M03', 'K03'),
(117, '2026-10-18 16:14:21', 'Poco picante', 'pagado', 6, 'C033', 8, 28, 'M04', 'K03'),
(118, '2026-10-18 19:08:29', 'Sin picante', 'pagado', 1, 'C039', 2, 42, 'M05', 'K04'),
(119, '2026-10-18 20:56:16', 'Platillo devuelto por el cliente', 'devuelto', 2, 'C031', 1, 23, 'M05', 'K04'),
(120, '2026-10-18 21:46:27', 'N/A', 'pagado', 1, 'C015', 6, 23, 'M06', 'K04'),
(121, '2026-10-19 09:52:26', 'Sin cebolla', 'pagado', 2, 'C021', 9, 40, 'M01', 'K02'),
(122, '2026-10-19 12:22:26', 'N/A', 'pagado', 2, 'C008', 12, 31, 'M02', 'K01'),
(123, '2026-10-19 14:36:18', 'N/A', 'pagado', 7, 'C010', 12, 36, 'M03', 'K03'),
(124, '2026-10-19 16:42:35', 'Platillo devuelto por el cliente', 'devuelto', 3, 'C001', 10, 36, 'M03', 'K03'),
(125, '2026-10-19 21:53:49', 'Sin picante', 'pagado', 1, 'C009', 3, 27, 'M05', 'K04'),
(126, '2026-10-19 22:40:25', 'Orden cancelada', 'cancelado', 1, 'C044', 12, 42, 'M05', 'K04'),
(127, '2026-10-20 13:09:37', 'N/A', 'pagado', 2, 'C034', 11, 40, 'M02', 'K01'),
(128, '2026-10-20 13:45:19', 'N/A', 'pagado', 1, 'C035', 6, 4, 'M02', 'K01'),
(129, '2026-10-20 14:01:29', 'N/A', 'pagado', 3, 'C012', 11, 26, 'M03', 'K03'),
(130, '2026-10-20 17:41:07', 'N/A', 'pagado', 4, 'C009', 4, 31, 'M04', 'K03'),
(131, '2026-10-20 23:05:56', 'N/A', 'pagado', 1, 'C038', 3, 27, 'M06', 'K04'),
(132, '2026-10-21 10:53:11', 'N/A', 'pagado', 3, 'C030', 9, 3, 'M01', 'K01'),
(133, '2026-10-21 13:05:19', 'Sin cebolla', 'pagado', 4, 'C045', 9, 40, 'M01', 'K01'),
(134, '2026-10-21 17:01:27', 'N/A', 'pagado', 2, 'C050', 4, 27, 'M04', 'K03'),
(135, '2026-10-21 17:30:39', 'N/A', 'pagado', 3, 'C047', 4, 49, 'M04', 'K03'),
(136, '2026-10-21 18:03:59', 'Sin cebolla', 'pagado', 8, 'C047', 12, 49, 'M03', 'K03'),
(137, '2026-10-21 19:09:00', 'Platillo devuelto por el cliente', 'devuelto', 1, 'C049', 2, 19, 'M06', 'K04'),
(138, '2026-10-21 21:09:31', 'N/A', 'pagado', 2, 'C024', 2, 3, 'M05', 'K04'),
(139, '2026-10-21 23:27:22', 'N/A', 'pagado', 3, 'C025', 6, 5, 'M06', 'K04'),
(140, '2026-10-22 08:08:41', 'Orden cancelada', 'cancelado', 1, 'C012', 1, 24, 'M01', 'K01'),
(141, '2026-10-22 09:48:22', 'N/A', 'pagado', 1, 'C046', 3, 8, 'M01', 'K01'),
(142, '2026-10-22 10:35:25', 'Poco picante', 'pagado', 2, 'C033', 3, 15, 'M01', 'K02'),
(143, '2026-10-22 12:06:01', 'Sin picante', 'pagado', 2, 'C033', 9, 27, 'M02', 'K01'),
(144, '2026-10-22 13:59:08', 'Poco picante', 'pagado', 1, 'C009', 3, 12, 'M01', 'K01'),
(145, '2026-10-22 14:07:39', 'N/A', 'pagado', 6, 'C014', 9, 34, 'M03', 'K03'),
(146, '2026-10-22 16:20:01', 'N/A', 'pagado', 1, 'C011', 5, 20, 'M04', 'K03'),
(147, '2026-10-22 17:12:10', 'N/A', 'pagado', 2, 'C029', 3, 29, 'M04', 'K03'),
(148, '2026-10-22 18:21:22', 'N/A', 'pagado', 2, 'C047', 3, 44, 'M04', 'K03'),
(149, '2026-10-22 18:23:11', 'N/A', 'pagado', 4, 'C040', 5, 16, 'M04', 'K03'),
(150, '2026-10-22 18:23:41', 'N/A', 'pagado', 1, 'C026', 6, 25, 'M04', 'K03'),
(151, '2026-10-22 19:20:49', 'N/A', 'pagado', 2, 'C045', 1, 16, 'M06', 'K04'),
(152, '2026-10-22 22:58:37', 'N/A', 'pagado', 3, 'C031', 11, 31, 'M05', 'K04'),
(153, '2026-10-22 23:58:43', 'N/A', 'pagado', 7, 'C019', 10, 27, 'M05', 'K04'),
(154, '2026-10-23 16:21:48', 'Orden cancelada', 'cancelado', 2, 'C002', 8, 22, 'M04', 'K03'),
(155, '2026-10-23 16:35:48', 'N/A', 'pagado', 2, 'C044', 3, 1, 'M04', 'K03'),
(156, '2026-10-23 17:36:02', 'N/A', 'pagado', 7, 'C027', 10, 50, 'M04', 'K03'),
(157, '2026-10-23 21:56:01', 'N/A', 'pagado', 2, 'C016', 9, 39, 'M06', 'K04'),
(158, '2026-10-23 23:08:35', 'N/A', 'pagado', 2, 'C022', 1, 17, 'M06', 'K04'),
(159, '2026-10-24 08:54:38', 'N/A', 'pagado', 2, 'C002', 1, 2, 'M02', 'K01'),
(160, '2026-10-24 10:24:16', 'N/A', 'pagado', 2, 'C006', 1, 44, 'M01', 'K01'),
(161, '2026-10-24 11:57:01', 'Platillo devuelto por el cliente', 'devuelto', 3, 'C020', 9, 12, 'M02', 'K01'),
(162, '2026-10-24 13:41:40', 'N/A', 'pagado', 2, 'C018', 7, 15, 'M02', 'K01'),
(163, '2026-10-24 14:10:57', 'Sin cebolla', 'pagado', 4, 'C025', 5, 19, 'M03', 'K03'),
(164, '2026-10-24 21:09:57', 'N/A', 'pagado', 2, 'C029', 2, 30, 'M05', 'K04'),
(165, '2026-10-25 11:19:49', 'Poco picante', 'pagado', 6, 'C014', 12, 20, 'M01', 'K01'),
(166, '2026-10-25 13:43:09', 'N/A', 'pagado', 7, 'C042', 10, 24, 'M02', 'K02'),
(167, '2026-10-25 14:30:45', 'Sin picante', 'pagado', 1, 'C014', 10, 11, 'M03', 'K03'),
(168, '2026-10-25 14:50:29', 'N/A', 'pagado', 7, 'C038', 12, 11, 'M03', 'K03'),
(169, '2026-10-25 15:40:07', 'Sin cebolla', 'pagado', 2, 'C008', 4, 12, 'M03', 'K03'),
(170, '2026-10-25 21:18:29', 'Poco picante', 'pagado', 1, 'C043', 11, 9, 'M06', 'K04'),
(171, '2026-10-26 12:14:01', 'N/A', 'pagado', 2, 'C022', 1, 26, 'M02', 'K01'),
(172, '2026-10-26 13:32:06', 'N/A', 'pagado', 4, 'C045', 4, 27, 'M02', 'K02'),
(173, '2026-10-26 13:46:33', 'Sin picante', 'pagado', 1, 'C047', 7, 18, 'M01', 'K02'),
(174, '2026-10-26 16:49:55', 'Platillo devuelto por el cliente', 'devuelto', 1, 'C019', 2, 25, 'M04', 'K03'),
(175, '2026-10-26 17:32:26', 'Sin cebolla', 'pagado', 7, 'C041', 10, 37, 'M04', 'K03'),
(176, '2026-10-26 20:13:09', 'N/A', 'pagado', 1, 'C018', 1, 49, 'M06', 'K04'),
(177, '2026-10-26 23:54:56', 'Orden cancelada', 'cancelado', 1, 'C001', 9, 8, 'M06', 'K04'),
(178, '2026-10-27 08:40:15', 'N/A', 'pagado', 4, 'C049', 6, 47, 'M01', 'K01'),
(179, '2026-10-27 09:28:55', 'Orden cancelada', 'cancelado', 6, 'C005', 9, 42, 'M01', 'K01'),
(180, '2026-10-27 10:18:59', 'N/A', 'pagado', 1, 'C037', 1, 49, 'M02', 'K02'),
(181, '2026-10-27 16:21:40', 'Orden cancelada', 'cancelado', 4, 'C005', 5, 25, 'M04', 'K03'),
(182, '2026-10-27 19:03:47', 'Orden cancelada', 'cancelado', 2, 'C040', 6, 44, 'M05', 'K04'),
(183, '2026-10-27 21:50:02', 'N/A', 'pagado', 2, 'C048', 3, 3, 'M05', 'K04'),
(184, '2026-10-27 22:16:09', 'Poco picante', 'pagado', 5, 'C048', 9, 4, 'M05', 'K04'),
(185, '2026-10-28 09:17:50', 'N/A', 'pagado', 2, 'C032', 2, 44, 'M02', 'K02'),
(186, '2026-10-28 10:27:42', 'N/A', 'pagado', 8, 'C007', 11, 28, 'M01', 'K01'),
(187, '2026-10-28 10:46:46', 'N/A', 'pagado', 3, 'C047', 8, 35, 'M02', 'K02'),
(188, '2026-10-28 12:32:13', 'Sin picante', 'pagado', 1, 'C024', 10, 25, 'M01', 'K02'),
(189, '2026-10-28 13:22:35', 'N/A', 'pagado', 2, 'C018', 3, 22, 'M02', 'K02'),
(190, '2026-10-28 13:24:17', 'Platillo devuelto por el cliente', 'devuelto', 2, 'C017', 7, 2, 'M02', 'K01'),
(191, '2026-10-28 14:14:00', 'Sin picante', 'pagado', 4, 'C002', 6, 28, 'M04', 'K03'),
(192, '2026-10-28 14:27:22', 'N/A', 'pagado', 1, 'C043', 7, 15, 'M04', 'K03'),
(193, '2026-10-28 16:24:18', 'N/A', 'pagado', 2, 'C002', 2, 34, 'M03', 'K03'),
(194, '2026-10-28 20:40:06', 'N/A', 'pagado', 2, 'C036', 7, 36, 'M06', 'K04'),
(195, '2026-10-29 08:22:52', 'N/A', 'pagado', 3, 'C028', 5, 5, 'M02', 'K01'),
(196, '2026-10-29 09:06:15', 'N/A', 'pagado', 3, 'C015', 7, 7, 'M01', 'K02'),
(197, '2026-10-29 09:41:31', 'Sin cebolla', 'pagado', 6, 'C047', 11, 27, 'M02', 'K01'),
(198, '2026-10-29 13:12:51', 'N/A', 'pagado', 4, 'C008', 6, 34, 'M01', 'K01'),
(199, '2026-10-29 14:47:12', 'N/A', 'pagado', 3, 'C010', 7, 1, 'M03', 'K03'),
(200, '2026-10-29 15:35:53', 'N/A', 'entregado', 2, 'C022', 6, 38, 'M03', 'K03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alimentos`
--
ALTER TABLE `alimentos`
  ADD PRIMARY KEY (`idalimentos`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`codigoc`);

--
-- Indexes for table `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`codigo`);

--
-- Indexes for table `mesas`
--
ALTER TABLE `mesas`
  ADD PRIMARY KEY (`numero`);

--
-- Indexes for table `ordenes`
--
ALTER TABLE `ordenes`
  ADD PRIMARY KEY (`folio`),
  ADD KEY `fk_ordenes_clientes_idx` (`clientes_codigoc`),
  ADD KEY `fk_ordenes_mesas1_idx` (`mesas_numero`),
  ADD KEY `fk_ordenes_alimentos1_idx` (`alimentos_idalimentos`),
  ADD KEY `fk_ordenes_empleados1_idx` (`empleados_codigo_mesero`),
  ADD KEY `fk_ordenes_empleados2_idx` (`empleados_codigo_cocinero`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alimentos`
--
ALTER TABLE `alimentos`
  MODIFY `idalimentos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `ordenes`
--
ALTER TABLE `ordenes`
  MODIFY `folio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ordenes`
--
ALTER TABLE `ordenes`
  ADD CONSTRAINT `fk_ordenes_alimentos1` FOREIGN KEY (`alimentos_idalimentos`) REFERENCES `alimentos` (`idalimentos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ordenes_clientes` FOREIGN KEY (`clientes_codigoc`) REFERENCES `clientes` (`codigoc`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ordenes_empleados1` FOREIGN KEY (`empleados_codigo_mesero`) REFERENCES `empleados` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ordenes_empleados2` FOREIGN KEY (`empleados_codigo_cocinero`) REFERENCES `empleados` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ordenes_mesas1` FOREIGN KEY (`mesas_numero`) REFERENCES `mesas` (`numero`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
