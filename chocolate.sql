-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 25, 2015 at 08:46 PM
-- Server version: 5.1.73-cll
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `insumosl_insumos`
--

-- --------------------------------------------------------

--
-- Table structure for table `almacen`
--

CREATE TABLE IF NOT EXISTS `almacen` (
  `oid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `nomb` varchar(255) NOT NULL COMMENT 'Nombre Oficina, Bodega, Sucursal',
  `ubic` varchar(255) NOT NULL COMMENT 'Ubicación',
  `obse` varchar(255) NOT NULL COMMENT 'Observaciones',
  PRIMARY KEY (`oid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Ubicación del deposito' AUTO_INCREMENT=15 ;

--
-- Dumping data for table `almacen`
--

INSERT INTO `almacen` (`oid`, `nomb`, `ubic`, `obse`) VALUES
(5, 'Principal', 'Ureña', 'Ureña'),
(6, 'La Campiña', 'C.C La Campiña', 'C.C La Campiña'),
(7, 'La Campiña', 'C.C La Campiña', 'C.C La Campiña'),
(8, 'Prueba 1', 'Ejido Carlos Sanchez', 'Ejido Carlos Sanchez'),
(9, 'Prueba 1', 'Ejido Carlos Sanchez', 'Ejido Carlos Sanchez'),
(10, 'Prueba 1', 'Ejido Carlos Sanchez', 'Ejido Carlos Sanchez'),
(11, 'Prueba 1', 'Ejido Carlos Sanchez', 'Ejido Carlos Sanchez'),
(12, 'Prueba 1', 'Ejido Carlos Sanchez', 'Ejido Carlos Sanchez'),
(13, 'Prueba 1', 'Ejido Carlos Sanchez', 'Ejido Carlos Sanchez'),
(14, 'mauricio', 'merida', 'merida');

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `oid` tinyint(1) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `nomb` varchar(255) NOT NULL COMMENT 'Nombre',
  PRIMARY KEY (`oid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Catégoria de Productos' AUTO_INCREMENT=38 ;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`oid`, `nomb`) VALUES
(37, 'Alcohol'),
(9, 'Acceso Intravenoso'),
(10, 'Adhesivos'),
(11, 'Agujas'),
(12, 'Anestesia'),
(15, 'Apositos'),
(17, 'Cateteres'),
(18, 'Cardiología'),
(19, 'Gasas y Compresas'),
(20, 'Guantes'),
(21, 'Jeringas'),
(22, 'Laboratorio'),
(23, 'Lencería Descartable'),
(24, 'Odontologia'),
(25, 'Ortopedia'),
(26, 'Productos de papel'),
(27, 'Radiologia'),
(28, 'Set de Infusión'),
(29, 'Sondas'),
(30, 'Suturas'),
(31, 'Vendas'),
(32, 'Yesos'),
(34, 'Recolectores');

-- --------------------------------------------------------

--
-- Table structure for table `deposito`
--

CREATE TABLE IF NOT EXISTS `deposito` (
  `oid` int(10) NOT NULL AUTO_INCREMENT,
  `oidu` int(10) NOT NULL,
  `oido` int(10) NOT NULL,
  `banco` varchar(50) NOT NULL,
  `deposito` varchar(32) NOT NULL,
  `obser` text NOT NULL,
  `estatus` tinyint(4) NOT NULL COMMENT '0:creado,1:aceptado,2:rechazado',
  `fecha` date NOT NULL,
  `creado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `deposito`
--

INSERT INTO `deposito` (`oid`, `oidu`, `oido`, `banco`, `deposito`, `obser`, `estatus`, `fecha`, `creado`) VALUES
(1, 6, 1, 'bicentenario', '6546546465', 'probando Deposito', 1, '2014-06-11', '2014-06-11 19:27:28'),
(2, 7, 12, 'banesco', '014789842', '', 1, '2014-06-25', '2014-06-25 14:05:25'),
(3, 7, 13, 'banesco', '01782616', 'pagado', 1, '2014-06-25', '2014-06-25 15:16:57'),
(4, 7, 14, 'banesco', '1478752', 'fr', 1, '2014-06-26', '2014-06-26 18:12:39'),
(5, 6, 16, 'venezuela', '123345554', 'prueba de mauricio barrios', 2, '2014-07-29', '2014-07-30 02:55:36'),
(6, 6, 3, 'banescio', '123456', 'hola mundo', 1, '2014-08-07', '2014-08-07 15:35:52'),
(7, 6, 17, 'venezuela', '1500', 'pago de venezuela', 1, '2014-08-10', '2014-08-11 00:58:55'),
(8, 6, 6, 'venezula', '12', '', 1, '2014-08-10', '2014-08-11 01:10:52'),
(9, 18, 22, 'venezuela', '99000', 'pagado por transferencia', 1, '2014-09-24', '2014-09-25 10:54:52'),
(10, 19, 27, 'banesco', '1232432432', 'pago de servi', 2, '2015-03-10', '2015-03-04 02:16:50'),
(11, 19, 28, 'banesco', '02021020', 'hola mundo', 2, '2015-04-13', '2015-04-06 21:28:46'),
(12, 33, 32, 'banesco', '123', 'prueba1', 2, '2015-04-06', '2015-04-08 04:27:34'),
(13, 33, 33, 'venezuela', '1234', 'prueba2', 2, '2015-04-07', '2015-04-08 04:27:52');

-- --------------------------------------------------------

--
-- Table structure for table `existencia`
--

CREATE TABLE IF NOT EXISTS `existencia` (
  `oid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador en Almacen',
  `marc` varchar(16) NOT NULL COMMENT 'Marca',
  `prov` varchar(16) NOT NULL COMMENT 'Proveedores',
  `mode` varchar(255) NOT NULL COMMENT 'Modelo',
  `dscr` varchar(255) NOT NULL COMMENT 'Descripcion',
  `oidp` int(11) NOT NULL COMMENT 'Identificador del Producto',
  `seri` varchar(64) NOT NULL COMMENT 'Serial del Producto',
  `lote` varchar(16) NOT NULL COMMENT 'Lote del Producto',
  `cuni` decimal(10,2) NOT NULL COMMENT 'Costo por unidad',
  `cpro` decimal(10,2) NOT NULL COMMENT 'Costo de Produccion',
  `cdet` decimal(10,2) NOT NULL COMMENT 'Costo al Detal',
  `cmay` decimal(10,2) NOT NULL COMMENT 'Costo al Mayor',
  `unid` int(2) NOT NULL COMMENT 'Unidad de Medida Para la venta',
  `cant` int(11) NOT NULL COMMENT 'Cantidad de Elementos',
  `fact` varchar(32) NOT NULL COMMENT 'Factura',
  `esta` tinyint(1) NOT NULL COMMENT '0: Disponible 1: Comprometido 2: Vendido',
  `ubic` varchar(255) NOT NULL COMMENT 'Ubicación en Almacen',
  `fech` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Fecha de Modificacion',
  PRIMARY KEY (`oid`),
  UNIQUE KEY `seri` (`seri`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Mercancía activa e inactiva' AUTO_INCREMENT=99 ;

--
-- Dumping data for table `existencia`
--

INSERT INTO `existencia` (`oid`, `marc`, `prov`, `mode`, `dscr`, `oidp`, `seri`, `lote`, `cuni`, `cpro`, `cdet`, `cmay`, `unid`, `cant`, `fact`, `esta`, `ubic`, `fech`) VALUES
(97, '', 'implamed', '', 'Gasa 100 Yardas', 76, 'Gasa100y01', '', '0.00', '990.00', '1150.00', '1300.00', 1, 1, '', 0, '14', '0000-00-00 00:00:00'),
(98, '', 'implamed', '', 'Gasa 100 Yardas', 76, 'Gasa100y02', '', '0.00', '990.00', '1150.00', '1300.00', 1, 1, '', 0, '14', '0000-00-00 00:00:00'),
(95, '', 'implamed', '', 'Alcohol Isopropilico  x Galon', 75, 'alcohol11', '', '0.00', '300.00', '350.00', '390.00', 1, 1, '', 1, '14', '2015-04-17 02:52:26'),
(96, '', 'implamed', '', 'Alcohol Isopropilico  x Galon', 75, 'alcohol12', '', '0.00', '300.00', '350.00', '390.00', 1, 1, '', 1, '14', '2015-04-17 03:04:58'),
(93, '', 'implamed', '', 'Alcohol Isopropilico  x Galon', 75, 'alcohol09', '', '0.00', '300.00', '350.00', '390.00', 1, 1, '', 0, '14', '0000-00-00 00:00:00'),
(94, '', 'implamed', '', 'Alcohol Isopropilico  x Galon', 75, 'alcohol10', '', '0.00', '300.00', '350.00', '390.00', 1, 1, '', 0, '14', '0000-00-00 00:00:00'),
(91, '', 'implamed', '', 'Alcohol Isopropilico  x Galon', 75, 'alcohol07', '', '0.00', '300.00', '350.00', '390.00', 1, 1, '', 0, '14', '0000-00-00 00:00:00'),
(92, '', 'implamed', '', 'Alcohol Isopropilico  x Galon', 75, 'alcohol08', '', '0.00', '300.00', '350.00', '390.00', 1, 1, '', 0, '14', '0000-00-00 00:00:00'),
(89, '', 'implamed', '', 'Alcohol Isopropilico  x Galon', 75, 'alcohol05', '', '0.00', '300.00', '350.00', '390.00', 1, 1, '', 0, '14', '0000-00-00 00:00:00'),
(90, '', 'implamed', '', 'Alcohol Isopropilico  x Galon', 75, 'alcohol06', '', '0.00', '300.00', '350.00', '390.00', 1, 1, '', 0, '14', '0000-00-00 00:00:00'),
(88, '', 'implamed', '', 'Alcohol Isopropilico  x Galon', 75, 'alcohol04', '', '0.00', '300.00', '350.00', '390.00', 1, 1, '', 0, '14', '0000-00-00 00:00:00'),
(86, '', 'implamed', '', 'Alcohol Isopropilico  x Galon', 75, 'alcohol02', '', '0.00', '300.00', '350.00', '390.00', 1, 1, '', 0, '14', '0000-00-00 00:00:00'),
(87, '', 'implamed', '', 'Alcohol Isopropilico  x Galon', 75, 'alcohol03', '', '0.00', '300.00', '350.00', '390.00', 1, 1, '', 0, '14', '0000-00-00 00:00:00'),
(84, '', '', '', '', 73, 'Papel para ECG 50MM', '', '0.00', '35.00', '40.00', '45.00', 1, 1, '', 1, '14', '2015-04-08 12:17:00'),
(85, '', 'implamed', '', 'Alcohol Isopropilico  x Galon', 75, 'alcohol01', '', '0.00', '300.00', '350.00', '390.00', 1, 1, '', 0, '14', '0000-00-00 00:00:00'),
(83, 'N/A', 'Implamed Paragua', 'Unico', 'Recolector de Heces Azul', 69, '', '010101', '0.00', '300.00', '450.00', '500.00', 2, 1000, 'N/A', 1, '14', '2015-04-09 03:37:35');

-- --------------------------------------------------------

--
-- Table structure for table `galeria`
--

CREATE TABLE IF NOT EXISTS `galeria` (
  `oid` int(10) NOT NULL AUTO_INCREMENT,
  `oidp` int(10) NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `creado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`oid`),
  KEY `oip` (`oidp`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `galeria`
--

INSERT INTO `galeria` (`oid`, `oidp`, `imagen`, `creado`) VALUES
(1, 7, '1.png', '2014-05-11 22:27:33'),
(2, 7, '2.png', '2014-05-11 22:27:37'),
(3, 7, 'dark_gothic_wallpapers__34_.jpg', '2014-05-16 19:59:22'),
(4, 4, 'w3.png', '2014-05-19 20:23:13'),
(5, 9, '42.jpg', '2014-05-26 13:21:16'),
(6, 9, '37.jpg', '2014-05-26 13:21:47'),
(8, 10, '48.jpg', '2014-06-26 18:16:25'),
(9, 10, '48.jpg', '2014-06-26 18:16:37'),
(10, 10, '26.jpg', '2014-06-26 18:17:00'),
(11, 10, '41.jpg', '2014-06-26 18:17:42'),
(12, 10, '45.jpg', '2014-06-26 18:18:56'),
(13, 47, 'infusion set with Y-site.jpg', '2014-09-24 02:32:22'),
(14, 47, 'infusion set with Y-site.jpg', '2014-09-24 02:32:29');

-- --------------------------------------------------------

--
-- Table structure for table `inventario`
--

CREATE TABLE IF NOT EXISTS `inventario` (
  `oid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador Inventario',
  `oidp` int(11) NOT NULL COMMENT 'Identificador Producto',
  `disp` int(11) NOT NULL COMMENT 'Cantidad Existente',
  `prec` decimal(10,2) NOT NULL COMMENT 'Precio Unitario',
  `fent` date NOT NULL COMMENT 'Fecha Entrada',
  PRIMARY KEY (`oid`),
  UNIQUE KEY `oidp_3` (`oidp`),
  KEY `oidp` (`oidp`),
  KEY `oidp_2` (`oidp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Registro, balance, descripción, lista, relación' AUTO_INCREMENT=84 ;

--
-- Dumping data for table `inventario`
--

INSERT INTO `inventario` (`oid`, `oidp`, `disp`, `prec`, `fent`) VALUES
(14, 0, 140, '40.00', '2014-05-19'),
(77, 72, 12, '49.00', '2015-04-08'),
(80, 75, 12, '300.00', '2015-04-08'),
(81, 76, 2, '990.00', '2015-04-08'),
(82, 77, 22, '800.00', '2015-04-08'),
(83, 78, 10, '19000.00', '2015-04-11'),
(74, 69, 1000, '300.00', '2015-04-08'),
(78, 73, 30, '35.00', '2015-04-08'),
(67, 62, 15, '5500.00', '2015-02-06'),
(75, 70, 100, '500.00', '2015-04-08'),
(66, 61, 10, '5500.00', '2015-02-06'),
(65, 60, 13, '5500.00', '2015-02-06'),
(70, 65, 100, '110.00', '2015-02-06'),
(69, 64, 5, '2800.00', '2015-02-06'),
(68, 63, 10, '200.00', '2015-02-06'),
(71, 66, 50, '310.00', '2015-02-06'),
(79, 74, 5, '370.00', '2015-04-08'),
(73, 68, 10, '2490.00', '2015-02-07'),
(76, 71, 100, '460.00', '2015-04-08');

-- --------------------------------------------------------

--
-- Table structure for table `lote`
--

CREATE TABLE IF NOT EXISTS `lote` (
  `oid` varchar(16) NOT NULL COMMENT 'Indentificador Lote',
  `obsr` varchar(64) NOT NULL COMMENT 'Observaciones Generales',
  `cant` int(11) NOT NULL COMMENT 'Cantidad Disponible',
  `fent` date NOT NULL COMMENT 'Fecha de Entradas'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Parte, ración, cuota, porción';

--
-- Dumping data for table `lote`
--

INSERT INTO `lote` (`oid`, `obsr`, `cant`, `fent`) VALUES
('10', 'no lo se', 99, '0000-00-00'),
('', '', 1, '0000-00-00'),
('011010', 'Laminas Porta Objeto Mauricio', 100, '0000-00-00'),
('010101', '', 1000, '0000-00-00'),
('', '', 0, '0000-00-00'),
('', '', 100, '0000-00-00'),
('', '', 12, '0000-00-00'),
('', '', 5, '0000-00-00'),
('', '', 22, '0000-00-00'),
('', '', 10, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `marca`
--

CREATE TABLE IF NOT EXISTS `marca` (
  `oid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `nomb` varchar(255) NOT NULL COMMENT 'Nombre',
  PRIMARY KEY (`oid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Signo distintivo de un producto' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `movimiento`
--

CREATE TABLE IF NOT EXISTS `movimiento` (
  `oidi` int(11) NOT NULL COMMENT 'Identificador Inventario',
  `cant` int(11) NOT NULL COMMENT 'Cantidad',
  `prec` decimal(10,0) NOT NULL COMMENT 'Precio Unitario',
  `fsal` date NOT NULL COMMENT 'Fecha Salida'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Desplazamiento, circulación';

-- --------------------------------------------------------

--
-- Table structure for table `orden`
--

CREATE TABLE IF NOT EXISTS `orden` (
  `codi` int(16) NOT NULL COMMENT 'Código Unico',
  `nomb` varchar(256) NOT NULL COMMENT 'Nombre del Pedido',
  `tipo` int(2) NOT NULL COMMENT '0: Pedido, 1: Despacho, 2: Facturación',
  `fech` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Fecha del Evento',
  PRIMARY KEY (`codi`,`tipo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Control de Pedidos';

--
-- Dumping data for table `orden`
--

INSERT INTO `orden` (`codi`, `nomb`, `tipo`, `fech`) VALUES
(0, 'Carrito: Solicitud de Pedido', 0, '2014-03-06 02:45:07'),
(0, 'Compra', 2, '2014-03-06 02:51:46'),
(0, 'Despacho', 1, '2014-03-06 02:51:48'),
(1, 'Carrito: Solicitud de Pedido', 0, '2014-05-14 04:30:00'),
(2, 'Carrito: Solicitud de Pedido', 0, '2014-05-15 04:30:00'),
(3, 'Carrito: Solicitud de Pedido', 0, '2014-05-15 04:30:00'),
(4, 'Carrito: Solicitud de Pedido', 0, '2014-05-15 04:30:00'),
(5, 'Carrito: Solicitud de Pedido', 0, '2014-05-15 04:30:00'),
(6, 'Carrito: Solicitud de Pedido', 0, '2014-05-15 04:30:00'),
(7, 'Carrito: Solicitud de Pedido', 0, '2014-05-15 04:30:00'),
(8, 'Carrito: Solicitud de Pedido', 0, '2014-05-15 04:30:00'),
(1, 'Carrito: Solicitud de Pedido', 1, '2014-05-19 04:30:00'),
(2, 'Carrito: Solicitud de Pedido', 1, '2014-05-19 04:30:00'),
(3, 'Carrito: Solicitud de Pedido', 1, '2014-05-19 04:30:00'),
(9, 'Carrito: Solicitud de Pedido', 0, '2014-05-19 04:30:00'),
(10, 'Carrito: Solicitud de Pedido', 0, '2014-05-19 04:30:00'),
(11, 'Carrito: Solicitud de Pedido', 0, '2014-06-25 04:30:00'),
(12, 'Carrito: Solicitud de Pedido', 0, '2014-06-25 04:30:00'),
(13, 'Carrito: Solicitud de Pedido', 0, '2014-06-25 04:30:00'),
(14, 'Carrito: Solicitud de Pedido', 0, '2014-06-26 04:30:00'),
(15, 'Carrito: Solicitud de Pedido', 0, '2014-07-21 04:30:00'),
(16, 'Carrito: Solicitud de Pedido', 0, '2014-07-29 04:30:00'),
(17, 'Carrito: Solicitud de Pedido', 0, '2014-08-10 04:30:00'),
(18, 'Carrito: Solicitud de Pedido', 0, '2014-08-11 04:30:00'),
(19, 'Carrito: Solicitud de Pedido', 0, '2014-08-11 04:30:00'),
(20, 'Carrito: Solicitud de Pedido', 0, '2014-08-18 04:30:00'),
(21, 'Carrito: Solicitud de Pedido', 0, '2014-08-18 04:30:00'),
(22, 'Carrito: Solicitud de Pedido', 0, '2014-09-25 04:30:00'),
(23, 'Carrito: Solicitud de Pedido', 0, '2014-10-17 04:30:00'),
(24, 'Carrito: Solicitud de Pedido', 0, '2015-02-06 04:30:00'),
(25, 'Carrito: Solicitud de Pedido', 0, '2015-02-06 04:30:00'),
(26, 'Carrito: Solicitud de Pedido', 0, '2015-02-09 04:30:00'),
(27, 'Carrito: Solicitud de Pedido', 0, '2015-03-03 04:30:00'),
(28, 'Carrito: Solicitud de Pedido', 0, '2015-03-18 04:30:00'),
(29, 'Carrito: Solicitud de Pedido', 0, '2015-03-29 04:30:00'),
(30, 'Carrito: Solicitud de Pedido', 0, '2015-04-01 04:30:00'),
(31, 'Carrito: Solicitud de Pedido', 0, '2015-04-06 04:30:00'),
(32, 'Carrito: Solicitud de Pedido', 0, '2015-04-08 04:30:00'),
(33, 'Carrito: Solicitud de Pedido', 0, '2015-04-08 04:30:00'),
(34, 'Carrito: Solicitud de Pedido', 0, '2015-04-08 04:30:00'),
(35, 'Carrito: Solicitud de Pedido', 0, '2015-04-08 04:30:00'),
(36, 'Carrito: Solicitud de Pedido', 0, '2015-04-08 04:30:00'),
(37, 'Carrito: Solicitud de Pedido', 0, '2015-04-15 04:30:00'),
(38, 'Carrito: Solicitud de Pedido', 0, '2015-04-16 04:30:00'),
(39, 'Carrito: Solicitud de Pedido', 0, '2015-04-16 04:30:00'),
(40, 'Carrito: Solicitud de Pedido', 0, '2015-04-16 04:30:00'),
(41, 'Carrito: Solicitud de Pedido', 0, '2015-04-16 04:30:00'),
(42, 'Carrito: Solicitud de Pedido', 0, '2015-04-16 04:30:00'),
(43, 'Carrito: Solicitud de Pedido', 0, '2015-04-25 04:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `pedido`
--

CREATE TABLE IF NOT EXISTS `pedido` (
  `oid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `oidu` int(11) NOT NULL COMMENT 'Identificador del Usuario',
  `oidp` int(11) NOT NULL COMMENT 'Identificador Producto',
  `cant` int(11) NOT NULL COMMENT 'Cantidad',
  `prec` decimal(10,2) NOT NULL COMMENT 'Precio',
  `orde` varchar(16) NOT NULL COMMENT 'Orden de Pedido',
  `esta` tinyint(1) NOT NULL COMMENT '0: Comprometido, 1: Vendido ',
  PRIMARY KEY (`oid`),
  KEY `oidu` (`oidu`),
  KEY `oidp` (`oidp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Encargo, petición, demanda' AUTO_INCREMENT=93 ;

--
-- Dumping data for table `pedido`
--

INSERT INTO `pedido` (`oid`, `oidu`, `oidp`, `cant`, `prec`, `orde`, `esta`) VALUES
(9, 12, 8, 3, '2000.00', '1', 2),
(10, 6, 8, 3, '2000.00', '2', 3),
(11, 6, 8, 2, '2000.00', '3', 2),
(12, 6, 7, 2, '10000.00', '4', 4),
(13, 6, 4, 3, '0.00', '4', 4),
(14, 6, 7, 1, '10000.00', '5', 4),
(15, 6, 7, 1, '10000.00', '6', 2),
(16, 6, 7, 1, '10000.00', '7', 4),
(17, 6, 4, 2, '0.00', '8', 4),
(18, 6, 7, 2, '10000.00', '9', 4),
(19, 6, 4, 1, '0.00', '10', 4),
(20, 6, 8, 3, '2000.00', '10', 4),
(21, 6, 4, 1, '0.00', '10', 4),
(22, 6, 7, 1, '10000.00', '10', 4),
(23, 6, 4, 1, '0.00', '10', 4),
(24, 6, 7, 1, '10000.00', '10', 4),
(25, 6, 4, 1, '0.00', '10', 4),
(26, 6, 7, 1, '10000.00', '10', 4),
(27, 6, 4, 1, '0.00', '10', 4),
(28, 6, 7, 1, '10000.00', '10', 4),
(29, 6, 4, 1, '0.00', '10', 4),
(30, 6, 7, 1, '10000.00', '10', 4),
(31, 6, 4, 1, '0.00', '10', 4),
(32, 6, 7, 1, '10000.00', '10', 4),
(33, 6, 4, 1, '0.00', '10', 4),
(34, 6, 7, 1, '10000.00', '10', 4),
(35, 6, 4, 1, '0.00', '10', 4),
(36, 6, 4, 1, '0.00', '10', 4),
(37, 6, 4, 1, '0.00', '10', 4),
(38, 6, 4, 1, '0.00', '10', 4),
(39, 6, 4, 1, '0.00', '10', 4),
(40, 6, 4, 1, '0.00', '10', 4),
(41, 6, 4, 1, '0.00', '10', 4),
(42, 6, 4, 1, '0.00', '10', 4),
(43, 6, 4, 2, '0.00', '10', 4),
(44, 6, 7, 2, '10000.00', '10', 4),
(45, 6, 8, 2, '2000.00', '10', 4),
(46, 6, 9, 1, '4000.00', '10', 4),
(47, 6, 8, 12, '2000.00', '10', 4),
(48, 6, 8, 12, '2000.00', '10', 4),
(49, 6, 9, 100, '4000.00', '10', 4),
(50, 7, 9, 2, '4000.00', '11', 3),
(51, 7, 10, 3, '2100.00', '11', 3),
(52, 7, 9, 4, '4000.00', '12', 2),
(53, 7, 10, 1, '2100.00', '12', 2),
(54, 7, 9, 2, '4000.00', '13', 2),
(55, 7, 10, 1, '2100.00', '13', 2),
(56, 7, 9, 3, '4000.00', '14', 2),
(57, 7, 10, 2, '2100.00', '14', 2),
(58, 8, 9, 100, '4000.00', '15', 4),
(59, 6, 9, 99, '4000.00', '16', 4),
(60, 6, 12, 12, '0.00', '17', 2),
(61, 6, 14, 1500, '0.00', '18', 4),
(62, 6, 48, 100, '0.00', '19', 4),
(63, 6, 13, 123224, '0.00', '20', 4),
(64, 12, 13, 123224, '0.00', '21', 4),
(65, 18, 50, 100, '990.00', '22', 2),
(66, 18, 12, 11, '160.00', '23', 4),
(67, 18, 16, 1, '160.00', '23', 4),
(68, 33, 60, 13, '5000.00', '24', 4),
(69, 19, 60, 11, '5000.00', '25', 4),
(70, 19, 62, 11, '5500.00', '26', 3),
(71, 19, 63, 11, '200.00', '26', 3),
(72, 19, 67, 100, '930.00', '27', 4),
(73, 19, 61, 12, '5500.00', '28', 4),
(74, 19, 60, 1, '5500.00', '29', 4),
(75, 19, 62, 11, '5500.00', '30', 4),
(76, 19, 63, 1, '200.00', '31', 4),
(77, 19, 62, 1, '5500.00', '31', 4),
(78, 19, 61, 1, '5500.00', '31', 4),
(79, 33, 67, 1, '930.00', '32', 4),
(80, 33, 62, 1, '5500.00', '33', 4),
(81, 33, 63, 1, '200.00', '33', 4),
(82, 33, 66, 2, '310.00', '33', 4),
(83, 33, 64, 9, '2800.00', '35', 4),
(84, 33, 69, 10, '450.00', '36', 4),
(85, 33, 60, 1, '5500.00', '37', 4),
(86, 33, 61, 12, '5500.00', '38', 4),
(87, 33, 62, 12, '5500.00', '39', 4),
(88, 33, 63, 2, '200.00', '39', 4),
(89, 33, 75, 1, '350.00', '40', 4),
(90, 33, 70, 1, '500.00', '41', 4),
(91, 33, 75, 1, '350.00', '42', 4),
(92, 33, 61, 8, '5500.00', '43', 0);

-- --------------------------------------------------------

--
-- Table structure for table `perfil`
--

CREATE TABLE IF NOT EXISTS `perfil` (
  `oid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `nomb` varchar(255) NOT NULL COMMENT 'Nombre',
  `enmb` varchar(64) NOT NULL COMMENT 'MD5 Perfil',
  `obse` varchar(255) NOT NULL COMMENT 'Observaciones',
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Perfiles de los clientes' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `perfil`
--

INSERT INTO `perfil` (`oid`, `nomb`, `enmb`, `obse`) VALUES
(1, 'Administrador', '2a2e9a58102784ca18e2605a4e727b5f', 'Administrador General'),
(2, 'Normal', '960b44c579bc2f6818d2daaf9e4c16f0', 'Ventas Normal'),
(3, 'Revendedores', '9f9278682707efc6b7345fa39df105dc', 'Ventas Al Mayor'),
(6, 'Panel', 'f1e5d7a5fe13498abbdeb0f1f19136a8', 'Panel de Control');

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `codi` varchar(16) NOT NULL COMMENT 'Código Producto',
  `nomb` varchar(128) NOT NULL COMMENT 'Nombre del Producto',
  `obse` varchar(255) NOT NULL COMMENT 'Observacion',
  `unid` int(2) NOT NULL COMMENT 'Tipo',
  `cpro` decimal(10,2) NOT NULL COMMENT 'Costo de Producción',
  `cate` tinyint(1) NOT NULL COMMENT 'Categoria',
  `meto` tinyint(1) NOT NULL COMMENT 'Metodo 0: PEPS, 1: UEPS',
  `maxi` int(11) NOT NULL COMMENT 'Máximo',
  `mini` int(11) NOT NULL COMMENT 'Mínimo',
  `imag` varchar(256) NOT NULL COMMENT 'Ruta de la Imagen',
  PRIMARY KEY (`oid`),
  UNIQUE KEY `nomb` (`nomb`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Artículo, manufactura, elaboración' AUTO_INCREMENT=79 ;

--
-- Dumping data for table `producto`
--

INSERT INTO `producto` (`oid`, `codi`, `nomb`, `obse`, `unid`, `cpro`, `cate`, `meto`, `maxi`, `mini`, `imag`) VALUES
(12, 'AE18', 'Aguja Espinal N18 x 100', 'Aguja Espinal Caja x 100', 3, '160.00', 11, 0, 1000, 10, 'espinal18.jpg'),
(13, 'AE19', 'Aguja Espinal N19', 'Caja x 100 Unidades', 3, '160.00', 11, 0, 1000, 10, 'espinal19.jpg'),
(60, 'jelco2401', 'Cateter Jelco 24', 'Cateter Jelco 24', 3, '5500.00', 17, 0, 100, 10, 'jelco24.jpg'),
(61, 'Jelco22', 'Cateter Jelco 20', 'Cateter jelco Numero 20', 3, '5500.00', 17, 0, 100, 10, 'jelco20.jpg'),
(62, 'jelco22', 'Cateter Jelco 22', 'Jelco Numero 22', 3, '5500.00', 17, 0, 100, 10, 'jelco22.jpg'),
(63, 'lamc', 'Laminas Cubre Objeto 22x22', 'Laminas Cubre Objeto', 3, '200.00', 22, 1, 100, 10, 'laminascubre.jpg'),
(64, 'tiras0', 'Tiras de Orina IHR x 100', 'Tiras de Orina IHR x 100 Tiras', 2, '2800.00', 22, 1, 100, 10, 'tirasdeorina.jpg'),
(65, 'especulo1', 'Especulo Vaginal Talla S,M', 'Especulo Varigas en Tallas Varias', 1, '110.00', 23, 1, 1000, 100, 'especulo.jpg'),
(66, 'laminasp', 'Laminas Porta Objeto x 50', 'Laminas Porta Objeto x 50', 2, '310.00', 22, 0, 100, 10, 'laminasporta.jpg'),
(74, 'algodon500', 'Algodon 500 grs', 'algodon 500 grs', 3, '400.00', 19, 0, 15, 5, 'algodon500.jpg'),
(68, 'tirasembarazo', 'Tiras de Embarazo x 50', 'Tiras de embarazo x 50', 3, '2490.00', 22, 0, 100, 10, 'tirasembarazo.jpeg'),
(69, 'recolectorh', 'Recolector de Heces x100', 'Recolector de Heces Plasticos', 2, '450.00', 34, 1, 1000, 100, 'recolectorheces.jpg'),
(70, 'cubrebotas01', 'Cubre Botas', 'Cubre Botas Par', 2, '500.00', 23, 0, 100, 10, 'cubrebota.jpg'),
(71, 'gorroe', 'Gorro Enfermera', 'Gorro de Enfermera', 2, '500.00', 23, 0, 1000, 100, 'gorroenfermera.jpg'),
(72, 'curitasr', 'Curitas  Redondas x100', 'Curitas Redondas', 3, '58.00', 23, 0, 100, 10, 'curitasredondas.jpg'),
(73, 'PapelECG50', 'Papel para ECG 50MM', 'Papel para ECG 50MM', 1, '65.00', 18, 0, 100, 10, 'papelparaEgc.jpg'),
(75, 'Alcohol', 'Alcohol Galon', 'Alcohol  Galon', 1, '350.00', 37, 0, 15, 5, 'alcohol.jpg'),
(76, 'gasa100y', 'Gasa 100 Yardas', 'Gasa 100 Yardas', 1, '1150.00', 37, 0, 10, 3, 'gasa100y.jpg'),
(77, 'jeringas1cc', 'Jeringas 1 cc', 'Jeringas 1 cc', 3, '910.00', 21, 0, 1000, 100, 'inyectadora1.jpg'),
(78, 'compresab', 'Compresa laparatomia x 200', 'Compresa de Laparatomia  por Bulto', 3, '24000.00', 19, 0, 10, 5, 'compresaseris.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `proveedor`
--

CREATE TABLE IF NOT EXISTS `proveedor` (
  `oid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `rif` varchar(16) NOT NULL COMMENT 'Registro de Información Fiscal',
  `nomb` varchar(255) NOT NULL COMMENT 'Nombre',
  `ubic` varchar(255) NOT NULL COMMENT 'Ubicación',
  `esta` tinyint(1) NOT NULL COMMENT 'Estatus',
  `fech` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Fecha Entrega',
  PRIMARY KEY (`oid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Presta servicios a otras entidades' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `unidad`
--

CREATE TABLE IF NOT EXISTS `unidad` (
  `oid` int(2) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `nomb` varchar(64) NOT NULL COMMENT 'Nombre Descriptivo',
  PRIMARY KEY (`oid`),
  KEY `nomb` (`nomb`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Unidad de Medida' AUTO_INCREMENT=9 ;

--
-- Dumping data for table `unidad`
--

INSERT INTO `unidad` (`oid`, `nomb`) VALUES
(1, 'Unidad'),
(2, 'Paquete'),
(3, 'Caja');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `oid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `tipo` char(1) NOT NULL COMMENT 'tipo V: Venezolano, J: Juridico',
  `cedu` int(11) NOT NULL COMMENT 'Cedula o rif',
  `nomb` varchar(255) NOT NULL COMMENT 'Nombre del Cliente',
  `apel` varchar(255) NOT NULL COMMENT 'Apellido',
  `dire` varchar(255) NOT NULL COMMENT 'Direccion de Habitacion',
  `seud` varchar(255) NOT NULL COMMENT 'Seudo Nombre',
  `clav` varchar(255) NOT NULL COMMENT 'Clave MD5',
  `corr` varchar(255) NOT NULL COMMENT 'Correo',
  `celu` varchar(16) NOT NULL COMMENT 'Celular',
  `telf` varchar(16) NOT NULL COMMENT 'Teléfono',
  `empr` varchar(255) NOT NULL COMMENT 'Empresa',
  `pagi` varchar(255) NOT NULL COMMENT 'Pagina Web',
  PRIMARY KEY (`oid`),
  UNIQUE KEY `cedu` (`cedu`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Control de usuarios' AUTO_INCREMENT=55 ;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`oid`, `tipo`, `cedu`, `nomb`, `apel`, `dire`, `seud`, `clav`, `corr`, `celu`, `telf`, `empr`, `pagi`) VALUES
(5, 'V', 123, 'Administrador', 'General', 'San Cristobal', 'Admin', '9d0c2787734b3fddc36dcbccda91c172', '', '', '', '', ''),
(6, 'V', 17456121, 'judelvis', 'rivas', 'los rosales', 'judprog', '202cb962ac59075b964b07152d234b70', 'jud.prog@gmail.com', '04262742990', '02742215686', 'electron', 'ninguan'),
(33, 'V', 19997832, 'mauricio', 'barrios', 'merida', 'mauricio', '202cb962ac59075b964b07152d234b70', 'mjbr.poet@gmail.com', '04247570208', '02742218069', 'insumos', 'insumoslacandelara.com'),
(8, 'V', 17522253, 'panel', 'panel', 'panel', 'panel', '9d0c2787734b3fddc36dcbccda91c172', 'panel@admin.com', '', '', '', ''),
(41, 'V', 12334456, 'maurina', 'rojas', 'ejido, merida', 'maurinar', '0f58fd4c84c06d780f98702a6a0a2138', 'maurina_2015@gmail.com', '042475758493', '2217663', 'no', 'no'),
(11, 'V', 14018, 'Betzabeth', 'Viloria', 'caracas', 'stephaider', 'b493a6278c97f647cbf7c6591781a346', 'stephaider@hotmail.com', '04241365442', '02124224455', 'Inversiones Stephaider, C.A.', ''),
(12, 'V', 0, 'Laboratorio', 'Bioandes', 'Centro', 'Bioandes', 'b8b4b727d6f5d1b61fff7be687f7970f', 'bioandes@gmail.com', '0424-7652110', '02742510149', 'Laboratorio Bioandes', ''),
(13, 'V', 7113363, 'elizabeth', 'plasencia', 'valencia', 'plasenciae', '0dc87db0a50db8d62d36107a2f3e6515', 'plasencia.elizabeth@gmail.com', '04144212574', '02418710749', 'laboratorio clinico sta fe ', ''),
(14, 'V', 14785641, 'lorena', 'bautista', 'Tachira', 'labclinaspirineos', '323b4ab5d6ba0a1f75be2f97061de4d9', 'aspirineos@gmail.comlabclin', '04247718655', '000000', 'laboratorio clinico de analisis pirineos c,a', ''),
(15, 'V', 1394605, 'YRAIDA ', 'CESTARY', 'Barinas', 'LCDA BARINAS', 'd0e8c3bdfe48d186404325c53ec88683', 'ykcestarysilva@hotmail.com', '04125269971', '02736631547', '02735115337', 'NO'),
(16, 'V', 13946605, 'YRAIDA K', 'CESTARY S', 'BARINAS', 'YKCESTARYSILVA', 'd0e8c3bdfe48d186404325c53ec88683', 'ykcestrysilva@hotmail.com', '04125269971', '02735115337', '02736631547', 'NO'),
(17, 'V', 15620037, 'EDWAR', 'DUGARTE', 'BARINAS', 'VID-SALUD C,A', '347a7dd2432cbe5dd4a24590caa98411', 'VID-SALUD@HOTMAIL.COM', '04262712390', '02734150980', '02734150980', ''),
(19, 'V', 19791794, 'gerencia', 'insumos', 'Sector el Palmo, Ejido- Merida', 'gerencia', '66a86fbbcd8cc8c88e14c96730c3e382', 'ecmd33@gmail.com', '04247014162', '2218069', 'insumos', 'insumos.com'),
(20, 'V', 14018092, 'BETZABETH', 'VILORIA', 'caracas', 'STEPHAIDER', 'b493a6278c97f647cbf7c6591781a346', 'stephaider@hotmail.com', '0424-1365442', '02124224455', '02124224455', ''),
(21, 'V', 13513882, 'osmary', 'sulbaran', 'Valle de la pascua. Estado guarico', 'lab.sama', '2022748ebdac6a6bdca37acea41222c7', 'lab.aama@hotmail.com', '04166378948', '02353414680', '02353517454', ''),
(22, 'V', 24420764, 'francisco', 'hernandez', 'Tachira', 'liquid420', '99769459760a8caa918c48b29b062b4e', 'ciskomusic1@gmail.com', '04247729566', '.', '.', '.'),
(23, 'V', 9681655, 'LISETTE', 'ECHEVERRIA', 'MARACAY ARAGUA', 'LISETTE', '44256213c7280e41597737b5a304d782', 'CLINICOLAB@HOTMAIL.COM', '04124397615', '02432175185', '02432175185', 'NO'),
(25, 'V', 15100106, 'Rossana', 'Olivares', 'AV juan Vicente Camaguan', 'Naolab', 'a117a0287248733c0d098cc43ba11fc4', 'rossana_denavarro@hotmail.com', '04144548907', '02477410325', 'Laborato Naolab', ''),
(26, 'J', 297103406, 'PRIMA SALUD C.A ', 'PRIMASALUD C.A', 'valencia', 'ANYHELY', '2e7ceec8361275c4e31fee5fe422740b', 'primasalud@hotmail.com', '0426-5431399', '02418917870', '02418917870', 'www.primasalud.com.ve'),
(27, 'V', 10796525, 'Rosilia', 'Vàsquez', 'Av. San Martin. Caracas', 'rosi', 'b8b9c74ac526fffbeb2d39ab038d1cd7', 'rosi2904@hotmail.com', '0414-3243200', '0212-4156871', '0212-4156871', ''),
(43, 'V', 22630122, 'mariangel', 'carvajal', 'Caracas el paraiso', 'mariangel', '2d1d10e33155979f64bf84112ad5c33e', 'mariangel_c.18hotmail.com', '04169131362', '02124711783', 'inversiones la cli33', ''),
(29, 'V', 8611413, 'VITA', 'CALZOLAIO', 'valencia', 'VCALZOLAIO', '3b0b327e7110abfcaa58b0a979f7be34', 'vcalzolaio@uc.edu.ve', '04166421651', '02418432566', 'Universidad', 'uc.edu.ve'),
(30, 'V', 13588433, 'LINDA', 'SANCHEZ', 'VALERA', 'LINDA', '8f64f2c70562a23e003e8200fbaf1b3a', 'sanchezlinda0@gmail.com', '04147510081', '02714155155', 'INSULAB', ''),
(31, 'V', 8191340, 'jjhonson', 'Montilla', 'Paseo Las industrias. Valencia edo Cadabobo', 'mandy jj', 'cf0808f6abf0f0f8eabe46c0a4c3eab2', 'ventaslaboratorio@outlook.com', '04164343816', '04243763780', 'Semelav C.A', ''),
(32, 'V', 7990559, 'Alejandro', 'Correa', 'UDO MOnagas', 'DrCorrea', '7970935990c7e06300cc2244929726f1', 'correaale@yahoo.com', '04143826880', '000000000', 'UDO', 'www.udo.edu.ve'),
(42, 'V', 16758875, 'Christian', 'Peña', 'Calle Brasil Vista Hermosa', 'ch_alejandro', '68e799f6096a1676f8ac0f3550b712f6', 'ch_alejandro@hotmail.com', '04148547215', '04265997555', 'Gammalabca', ''),
(35, 'V', 12067573, 'dayana', 'pastran', 'Entrada Principal ocumare delTuy, Centro Comercial La Romanera, Local 11 Planta Baja, Valles del Tuy-Edo. Miranda\n', 'ccm', 'f239ee7479916dd65ba1d67adcf9a523', 'centroclinicomiranda', '04126386584', '0239-2244889', 'centroclinicomiranda', 'no tenemos'),
(36, 'V', 20367982, 'Veronica', 'Rosciano', 'Merida', 'verosciano', 'e7c0da35f27a38eebbf2fb5aa904cd30', 'vroscianoa@gmail.com', '04126482798', '02742211367', '-', '-'),
(37, 'V', 11048619, 'Aristides', 'Cienfuegos', 'Urb Norte 1 con calle Carabobo Resd, Ikebana Edif bambu', 'acesuministro', '128a1298e8a38a537c07bc12e143e4e1', 'acesuministro@gmail.com', '04141218840', '+584141218840', 'AC Equipos y Suministros, C.A.', ''),
(38, 'V', 21290009, 'Alejandro', 'Nogueira', 'la victoria', 'tuodontologa.com', 'e10ffdbe50c148746b6436611b203bb2', 'clinicasdentalesvictoriaplaza@gmail.com', '04144933267', '02443227928', 'clinicas dentales victoria plaza', 'tuodontologa.com'),
(39, 'V', 199998, 'mauricio', 'barrioss', 'merida', 'mauriciob', '59acab823939d19336635c7f1256e74d', 'mjbr.poet2@gmail.com', '042475703030', '221222', 'no', 'no'),
(40, 'V', 16433243, 'maria', 'alvarado', 'caracas, alta gracia', 'marial', 'd5cca9df47002e1f69e355be5a307497', 'maria.alvarado100@gmail.com', '04245777543', '02122355445', 'independiente', 'no'),
(44, 'V', 14765450, 'jose', 'diaz', 'barcelona edo anzoategui', 'hawaii', '843f057436c1cec05b2d2b65304cd91a', 'joselavie28@hotmail.com', '04121142976', '02814189452', 'suministros anzza', ''),
(45, 'V', 11767288, 'ana', 'guanipa', 'Maracaibo estado zulia', 'anita', 'de18a1f2124e181b67f30f88ace8fcdb', 'anaguanipa@hotmail.com', '04246784136', '02617920311', 'clinico del lago', ''),
(46, 'V', 17786747, 'angelica', 'gonzalez', 'A naco. Estado anzoategui', 'amgaglz', '212a698570dba9cb99ab175f31f9f697', 'angelicagonzalez036@gmail.com', '04248134620', '2824254942', '2824241797', ''),
(47, 'V', 18048956, 'amalie', 'caldera', 'Calle Zamora casa nro 24 coro.edo falcon', 'amalie', '424a0cc221a4a35de3403c5be9652192', 'amaliecr88@gmail.com', '18048956', '02682525562', 'dc variedades', 'no temgo'),
(48, 'V', 16043422, 'yanmelis', 'amaya', 'Av. Lara Res. Centro del Este, Barquisimeto, Edo. Lara', 'yanme82', '9708c56f9334af213b67955ac435c6b1', 'yanme82@yahoo.es', '04265570025', '02512675683', 'Inversiones Amaya G, C.A.', ''),
(49, 'V', 18522049, 'Gabriel', 'Galué', 'Maracaibo - Zulia', 'uciveca', '181410b43de27c74a9ad950b44cb8f45', 'uciveca.compras@gmail. com', '04120716169', '02614226164', 'uciveca', ''),
(50, 'V', 18257433, 'Lidney ', 'Chanaga ', 'Avenida proncipal de pueblo nuevo Residencias camino real san Cristóbal edo Táchira ', 'Lidney', 'a6d44ea5029b4901c675606309ae79af', 'Lidney5@hotmail.com', '18257433', '02769268740', '02769268740', 'Lidney5@hotmail.com'),
(51, 'V', 19091385, 'daniela', 'jiemenez', 'Bolivar', 'danielaejiemenez', 'ab00ff1fabd01e58e123ada4d426d08c', 'danielaejimenez@gmail.com', '04148651017', '00', 'serbiotec', 'hhh'),
(52, 'V', 22455405, 'Eleannys', 'Moreno', 'Maracaibo estado Zulia.Urb. los olivos', 'eleannys', 'bd6b267b537c4b44ac4174dab7447a19', 'eleannysmoreno@gmail.com', '04140608291', '02617151853', 'rosdwalca', ''),
(53, 'V', 8851134, 'betty', 'guillen', 'Puerto Ayacucho ', 'albertonaz', '5464b85c4d7cb42911661b4a4f5789ed', 'jesusliliam@yahoo.es', '04265901422', '02485216133', 'laboratorio betty guillen', ''),
(54, 'V', 10952907, 'María', 'Vivenes', 'Trujillo. Edo.trujillo', 'aldovi', '59a6f5bf0195b53638586bbbeefb370c', 'vivenes95@hotmail.com', '04167951216', '02724003589', 'cecliba c.a', 'no tengo');

-- --------------------------------------------------------

--
-- Table structure for table `_usuarioperfil`
--

CREATE TABLE IF NOT EXISTS `_usuarioperfil` (
  `oidu` int(11) NOT NULL COMMENT 'Identificador Usuario',
  `oidp` int(11) NOT NULL COMMENT 'Identificador Perfil',
  UNIQUE KEY `oidu` (`oidu`,`oidp`),
  KEY `oidu_2` (`oidu`),
  KEY `oidp` (`oidp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Relacion Usuario - Perfil';

--
-- Dumping data for table `_usuarioperfil`
--

INSERT INTO `_usuarioperfil` (`oidu`, `oidp`) VALUES
(5, 1),
(6, 2),
(7, 2),
(8, 6),
(9, 2),
(10, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 3),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
