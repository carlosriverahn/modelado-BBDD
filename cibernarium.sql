-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-07-2020 a las 22:32:59
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cibernarium`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `amzbook_autor`
--

CREATE TABLE `amzbook_autor` (
  `book_autor_id` varchar(6) NOT NULL,
  `autor_name` varchar(25) NOT NULL,
  `autor_lastname` varchar(25) NOT NULL,
  `autor_address` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `amzbook_autor`
--

INSERT INTO `amzbook_autor` (`book_autor_id`, `autor_name`, `autor_lastname`, `autor_address`) VALUES
('AMZ01', 'ARON', 'RAYMOND', 'BARCELONA, ESP'),
('AMZ02', 'PICAZO', 'MARIA', 'LONDRES, UK'),
('AMZ03', 'FLORES', 'ANTONIO', 'LONDRES, UK'),
('AMZ04', 'KOLAKOWSKI', 'LESZEK', 'BARCELONA, ESP'),
('AMZ05', 'ARON', 'RAYMOND', 'PARIS, FR'),
('AMZ06', 'ALMAGRO', 'MELCHOR', 'PARIS, FR'),
('AMZ07', 'FLORES', 'ANTONIO', 'ROMA, IT'),
('AMZ08', 'JIMMY', 'HENDRIX', 'LONDRES, UK'),
('AMZ09', 'OKIVER', 'ROLAND', 'ROMA, IT'),
('AMZ10', 'LAMET', 'PEDRO MIGUEL', 'ROMA, IT');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `amzbook_bill`
--

CREATE TABLE `amzbook_bill` (
  `bill_id` varchar(16) NOT NULL,
  `client_id` varchar(6) NOT NULL,
  `book_id` varchar(10) NOT NULL,
  `book_description` varchar(45) NOT NULL,
  `book_price` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `amzbook_bill`
--

INSERT INTO `amzbook_bill` (`bill_id`, `client_id`, `book_id`, `book_description`, `book_price`) VALUES
('10223', '451344', '1133', 'HISTORIA POLITICA DE LA ESPANA', '34'),
('10224', '451345', '1134', 'HISTORIA POLITICA DEL MUNDO', '54'),
('10225', '451346', '1135', 'PRINCIPALES CORRIENTES DEL MARXISMO', '34'),
('10226', '451347', '1136', 'LOS ESTADOS UNIDOS EN EL MUNDO', '54'),
('10227', '451348', '1137', 'HISTORIA POLITICA DE LA ESPANA', '34'),
('10228', '451349', '1138', 'SOCIEDAD DE 1850, LA', '45'),
('10229', '451350', '1139', 'AREA DE CIENCIAS SOCIALES. GEOGRAFIA', '34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `amzbook_books`
--

CREATE TABLE `amzbook_books` (
  `book_id` varchar(10) NOT NULL,
  `book_description` varchar(45) NOT NULL,
  `book_autor_id` varchar(6) NOT NULL,
  `book_price` decimal(10,0) NOT NULL,
  `book_stock` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `amzbook_books`
--

INSERT INTO `amzbook_books` (`book_id`, `book_description`, `book_autor_id`, `book_price`, `book_stock`) VALUES
('1132', 'HISTORIA DE ALMERIA', 'AMZ01', '45', 12),
('1133', 'HISTORIA POLITICA DE LA ESPANA', 'AMZ02', '34', 9),
('1134', 'HISTORIA POLITICA DEL MUNDO', 'AMZ03', '54', 6),
('1135', 'PRINCIPALES CORRIENTES DEL MARXISMO', 'AMZ04', '34', 8),
('1136', 'LOS ESTADOS UNIDOS EN EL MUNDO', 'AMZ05', '54', 5),
('1137', 'HISTORIA POLITICA DE LA ESPANA', 'AMZ06', '34', 7),
('1138', 'SOCIEDAD DE 1850, LA', 'AMZ07', '45', 8),
('1139', 'AREA DE CIENCIAS SOCIALES. GEOGRAFIA', 'AMZ08', '34', 5),
('1140', 'BREVE HISTORIA DE AFRICA', 'AMZ09', '54', 12),
('1141', 'YO TE ABSUELVO, MAJESTAD', 'AMZ10', '34', 8),
('1142', 'COMPENDIO DE HISTORIA UNIVERSAL', 'AMZ09', '54', 13),
('1143', 'RAZON E HISTORIA', 'AMZ10', '34', 4),
('1144', 'TRABAJOS PRACTICOS DE HISTORIA DE ESPANA', 'AMZ05', '45', 8),
('1145', 'HISTORIA BASICA DE ANDALUCIA', 'AMZ06', '34', 6),
('1146', 'CANIBALES Y REYES:', 'AMZ01', '54', 9),
('1147', 'PRESENTE AL PASADO, DEL', 'AMZ04', '34', 9),
('1148', 'HACER LA HISTORIA. II. NUEVOS ENFOQUES', 'AMZ05', '54', 3),
('1149', 'MUERTE DEL REY', 'AMZ06', '34', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `amzbook_clients`
--

CREATE TABLE `amzbook_clients` (
  `client_id` varchar(6) NOT NULL,
  `client_name` varchar(25) NOT NULL,
  `client_lastname` varchar(25) NOT NULL,
  `client_email` varchar(30) NOT NULL,
  `client_user` varchar(15) NOT NULL,
  `client_pass` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `amzbook_clients`
--

INSERT INTO `amzbook_clients` (`client_id`, `client_name`, `client_lastname`, `client_email`, `client_user`, `client_pass`) VALUES
('451344', 'Juan', 'Perez', 'Email123@amz.com', 'user123', '12345'),
('451345', 'Carlos', 'Rivera', 'Email124@amz.com', 'user124', '12345'),
('451346', 'Rosa', 'Jovel', 'Email125@amz.com', 'user125', '12345'),
('451347', 'pedro', 'Barahona', 'Email126@amz.com', 'user126', '12345'),
('451348', 'Abelardo', 'Paz', 'Email127@amz.com', 'user127', '12345'),
('451349', 'Maria', 'Smit', 'Email128@amz.com', 'user128', '12345'),
('451350', 'Lorena', 'Travolta', 'Email129@amz.com', 'user129', '12345');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `art_client`
--

CREATE TABLE `art_client` (
  `art_client_id` varchar(10) NOT NULL,
  `art_picture_id` varchar(10) NOT NULL,
  `art_client_name` varchar(45) NOT NULL,
  `art_client_lastname` varchar(45) NOT NULL,
  `art_client_dni` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `art_client`
--

INSERT INTO `art_client` (`art_client_id`, `art_picture_id`, `art_client_name`, `art_client_lastname`, `art_client_dni`) VALUES
('1001', 'DA10241', 'Josep', 'Madrigal', '123412345455-F'),
('1002', 'FS32452', 'Juan', 'Bautista', '345345234534-G'),
('1003', 'DF23521', 'Alex', 'Perez', '213421354345-k'),
('1004', 'FG65342', 'Monica', 'Naranjo', '123412345234-F'),
('1005', 'HR34554', 'Eva', 'Maragall', '345343422444-G'),
('1006', 'GT42344', 'Rosa', 'Rivera', '234234234335-k');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `art_picture`
--

CREATE TABLE `art_picture` (
  `art_picture_id` varchar(10) NOT NULL,
  `art_picture_autor` varchar(45) NOT NULL,
  `art_picture_price` decimal(10,0) NOT NULL,
  `art_picture_sold` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `art_picture`
--

INSERT INTO `art_picture` (`art_picture_id`, `art_picture_autor`, `art_picture_price`, `art_picture_sold`) VALUES
('AN34523', 'ANONIMO', '10200', 'N'),
('AN45687', 'ANONIMO', '12200', 'N'),
('DA10241', 'Leonardo da Vinci', '14800', 'Y'),
('DF23521', 'Diego Velázquez', '21000', 'Y'),
('FG65342', 'Vincent Van Gogh', '19200', 'Y'),
('FS32452', 'Pablo Picasso', '12900', 'Y'),
('GT42344', 'Miguel Ángel', '12250', 'Y'),
('HR34554', 'Edvard Munch', '14300', 'Y'),
('SD34523', 'Edvard Munch', '24000', 'N'),
('SD54233', 'Diego Velázquez', '23500', 'N');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opt_bill`
--

CREATE TABLE `opt_bill` (
  `bill_id` varchar(10) NOT NULL,
  `bill_date` datetime NOT NULL,
  `client_id` varchar(10) NOT NULL,
  `prod_id` varchar(10) NOT NULL,
  `prod_description` varchar(45) NOT NULL,
  `prod_price` decimal(10,0) UNSIGNED NOT NULL,
  `empl_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `opt_bill`
--

INSERT INTO `opt_bill` (`bill_id`, `bill_date`, `client_id`, `prod_id`, `prod_description`, `prod_price`, `empl_id`) VALUES
('75001', '2020-01-13 00:00:00', 'CLI001', 'A001', 'Glasses_01', '99', '101'),
('75002', '2020-02-13 00:00:00', 'CLI002', 'A002', 'Glasses_02', '85', '104'),
('75003', '2020-04-13 00:00:00', 'CLI003', 'A003', 'Glasses_03', '80', '105'),
('75004', '2020-01-14 00:00:00', 'CLI004', 'A004', 'Glasses_04', '99', '104'),
('75005', '2020-02-14 00:00:00', 'CLI005', 'A005', 'Glasses_05', '85', '105'),
('75006', '2020-04-14 00:00:00', 'CLI006', 'A006', 'Glasses_06', '80', '101'),
('75007', '2020-01-15 00:00:00', 'CLI007', 'A007', 'Glasses_07', '99', '101'),
('75008', '2020-02-15 00:00:00', 'CLI008', 'A008', 'Glasses_08', '85', '104'),
('75009', '2020-04-15 00:00:00', 'CLI009', 'A009', 'Glasses_09', '80', '105'),
('75010', '2020-01-16 00:00:00', 'CLI010', 'A010', 'Glasses_10', '99', '104');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opt_custumers`
--

CREATE TABLE `opt_custumers` (
  `client_id` varchar(10) NOT NULL,
  `client_name` varchar(45) NOT NULL,
  `client_lastName` varchar(45) NOT NULL,
  `client_address` varchar(45) NOT NULL,
  `client_CP` varchar(8) NOT NULL,
  `client_phone` varchar(16) NOT NULL,
  `client_email` varchar(45) NOT NULL,
  `client_ref` varchar(10) DEFAULT NULL,
  `client_reg` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `opt_custumers`
--

INSERT INTO `opt_custumers` (`client_id`, `client_name`, `client_lastName`, `client_address`, `client_CP`, `client_phone`, `client_email`, `client_ref`, `client_reg`) VALUES
('CLI001', 'ARON', 'RAYMOND', 'BARCELONA, ESP', '08060', '985-654-835', 'ARON@optical.com', 'CLI003', '2020-01-13 00:00:00'),
('CLI002', 'PICAZO', 'MARIA', 'LONDRES, UK', '08061', '985-654-836', 'PICAZO@optical.com', 'CLI004', '2020-02-13 00:00:00'),
('CLI003', 'FLORES', 'ANTONIO', 'LONDRES, UK', '08062', '985-654-837', 'FLORES@optical.com', 'CLI005', '2020-04-13 00:00:00'),
('CLI004', 'KOLAKOWSKI', 'LESZEK', 'BARCELONA, ESP', '08063', '985-654-838', 'KOLAKOWSKI@optical.com', 'CLI006', '2020-01-14 00:00:00'),
('CLI005', 'ARON', 'RAYMOND', 'PARIS, FR', '08064', '985-654-839', 'ARON@optical.com', 'CLI007', '2020-02-14 00:00:00'),
('CLI006', 'ALMAGRO', 'MELCHOR', 'PARIS, FR', '08065', '985-654-840', 'ALMAGRO@optical.com', 'CLI008', '2020-04-14 00:00:00'),
('CLI007', 'FLORES', 'ANTONIO', 'ROMA, IT', '08066', '985-654-841', 'FLORES@optical.com', 'CLI009', '2020-01-15 00:00:00'),
('CLI008', 'JIMMY', 'HENDRIX', 'LONDRES, UK', '08067', '985-654-842', 'JIMMY@optical.com', '', '2020-02-15 00:00:00'),
('CLI009', 'OKIVER', 'ROLAND', 'ROMA, IT', '08068', '985-654-843', 'OKIVER@optical.com', '', '2020-04-15 00:00:00'),
('CLI010', 'LAMET', 'PEDRO MIGUEL', 'ROMA, IT', '08069', '985-654-844', 'LAMET@optical.com', '', '2020-01-16 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opt_product`
--

CREATE TABLE `opt_product` (
  `prod_id` varchar(10) NOT NULL,
  `prod_brand` varchar(25) NOT NULL,
  `prod_description` varchar(45) NOT NULL,
  `prod_type` varchar(45) NOT NULL,
  `prod_grad` varchar(1) NOT NULL,
  `prod_color` varchar(45) NOT NULL,
  `prod_price` decimal(10,0) UNSIGNED NOT NULL,
  `prod_prov` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `opt_product`
--

INSERT INTO `opt_product` (`prod_id`, `prod_brand`, `prod_description`, `prod_type`, `prod_grad`, `prod_color`, `prod_price`, `prod_prov`) VALUES
('A001', 'Channel', 'Glasses_01', 'Float', 'Y', 'Black', '99', '10001'),
('A002', 'Pac2', 'Glasses_02', 'Metal', 'N', 'White', '85', '10002'),
('A003', 'Red Point', 'Glasses_03', 'Plastic', 'Y', 'Pink', '80', '10003'),
('A004', 'Razor', 'Glasses_04', 'Acetate paste', 'N', 'Red', '99', '10004'),
('A005', 'ZTK', 'Glasses_05', 'Float', 'Y', 'Blue', '85', '10005'),
('A006', 'Channel', 'Glasses_06', 'Metal', 'Y', 'Black', '80', '10006'),
('A007', 'Pac2', 'Glasses_07', 'Plastic', 'Y', 'White', '99', '10001'),
('A008', 'Red Point', 'Glasses_08', 'Acetate paste', 'N', 'Pink', '85', '10001'),
('A009', 'Razor', 'Glasses_09', 'Float', 'Y', 'Red', '80', '10002'),
('A010', 'Pac2', 'Glasses_10', 'Metal', 'N', 'Blue', '99', '10003'),
('A011', 'Channel', 'Glasses_11', 'Plastic', 'Y', 'Black', '85', '10004'),
('A012', 'Malibu', 'Glasses_12', 'Acetate paste', 'Y', 'White', '80', '10005'),
('A013', 'Florenza', 'Glasses_13', 'Float', 'N', 'Pink', '99', '10006'),
('A014', 'Dior', 'Glasses_14', 'Float', 'Y', 'Red', '85', '10007'),
('A015', 'Blue', 'Glasses_15', 'Metal', 'N', 'Blue', '99', '10008'),
('A016', 'Elcatex', 'Glasses_16', 'Plastic', 'N', 'Black', '85', '10009'),
('A017', 'Cazpian', 'Glasses_17', 'Acetate paste', 'Y', 'White', '80', '10010');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opt_providers`
--

CREATE TABLE `opt_providers` (
  `prov_id` varchar(10) NOT NULL,
  `prov_name` varchar(45) NOT NULL,
  `prov_address` varchar(45) NOT NULL,
  `prov_city` varchar(45) NOT NULL,
  `prov_cp` int(10) NOT NULL,
  `prov_country` varchar(45) NOT NULL,
  `prov_phone` varchar(16) NOT NULL,
  `prov_fax` varchar(16) NOT NULL,
  `prov_contact` varchar(45) NOT NULL,
  `prov_email` varchar(45) NOT NULL,
  `prov_nif` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `opt_providers`
--

INSERT INTO `opt_providers` (`prov_id`, `prov_name`, `prov_address`, `prov_city`, `prov_cp`, `prov_country`, `prov_phone`, `prov_fax`, `prov_contact`, `prov_email`, `prov_nif`) VALUES
('10001', 'prov_ulleres1', 'BARCELONA, ESP', 'Europa City1', 8030, 'Spain', '985-654-563', '635-654-563', 'Contac1', 'prove1n@prov.com', '231445345-A'),
('10002', 'prov_ulleres2', 'LONDRES, UK', 'Europa City2', 8032, 'Unite kingdon', '985-654-564', '635-654-564', 'Contac2', 'prove2n@prov.com', '231445345-B'),
('10003', 'prov_ulleres3', 'LONDRES, UK', 'Europa City3', 80342, 'Unite kingdon', '985-654-565', '635-654-565', 'Contac3', 'prove3n@prov.com', '231445345-C'),
('10004', 'prov_ulleres4', 'BARCELONA, ESP', 'Europa City4', 80362, 'Spain', '985-654-566', '635-654-566', 'Contac4', 'prove4n@prov.com', '231445345-D'),
('10005', 'prov_ulleres5', 'PARIS, FR', 'Europa City5', 80382, 'France', '985-654-567', '635-654-567', 'Contac5', 'prove5n@prov.com', '231445345-F'),
('10006', 'prov_ulleres6', 'PARIS, FR', 'Europa City6', 80402, 'France', '985-654-568', '635-654-568', 'Contac6', 'prove6n@prov.com', '231445345-G'),
('10007', 'prov_ulleres7', 'ROMA, IT', 'Europa City7', 80421, 'Italy', '985-654-569', '635-654-569', 'Contac7', 'prove7n@prov.com', '231445345-H'),
('10008', 'prov_ulleres8', 'LONDRES, UK', 'Europa City8', 80441, 'Unite kingdon', '985-654-570', '635-654-570', 'Contac8', 'prove8n@prov.com', '231445345-I'),
('10009', 'prov_ulleres9', 'ROMA, IT', 'Europa City9', 80461, 'Italy', '985-654-571', '635-654-571', 'Contac9', 'prove9n@prov.com', '231445345-J'),
('10010', 'prov_ulleres10', 'ROMA, IT', 'Europa City10', 80481, 'Italy', '985-654-572', '635-654-572', 'Contac10', 'prove10n@prov.com', '231445345-K');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opt_rrhh`
--

CREATE TABLE `opt_rrhh` (
  `empl_id` varchar(10) NOT NULL,
  `empl_name` varchar(45) NOT NULL,
  `empl_lastName` varchar(45) NOT NULL,
  `empl_position` varchar(45) NOT NULL,
  `empl_email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `opt_rrhh`
--

INSERT INTO `opt_rrhh` (`empl_id`, `empl_name`, `empl_lastName`, `empl_position`, `empl_email`) VALUES
('101', 'Juan', 'Perez', 'Sales', 'Juan@company.com'),
('102', 'Carlos', 'Rivera', 'IT', 'Carlos@company.com'),
('103', 'Rosa', 'Jovel', 'General Manager', 'Rosa@company.com'),
('104', 'Pedro', 'Barahona', 'Sales', 'Pedro@company.com'),
('105', 'Abelardo', 'Paz', 'Sales', 'Abelardo@company.com'),
('106', 'Maria', 'Smit', 'RRHH', 'Maria@company.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rsocial_user`
--

CREATE TABLE `rsocial_user` (
  `user_id` varchar(25) NOT NULL,
  `user_pass` varchar(16) NOT NULL,
  `user_email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rsocial_user`
--

INSERT INTO `rsocial_user` (`user_id`, `user_pass`, `user_email`) VALUES
('user001', 'pass001', 'email001@rsocial.com'),
('user002', 'pass002', 'email002@rsocial.com'),
('user003', 'pass003', 'email003@rsocial.com'),
('user004', 'pass004', 'email004@rsocial.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rsocia_user_gallery`
--

CREATE TABLE `rsocia_user_gallery` (
  `image_id` varchar(15) NOT NULL,
  `user_id` varchar(25) NOT NULL,
  `image_description` varchar(45) NOT NULL,
  `image_location` varchar(45) NOT NULL,
  `image_url` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rsocia_user_gallery`
--

INSERT INTO `rsocia_user_gallery` (`image_id`, `user_id`, `image_description`, `image_location`, `image_url`) VALUES
('2344535', 'user001', 'DesImagen1', 'Espanya', 'https:rsocial.com/location1'),
('2344536', 'user002', 'DesImagen2', 'Francia', 'https:rsocial.com/location2'),
('2344537', 'user003', 'DesImagen3', 'Peru', 'https:rsocial.com/location3'),
('2344538', 'user004', 'DesImagen4', 'Mexico', 'https:rsocial.com/location4'),
('2344539', 'user001', 'DesImagen5', 'Alemania', 'https:rsocial.com/location5'),
('2344540', 'user002', 'DesImagen6', 'Espanya', 'https:rsocial.com/location6'),
('2344541', 'user003', 'DesImagen7', 'Francia', 'https:rsocial.com/location7'),
('2344542', 'user004', 'DesImagen8', 'Peru', 'https:rsocial.com/location8'),
('2344543', 'user001', 'DesImagen9', 'Mexico', 'https:rsocial.com/location9'),
('2344544', 'user002', 'DesImagen10', 'Alemania', 'https:rsocial.com/location10'),
('2344545', 'user003', 'DesImagen11', 'Espanya', 'https:rsocial.com/location11'),
('2344546', 'user004', 'DesImagen12', 'Francia', 'https:rsocial.com/location12'),
('2344547', 'user001', 'DesImagen13', 'Peru', 'https:rsocial.com/location13'),
('2344548', 'user002', 'DesImagen14', 'Mexico', 'https:rsocial.com/location14'),
('2344549', 'user003', 'DesImagen15', 'Alemania', 'https:rsocial.com/location15'),
('2344550', 'user004', 'DesImagen16', 'Honduras', 'https:rsocial.com/location16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rsocia_user_relation`
--

CREATE TABLE `rsocia_user_relation` (
  `reg_id` int(11) NOT NULL,
  `user_id` varchar(25) NOT NULL,
  `relation_user_id` varchar(25) NOT NULL,
  `type_relation` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rsocia_user_relation`
--

INSERT INTO `rsocia_user_relation` (`reg_id`, `user_id`, `relation_user_id`, `type_relation`) VALUES
(1, 'user001', 'user002', 'Friend'),
(2, 'user002', 'user003', 'Family'),
(3, 'user003', 'user004', 'work'),
(4, 'user004', 'user001', 'Friend'),
(5, 'user001', 'user002', 'Family'),
(6, 'user002', 'user003', 'work'),
(7, 'user003', 'user004', 'Friend'),
(8, 'user004', 'user001', 'Family');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vl_avions`
--

CREATE TABLE `vl_avions` (
  `avions_id` int(11) NOT NULL,
  `avions_capacitat` int(11) NOT NULL,
  `avions_model` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `vl_avions`
--

INSERT INTO `vl_avions` (`avions_id`, `avions_capacitat`, `avions_model`) VALUES
(1, 301, 'A381'),
(2, 202, 'B233'),
(3, 233, 'B210');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vl_seients`
--

CREATE TABLE `vl_seients` (
  `seient_id` int(11) NOT NULL,
  `avions_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `vl_seients`
--

INSERT INTO `vl_seients` (`seient_id`, `avions_id`) VALUES
(1025, 1),
(1026, 1),
(1027, 1),
(1028, 1),
(1029, 1),
(1030, 1),
(1031, 1),
(1032, 1),
(1033, 1),
(1034, 1),
(1035, 1),
(1036, 1),
(1037, 1),
(2026, 2),
(2027, 2),
(2028, 2),
(2029, 2),
(2030, 2),
(2031, 2),
(2032, 2),
(2033, 2),
(2034, 2),
(2035, 2),
(2036, 2),
(2037, 2),
(3026, 3),
(3027, 3),
(3028, 3),
(3029, 3),
(3030, 3),
(3031, 3),
(3032, 3),
(3033, 3),
(3034, 3),
(3035, 3),
(3036, 3),
(3037, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `youtube_register`
--

CREATE TABLE `youtube_register` (
  `st_user_id` int(11) NOT NULL,
  `st_title` varchar(45) NOT NULL,
  `st_description` varchar(45) NOT NULL,
  `st_url` varchar(45) NOT NULL,
  `st_videoid` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `youtube_register`
--

INSERT INTO `youtube_register` (`st_user_id`, `st_title`, `st_description`, `st_url`, `st_videoid`) VALUES
(1230, 'Titulo1', 'Descripcion1', 'https://www.youtube.com/watch?v=', '2144&#$sdytuu'),
(1231, 'Titulo2', 'Descripcion2', 'https://www.youtube.com/watch?v=', '2144&#$sdytrw'),
(1232, 'Titulo3', 'Descripcion3', 'https://www.youtube.com/watch?v=', '2144&#$sdghjg'),
(1233, 'Titulo4', 'Descripcion4', 'https://www.youtube.com/watch?v=', '2144&#$sdwrt'),
(1234, 'Titulo5', 'Descripcion5', 'https://www.youtube.com/watch?v=', '2144&#$sdfgg'),
(1235, 'Titulo6', 'Descripcion6', 'https://www.youtube.com/watch?v=', '1234&#$sdytrw'),
(1236, 'Titulo7', 'Descripcion7', 'https://www.youtube.com/watch?v=', '2344&#$sdytru'),
(1237, 'Titulo8', 'Descripcion8', 'https://www.youtube.com/watch?v=', '2334&#$sdytrw'),
(1238, 'Titulo9', 'Descripcion9', 'https://www.youtube.com/watch?v=', '789s&#$sdytuu');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `youtube_user`
--

CREATE TABLE `youtube_user` (
  `st_user_id` int(11) NOT NULL,
  `st_mail` varchar(45) NOT NULL,
  `st_user_pass` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `youtube_user`
--

INSERT INTO `youtube_user` (`st_user_id`, `st_mail`, `st_user_pass`) VALUES
(1230, 'user1230@youtube.com', '1230HTTPS'),
(1231, 'user1231@youtube.com', '1231HTTPS'),
(1232, 'user1232@youtube.com', '1232HTTPS'),
(1233, 'user1233@youtube.com', '1233HTTPS'),
(1234, 'user1234@youtube.com', '1234HTTPS'),
(1235, 'user1235@youtube.com', '1235HTTPS'),
(1236, 'user1236@youtube.com', '1236HTTPS'),
(1237, 'user1237@youtube.com', '1237HTTPS'),
(1238, 'user1238@youtube.com', '1238HTTPS');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `amzbook_autor`
--
ALTER TABLE `amzbook_autor`
  ADD PRIMARY KEY (`book_autor_id`);

--
-- Indices de la tabla `amzbook_bill`
--
ALTER TABLE `amzbook_bill`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `fk_clientid` (`client_id`),
  ADD KEY `fk_bookid` (`book_id`);

--
-- Indices de la tabla `amzbook_books`
--
ALTER TABLE `amzbook_books`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `book_autor_id` (`book_autor_id`);

--
-- Indices de la tabla `amzbook_clients`
--
ALTER TABLE `amzbook_clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indices de la tabla `art_client`
--
ALTER TABLE `art_client`
  ADD PRIMARY KEY (`art_client_id`),
  ADD UNIQUE KEY `art_picture_id` (`art_picture_id`);

--
-- Indices de la tabla `art_picture`
--
ALTER TABLE `art_picture`
  ADD PRIMARY KEY (`art_picture_id`);

--
-- Indices de la tabla `opt_bill`
--
ALTER TABLE `opt_bill`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `fk_clientidopt` (`client_id`),
  ADD KEY `fk_productopt` (`prod_id`),
  ADD KEY `fk_selleropt` (`empl_id`);

--
-- Indices de la tabla `opt_custumers`
--
ALTER TABLE `opt_custumers`
  ADD PRIMARY KEY (`client_id`);

--
-- Indices de la tabla `opt_product`
--
ALTER TABLE `opt_product`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `fk_provideropt` (`prod_prov`);

--
-- Indices de la tabla `opt_providers`
--
ALTER TABLE `opt_providers`
  ADD PRIMARY KEY (`prov_id`);

--
-- Indices de la tabla `opt_rrhh`
--
ALTER TABLE `opt_rrhh`
  ADD PRIMARY KEY (`empl_id`);

--
-- Indices de la tabla `rsocial_user`
--
ALTER TABLE `rsocial_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indices de la tabla `rsocia_user_gallery`
--
ALTER TABLE `rsocia_user_gallery`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `fk_rsuserid` (`user_id`) USING BTREE;

--
-- Indices de la tabla `rsocia_user_relation`
--
ALTER TABLE `rsocia_user_relation`
  ADD PRIMARY KEY (`reg_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `vl_avions`
--
ALTER TABLE `vl_avions`
  ADD PRIMARY KEY (`avions_id`);

--
-- Indices de la tabla `vl_seients`
--
ALTER TABLE `vl_seients`
  ADD PRIMARY KEY (`seient_id`),
  ADD KEY `fk_avionsid` (`avions_id`);

--
-- Indices de la tabla `youtube_register`
--
ALTER TABLE `youtube_register`
  ADD PRIMARY KEY (`st_user_id`);

--
-- Indices de la tabla `youtube_user`
--
ALTER TABLE `youtube_user`
  ADD PRIMARY KEY (`st_user_id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `amzbook_autor`
--
ALTER TABLE `amzbook_autor`
  ADD CONSTRAINT `fk_bookautorid` FOREIGN KEY (`book_autor_id`) REFERENCES `amzbook_books` (`book_autor_id`);

--
-- Filtros para la tabla `amzbook_bill`
--
ALTER TABLE `amzbook_bill`
  ADD CONSTRAINT `fk_bookid` FOREIGN KEY (`book_id`) REFERENCES `amzbook_books` (`book_id`),
  ADD CONSTRAINT `fk_clientid` FOREIGN KEY (`client_id`) REFERENCES `amzbook_clients` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `art_client`
--
ALTER TABLE `art_client`
  ADD CONSTRAINT `fk_clientidart` FOREIGN KEY (`art_picture_id`) REFERENCES `art_picture` (`art_picture_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `opt_bill`
--
ALTER TABLE `opt_bill`
  ADD CONSTRAINT `fk_clientidopt` FOREIGN KEY (`client_id`) REFERENCES `opt_custumers` (`client_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_productopt` FOREIGN KEY (`prod_id`) REFERENCES `opt_product` (`prod_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_selleropt` FOREIGN KEY (`empl_id`) REFERENCES `opt_rrhh` (`empl_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `opt_product`
--
ALTER TABLE `opt_product`
  ADD CONSTRAINT `fk_provideropt` FOREIGN KEY (`prod_prov`) REFERENCES `opt_providers` (`prov_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `rsocia_user_gallery`
--
ALTER TABLE `rsocia_user_gallery`
  ADD CONSTRAINT `fk_useridGallery` FOREIGN KEY (`user_id`) REFERENCES `rsocial_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `rsocia_user_relation`
--
ALTER TABLE `rsocia_user_relation`
  ADD CONSTRAINT `fk_idusuario` FOREIGN KEY (`user_id`) REFERENCES `rsocial_user` (`user_id`);

--
-- Filtros para la tabla `vl_seients`
--
ALTER TABLE `vl_seients`
  ADD CONSTRAINT `fk_avionsid` FOREIGN KEY (`avions_id`) REFERENCES `vl_avions` (`avions_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `youtube_register`
--
ALTER TABLE `youtube_register`
  ADD CONSTRAINT `fk_useridyoutube` FOREIGN KEY (`st_user_id`) REFERENCES `youtube_user` (`st_user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
