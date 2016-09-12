-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.6.16 - MySQL Community Server (GPL)
-- SO del servidor:              Win32
-- HeidiSQL Versión:             8.2.0.4675
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura de base de datos para dbiti
CREATE DATABASE IF NOT EXISTS `dbiti` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_spanish_ci */;
USE `dbiti`;


-- Volcando estructura para procedimiento dbiti.consultaActas
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultaActas`(IN `anio` INT)
BEGIN
IF anio > 0 THEN 
	select act_fecha,act_id,act_descripcion,act_archivo,act_anio FROM pln_actas WHERE act_anio= anio and activo = 1 ;
ELSE 
	select act_fecha,act_id,act_descripcion,act_archivo,act_anio FROM pln_actas WHERE activo = 1;
END IF;
END//
DELIMITER ;


-- Volcando estructura para tabla dbiti.ct_enlaces
CREATE TABLE IF NOT EXISTS `ct_enlaces` (
  `id_enlace` int(10) NOT NULL AUTO_INCREMENT,
  `id_so` int(10) DEFAULT NULL,
  `enl_nombre` varchar(500) COLLATE latin1_spanish_ci DEFAULT NULL,
  `enl_direccion` varchar(500) COLLATE latin1_spanish_ci DEFAULT NULL,
  `enl_tel` varchar(200) COLLATE latin1_spanish_ci DEFAULT NULL,
  `enl_correo` varchar(200) COLLATE latin1_spanish_ci DEFAULT NULL,
  `enl_oficio` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `activo` tinyint(3) NOT NULL DEFAULT '1',
  `fecha_mod` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_enlace`),
  KEY `id_enlace` (`id_enlace`)
) ENGINE=MyISAM AUTO_INCREMENT=168 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='Catalogo de enlaces del estado de sonora';

-- Volcando datos para la tabla dbiti.ct_enlaces: 167 rows
/*!40000 ALTER TABLE `ct_enlaces` DISABLE KEYS */;
REPLACE INTO `ct_enlaces` (`id_enlace`, `id_so`, `enl_nombre`, `enl_direccion`, `enl_tel`, `enl_correo`, `enl_oficio`, `activo`, `fecha_mod`) VALUES
	(1, 1, 'Lic. Oscar Francisco Rodríguez Miranda', 'Centro de gobierno Edificio Sonora Norte tercer nivel, comonfot y paseo del Río Sonora', '2-13-47-14 2-89-38-00 ext. 00192', 'uegubernatura@sonora.gob.mx\ngubernatura_accesoinformacion@yahoo.com.mx', NULL, 1, '2014-08-07 10:12:09'),
	(2, 2, 'Lic. Octavio Augusto Sandoval Cota', 'Blvd. Rosales y Paseo del Canal s/n Colonia Centro', '2-59-48-30  y 6622 56 53 15', 'unidaddeenlacepgjeson@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(3, 3, 'Ing. Ricardo Aguilar Juvera', 'Comonfort y Paseo del Río Edificio Sonora ala norte segundo nivel', '2-17-27-00 Ext. 110', 'uesagarhpa@sonora.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(4, 4, 'C. Elba del Carmen Guajardo Aguayo', 'Blvd. Solidaridad No. 138, Edificio Esmeralda casi esquina Blvd. Navarrete, Col. Raquet Club, C.P. 83200', '108-37-37, 108 3749 Ext. 46006', 'elba_guajardo@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(5, 5, 'Lic. Lucia López León', 'Centro de Gobierno tercer nivel Paseo del Canal y Comonfort', '2-59-61-02 y 03', 'lucialopez@economiasonora.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(6, 6, 'Lic. Manuel del Rincón Jurado', 'Calle Dr. José Miró esquina con Blvd. San Bernardino, col. Las Quintas', '2-89-76-80  y 2 89-76-30', 'atencionciudadana@sec-sonora.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(7, 7, 'Lic. Francisco René Maldonado Navarro', 'Dr. Paliza No. 26 entre Comonfort y Ocampo', '2-13-94-22, 2-13-68-01', 'uesecgob@outlook.com', NULL, 1, '2014-08-07 10:12:09'),
	(8, 8, 'Lic. Fernando Sau Encinas', 'Gustavo Hodgers Rico No. 21, entre Israel González y Juaréz, Colonia Modelo CP. 83190', '217-36-60 ext. 60118', 'u.enlace@haciendaegresos-sonora.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(9, 9, 'Lic. Víctor Ramón Delgado Zamudio', 'Edificio de SIDUE piso 1° ala Poniente Blvd. Hidalgo y Comonfort No. 35, Colonia Centenario', '1-08- 19-00 ext. 60169', 'juridico.sidur@gmail.com\nvictor.delgado@sidur.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(10, 10, 'Lic. Cesar Alan Cota Rodríguez', 'Centro de Gobierno, Edificio Hermosillo, segundo nivel', '2-12-05-62', 'transparenciasecog@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(11, 11, 'Lic. Argentina María Galindo Leyva', 'Centro de Gobierno edificio Sonora primer nivel, paseo del Canal y Comonfort', '1-08-45-00', 'amgalindol@gmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(12, 12, 'Lic. Diana Arechederra Medina', 'Campodónico No. 61 Altos esquina Dr. Paliza Colonia Centenario', '2-17-34-42  y 2-12-76-02', 'diana.arechederra@sesp.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(13, 13, 'Lic. Alma Alejandra Quijada Durazo', 'Blvd. Hidalgo 71 A, Entre Campodónico Y Marsella, Hermosillo, Sonora.', '2-12-17-77 y  2-17-41-41', 'uesecretariatrabajo@sonora.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(14, 14, 'L.A.E. Christian Gilberto Lardin Apodaca', 'Edificio SIDUR, Blvd. Hidalgo No. 35 y Comonfort, 1er. Piso, C.P. 83260', '2-17-01-44 Ext. 135', 'ueoficialiamayor@sonora.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(15, 15, 'Lic.  Oscar Alejandro Núñez Montijo', 'Tehuantepec No. 81 entre Londres y Campodónico', '2-13-51-03  y 2-13-50-95', 'alex_nm_81@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(16, 16, 'Lic. Claudia Olimpia Ruiz Tapia', 'Calle Obregón No. 58 entre Yáñez y Garmendia, Colonia Centro', '2-13-12-97  y 2-13-44-11', 'planeacion@isc.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(17, 17, 'Lic. David Ruiz Contreras', 'Comonfort No. 52 esquina con Manuel Cubillas Colonia Centenario', '2-13-09-23 y 2-13-09-32', 'uejuridico.isj@gmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(18, 18, 'Lic. Yolanda Verónica Yeomas Treviño', 'Blvd. Paseo Río Sonora y Comonfort, Edificio Estatal, 3er Nivel, Ala Norte.', '2-12-03-40 y 2-12-79-14', 'ism_enlacetransparencia@yahoo.com.mx', NULL, 1, '2014-08-07 10:12:09'),
	(19, 19, 'Lic. Jorge Alberto Durazo Gudiño,', 'Blvd. Agustín de Vildosola y Ave. Cultura s/n Col. Villa de Seris, Hermosillo, Sonora', '254-63-95 etx.3216 y 254-63-97', 'jdurazo@musas.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(20, 20, 'Lic. Francisco Javier Hernández Arias', 'Reyes y Aguascalientes esquina, Colonia San Benito', '1-09- 28- 00', 'franciscohernandez@cedes.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(21, 21, 'L.C.C Norma Patricia Palafox Ramírez', 'Centro de Gobierno tercer nivel, Avenida Cultura y Comonfort', '2-13-75-21', 'norma.palafox@economiasonora.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(22, 22, 'Lic. Cristina Real Villalba', 'Centro de Gobierno segundo nivel edificio Sonora', '2-17-29-50 y 2-17-29-10', 'uecel@sonora.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(23, 23, 'Lic. Jesús Trinidad Cota Peinado', 'Ocampo No. 49 entre José María Ávila y Michel. Colonia Centenario', '2-89-57-00 ext. 139', 'uecea@ceasonora.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(24, 24, 'Lic. Gloria Luz Martinez Valenzuela', 'Periférico Oriente No. 1000 Col. Parque Industrial ', '2-41-84-18 y (20,21,22 y 27)', 'comite_tb_br_son@hotmail.com\nglorialuz_mtz@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(25, 25, 'Tec. Francisco Javier Moreno Castillo', 'Calzada de Guadalupe # 1, privada de los reyes, col. San Juan', '2-17-35-35', 'consejo_bacanora@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(26, 26, 'Lic. Belinda Platt Ávila', 'Avenida de la Cultura entre Comonfort y Paseo del Canal Edificio Sonora, segundo nivel ala sur', '2-13-34-52 y 2-17-19-37', 'belinda.platt@sonora.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(27, 27, 'M.A.P. Rosa Isela Rodríguez Astorga', 'Blvd. Rio Sonora Sur, No. 159 Local 8 Proyecto Rio Sonora', '2-17-23-55', 'info@ceestra.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(28, 28, 'Lic. Julio Cesar Bojórquez', 'Blvd. Solidaridad No. 404, Colonia Álvaro Obregón', '2-60-64-42 y 2-60-20-97', 'juliocesarbojorquez@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(29, 29, 'Lic. Alicia Solano Verdugo', 'Blvd. Luis Encinas e Ignacio Romero Planta Baja Colonia San Benito', '2-10-62-89 y 2-89-26-64', 'unidad.enlace@difson.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(30, 30, 'C.P.C. Francisco Javier Caraveo Rincón', 'Dr. Aguilar y Comonfort, edificio ALONSO, 4to piso, despacho 401, Col. Centro, C.P. 83000', '2-17-10-28 y 2-13-96-09', 'fj_caraveo@isssteson.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(31, 31, 'Lic. Argentina María Galindo Leyva', 'Centro de Gobierno edificio Sonora primer nivel, paseo del Canal y Comonfort', '1-08-45-00', 'amgalindol@gmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(32, 32, 'Lic. Diana Arechederra Medina', 'Calle Bravo Nº 22 entre Blvd Hidalgo y Dr. Paliza Col. Centenario, C.P. 83260', ' 2-12-76-02 y  2-12-76-07', 'diana.arechederra@sesp.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(33, 33, 'Lic. Luis Hernán Hernández Islas', 'Carretera Internacional Guaymas kilometro 3.5', '2-50-23-71 y 2-54-04-01', 'luis.hernandez@isspe.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(34, 34, 'Lic. Luis Alfredo Ibarra Galindo', 'Centro de Gobierno tercer nivel ala norte, Paseo del Canal y Comonfort', '2-89-58-00 ext. 131 y 132', 'libarra@sonoraturismo.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(35, 35, 'Ángel Reyes Mercado', 'Calle Comonfort S/N, Col. Centro, 3er piso Edif. Sonora Sur, Centro de Gobierno', '2-59-61-98.', 'angel.reyes@economiasonora.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(36, 36, 'Lic. Lorena Elías Pacheco', 'Blvd. Solidaridad 335 A Local 1, Paseo del Sol, Hermosillo, Sonora', '2-89-02-37', 'lelias@sonora.org.mx', NULL, 1, '2014-08-07 10:12:09'),
	(37, 37, 'Lic. Yael Cinco Acosta', 'Reforma #267 Entre Tehuantepec Y Dr. Paliza Hermosillo, Sonora.', '212-39-72 y 73', 'ycinco@haciendasonora.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(38, 38, 'Lic. Verónica Montes Terrazas', 'Zaragoza No. 5 esquina con calle Independencia, Colonia Villa de Seris', '2-50-97-34 y 1-08-16-00 61002', 'vmontes@cecop.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(39, 39, 'Lic. Myriam Susana Ortega Jaramillo', 'Boulevard Solidaridad esquina con Boulevard Luis Donaldo Colosio edificio A nego plaza, metro centro, tercer piso, Villa satelite', '213-81-19, 2-13-81-23 y 2-13-81-25', 'myjara_92@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(40, 40, 'Ing. Alma Lorena Herrera Iriqui', 'Paseo Río Sonora norte No. 76 local 207 esquina Galeana', '2-89-56-50 y 2-17-11-30 ext. 46254', 'enlace@vivienda.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(41, 41, 'C. José Guadalupe Beltrán Urquijo', 'Blvd. Kino No. 1104, Colonia Pitic, C.P. 831050', '2-14-60-33 y 2-14-61-37 ext. 215', 'jbeltran@isie.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(42, 42, 'Lic. José Humberto Cota Vílchez', 'Blvd. Ignacio Soto y Pedregal s/n Colonia San Luis', '2-89-03-41 y 40', 'hcota@juntadecaminos.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(43, 43, 'Lic. Elizabeth Gallegos Castillo', 'Avenida Obregón No. 46 entre calle Yáñez y Garmendia, Colonia Centro', '2-13-56-67 y 2-17-00-80', 'liz_gallegos@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(44, 44, 'Ing. Germán Tapia Miranda', 'Centro de Gobierno Edificio Sonora ala sur tercer piso', '2-17-04-64 y 2-59-61-50', 'german.tapia@economiasonora.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(45, 45, 'Ing. José Rosario Espinoza Galaviz', 'Comonfort y Paseo del Canal Edificio México quinto nivel', '2-13-54-51 y 2-13-54-19', 'telefoniarural@sonora.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(46, 46, 'Lic. Juan Carlos Zúñiga Quiroga', 'Blvd. Luis Encinas y Olivares s/n Colonia Villa de Satélite', '2-18-69-30', 'transparencia@telemax.com.mx', NULL, 1, '2014-08-07 10:12:09'),
	(47, 47, 'C.P. Oscar Valdez Delgado', 'Cinco de Febrero y Allende, Colonia Centro, Obregón, Sonora', '01-644-414-31-55', 'ovaldez@bibliotecaobregon.org.mx', NULL, 1, '2014-08-07 10:12:09'),
	(48, 48, 'Lic. Jesús Carlos Castillo Rosas', 'Calle la Escondida No. 34 Colonia Santa Fe', '2-13-83-71 y 2-13-83-75 (308)', 'jesuscastillo@cecytessonora.edu.mx', NULL, 1, '2014-08-07 10:12:09'),
	(49, 49, 'Lic. Pedro Pérez Pérez', 'Blvd. Agustín de Vildosola Final y Calle de los Bachilleres', '2-59-29-30 y 2-59-29-33', 'enlacecobach@cobachsonora.edu.mx', NULL, 1, '2014-08-07 10:12:09'),
	(50, 50, 'Ing. Adrian Grijalva Ruiz', 'Calle Matamoros No. 105 esquina Jalisco, Colonia Centro', '289-37-52 y 50', 'agrijalva@conalepsonora.edu.mx', NULL, 1, '2014-08-07 10:12:09'),
	(51, 51, 'Joel Flores Barboza', 'Campodónico No. 21, esquina con Doctor Pesqueira, de la colonia Centenario, en Hermosillo, Sonora', '2-10-77-07 y 2-10-91-08', 'fobj@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(52, 52, 'C.P. Francisco Eduardo Cortes Martinez', 'Dr. Hoffer esq. con Ocampo', '2-13-92-03 y 2-17-52-16', 'fcortes@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(53, 53, 'Lic. Carlos Favela Jazo,', 'Calle Olivares No. 128 esquina con Paseo de la Paz, colonia Valle Grande', '2-89-87-00 ext. 188', 'cfavela@icees.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(54, 54, ' Obed Alberto Castillo Reyes', 'Olivares #38 / Luis Encinas y Navarrete, col. Villa satélite', '2-60-57-12 y 2-60-79-12', 'info@ieees.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(55, 55, 'Lic. Martin Sabas Mendivil Ceceña', 'Madrid s/n entre Edel Castellanos y Dr. Aguilar, colonia Prados del Centenario', '2-13-10-55 y 2-14-44-36 ext. 113', 'c.vazquez@ifodes.edu.mx', NULL, 1, '2014-08-07 10:12:09'),
	(56, 56, 'Lic. Jesús Armando Noriega Tánori', 'Avenida Nayarit  y  Guerrero esq. Col. San Benito', '2-15-18-81 y 2-15-16-50 \nExt. 510', 'anoriega@inea.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(57, 57, 'C.Christopher Alberto Navarro Fregoso', 'Carretera Internacional a Nogales kilometro 2 s/n Obregón, Sonora', '01-644-410-86-50  (51) ext. 1104', 'transparencia@itesca.edu.mx', 'SKMBT_42014082723370.pdf', 1, '2014-08-28 10:08:30'),
	(58, 58, 'Arq. Arnoldo Caro Torres', 'Carretera Cananea-Agua prieta kilometro 82.5Cananea, Sonora', '01 645-332-50-17 y 01 645-332-69-92', 'arnoldocaro2001@prodigy.net.mx', NULL, 1, '2014-08-07 10:12:09'),
	(59, 59, 'Lic. Marcia Kamitzu Rodríguez Kinejara', 'Blvd. Las Conchas kilometro 1 ejido San Rafael, Puerto Peñasco, Sonora', '01-638-38-312-17', 'marcia@itspp.edu.mx', NULL, 1, '2014-08-07 10:12:09'),
	(60, 60, 'Lic. Luis Manuel del Rincón Jurado', 'Blvd. Luis Donaldo Colosio Final Poniente s/n', '2-89-76-80 y 2-89-76-30', 'atencionciudadana@sec-sonora.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(61, 61, 'Lic. Ernestina Quintal Berny', 'Rosales No. 189 Colonia Centro', '2-89-59-00', 'ernestina.quintal@ues.mx', NULL, 1, '2014-08-07 10:12:09'),
	(62, 62, 'M.C. Raúl Fimbres Moreno', 'Carretera a Moctezuma- Cumpas Kilometro 2.5, Moctezuma, Sonora', '01-634-342-96-00', 'transparencia@unisierra.edu.mx', NULL, 1, '2014-08-07 10:12:09'),
	(63, 63, 'L.C. Lauro Enrique Mendivil Ceceña', 'Carrretera etchojoa Bocobampo km. 6', '647-42-505-15', 'lemendivil-c@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(64, 64, 'M.A. Jesús Francisco Valencia Terán', 'Blvd. De los Seris s/n colonia Parque Industrial', '2-51-11-00 ext. 104, 251-05-25', 'daf@uthermosillo.edu.mx', NULL, 1, '2014-08-07 10:12:09'),
	(65, 65, 'Lic. Miguel Angel Zumbardo Juarez', 'Abogado  General de la Universidad Tecnológica', '01- 631-311- 18- 30  Ext 1006', 'mzumbardo@utnogales.edu.mx', NULL, 1, '2014-08-07 10:12:09'),
	(66, 66, 'Lsca. Juan Ignacio Vanegas Meza', 'Blvd. Tecnológico S/N col. Brisas del golfo, CP 83550', '01-638- 102- 12- 12 y 13', 'juanvanegas@utpp.edu.mx \npatriciamartinez@utpp.edu.mx', NULL, 1, '2014-08-07 10:12:09'),
	(67, 67, 'Ing. Carmen Cano Frausto.', 'Av. Jalisco y calle 59, S/N C.P. 83458, San Luis Rio Colorado Sonora', '01- 653- 518-51-46', 'planeacion@utslrc.edu.mx', NULL, 1, '2014-08-07 10:12:09'),
	(68, 68, 'Lic. Eder Josué Valenzuela Beltrones', 'Dr. Norman E. Bourlang Kilometro 14 s/n junto al ciano, Obregón, Sonora', '01-644- 414-24-34', 'jvalenzuela@uts.edu.mx', NULL, 1, '2014-08-07 10:12:09'),
	(69, 69, 'Mtro. Jesús Odilón Baldenebro Ruiz', 'Calle 5 de Febrero #818 sur colonia Centro edificio Rectoria Planta baja', '644- 410-09-00 ext. 2019', 'jodilon@itson.edu.mx', NULL, 1, '2014-08-07 10:12:09'),
	(70, 70, 'Dra. María del Carmen Castro Vasquez', 'Av.Obregón No.54 Col Centro C.P. 83000', '259-53-00 Ext. 2253', 'transparencia@colson.edu.mx', NULL, 1, '2014-08-07 10:12:09'),
	(71, 71, 'Lic. Fernando Sánchez Barrón', 'Centro de Gobierno, edificio Sonora segundo nivel ala norte', '2-13-95-16 y 2-13-98-38', 'cedemunsonora@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(72, 72, ' Yadira Ruíz Pacheco', 'Centro de Gobierno Edificio Sonora segundo nivel ala norte, Comonfort y Paseo del Río Sonora', '2-13-69-24', 'cebyc.transparencia@yahoo.com.mx', NULL, 1, '2014-08-07 10:12:09'),
	(73, 73, 'Lic. Diana Lucia Vargas Cruz', 'Centro de Gobierno Edificio Sonora primer nivel, Comonfort y Paseo del Río Sonora', '1-08-42-10', 'transparencia@icreson.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(74, 74, ' José Luis Islas Pacheco', 'Náinari 112pte. Entre Coahuila Y Colima', '01-664- 4-13-90-27.', 'museosonoraenlarevolucion@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(75, 75, 'Lic. Victor  Ramón Delgado Zamudio', 'Edificio SIDUR 1er piso Boulevard Hidalgo y Comonfort #35 Centenario', '1-08-19-00 ext.60169', 'juridico.sidur@gmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(76, 76, 'C.P. Cynthia Zaraith Orozco Atondo', 'Centro de Gobierno Altos Puente Peatonal Local “B”, Comonfort y Paseo del Canal', '2-13-37-05 y 2-13-37-10', 'puente.colorado@gmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(77, 77, '', '', '', '', NULL, 1, '2014-08-07 10:12:09'),
	(78, 78, 'Lic. Alicia Solano Verdugo', 'Blvd. Luis Encinas e Ignacio Romero Planta Baja Colonia San Benito', '2-10-62-89 y 2-89-26-64', 'fondo.solidaridad@difson.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(79, 79, 'Ing. Sergio Tachiquin Pérez', 'Avenida Serdan #134 Colonia Centro', '2-13-21-30 (36)', 'fermot_son@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(80, 80, 'Dr. Víctor Manuel Landeros Arvizu', 'Nayarit No. 289, Esquina Gándara, Colonia San Benito, Hermosillo, Sonora', '2-36- 44- 00', 'victorlanderos@proteccioncivilsonora.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(81, 81, 'Lic. Diana Platt Salazar', 'Edificio Hermosillo, Planta baja ala sur', '2-17-57-78 y 2-13-03-86', 'fofaesonora@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(82, 82, 'P.A.S Rolando Alfredo Flores Angulo', 'Centro de Gobierno Edificio Sonora primer nivel, Comonfort y Paseo del Río Sonora', '2-13-07-13 y 2-13-07-22', 'rolando.flores@sonora.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(83, 83, 'Lic. José Omar Molina Amavizca', 'Blvd. Agustín de Vildosola S/N, Hermosillo, Sonora C.P.83280', '1-08-47-50', 'jmolinafoossi@gmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(84, 84, 'Lic. Octavio Augusto Sandoval Cota', 'Blvd. Rosales Y Paseo Del Canal S/N Esq. Col. Centro, Hermosillo, Sonora. 2da. Planta, Ala Oeste.', '259-48-30, 259-48-00, Ext. 14020, 14021', 'unidaddeenlacepgjeson@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(85, 85, 'C.P. Pedro Orozco Villegas', 'Centro de Gobierno Altos Puente Peatonal Local “C”, Comonfort y Paseo del Canal', '2-17-30-11', 'despacho_orozco@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(86, 86, 'Lic. Osvaldo Leyva Williams', 'Edificio Negoplaza quinto piso Blvd. Colosio esquina con Blvd. Solidaridad', '2-36-05-00  (09)', 'osvaldo.leyva@impulsor.com.mx', NULL, 1, '2014-08-07 10:12:09'),
	(87, 87, 'Lic. Emma Guadalupe Millán Castro', 'Calle Bravo No. 48 y Dr. Hoffer', '2-17-55-66 y 2-12-07-12', 'contencioso@prodigy.net.mx', NULL, 1, '2014-08-07 10:12:09'),
	(88, 88, 'C. RAÚL DOMINGO NAVARRO HEREDIA', 'Palacio Municipal Calle Obregón y \nPesqueira No. 132 col. Centro', '01 623 233 -01- 39 \n233-01-55', 'raul.navarroh@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(89, 89, 'LIC. ROBERTO ÁVILA ESPEJO ', 'Palacio Municipal Calle 6 Entre Ave \n16 y 17 Col. Centro \nCP. 84200 Planta Alta', '01 633 33 8 -94- 80 \nExt.201 ', 'secretariaayuntamientoap@gmail.com ', NULL, 1, '2014-08-07 10:12:09'),
	(90, 90, 'C. HELIODORO SOTO ZAVALA', 'Palacio Municipal Ave. Juárez S/N \nCol. Centro', '01 647 42 8- 04- 54 \n8-02-09 \n42 80228', 'contraloria@alamos.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(91, 91, 'C. FRANCISCA NORIEGA CASTILLO', 'Palacio Municipal Calle Zaragoza y \nDr. Godínez Col. Centro 83750 ', '01 637 37 4- 05- 48 (fax) \n 4 -00- 39', 'panchita_noriega@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(92, 92, 'C. LEONARDO ISAÍ URQUIJO PÉREZ', 'Palacio Municipal Colosio No. 20 \nCol. Centro \n', '01 634 34 3- 04- 16(fax) \n 3- 04- 99 \n3-04-33 y 34 \n', 'municipiodearivechi@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(93, 93, 'PROF. ALONSO CORRALES GONZÁLEZ', 'Palacio Municipal Calle Corella y \nUrrea No. 59, Col. Centro ', '01 634 34 1- 01- 05(fax) \n 1- 00- 17', 'comunicacionsocialarizpe@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(94, 94, 'C. JUAN DANIEL GONZALEZ CELAYA', 'Palacio Municipal Av. 16 de \nSeptiembre. s/n, Col. Centro ', '01 637 37 3-60-02 \n', 'ayuntamiento_atil@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(95, 95, 'YURIDIA MONTOYA ', 'Palacio Municipal Ave. Miguel \nAlemán ', '01 634 34 6 -80- 55\n', 'bacadehuachi@live.com.mx', NULL, 1, '2014-08-07 10:12:09'),
	(96, 96, 'C. LOURDES LUGO LÓPEZ ', 'Palacio Municipal frente a plaza \npublica', '01 634 101-10-01 \n01 634 101-10-86', 'ayuntamientodebacanora@live.com.mx', NULL, 1, '2014-08-07 10:12:09'),
	(97, 97, 'C. MARCIAL ENRÍQUEZ RASCÓN', 'Palacio Municipal Calle Obregón No.70 Col. Centro.', '01 634 34 1 55 56', 'municipiodebacerac@prodigy.net.mx', NULL, 1, '2014-08-07 10:12:09'),
	(98, 98, 'C. DANIELA MARÍA GALLEGO GÁLVEZ', 'C. Central Luis Donaldo Colosio No. 5, Col. Centro', '01 645 33 4- 50- 87(fax)\n 4-51-97, 4-50-48', 'bacoachi_011@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(99, 99, 'C. VIRGINIA ESPINOZA FIERRO ', 'Belisario Domínguez y Blvd. Félix Valdez', '01 644 43 3 -06-77\n', 'enlacetransparenciabacum@hotmail.com ', NULL, 1, '2014-08-07 10:12:09'),
	(100, 100, 'C. MANUEL ALEJANDRO  TIZNADO ÁLVAREZ', 'Martires de 1906 S/N col. Centro', '01 623 231 01 42 y 01 623 23 10 050 01 623 23 10 299 ', 'banamichiadmon12-15@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(101, 101, 'C. BAUDELIO MARTÍNEZ ESPINOZA', 'Eduardo W. Villa No. 10 colonia centro', '01 623 23 3 52 57\n3-51-31(fax)', 'baudeliomtz@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(102, 102, 'C. LILEALDA FLORES ROJAS', 'Plaza Hidalgo, s/n col. centro ', '01 634 34 1- 57- 42\n1-58-23', 'bavispe16@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(103, 103, 'C. CHRISTIAN IVÁN SOTO CAZARES', 'Calle Plutarco Elías Calles S/N', '01 643 43 5- 02- 65(fax)\n5-00-24, 5 21 21  y 5-00-61', 'crizis7@hotmail.com   ', NULL, 1, '2014-08-07 10:12:09'),
	(104, 104, ' ', 'Calle Juárez y Terán S/N', '01 641 32 5 -00- 54(fax)   \n                 5- 03- 65', '', NULL, 1, '2014-08-07 10:12:09'),
	(105, 105, 'C. GUADALUPE CAMPOS ', 'Obregón y Quiroz Mora C.P. 83600', '01 637 37  2 -13 -78   \n                   2 -33- 44', 'gcampos_1268@live.com.mx', NULL, 1, '2014-08-07 10:12:09'),
	(106, 106, 'DR. ANTONIO ALVIDRES  LABRADO', '5 de Febrero esq. Calle Allende', '01 644 4 10-5 1-02\n10-51-04(fax)\n10-51-00', 'transparencia.cajeme@cdobregon.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(107, 107, 'C. ALONSO VILLA GARCÍA', 'Ave. Juárez y 4ta. Este Col. Centro', '01 645 33 2 -56-50   \n                 2- 64-90', 'alonso2k81@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(108, 108, 'C. KENIA ITZEL SOLANO TAPIA', 'Calle Oaxaca y Zacatecas s/n Colonia Centro', ' (623) 245-02-12', 'kenialpu@gmail.com ', NULL, 1, '2014-08-07 10:12:09'),
	(109, 109, 'C. NORMA ANGÉLICA VALENZUELA CARRILLO', 'Palacio Municipal Domicilio Conocido', '01 632 32 224 29', 'angelica_valenzuela@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(110, 110, ' C. VÍCTOR MANUEL GUZMÁN QUIJADA', 'Palacio Municipal   C. Luis Donaldo Colosio  y Ave. Obregón, Col. Centro', '01 634 34 6 -00- 39(fax)\n6-04-77', 'municipiodecumpas@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(111, 111, 'C. MARCELINO OLIVARRIA DUARTE', 'Palacio Municipal Av. Colosio No. 92 Centro', '634 24 3 20 01', 'evazugr@hotmail.com ', NULL, 1, '2014-08-07 10:12:09'),
	(112, 112, 'C.P. DARIO ARMANDO ALCANTAR COTA', 'Ave. Revolución y Niños Héroes Esq.  Colonia Moderna', '01 622 22 3-13-11 ', 'dario_alcantar@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(113, 113, 'C. AMANDA OFELIA VALENZUELA RODRÍGUEZ       ', 'Palacio Municipal. Entre No Reelección y Obregón c.p 85280', '647 42 5- 02- 39   \n            5- 02- 28 y 29\n', 'contraloria.etchojoa@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(114, 114, 'C. LESDEE MARÍA ARVALLO BRACAMONTES', 'Ave. Morelos, Col. Centro S/N Esqueda, Sonora', '01 633 33 7-01-71 , 33 7- 51- 02\n7-01-71', 'leslieab83@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(115, 115, 'C. CARLOS ARVIZU VALDEZ', 'Avenida Petra Santos y Carretera A Puerto Peñasco.', '01 651 51 2- 11- 72 \n                  2-10- 62', 'karsan@karsan.com.mx', NULL, 1, '2014-08-07 10:12:09'),
	(116, 116, 'C. BLANCA ROSA BARCELÓ ', 'Ave. "C" y Niños Héroes No. 21 C.P. 84460', '01 634 34 3 -50- 10', 'secretariaayuntamiento2012-15@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(117, 117, 'LIC. ERNESTO BENÍTEZ SILVA', 'Palacio Municipal Calle 22 y 23 Ave. Serdán no. 150 ', '01 622 22 2-59-35\n01 622 22 2-20-49\n', 'guaymaslegal@gmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(118, 118, 'LIC. MARIBEL MENDOZA LÓPEZ', '1ro. De Mayo 82 entre Nayarit y Veracruz. Col. Country Club', '01 662 289 30 00 Ext 3489', 'transparencia@hermosillo.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(119, 119, 'C. ANDRÉS AVELINO SAMANIEGO DÁVILA', 'Palacio Municipal Plaza Morelos No. 1', '01 634 34 1 -50- 44 \n            34 1- 51- 91', 'huachinera02@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(120, 120, 'C. EZEQUIEL TANORI MARRUJO', 'Palacio Municipal Ave. Amparo Moreno No. 25 ', '634 34 3- 52- 02\n3-50-79', 'jaquelinevalenciadurazo@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(121, 121, 'C. FLORA DE JESÚS MILLANES ESQUER', 'Palacio Municipal,   No Relección S/N entre Constitución y 16 de Septiembre,  Col. Centro', '647 42 619 97', 'huatabampotransparente@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(122, 122, 'ING. MARCO ANTONIO LÓPEZ MORALES', 'Palacio Municipal Hidalgo No. 3 C.P. 84860', '623 23 1 5-110\n623 23 15 -088', 'huepacson1215@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(123, 123, 'ANA MERCEDES CASTRO SOMOZA', 'Palacio Municipal Luis Donaldo Colosio No. 24', '01 632 32 6 -00- 51 \n  6 -05- 57 2 -02- 00', 'contraloriamunicipalimuris@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(124, 124, 'C. EDUARDO CÓRDOVA RENDÓN', 'Palacio Municipal  Miguel Hidalgo S/N', '(044) 6621 40 37 27', 'eduardocordova_71@hotmail.com ', NULL, 1, '2014-08-07 10:12:09'),
	(125, 125, 'LIC. LUIS ERNESTO DURAZO ARVIZU', 'Avenida Obregón s/n colonia Centro', '632-108-10-00 ext. 7', 'unidadenlace@magdalenadekino.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(126, 126, 'C.P. NILZA GÁLVEZ ESPINOZA', 'Hidalgo  final sur #1', '623 231 8049', 'Municipio_mazatan@hotmail.com ', NULL, 1, '2014-08-07 10:12:09'),
	(127, 127, 'C. ROBERTO MORENO TÉLLEZ', 'Palacio Municipal Plaza Juárez No. 2', '01 634 24 3- 05- 06  ', 'ayuntamiento.mocson@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(128, 128, 'LIC. MARIA ELENA SANCHEZ LUCERO', 'Palacio Municipal  Ave. Fco. I Madero No. 285, Col. Centro', '01 633 33 4 -01-07    ', 'contralorianacoson@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(129, 129, 'C. MELQUIADES OCAÑA MENDOZA', 'Palacio Municipal Calle Juárez Ave. Calle 8 col. Centro C.P. 84440', '01 634 34 6 -50- 12\n6-50-62 (fax)', 'melquiades1967@live.com;  elizabeth_903@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(130, 130, 'ING. ABELARDO OCHOA ANAYA', 'Palacio Municipal Calle Plaza Jesús García No. 2', '01 634 34 2- 02- 07  Ext. 114 \n                2- 02- 06(fax)', 'abelardo.ochoa@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(131, 131, 'LIC. MARÍA ANTONIETA ÓRNELAS GÓMEZ', 'Palacio Municipal No Reelección y Plaza 5 De Mayo', '01642 42 2- 01- 30 Ext.134\n 2 -99- 51(fax) ', 'transparencia@navojoa.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(132, 132, 'LIC. JULIO CÉSAR MINJÁREZ GRANADOS', 'Calle Adolfo López Mateos No.339, col. Fundo Legal', '01 631 31 1 -27- 00 \n Ext. 1220 y 1205', 'jefeunidadenlace@transparencianogales.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(133, 133, 'ANA MARIA LEYVA ESTRELLA', 'Palacio Municipal Domicilio Conocido', '6622120249', 'adolfoicedo@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(134, 134, 'C. RITA FABIOLA CESNA LACARRA', 'Palacio Municipal Asunción y Sonora', '01 2001244385', 'romina_fab@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(135, 135, 'C. MARÍA DEL CARMEN MARTÍNEZ FIGUEROA ', 'Palacio Municipal Domicilio Conocido', '0456371021214', 'maricharmen_mtz@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(136, 136, 'C. JULIO MUJICA BARAJAS', 'Palacio Municipal Calle Zaragoza y Víctor Estrella.', '01 637 37 1 -00 -31\n1-03-51', 'pitiquito.gobierno@gmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(137, 137, 'ING. MARTIN CELAYA LÓPEZ', 'Palacio Municipal Blvd. Benito Juárez y Fremont Colonia Benito Juárez', '(638) 10 8 22 00 AL 19 y (638) 10 822 00', 'contraloria.puertopenasco@gmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(138, 138, 'C. MARIO GLEN SOTO ZAZUETA', 'Palacio Municipal Domicilio Conocido', '01 647 42 4 10 27\n', 'municipio_quiriego@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(139, 139, ' C. ALEJANDRA PERALTA CRUZ', 'Palacio Municipal Calle Obregón No 4', '(623)232-0867, 232-0994', 'ale_1239@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(140, 140, 'C. ÁLVARO FIEL ZAZUETA', 'Palacio Municipal Calle Obregón E/Campana y No Reelección', '01 647 42 8- 07- 00  Ext. 108\n8 06 53', 'ayuntamientoderosario@yahoo.com.mx', NULL, 1, '2014-08-07 10:12:09'),
	(141, 141, 'C. JOSÉ VALENTÍN CORONA MORA', 'Palacio Municipal Hidalgo y Ave. Rafael Meneses', '01 634 34 3 -00- 14\n3-02-18', 'presidenciamunicipal_sah@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(142, 142, 'C. MIGUEL ÁNGEL HERRERA  IRIQUI', 'Ave. Libertad No 3 Colonia Centro', '01 623 23 3 -02- 41 \n 3 -00- 24', 'mpiosanfelipedejesussonora@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(143, 143, 'LIC. JUAN LUIS SOSA MADRID', 'Reforma Final Este S/N. Col Arbileda C.P. 85515', '01 643 43 4 -04- 35   \n4- 01 -79', 'haytosirmson2013@gmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(144, 144, '', 'Palacio Municipal Domicilio Conocido', '2001244320\n623 231 8051 Y 52 EXT. 104', 'municipiodesanjavier@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(145, 145, 'LIC. JESÚS ISIDRO ALVARADO  OSORIO', 'Avenida Juárez y Calle 4ta. s/n C.P. 83400', '016535366633\n666632', 'jesus.alvarado@sanluisrc.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(146, 146, 'C. ALMA ANGELINA TAPIA LÓPEZ ', 'Palacio Municipal Reforma No. 28 Esq. Mina', '0446621880522', 'contraloria.smh@gmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(147, 147, 'C. JORGE GUADALUPE CASTILLO NORIEGA', 'Palacio Municipal, Colosio Esquina Obregón S/N, Colonia Obregón', '01 623 23 2- 13- 47', 'jorgecn_81@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(148, 148, 'C. JOSÉ RAMÓN SIQUEIROS', 'Palacio Municipal    Ave. Serna y Calle Zaragoza', '01 641 32 4 -15-80\n4-15-81', 'siqueiros2305@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(149, 149, 'C. ARMANDO COTA LEYVA', 'Palacio Municipal    Avenida López Mateo No. 5', '01 645 33 2 -66-10  \n  2 -67- 34', 'bonnye06@msn.com', NULL, 1, '2014-08-07 10:12:09'),
	(150, 150, '', 'Palacio Municipal, Calle Independencia S/N, Col. Centro', '01 637 37 3 -51- 06\n3-50-39 \n  0163737 35039 y 60 ', 'saricsonoramexico@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(151, 151, 'FERNANDO TADDEI CORDERO', 'Palacio Municipal Domicilio Conocido', '01 634 24 6-32-46  ', 'secretariasoyopa@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(152, 152, 'C. ALBERTO AYALA VALENZUELA', 'Palacio Municipal Domicilio conocido', '01 634 101-00-63\n101-00-64 (fax)', 'Latinoporund.22@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(153, 153, 'C. NANCY SOCORRO TORRES HERRERA', 'Avenida Allende No. 201, Col. Las Palmas', '01 634 34 2-81-11\n634 34 2-81-40 (fax)', 'nancy.torres.herrera@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(154, 154, 'C. KAREN LOURDES MURRIETA BEJARANO', 'Palacio Municipal Galena y Zaragoza Esq.', '01 641 32 5- 60- 22 y 23', 'kren_murrieta@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(155, 155, 'C. LUIS IVÁN SUAREZ ACUÑA', 'Palacio Municipal Calle San Blas No. 5', '01 637 37 3- 70- 00 \n   3 -70- 24', 'contralor_tubutama@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(156, 156, 'C. MARCO ANTONIO TADDEI SHIMADA', 'Zaragoza No. 1, Palacio Municipal(Segundo Piso)', '01 623 23 2 -01- 50\n2-00-51(fax)\n2-00-50 ', 'contralor-ures@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(157, 157, 'C. MARCIA JUDITH MARTÍNEZ DURAZO', 'Calle Nicolás Bravo No. 5 Centro', '01 634 34 4- 01 -13', 'villahidalgosonora2012@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(158, 158, 'C. MARTIN GUSTAVO BRACAMONTE', 'Palacio Municipal Domicilio Conocido', '01 623 21 2-00-48 ', 'mpiovillapesqueira@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(159, 159, 'C. YOANA MOLINA AMAVIZCA', 'Palacio Municipal Calle Cajeme Esq. Ave. Juárez', '01 623 23 1 90 56(fax)\n1-92-81\n1-92-82', 'ayuntamiento_yecora@hotmail.com', NULL, 1, '2014-08-07 10:12:09'),
	(160, 160, 'C. Lic. Carlos Alberto Duarte Rodríguez', 'Edificio del Poder Judicial, Tercer piso, en Tehuantepec y Comonfort, Colonia Las Palmas, C.P. 83270', '213-97-44 y 217-54-61', 'uenlacestj@stjsonora.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(161, 161, 'Lic. Daniel Nuñez Santos', 'Tehuantepec y Pedro Moreno, col. Las Palmas', '(662) 259-67-00 Ext. 353', 'unidadenlace@congresoson.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(162, 162, 'Lic. Gustavo Enrique Ruiz Jiménez', 'Blvd. Colosio y Periferico Poniente local 3 letra "C", col. Villa Satélite', '(662) 236-65-04, 236-65-06 Ext. 108', 'atencion@isaf.gob.mx', NULL, 1, '2014-08-07 10:12:09'),
	(163, 163, 'C.P. Víctor Alfonso Encinas Mascareño', 'Blvd. Luis Encinas y Periférico \nPoniente s/n, Colonia Choyal ', '2-16-32-57 y \n2-16-30-32', 'transparencia@cedhsonora.org.mx', NULL, 1, '2014-08-07 10:12:09'),
	(164, 164, 'Lic. Héctor Sigifredo Cruz Iñiguez', 'Edel Castellanos No. 53, Colonia \nPrados del Centenario ', '2-13-51-39 y \n2-13-25-91 ', 'info@teesonora.org.mx  hector.cruz@teesonora.org.mx', NULL, 1, '2014-08-07 10:12:09'),
	(165, 165, 'Lic. Nery Ruiz Arvizu', 'Luis Donaldo Colosio No. 35 Esquina con Rosales, Colonia Centro', '6622594900 Ext. 130', 'nruiz@ceesonora.org.mx', NULL, 1, '2014-08-07 10:12:09'),
	(166, 166, '\nLic. Lizbeth Sabrina González Bustamante', 'Calle Dr. Hoffer No. 65 entre calle \nBravo y Galeana, Colonia Centenario', '2-13-15-43 y \n2-13-15-46 \n01 800 701 65 66 ', 'unidaddeenlace@transparenciasonora.org lizbethgonzalez@transparenciasonora.org', NULL, 1, '2014-08-07 10:12:09'),
	(167, 167, 'C.P. María Isabel Sandoval López', 'Rosales y Blvd. Luis Encinas Johnson, \nEdificio 10K, segundo piso, \nC.P. 83000 ', '2-59-22-89 ext. \n83003', 'uenlace@guaymas.uson.mx', NULL, 1, '2014-08-07 10:12:09');
/*!40000 ALTER TABLE `ct_enlaces` ENABLE KEYS */;


-- Volcando estructura para tabla dbiti.ct_grupos_infpub
CREATE TABLE IF NOT EXISTS `ct_grupos_infpub` (
  `id_group` int(11) NOT NULL AUTO_INCREMENT,
  `orden` int(11) NOT NULL DEFAULT '0',
  `id_frc` int(11) DEFAULT '0',
  `descripcion` varchar(50) COLLATE latin1_spanish_ci DEFAULT '0',
  `activo` int(11) DEFAULT '0',
  KEY `id_group` (`id_group`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- Volcando datos para la tabla dbiti.ct_grupos_infpub: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `ct_grupos_infpub` DISABLE KEYS */;
REPLACE INTO `ct_grupos_infpub` (`id_group`, `orden`, `id_frc`, `descripcion`, `activo`) VALUES
	(1, 1, 1, 'Leyes Federales', 1),
	(2, 2, 1, 'Leyes Estatales', 1),
	(3, 4, 1, 'Reglamentos', 1),
	(4, 6, 1, 'Acuerdos', 1),
	(5, 3, 1, 'Decretos', 1),
	(6, 5, 1, 'Lineamientos', 1),
	(7, 1, 15, 'Poder Ejecutivo', 1),
	(8, 2, 15, 'Poder Legislativo', 1),
	(9, 5, 15, 'Instituciones Educativas', 1),
	(10, 7, 15, 'Sociedad Civil', 1),
	(11, 4, 15, 'Organismos Autónomos', 1),
	(12, 6, 15, 'Camaras Empresariales', 1),
	(13, 3, 15, 'Poder Judicial', 0);
/*!40000 ALTER TABLE `ct_grupos_infpub` ENABLE KEYS */;


-- Volcando estructura para tabla dbiti.ct_obligados
CREATE TABLE IF NOT EXISTS `ct_obligados` (
  `id_so` int(10) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(5000) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `tipo` set('Ayuntamiento','Ejecutivo','Organismo Autonomo','Poder Judicial','Poder Legislativo') COLLATE latin1_spanish_ci DEFAULT NULL,
  `titular` varchar(400) COLLATE latin1_spanish_ci DEFAULT NULL,
  `cargo_titular` varchar(400) COLLATE latin1_spanish_ci DEFAULT NULL,
  `activo` tinyint(3) DEFAULT '1',
  `id_so_parent` int(10) DEFAULT '0',
  PRIMARY KEY (`id_so`),
  KEY `id_so` (`id_so`)
) ENGINE=MyISAM AUTO_INCREMENT=168 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='Catalogo de sujetos Obligados';

-- Volcando datos para la tabla dbiti.ct_obligados: 167 rows
/*!40000 ALTER TABLE `ct_obligados` DISABLE KEYS */;
REPLACE INTO `ct_obligados` (`id_so`, `Descripcion`, `tipo`, `titular`, `cargo_titular`, `activo`, `id_so_parent`) VALUES
	(1, 'Gubernatura', 'Ejecutivo', 'C. GUILLERMO PADRÉS ELÍAS', 'Gobernador Constitucional del Estado de Sonora', 1, NULL),
	(2, 'Procuraduría General de Justicia del Estado', 'Ejecutivo', 'CARLOS NAVARRO SUGICH', 'Procurador General de Justicia ', 1, NULL),
	(3, 'Secretaría de Agricultura, Ganadería, Recursos Hidráulicos, Pesca y Acuacultura', 'Ejecutivo', 'ING. HECTOR H. ORTIZ CISCOMANI', 'Secretario de SAGARPHA', 1, NULL),
	(4, 'Secretaría de Desarrollo Social del Estado de Sonora', 'Ejecutivo', 'LUIS ALBERTO PLASCENCIA OSUNA', 'Secretario de Desarrollo Social del Estado de Sonora', 1, NULL),
	(5, 'Secretaría de Economía', 'Ejecutivo', 'LIC. MOISES GÓMEZ REYNA', 'Secretario General de Economía del Estado de Sonora', 1, NULL),
	(6, 'Secretaría de Educación y Cultura', 'Ejecutivo', 'MTRO. JORGE LUIS IBARRA MENDIVIL', 'Secretario de Educación y Cultura', 1, NULL),
	(7, 'Secretaría de Gobierno', 'Ejecutivo', 'C. ROBERTO ROMERO', 'Secretario de Gobierno', 1, NULL),
	(8, 'Secretaría de Hacienda', 'Ejecutivo', 'LIC. CARLOS MANUEL VILLALOBOS ORGANISTA', 'Secretario de Hacienda', 1, NULL),
	(9, 'Secretaría de Infraestructura y Desarrollo Urbano', 'Ejecutivo', 'ARQ. ENRIQUE TORRES DELGADO', 'Secretario General de SIDUR', 1, NULL),
	(10, 'Secretaría de la Contraloría General', 'Ejecutivo', 'C.P. MARIA GUADALUPE RUIZ', 'Secretaria de la Contraloría General del Estado', 1, NULL),
	(11, 'Secretaría de Salud', 'Ejecutivo', 'DR. JOSE BERNARDO CAMPILLO GARCIA', 'Secretario de Salud Pública', 1, NULL),
	(12, 'Secretaría de Seguridad Pública', 'Ejecutivo', 'LIC. ERNESTO MUNRO PALACIO', 'Secretario Ejecutivo de Seguridad Pública', 1, NULL),
	(13, 'Secretaría del Trabajo', 'Ejecutivo', 'ING. GILDARDO MONGE ESCARCEGA', 'Secretario del Trabajo', 1, NULL),
	(14, 'Oficilia Mayor', 'Ejecutivo', 'LAE. CARLOS TAPIA ASTIAZARÁN', 'Oficial Mayor', 1, NULL),
	(15, 'Comision Estatal para el Desarrollo de los Pueblos y Comunidades Indigenas', 'Ejecutivo', 'ING. LAMBERTO DIAZ NIEBLAS', 'Coordinador General', 1, NULL),
	(16, 'Instituto Sonorense de Cultura', 'Ejecutivo', 'LIC. MARIA DOLORES CORONEL GANDARA', 'Director General del  Instituto Sonorense de Cultura', 1, NULL),
	(17, 'Instituto Sonorense de la Juventud', 'Ejecutivo', 'LIC. JULIO GUTIERREZ ACUÑA', 'Director General del  Instituto Sonorense de la Juventud', 1, NULL),
	(18, 'Instituto Sonorense de la Mujer', 'Ejecutivo', 'LIC. ANGELICA MARIA PAYAN GARCIA', 'Directora General', 1, NULL),
	(19, 'Museo de Centro Cultural (Musas)', 'Ejecutivo', 'C. RUBEN GUILLERMO MATIELLA VILLAESCUSA', 'Director General', 1, NULL),
	(20, 'Comision de Ecología y Desarrollo Sustentable del Estado de Sonora', 'Ejecutivo', 'LIC. ÓSCAR RENÉ TÉLLEZ LEYVA', 'Vocal Ejecutivo de CEDES', 1, NULL),
	(21, 'Comisión de Ahorro de Energía del Estado de Sonora', 'Ejecutivo', 'C.P. JESÚS LUIS CELAYA GORTARI', 'Director General de Comisión de Ahorro de Energía del Estado', 1, NULL),
	(22, 'Comisión Estatal de la Leche', 'Ejecutivo', 'ING. HECTOR H. ORTIZ CISCOMANI', 'Presidente de la Comision Estatal de la Leche', 1, NULL),
	(23, 'Comisión Estatal del Agua', 'Ejecutivo', 'C.P. ENRIQUE ALONSO MARTINEZ PRECIADO', 'Vocal Ejecutivo de CEA', 1, NULL),
	(24, 'Comité de Campaña para la Erradicación Tuberculosis Bovina y Brucelosis en Sonora', 'Ejecutivo', 'M.V.Z. FRANCISCO ARTURO RUIZ VALENCIA', 'Vocal del CCETB', 1, NULL),
	(25, 'Consejo Sonorense Promotor de la Regulacion del Bacanora', 'Ejecutivo', 'ING. LUIS RAUL SILLER CONTRERAS', 'Director General', 1, NULL),
	(26, 'Instituto de Acuacultura del Estado de Sonora', 'Ejecutivo', 'M.C. RAÚL ENRIQUE MOLINA OCAMPO', 'Director General del Instituto de Acuacultura del Estado', 1, NULL),
	(27, 'Centro Estatal de Transplante', 'Ejecutivo', 'DR. GUILLERMO RODRIGUEZ CARRIZOSA', 'Director General del Centro Estatal de Trasplantes', 1, NULL),
	(28, 'Comision del Deporte del Estado de Sonora', 'Ejecutivo', 'LIC. VICENTE ANGEL SAGRESTANO ALCARAZ', 'Director General de La Comisión del Deporte del Estado de Sonora', 1, NULL),
	(29, 'DIF Sonora', 'Ejecutivo', 'LIC. AGUSTIN BLANCO LOUSTAUNAU', 'Director General del Sistema para el Desarrollo Integral de la Familia en el Estado de Sonora', 1, NULL),
	(30, 'Instituto de Seguridad y Servicios Sociales de los Trabajadores del Estado de Sonora', 'Ejecutivo', 'LAP TERESA DE JESUS LIZARRAGA FIGUEROA', 'Director General del Instituto  de Seguridad y Servicios Sociales de los Trabajadores del Estado de Sonora', 1, NULL),
	(31, 'Servicios de Salud de Sonora', 'Ejecutivo', 'DR. GUSTAVO ANTONIO LOPEZ CABALLERO', 'Coordinador General', 1, NULL),
	(32, 'Centro de Evaluacion y Control de Confianza', 'Ejecutivo', 'LIC. JAVIER DAGNINO ESCOBOSA ', 'Coordinador C4 Sonora', 1, NULL),
	(33, 'Instituto Superior de Seguridad Pública del Estado ', 'Ejecutivo', 'LIC. MIGUEL SESMA QUIBRERA', 'Director General ISSPE', 1, NULL),
	(34, 'Comision de Fomento al Turismo del Estado de Sonora', 'Ejecutivo', 'C.P. EDUARDO JAVIER TAPIA CAMOU', 'Coordinador General de Comisión de Fomento al Turismo', 1, NULL),
	(35, 'Consejo Estatal de Ciencia y Tecnología ', 'Ejecutivo', 'M.C. MARTHA NIDIA CAMPA GADEA', 'Directora General', 1, NULL),
	(36, 'Consejo para la Promoción Económica de Sonora', 'Ejecutivo', 'ING. ENRIQUE RUIZ SÁNCHEZ', 'Director General de COPRESON', 1, NULL),
	(37, 'Servicios de Administración y Enajenación de Bienes de Entidades', 'Ejecutivo', 'LIC. REYNALDO GOMEZ VALENCIA', 'Director General ', 1, NULL),
	(38, 'Consejo Estatal de Concertación para la Obra Pública', 'Ejecutivo', 'LIC. FRANCISCO ARNOLDO MONGE ARAIZA', 'Coordinador General de CECOP', 1, NULL),
	(39, 'Centro de Innovación Gubernamental Local', 'Ejecutivo', 'ING. RAFAEL COTA RIVAS', 'Titular', 1, NULL),
	(40, 'Comisión de Vivienda del Estado de Sonora', 'Ejecutivo', 'LIC. JESÚS ALFONSO LÓPEZ LÓPEZ', 'Director General de Comisión de Vivienda del Estado', 1, NULL),
	(41, 'Instituto Sonorense de Infraestructura Educativa', 'Ejecutivo', 'C. LUIS FELIPE ROMERO LÓPEZ', 'Director General ISIE', 1, NULL),
	(42, 'Junta de Caminos', 'Ejecutivo', 'C. ENRIQUE PESQUEIRA PELLAT', 'Director General de Junta de Caminos del Estado de Sonora', 1, NULL),
	(43, 'Radio Sonora', 'Ejecutivo', 'LIC. LUIS MARIO RIVERA AGUILAR', 'Director General de Radio Sonora', 1, NULL),
	(44, 'Sistema de Parques Industriales de Sonora', 'Ejecutivo', 'ING. GERMAN TAPIA MIRANDA', 'Director General del Sistema de Parques Industriales de Sonora', 1, NULL),
	(45, 'Telefonía Rural de Sonora', 'Ejecutivo', 'C. GENARO SOTO CÓRDOVA', 'Director General de Telefonía Rural de Sonora', 1, NULL),
	(46, 'Televisora de Hermosillo', 'Ejecutivo', 'C. ROBERTO VEJAR RODRIGUEZ', 'Director General  de Televisora de Hermosillo, S.A. de C.V', 1, NULL),
	(47, 'Biblioteca Pública Jesus Corral Ruiz', 'Ejecutivo', 'C. ROSSANA ROBINSON BOURS MUÑOZ', 'Directora General', 1, NULL),
	(48, 'Colegio de Estudios Científicos y Tecnológicos del Estado de Sonora', 'Ejecutivo', 'M.M.C.I. MARTIN ALEJANDRO LOPEZ GARCIA', 'Director General de Colegio de Estudios Científicos y Tecnológicos del Estado de Sonora', 1, NULL),
	(49, 'Colegio de Bachilleres del Estado de Sonora', 'Ejecutivo', 'PROF. JULIO ALFONSO MARTINEZ ROMERO', 'Director General de Colegio de Bachilleres del Estado de Sonora', 1, NULL),
	(50, 'Colegio de Educación Profesional Técnica', 'Ejecutivo', 'LIC. VICENTE PACHECO CASTAÑEDA', 'Director General del Colegio de Educación Profesional Técnica del Estado de Sonora', 1, NULL),
	(51, 'Instituto de Capacitación para el Trabajo', 'Ejecutivo', 'DRA. SANDRA ELIVIA BECERRIL LOPEZ', 'Director General del Instituto de Capacitación para el Trabajo del Estado de Sonora', 1, NULL),
	(52, 'Instituto de Becas y Estímulos Educativos del Estado de Sonora', 'Ejecutivo', 'C. P. LUIS JAIME MARTINEZ MARTINEZ', 'Director General del Instituto de Becas y Estímulos Educativos del Estado de Sonora', 1, NULL),
	(53, 'Instituto de Credito Educativo del Estado de Sonora', 'Ejecutivo', 'M.C. MARIA MERCEDES CORRAL AGUILAR', 'Director General del Instituto de Crédito Educativo del Estado de Sonora', 1, NULL),
	(54, 'Instituto de Innovación y Evaluación Educativa del Estado de Sonora', 'Ejecutivo', 'ING. EDGAR HIRAM SALLARD', 'Director General del Instituto de Innovación y Evaluación Educativa del Estado de Sonora', 1, NULL),
	(55, 'Instituto de Formación Docente del Estado de Sonora', 'Ejecutivo', 'PROFR. REGINALDO DUARTE IÑIGO', 'Director General del Instituto de Formación Docente del Estado de Sonora ', 1, NULL),
	(56, 'Instituto Sonorense de Educación para los Adultos', 'Ejecutivo', 'LIC. EDUARDO ANTONIO ROMERO CAMPA', 'Director General del Instituto Sonorense de Educación para los Adultos', 1, NULL),
	(57, 'Instituto Tecnológico Superior de Cajeme', 'Ejecutivo', 'MTRO. PAULINO ANTONIO SANCHEZ LOPEZ', 'Director General', 1, NULL),
	(58, 'Instituto Tecnológico Superior de Cananea', 'Ejecutivo', 'ING. PABLO ANDRADE GERARDO', 'Director General del Instituto Tecnológico Superior de Cananea ', 1, NULL),
	(59, 'Instituto Tecnológico Superior de Puerto Peñasco', 'Ejecutivo', 'LIC. RAFAEL LARA MUNGARRO', 'Director General', 1, NULL),
	(60, 'Servicios Educativos del Estado de Sonora', 'Ejecutivo', 'ING. EDGAR HIRAM SALLARD', 'Director General', 1, NULL),
	(61, 'Universidad Estatal de Sonora', 'Ejecutivo', 'MTRO. SAMUEL ESPINOSA GUILLEN', 'Rector de la Universidad Estatal de Sonora', 1, NULL),
	(62, 'Universidad de la Sierra', 'Ejecutivo', 'ING. GABRIEL AMAVIZCA HERRERA', 'Rector', 1, NULL),
	(63, 'Universidad Tecnológica de Etchojoa', 'Ejecutivo', 'ING. GILDARDO FELIX ESPINOZA', 'Rector', 1, NULL),
	(64, 'Universidad Tecnológica de Hermosillo', 'Ejecutivo', 'ING. MIGUEL ANGEL SALAZAR CANDIA', 'Rector de La Universidad Tecnológica de Hermosillo', 1, NULL),
	(65, 'Universidad Tecnológica de Nogales', 'Ejecutivo', 'ING. JESÚS DANIEL TAVAREZ VALENZUELA', 'Rector de la Universidad Tecnológica de Nogales', 1, NULL),
	(66, 'Universidad Tecnológica de Puerto Peñasco', 'Ejecutivo', 'ING. RAFAEL MENDIVIL MILLAN', 'Rector', 1, NULL),
	(67, 'Universidad Tecnológica de San Luis Rio Colorado', 'Ejecutivo', 'ING. CARLOS ENRIQUE RAMIREZ ESCAMILLA', 'Rector', 1, NULL),
	(68, 'Universidad Tecnológica del Sur de Sonora', 'Ejecutivo', 'MTRO. HERMENEGILDO LAGARDA LEYVA', 'Rector', 1, NULL),
	(69, 'Instituto Tecnológico de Sonora', 'Ejecutivo', 'DR. ISIDRO ROBERTO CRUZ MEDINA', 'Rector', 1, NULL),
	(70, 'Colegio de Sonora', 'Ejecutivo', 'DRA. GABRIELA GRIJALVA MONTEVERDE', 'Rectora del Colegio Sonora', 1, NULL),
	(71, 'Centro Estatal de Desarrollo Municipal (CEDEMUN)', 'Ejecutivo', 'DR. JOSÉ YÁNES NAVARRO', 'Vocal Ejecutivo del CEDEMUN', 1, NULL),
	(72, 'Comisión Estatal de Bienes y Concesiones', 'Ejecutivo', 'LIC. MARIO GONZALEZ VALENZUELA ', 'Coordinador Ejecutivo', 1, NULL),
	(73, 'Instituto Catastral y Registral del Estado de Sonora', 'Ejecutivo', 'C.P. MARCO ARTURO MORENO WARD', 'Vocal Ejecutivo', 1, NULL),
	(74, 'Museo Sonora en la Revolución', 'Ejecutivo', 'C. JOSE LUIS ISLAS PACHECO', 'Director General', 1, NULL),
	(75, 'Fideicomiso Carretera Santa Ana-Altar', 'Ejecutivo', 'ARQ. ENRIQUE TORRES DELGADO', 'Representante Legal', 1, NULL),
	(76, 'Fideicomiso Puente Colorado', 'Ejecutivo', 'C.P. CYNTHIA Z. OROZCO ATONDO', 'Director General', 1, NULL),
	(77, 'Fideicomiso Transporte Metropolitano', 'Ejecutivo', 'C.P. DARIO MURILLO BOLAÑOS', 'Director General', 1, NULL),
	(78, 'Fondo Estatal de Solidaridad(FOSOL)', 'Ejecutivo', 'LIC. AGUSTIN BLANCO LOUSTAUNAU', 'Director General', 1, NULL),
	(79, 'Fondo Estatal para la Modernización del Transporte (FEMOT)', 'Ejecutivo', 'C.P. DARIO MURILLO BOLAÑOS', 'Director General', 1, NULL),
	(80, 'FEPAEDES', 'Ejecutivo', 'Dr. VÍCTOR MANUEL LANDEROS ARVIZU', 'Secretario Ejecutivo del Fondo Estatal para la Prevención y\nAtención de Emergencias y Desastres del Estado de Sonora.', 1, NULL),
	(81, 'Fondo de Fomento Agropecuario(FOFAES)', 'Ejecutivo', 'Lic. DIANA PLATT SALAZAR', 'Directora General', 1, NULL),
	(82, 'Fondo Nuevo Sonora(FONSON)', 'Ejecutivo', 'C.P. JESUS ROBERTO RODRIGUEZ MORENO', 'Coordinador Ejecutivo', 1, NULL),
	(83, 'Fondo de Operación de Obras Sonora SI (FOOSSI)', 'Ejecutivo', 'LIC. RENE FRANCISCO LUNA SUGICH', 'Coordinador Ejecutivo', 1, NULL),
	(84, 'Fondo para la Procuración de Justicia', 'Ejecutivo', 'C. SUGEY ONELIA CORRALES MADRID', 'Responsable del Fondo para la Procuración de Justicia del Estado de Sonora', 1, NULL),
	(85, 'Progreso Fideicomiso Promotor Urbano de Sonora', 'Ejecutivo', 'LIC. MARIO GONZALEZ VALENZUELA', 'Director General', 1, NULL),
	(86, 'Operadora de Proyectos Estratégicos del Estado de Sonora', 'Ejecutivo', 'ING. DAVID MANUEL TINAJERO AGUIRRE', 'Encargado de Despacho de IMPULSOR', 1, NULL),
	(87, 'Tribunal de lo Contencioso Administrativo', 'Ejecutivo', 'LIC. EMMA GUADALUPE MILLAN CASTRO', 'Unidad de Enlace del Tribunal Contencioso Administrativo', 1, NULL),
	(88, 'Aconchi', 'Ayuntamiento', 'C. PEDRO ARMANDO LUGO LÓPEZ', 'Presidente Municipal', 1, NULL),
	(89, 'Agua Prieta', 'Ayuntamiento', 'C. IRMA VILLALOBOS RAZCÓN', 'Presidente Municipal', 1, NULL),
	(90, 'Alamos', 'Ayuntamiento', 'ING. JOSÉ BENJAMÍN ANAYA ROSAS', 'Presidente Municipal', 1, NULL),
	(91, 'Altar', 'Ayuntamiento', 'C. MARTHA ELSA VIDRIO FEDERICO', 'Presidente Municipal', 1, NULL),
	(92, 'Arivechi', 'Ayuntamiento', 'DR. FAUSTO LORENZO CORDOVA BARRIOS', 'Presidente Municipal', 1, NULL),
	(93, 'Arizpe', 'Ayuntamiento', 'LIC. VIDAL GUADALUPE VAZQUEZ CHACÓN', 'Presidente Municipal', 1, NULL),
	(94, 'Atil', 'Ayuntamiento', 'LIC. CARLA ENETT CELAYA GORTARI', 'Presidente Municipal', 1, NULL),
	(95, 'Bacadéhuachi', 'Ayuntamiento', 'C. JUAN PABLO TERÁN VALENCIA', 'Presidente Municipal', 1, NULL),
	(96, 'Bacanora', 'Ayuntamiento', 'ING. LUIS ALFONSO SOTO JIMÉNEZ', 'Presidente Municipal', 1, NULL),
	(97, 'Bacerac', 'Ayuntamiento', 'C. OSWALDO BERMÚDEZ ZUBIATE', 'Presidente Municipal', 1, NULL),
	(98, 'Bacoachi', 'Ayuntamiento', 'C. MARÍA ENEDINA DÍAZ GONZÁLEZ', 'Presidente Municipal', 1, NULL),
	(99, 'Bácum', 'Ayuntamiento', ' M.V.Z. EFRÉN ROMERO ARREOLA', 'Presidente Municipal', 1, NULL),
	(100, 'Banámichi', 'Ayuntamiento', 'C. JESÚS LAURO ESCALANTE PEÑA', 'Presidente Municipal', 1, NULL),
	(101, 'Baviácora', 'Ayuntamiento', 'C. FRANCISCO JAVIER DURÁN VILLA', 'Presidente Municipal', 1, NULL),
	(102, 'Bavispe', 'Ayuntamiento', 'C. OSCAR DÍAZ MONTAÑO', 'Presidente Municipal', 1, NULL),
	(103, 'Benito Juárez', 'Ayuntamiento', 'DR. GUILLERMO PAREDES CEBREROS', 'Presidente Municipal', 1, NULL),
	(104, 'Benjamín Hill', 'Ayuntamiento', 'DR. JESÚS CIPRIANO COTA SOTO', 'Presidente Municipal', 1, NULL),
	(105, 'Caborca', 'Ayuntamiento', 'ING. FRANCISCO ALFONSO JÍMENEZ R.', 'Presidente Municipal', 1, NULL),
	(106, 'Cajeme', 'Ayuntamiento', 'ING. ROGELIO M. DÍAZ-BROWN RAMSBURGH', 'Presidente Municipal', 1, NULL),
	(107, 'Cananea', 'Ayuntamiento', 'C. FRANCISCO JAVIER TARAZÓN CURLANGO', 'Presidente Municipal', 1, NULL),
	(108, 'Carbó', 'Ayuntamiento', 'C. NATANAHEL CÓRDOVA BON', 'Presidente Municipal', 1, NULL),
	(109, 'Cucurpe', 'Ayuntamiento', 'ING. MANUEL FRANCISCO VILLA PAREDES', 'Presidente Municipal', 1, NULL),
	(110, 'Cumpas', 'Ayuntamiento', 'ING. JOSÉ RAMÓN MARTÍNEZ VÁZQUEZ', 'Presidente Municipal', 1, NULL),
	(111, 'Divisaderos', 'Ayuntamiento', 'C. ARTURO JAIME MONTAÑO', 'Presidente Municipal', 1, NULL),
	(112, 'Empalme', 'Ayuntamiento', 'C. DR. HÉCTOR MOISES LAGUNA TORRES', 'Presidente Municipal', 1, NULL),
	(113, 'Etchojoa', 'Ayuntamiento', 'C. CARLOS RENÉ ROCHÍN ESQUER', 'Presidente Municipal', 1, NULL),
	(114, 'Fronteras', 'Ayuntamiento', 'C. FRANCISCA MEDRANO SILVAS', 'Presidente Municipal', 1, NULL),
	(115, 'General Plutarco Elías Calles', 'Ayuntamiento', 'ING. JULIO CÉSAR RAMÍREZ VÁSQUEZ', 'Presidente Municipal', 1, NULL),
	(116, 'Granados', 'Ayuntamiento', 'C. CARLOS ELÍAS DURAZO BARCELÓ', 'Presidente Municipal', 1, NULL),
	(117, 'Guaymas', 'Ayuntamiento', 'LIC. OTTO GUILLERMO CLAUSEN IBERRI', 'Presidente Municipal', 1, NULL),
	(118, 'Hermosillo', 'Ayuntamiento', 'C.P. ALEJANDRO LÓPEZ CABALLERO', 'Presidente Municipal', 1, NULL),
	(119, 'Huachinera', 'Ayuntamiento', 'C. SAMUEL DAVID BALLESTEROS', 'Presidente Municipal', 1, NULL),
	(120, 'Huásabas', 'Ayuntamiento', 'C. REMIGIO RODERICO LEYVA FIMBRES', 'Presidente Municipal', 1, NULL),
	(121, 'Huatabampo', 'Ayuntamiento', 'M.V.Z. RAMÓN ANTONIO DÍAZ NIEBLAS', 'Presidente Municipal', 1, NULL),
	(122, 'Huépac', 'Ayuntamiento', 'C. MARÍA DELFINA LÓPEZ QUIJADA', 'Presidente Municipal', 1, NULL),
	(123, 'Imuris', 'Ayuntamiento', 'C. JOSÉ DAVID HERNÁNDEZ RODRÍGUEZ', 'Presidente Municipal', 1, NULL),
	(124, 'La Colorada', 'Ayuntamiento', 'ING. ARMANDO ENRIQUE RODRÍGUEZ VALENCIA', 'Presidente Municipal', 1, NULL),
	(125, 'Magdalena', 'Ayuntamiento', 'C. DR. JESÚS RODOLFO MARTÍNEZ LEAL', 'Presidente Municipal', 1, NULL),
	(126, 'Mazatán', 'Ayuntamiento', 'C. JESÚS EDGARD LANDAVAZO NAVARRO', 'Presidente Municipal', 1, NULL),
	(127, 'Moctezuma', 'Ayuntamiento', 'C. JOSÉ ALFREDO QUIJADA MÁRQUEZ', 'Presidente Municipal', 1, NULL),
	(128, 'Naco', 'Ayuntamiento', 'C. JESÚS ARMOL GALLARDO JIMÉNEZ', 'Presidente Municipal', 1, NULL),
	(129, 'Nácori Chico', 'Ayuntamiento', 'C. LUIS HERMAN MARTÍNEZ GARROBO', 'Presidente Municipal', 1, NULL),
	(130, 'Nacozari de García', 'Ayuntamiento', 'C. MARCO ANTONIO MONTES NAVARRO', 'Presidente Municipal', 1, NULL),
	(131, 'Navojoa', 'Ayuntamiento', 'C. LIC. ALBERTO NATANAEL GUERRERO LÓPEZ', 'Presidente Municipal', 1, NULL),
	(132, 'Nogales', 'Ayuntamiento', 'C. LIC. RAMÓN GUZMÁN MUÑOZ', 'Presidente Municipal', 1, NULL),
	(133, 'Onavas', 'Ayuntamiento', 'C. MANUEL CARLOS MUNGUÍA ESTRELLA', 'Presidente Municipal', 1, NULL),
	(134, 'Opodepe', 'Ayuntamiento', 'T.S.U. JESÚS ARMANDO GRACIA ESQUIVEL', 'Presidente Municipal', 1, NULL),
	(135, 'Oquitoa', 'Ayuntamiento', 'C. JOSÉ AURELIO ORTIZ GORTARI', 'Presidente Municipal', 1, NULL),
	(136, 'Pitiquito', 'Ayuntamiento', 'C. ANDRÉS LARA VELÁZQUEZ', 'Presidente Municipal', 1, NULL),
	(137, 'Puerto Peñasco', 'Ayuntamiento', 'PROF. GERARDO FIGUEROA ZAZUETA', 'Presidente Municipal', 1, NULL),
	(138, 'Quiriego', 'Ayuntamiento', 'PROF. MARTÍN DE JESÚS BELTRÁN CABALLERO', 'Presidente Municipal', 1, NULL),
	(139, 'Rayón', 'Ayuntamiento', 'LIC. ANA CECILIA NAVARRO VARELA', 'Presidente Municipal', 1, NULL),
	(140, 'Rosario', 'Ayuntamiento', 'ING. RAFAEL BUELNA CLARK', 'Presidente Municipal', 1, NULL),
	(141, 'Sahuaripa', 'Ayuntamiento', 'T.S.U. GUILLERMO CORONADO MENDOZA', 'Presidente Municipal', 1, NULL),
	(142, 'San Felipe de Jesús', 'Ayuntamiento', 'C. JOSÉ ELEAZAR DE LA TORRE CURIEL', 'Presidente Municipal', 1, NULL),
	(143, 'San Ignacio Río Muerto', 'Ayuntamiento', 'C. PEDRO FLORES MORENO', 'Presidente Municipal', 1, NULL),
	(144, 'San Javier', 'Ayuntamiento', 'C. HILARIO V. MENDOZA AGÚERO', 'Presidente Municipal', 1, NULL),
	(145, 'San Luis Río Colorado', 'Ayuntamiento', 'LIC. LEONARDO ARTURO GUILLÉN MEDINA', 'Presidente Municipal', 1, NULL),
	(146, 'San Miguel de Horcasitas', 'Ayuntamiento', 'LIC. ALBERTO G. AMARILLAS CÓRDOVA', 'Presidente Municipal', 1, NULL),
	(147, 'San Pedro de la Cueva', 'Ayuntamiento', 'C. MARÍA YANES ARVAYO', 'Presidente Municipal', 1, NULL),
	(148, 'Santa Ana', 'Ayuntamiento', 'LIC. MANUEL GUILLERMO RIVERA VELASCO', 'Presidente Municipal', 1, NULL),
	(149, 'Santa Cruz', 'Ayuntamiento', 'C. CARLOS MANUEL BALLESTEROS LEÓN', 'Presidente Municipal', 1, NULL),
	(150, 'Sáric', 'Ayuntamiento', 'C. NOÉ VARELA CASTILLO', 'Presidente Municipal', 1, NULL),
	(151, 'Soyopa', 'Ayuntamiento', 'C. JUAN CARLOS OLIVAS LÓPEZ', 'Presidente Municipal', 1, NULL),
	(152, 'Suaqui Grande', 'Ayuntamiento', 'C. FRANCISCO JAVIER FLORES VÁSQUEZ', 'Presidente Municipal', 1, NULL),
	(153, 'Tepache', 'Ayuntamiento', 'C. SERGIO DÁVILA MORENO', 'Presidente Municipal', 1, NULL),
	(154, 'Trincheras', 'Ayuntamiento', 'C. LUZ MARÍA PORTILLO TREJO', 'Presidente Municipal', 1, NULL),
	(155, 'Tubutama', 'Ayuntamiento', 'C. P. JESÚS RIVERA CELAYA', 'Presidente Municipal', 1, NULL),
	(156, 'Ures', 'Ayuntamiento', 'C. JOSÉ MANUEL VALENZUELA SALCIDO', 'Presidente Municipal', 1, NULL),
	(157, 'Villa Hidalgo', 'Ayuntamiento', 'C. ENRIQUE LUIS CAMPA DURÁN', 'Presidente Municipal', 1, NULL),
	(158, 'Villa Pesqueira', 'Ayuntamiento', 'C. RAFAEL PERAZA ÁNGULO', 'Presidente Municipal', 1, NULL),
	(159, 'Yécora', 'Ayuntamiento', 'C. ISAUL HOLGUÍN VALENZUELA', 'Presidente Municipal', 1, NULL),
	(160, 'Poder Judicial del Estado de Sonora', 'Poder Judicial', 'LIC. JUAN SEBASTIÁN SOTOMAYOR TOVAR ', 'Magistrado Presidente del Supremo Tribunal de Justicia ', 1, NULL),
	(161, 'Congreso del Estado de Sonora', 'Poder Legislativo', 'DIP. GUADALUPE ADELA GRACIA BENÍTEZ', 'Diputada Presidente del H. Congreso del Estado de Sonora', 1, NULL),
	(162, 'Instituto Superior de Auditoría y Fiscalización', 'Poder Legislativo', 'C.P.C. EUGENIO PABLOS ANTILLÓN ', 'Auditor Mayor', 1, NULL),
	(163, 'Comisión Estatal de Derechos Humanos Sonora', 'Organismo Autonomo', 'LIC. RAÚL ARTURO RAMÍREZ RAMÍREZ', 'Presidente ', 1, NULL),
	(164, 'Tribunal Estatal Electoral', 'Organismo Autonomo', 'LIC. CARMEN PATRICIA SALAZAR CAMPILLO', 'Magistrada Presidenta', 1, NULL),
	(165, 'Consejo Estatal Electoral del Estado de Sonora', 'Organismo Autonomo', 'LIC. SARA BLANCO MORENO', 'Consejera Presidente', 1, NULL),
	(166, 'Instituto de Transparencia Informativa del Estado de Sonora', 'Organismo Autonomo', 'LIC. FRANCISCO CUEVAS SAENZ', 'Vocal Presidente', 1, NULL),
	(167, 'Universidad de Sonora', 'Organismo Autonomo', 'DR. HERIBERTO GRIJALVA MONTEVERDE', 'Rector de la UNISON', 1, NULL);
/*!40000 ALTER TABLE `ct_obligados` ENABLE KEYS */;


-- Volcando estructura para tabla dbiti.ct_usr
CREATE TABLE IF NOT EXISTS `ct_usr` (
  `usr_id` int(10) NOT NULL AUTO_INCREMENT,
  `usr_username` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `usr_pwd` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `usr_tipo` int(4) DEFAULT NULL,
  `usr_perfil` int(4) DEFAULT NULL,
  `fecha_mod` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `activo` tinyint(3) DEFAULT NULL,
  `usr_nombre` varchar(500) COLLATE latin1_spanish_ci DEFAULT NULL,
  KEY `usr_id` (`usr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='Catalogo de usuario que accesan al sistema';

-- Volcando datos para la tabla dbiti.ct_usr: 4 rows
/*!40000 ALTER TABLE `ct_usr` DISABLE KEYS */;
REPLACE INTO `ct_usr` (`usr_id`, `usr_username`, `usr_pwd`, `usr_tipo`, `usr_perfil`, `fecha_mod`, `activo`, `usr_nombre`) VALUES
	(1, 'admin', '69b23c2c2f44a114cfa39df38d19db8c', 1, 1, '2014-05-28 12:34:45', 1, 'Deisy Edrey Rodriguez Hernandez'),
	(2, 'difusion', '421accee54c259bc55d4bd9803d6bc25', 3, 3, '2014-05-28 12:43:41', 1, 'Edgardo Carrillo'),
	(3, 'juridico', '45cbebf0f6c1be8be2a1e5d82c802a17', 2, 2, '2014-05-28 12:44:29', 1, 'Juan Alvaro López López'),
	(4, 'secretaria', '9fb7555bc8a2cbdc4d904ef8839a36fc', 7, 7, '2014-05-28 12:45:48', 1, 'Diana Barrera');
/*!40000 ALTER TABLE `ct_usr` ENABLE KEYS */;


-- Volcando estructura para tabla dbiti.cv_convenios
CREATE TABLE IF NOT EXISTS `cv_convenios` (
  `id_cvn` int(11) NOT NULL AUTO_INCREMENT,
  `cvn_institucion` varchar(500) COLLATE latin1_spanish_ci DEFAULT NULL,
  `cvn_fecha` date DEFAULT NULL,
  `cvn_vigencia` int(11) DEFAULT NULL,
  `cvn_objetivo` text COLLATE latin1_spanish_ci,
  `cvn_tipo` varchar(200) COLLATE latin1_spanish_ci DEFAULT '0',
  `cvn_fechareg` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cvn_archivo` varchar(300) COLLATE latin1_spanish_ci DEFAULT NULL,
  `cvn_anio` int(11) DEFAULT NULL,
  `id_grupo` int(11) DEFAULT NULL,
  `activo` int(11) DEFAULT '1',
  PRIMARY KEY (`id_cvn`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='convenios realizados por vinculacion';

-- Volcando datos para la tabla dbiti.cv_convenios: ~30 rows (aproximadamente)
/*!40000 ALTER TABLE `cv_convenios` DISABLE KEYS */;
REPLACE INTO `cv_convenios` (`id_cvn`, `cvn_institucion`, `cvn_fecha`, `cvn_vigencia`, `cvn_objetivo`, `cvn_tipo`, `cvn_fechareg`, `cvn_archivo`, `cvn_anio`, `id_grupo`, `activo`) VALUES
	(1, 'CONALEP Sonora', '2014-01-16', 2, 'Cumplimiento de obligaciones de la Ley (Certificación) e Infomex', 'Colaboración', '2014-06-13 12:34:50', NULL, 2014, 9, 0),
	(2, 'PRI Sonora', '2014-01-15', 2, 'Cumplimiento de obligaciones de la Ley (Certificación) e Infomex', 'Colaboración', '2014-06-13 12:34:52', NULL, 2014, NULL, 0),
	(3, 'Sonora Ciudadana A.C.', '2014-01-14', 2, 'Cumplimiento de obligaciones de la Ley (Certificación) e Infomex', 'Colaboración', '2014-06-13 12:34:54', NULL, 2014, 10, 0),
	(4, 'CECYTES', '2013-12-12', 2, 'Cumplimiento de obligaciones de la Ley (Certificación) e Infomex', 'Colaboración', '2014-06-13 12:34:55', NULL, 2013, 9, 0),
	(5, 'Colegio de Sonora', '2013-11-12', 2, 'Cumplimiento de obligaciones de la Ley (Certificación) e Infomex', 'Colaboración', '2014-06-13 12:25:20', 'colson.pdf', 2013, 9, 1),
	(6, 'Congreso del Estado', '2013-10-31', 2, 'Cumplimiento de obligaciones de la Ley (Certificación) e Infomex', 'Colaboración', '2014-06-13 12:28:27', 'Poder Legislativo.pdf', 2013, 8, 1),
	(7, 'COBACH', '2013-10-24', 1, 'Cumplimiento de obligaciones de la Ley (Certificación) e Infomex', 'Colaboración', '2014-06-13 12:24:11', 'COBACH.pdf', 2013, 9, 1),
	(8, 'ITESCA', '2013-10-16', 2, 'Cumplimiento de obligaciones de la Ley (Certificación) e Infomex', 'Colaboración', '2014-06-13 12:26:13', '', 2013, 9, 1),
	(9, 'UTEtchojoa', '2013-10-16', 1, 'Cumplimiento de obligaciones de la Ley (Certificación) e Infomex', 'Colaboración', '2014-06-13 12:27:20', 'UTEtchojoa.pdf', 2013, 9, 1),
	(10, 'UTGuaymas', '2013-10-16', 2, 'Cumplimiento de obligaciones de la Ley (Certificación) e Infomex', 'Colaboración', '2014-06-13 12:27:29', 'UTGuaymas.pdf', 2013, 9, 1),
	(11, 'UTSLRC', '2013-10-11', 2, 'Cumplimiento de obligaciones de la Ley (Certificación) e Infomex', 'Colaboración', '2014-06-13 12:28:09', 'UTSLR.pdf', 2013, 9, 1),
	(12, 'UTN', '2013-10-10', 2, 'Cumplimiento de obligaciones de la Ley (Certificación) e Infomex', 'Colaboración', '2014-06-13 12:27:43', 'UTNogales.pdf', 2013, 9, 1),
	(13, 'UTPP', '2013-10-10', 2, 'Cumplimiento de obligaciones de la Ley (Certificación) e Infomex', 'Colaboración', '2014-06-13 12:27:54', 'UTPuerto Penasco.pdf', 2013, 9, 1),
	(14, 'Inst. Tec.Superor de Pto. Peñasco', '2013-10-10', 1, 'Cumplimiento de obligaciones de la Ley (Certificación) e Infomex', 'Colaboración', '2014-06-13 12:26:03', 'ITSPuerto Penasco.pdf', 2013, 9, 1),
	(15, 'ITS de Cananea', '2013-10-09', 2, 'Cumplimiento de obligaciones de la Ley (Certificación) e Infomex', 'Colaboración', '2014-06-13 12:26:16', 'ITSCananea.pdf', 2013, 9, 1),
	(16, 'UES', '2013-10-07', 1, 'Cumplimiento de obligaciones de la Ley (Certificación) e Infomex', 'Colaboración', '2014-06-13 12:27:07', 'UES.pdf', 2013, 9, 1),
	(17, 'Tecnologico de Monterrey', '2013-10-03', 1, 'Difusión de la Cultura de la Transparencia y rendición de cuentas', 'Colaboración', '2014-06-13 12:26:58', 'Tecnologico de Monterrey.pdf', 2013, 9, 1),
	(18, 'CMIC', '2013-09-09', 2, 'Difusión de la Cultura de la Transparencia y rendición de cuentas', 'Colaboración', '2014-06-13 12:20:04', 'CMIC.pdf', 2013, 12, 1),
	(19, 'UNISIERRA', '2013-09-05', 1, 'Cumplimiento de obligaciones de la Ley (Certificación) e Infomex', 'Colaboración', '2014-06-13 12:20:18', 'Universidad de la Sierra0001.pdf', 2013, 9, 1),
	(20, 'Consejo Estatal Electoral', '2013-09-04', 2, 'Cumplimiento de obligaciones de la Ley (Certificación) e Infomex', 'Colaboración', '2014-06-13 12:24:23', 'CEE.pdf', 2013, 11, 1),
	(21, 'UVM', '2013-08-26', 1, 'Difusión de la Cultura de la Transparencia y rendición de cuentas', 'Colaboración', '2014-06-13 12:33:04', NULL, 2013, 9, 0),
	(22, 'U.T.H.', '2013-08-13', 2, 'Cumplimiento de obligaciones de la Ley (Certificación) e Infomex', 'Colaboración', '2014-06-13 12:21:43', 'UTH0001.pdf', 2013, 9, 1),
	(23, 'UNISON Region Sur', '2013-08-07', 2, 'Cumplimiento de obligaciones de la Ley (Certificación) e Infomex', 'Colaboración', '2014-06-13 12:23:41', 'unisonsur.pdf', 2013, 9, 1),
	(24, 'Instituto de Transparencia y Acceso a la Información Pública del Estado de Baja California', '2013-07-10', 2, 'Estrategias y Actividades conjuntas para promover e impulsar la cultura de la Transparencia', 'Colaboración', '2014-06-13 12:32:56', 'Instituto Baja California0001.pdf', 2013, 11, 1),
	(25, 'Ejecutivo del Estado', '2013-06-04', 0, 'Cumplimiento de obligaciones de la Ley (Certificación) e Infomex', 'Colaboración', '2014-06-13 12:21:21', 'Ejecutivo.pdf', 2013, 7, 1),
	(26, 'Universidad Tecnológica del Sur', '2013-05-23', 1, 'Cumplimiento de obligaciones de la Ley (Certificación) e Infomex', 'Colaboración', '2014-06-13 12:22:21', 'UTS0001.pdf', 2013, 9, 1),
	(27, 'ITSON', '2013-05-23', 1, 'Cumplimiento de obligaciones de la Ley (Certificación) e Infomex', 'Colaboración', '2014-06-13 12:22:33', 'ITSON0001.pdf', 2013, 9, 1),
	(28, 'Consejo Ciudadano para T y RC', '2013-05-23', 2, 'Difusión de la Cultura de la Transparencia y rendición de cuentas', 'Colaboración', '2014-06-13 12:22:46', 'Consejo ciudadano0001.pdf', 2013, 10, 1),
	(29, 'ULSA', '2013-05-23', 2, 'Difusión de la Cultura de la Transparencia y rendición de cuentas', 'Colaboración', '2014-06-13 12:23:03', 'La Salle0001.pdf', 2013, 9, 1),
	(30, 'Universidad Kino', '2013-05-22', 1, 'Difusión de la Cultura de la Transparencia y rendición de cuentas', 'Colaboración', '2014-06-13 12:20:38', 'Universidad Kino0001.pdf', 2013, 9, 1);
/*!40000 ALTER TABLE `cv_convenios` ENABLE KEYS */;


-- Volcando estructura para tabla dbiti.dfs_materiales
CREATE TABLE IF NOT EXISTS `dfs_materiales` (
  `mtl_id` int(11) NOT NULL AUTO_INCREMENT,
  `mtl_titulo` varchar(600) COLLATE latin1_spanish_ci NOT NULL,
  `mtl_descripcion` text COLLATE latin1_spanish_ci NOT NULL,
  `mtl_archivo` varchar(600) COLLATE latin1_spanish_ci NOT NULL,
  `activo` int(11) NOT NULL DEFAULT '1',
  `mtl_fechareg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mtl_autor` varchar(600) COLLATE latin1_spanish_ci NOT NULL,
  `mtl_imagen` varchar(600) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`mtl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='Registra los materiales impresos a publicar en la pagina ';

-- Volcando datos para la tabla dbiti.dfs_materiales: 2 rows
/*!40000 ALTER TABLE `dfs_materiales` DISABLE KEYS */;
REPLACE INTO `dfs_materiales` (`mtl_id`, `mtl_titulo`, `mtl_descripcion`, `mtl_archivo`, `activo`, `mtl_fechareg`, `mtl_autor`, `mtl_imagen`) VALUES
	(1, 'La promesa del gobierno abierto ', 'Libro Editado por el InfoDf y el ITAP, con 25 ensayos de diversos estudiosos del tema con reflexiones y experiencias regionales e internacionales. bbb', 'promesa_gobierno_abierto.pdf', 1, '2014-02-13 12:55:33', 'Andrés Hofmann, Alvaro Ramírez-Alujas y José Antonio Bojórquez Pereznieto ', 'gb.jpg'),
	(2, 'Carbonelli ', 'prueba ', 'unisonsur.pdf', 0, '2014-02-13 12:57:55', 'Carbonelli', 'carbonell_port1a.jpg');
/*!40000 ALTER TABLE `dfs_materiales` ENABLE KEYS */;


-- Volcando estructura para tabla dbiti.dfs_notas
CREATE TABLE IF NOT EXISTS `dfs_notas` (
  `nts_id` int(11) NOT NULL AUTO_INCREMENT,
  `nts_fecha` varchar(50) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `nts_ptitulo` text COLLATE latin1_spanish_ci NOT NULL,
  `nts_titulo` text COLLATE latin1_spanish_ci NOT NULL,
  `nts_descripcioncorta` text COLLATE latin1_spanish_ci NOT NULL,
  `nts_descripcion` longtext COLLATE latin1_spanish_ci NOT NULL,
  `nts_descinteriorcorta` longtext COLLATE latin1_spanish_ci NOT NULL,
  `nts_nota` longtext COLLATE latin1_spanish_ci NOT NULL,
  `nts_pie` text COLLATE latin1_spanish_ci NOT NULL,
  `nts_imagen` varchar(500) COLLATE latin1_spanish_ci NOT NULL,
  `activo` int(11) NOT NULL DEFAULT '1',
  `nts_fechareg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nts_isrotativa` int(11) NOT NULL DEFAULT '0',
  `nts_archivo` varchar(250) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nts_url` varchar(400) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nts_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='Notas informativas de Difusion';

-- Volcando datos para la tabla dbiti.dfs_notas: 37 rows
/*!40000 ALTER TABLE `dfs_notas` DISABLE KEYS */;
REPLACE INTO `dfs_notas` (`nts_id`, `nts_fecha`, `nts_ptitulo`, `nts_titulo`, `nts_descripcioncorta`, `nts_descripcion`, `nts_descinteriorcorta`, `nts_nota`, `nts_pie`, `nts_imagen`, `activo`, `nts_fechareg`, `nts_isrotativa`, `nts_archivo`, `nts_url`) VALUES
	(15, '10/3/2014', 'EN CAPACITACIÓN DEL INSTITUTO DE TRANSPARENCIA INFORMATIVA:', 'Cumplir obligaciones de transparencia, exige alcalde de Nogales a sus funcionarios   	 ', 'Con el respaldo del presidente municipal de Nogales, quien hizo un llamado a sus funcionarios para ponerse al día en las obligaciones de rendición de cuentas, se realizó en aquella frontera la primera jornada de capacitación obligatoria del ITIES en este año.', '', '', '<div>Con el respaldo del presidente municipal de Nogales, quien hizo un llamado a sus funcionarios para ponerse al d&iacute;a en las obligaciones de rendici&oacute;n de cuentas, se realiz&oacute; en aquella frontera la primera jornada de capacitaci&oacute;n de este a&ntilde;o del Instituto de Transparencia Informativa del Estado de Sonora.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>En la inauguraci&oacute;n del evento encabezado por los vocales del ITIES Francisco Cuevas S&aacute;enz y Andr&eacute;s Miranda Guerrero, el alcalde Ram&oacute;n Guzm&aacute;n Mu&ntilde;oz fue enf&aacute;tico en la instrucci&oacute;n a sus colaboradores, y agradeci&oacute; al Instituto su preocupaci&oacute;n por mantener actualizados en esta materia a todos los servidores p&uacute;blicos.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>El vocal presidente del ITIES, Cuevas S&aacute;enz, consider&oacute; que esta actitud de voluntad hacia la transparencia es particularmente importante, &ldquo;sobre todo en este momento, cuando nos encontramos ante una m&eacute;trica nacional que evaluar&aacute; los grados de rendici&oacute;n de cuentas y de atenci&oacute;n al derecho de acceso a la informaci&oacute;n que tenemos en todo el pa&iacute;s&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Record&oacute; tambi&eacute;n que Nogales es uno de los municipios sonorenses que est&aacute; siendo evaluado en esta m&eacute;trica que realiza el Centro de Investigaci&oacute;n y Docencia Econ&oacute;micas (CIDE).</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Por su parte, el vocal Miranda Guerrero explic&oacute; que en esta capacitaci&oacute;n a municipios se abordan las novedades que contiene la ley estatal en la materia luego de su reforma en agosto pasado, as&iacute; como las nuevas disposiciones de los lineamientos de acceso a la informaci&oacute;n, archivo, y de informaci&oacute;n restringida y protecci&oacute;n de datos personales, recientemente emitidos por el ITIES.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>A estos cursos se convoc&oacute;, adem&aacute;s del municipio anfitri&oacute;n, a Benjam&iacute;n Hill, &Iacute;muris, Magdalena, Santa Ana, Santa Cruz y Cucurpe, adem&aacute;s de la Universidad Tecnol&oacute;gica de Nogales.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>La jornada de capacitaci&oacute;n continuar&aacute; los d&iacute;as 11 de marzo en Cananea y el 13 de este mismo mes en Hermosillo, donde se espera la asistencia de funcionarios de seis y de 14 ayuntamientos, respectivamente.</div>\r\n', '', '338339961.jpg', 1, '2014-05-26 09:08:30', 1, NULL, NULL),
	(16, '14/3/2014', 'ADVIERTE EL ITIES EN SU JORNADA DE CAPACITACIÓN EN CANANEA:', 'Más obligaciones de rendición de cuentas para los municipios ', 'Tras la reforma a la ley estatal, los Ayuntamientos de Sonora tienen más responsabilidades en torno la rendición de cuentas, advirtieron los vocales del ITIES al poner en marcha los cursos de capacitación sobre el tema en Cananea, a donde fueron convocados seis municipios de esa región.\r\n', '', '', '<div>Tras la reforma a la ley estatal en la materia, los Ayuntamientos de Sonora tienen m&aacute;s responsabilidades en torno la rendici&oacute;n de cuentas, advirtieron los vocales del Instituto de Transparencia Informativa al poner en marcha los cursos de capacitaci&oacute;n sobre el tema en Cananea, a donde fueron convocados seis municipios de esa regi&oacute;n.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>El vocal presidente del ITIES, Francisco Cuevas S&aacute;enz, coment&oacute; que &ldquo;ahora para los municipios hay una serie de informaci&oacute;n diferenciada que, adem&aacute;s de la que ya estaban obligados a publicar, deben proporcionar tambi&eacute;n de oficio&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Detall&oacute; que entre dichos datos se encuentran el plan municipal de desarrollo, los par&aacute;metros del impuesto predial, las estad&iacute;sticas e indicadores de gesti&oacute;n en seguridad p&uacute;blica, tr&aacute;nsito y gobierno municipal y, junto a otra informaci&oacute;n, las exenciones o condonaciones que se hagan sobre el impuesto predial.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Cuevas S&aacute;enz explic&oacute; que si bien siempre ha sido posible acceder a esta informaci&oacute;n, antes deb&iacute;a hacerse mediante una solicitud espec&iacute;fica, y &ldquo;ahora tales datos deben publicarse de oficio en los portales de transparencia en Internet, aun sin que nadie los haya solicitado antes; ah&iacute; deben estar disponibles&rdquo;, puntualiz&oacute;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Por su parte, el tambi&eacute;n vocal del ITIES Andr&eacute;s Miranda Guerrero, refiri&oacute; que estos y otros temas se abordan en los cursos que imparte el Instituto en esta que es su primera jornada de capacitaci&oacute;n obligatoria correspondiente al a&ntilde;o 2014, de la cual inform&oacute; que ya en d&iacute;as pasados se han realizado trabajos en otras cinco sedes regionales para municipios, quedando pendiente la de Hermosillo, el pr&oacute;ximo jueves 13 de marzo.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>En los cursos se instruye a los asistentes sobre las novedades de la Ley estatal de Acceso a la Informaci&oacute;n P&uacute;blica y de Protecci&oacute;n de Datos Personales tras su reforma de agosto del a&ntilde;o pasado, as&iacute; como las modificaciones que el ITIES debi&oacute; efectuar a los lineamientos de dicho cuerpo normativo en materia acceso, de archivo, y de informaci&oacute;n restringida y protecci&oacute;n de datos personales.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>A esta sede fueron convocados adem&aacute;s del anfitri&oacute;n Cananea, los municipios de Agua Prieta, Naco, Fronteras, Bacoachi y Arizpe, y junto a ellos el Instituto Tecnol&oacute;gico Superior de Cananea.</div>\r\n', '', '820329713.jpg', 1, '2014-05-26 10:10:06', 1, NULL, NULL),
	(2, '20/12/2013', 'PRESENTAN INFORME ANUAL DEL INSTITUTO DE TRANSPARENCIA INFORMATIVA', 'Más sonorenses usan el derecho de acceso a la información pública', 'Por segunda vez consecutiva Sonora superó su marca histórica de solicitudes de acceso a la información pública, que hasta la fecha suman 8,331, la cual se espera rebasar en el 2014 a partir del trabajo de vinculación realizado este ejercicio, dijo el vocal presidente del IITIES al presentar su informe anual de labores.', '', '', '<div>Por segunda vez consecutiva Sonora super&oacute; su marca hist&oacute;rica de solicitudes de acceso a la informaci&oacute;n p&uacute;blica, que hasta la fecha suman 8,331, la cual se espera de nuevo rebasar para el pr&oacute;ximo 2014 a partir del intenso trabajo de vinculaci&oacute;n realizado este ejercicio, dijo el vocal presidente del Instituto de Transparencia Informativa al presentar su informe anual de labores.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Ante el pleno del ITIES, su vocal presidente, Francisco Cuevas S&aacute;enz, detall&oacute; que las 8,331 solicitudes registradas representan 10.42 por ciento m&aacute;s con respecto a las 7,545 del per&iacute;odo anterior, que hab&iacute;a sido el de mayor crecimiento en siete a&ntilde;os desde que los sonorenses cuentan con el derecho de acceder a la informaci&oacute;n p&uacute;blica gubernamental.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&ldquo;Esto es un indicativo de que el ciudadano est&aacute; ejerciendo cada vez m&aacute;s su derecho de preguntar y que se le responda sobre lo que hace el gobierno&rdquo;, dijo Cuevas S&aacute;enz, quien agreg&oacute;: &ldquo;y aunque en una proporci&oacute;n poblacional no representa una gran cifra, lo cierto es que con esto Sonora sigue ubicado por encima de la media nacional en el rubro de solicitudes de acceso&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>El vocal presidente del ITIES marc&oacute; tambi&eacute;n el prop&oacute;sito de incrementar todav&iacute;a m&aacute;s esta cifra el a&ntilde;o pr&oacute;ximo, &ldquo;lo cual va a ser muy viable a partir de los resultados que arroje nuestro programa estatal de vinculaci&oacute;n, al que hemos dado especial impulso, concretando 25 convenios de coordinaci&oacute;n y colaboraci&oacute;n, 21 de ellos con centros de ense&ntilde;anza superior, adem&aacute;s de los convenios especiales con el Poder Ejecutivo y los 72 ayuntamientos&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>En el informe aprobado por el Pleno del ITIES, que integran tambi&eacute;n los vocales Andr&eacute;s Miranda Guerrero y Arely L&oacute;pez Navarro, Cuevas S&aacute;enz dio cuenta de los resultados de la capacitaci&oacute;n a sujetos obligados, de la cual se llevaron a cabo dos jornadas a las que en promedio asisti&oacute; el 72 por ciento de las entidades de gobierno convocadas.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Asimismo, en el informe anual del ITIES se dio cuenta de las operaciones administrativas y financieras, al igual que de los avances program&aacute;ticos, sobre todo lo cual los ciudadanos podr&aacute;n conocer accediendo al portal del Instituto en Internet, a la direcci&oacute;n www.transparenciasonora.org.mx, donde se publicar&aacute; &iacute;ntegro el documento respectivo.</div>\r\n', 'Vocales del ITIES: Lic. Arely López Navarro, Lic. Francisco Cuevas Sáenz y Mtro. Andrés Miranda Guerrero  \r\n', '', 0, '2014-01-17 08:55:40', 1, NULL, NULL),
	(3, '20/12/2013', 'PRESENTAN INFORME ANUAL DEL INSTITUTO DE TRANSPARENCIA INFORMATIVA : :::', 'Más sonorenses usan el derecho de acceso a la información pública : MMM', 'Por segunda vez consecutiva Sonora superó su marca histórica de solicitudes de acceso a la información pública, que hasta la fecha suman 8,331, la cual se espera rebasar en el 2014 a partir del trabajo de vinculación realizado este ejercicio, dijo el vocal presidente del IITIES al presentar su informe anual de labores.\r\n\r\nModificado', '', '', '<div>Por segunda vez consecutiva Sonora super&oacute; su marca hist&oacute;rica de solicitudes de acceso a la informaci&oacute;n p&uacute;blica, que hasta la fecha suman 8,331, la cual se espera de nuevo rebasar para el pr&oacute;ximo 2014 a partir del intenso trabajo de vinculaci&oacute;n realizado este ejercicio, dijo el vocal presidente del Instituto de Transparencia Informativa al presentar su informe anual de labores.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Ante el pleno del ITIES, su vocal presidente, Francisco Cuevas S&aacute;enz, detall&oacute; que las 8,331 solicitudes registradas representan 10.42 por ciento m&aacute;s con respecto a las 7,545 del per&iacute;odo anterior, que hab&iacute;a sido el de mayor crecimiento en siete a&ntilde;os desde que los sonorenses cuentan con el derecho de acceder a la informaci&oacute;n p&uacute;blica gubernamental.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&ldquo;Esto es un indicativo de que el ciudadano est&aacute; ejerciendo cada vez m&aacute;s su derecho de preguntar y que se le responda sobre lo que hace el gobierno&rdquo;, dijo Cuevas S&aacute;enz, quien agreg&oacute;: &ldquo;y aunque en una proporci&oacute;n poblacional no representa una gran cifra, lo cierto es que con esto Sonora sigue ubicado por encima de la media nacional en el rubro de solicitudes de acceso&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>El vocal presidente del ITIES marc&oacute; tambi&eacute;n el prop&oacute;sito de incrementar todav&iacute;a m&aacute;s esta cifra el a&ntilde;o pr&oacute;ximo, &ldquo;lo cual va a ser muy viable a partir de los resultados que arroje nuestro programa estatal de vinculaci&oacute;n, al que hemos dado especial impulso, concretando 25 convenios de coordinaci&oacute;n y colaboraci&oacute;n, 21 de ellos con centros de ense&ntilde;anza superior, adem&aacute;s de los convenios especiales con el Poder Ejecutivo y los 72 ayuntamientos&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>En el informe aprobado por el Pleno del ITIES, que integran tambi&eacute;n los vocales Andr&eacute;s Miranda Guerrero y Arely L&oacute;pez Navarro, Cuevas S&aacute;enz dio cuenta de los resultados de la capacitaci&oacute;n a sujetos obligados, de la cual se llevaron a cabo dos jornadas a las que en promedio asisti&oacute; el 72 por ciento de las entidades de gobierno convocadas.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Asimismo, en el informe anual del ITIES se dio cuenta de las operaciones administrativas y financieras, al igual que de los avances program&aacute;ticos, sobre todo lo cual los ciudadanos podr&aacute;n conocer accediendo al portal del Instituto en Internet, a la direcci&oacute;n www.transparenciasonora.org.mx, donde se publicar&aacute; &iacute;ntegro el documento respectivo.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Modificado</div>\r\n', 'Vocales del ITIES: Lic. Arely López Navarro, Lic. Francisco Cuevas Sáenz y Mtro. Andrés Miranda Guerrero  \r\nmodificado', '', 0, '2014-01-17 08:55:36', 1, NULL, NULL),
	(4, '20/12/2013', 'PRESENTAN INFORME ANUAL DEL INSTITUTO DE TRANSPARENCIA INFORMATIVA : :::', 'Más sonorenses usan el derecho de acceso a la información pública : MMM', 'Por segunda vez consecutiva Sonora superó su marca histórica de solicitudes de acceso a la información pública, que hasta la fecha suman 8,331, la cual se espera rebasar en el 2014 a partir del trabajo de vinculación realizado este ejercicio, dijo el vocal presidente del IITIES al presentar su informe anual de labores.\r\n\r\nModificado', '', '', '<div>Por segunda vez consecutiva Sonora super&oacute; su marca hist&oacute;rica de solicitudes de acceso a la informaci&oacute;n p&uacute;blica, que hasta la fecha suman 8,331, la cual se espera de nuevo rebasar para el pr&oacute;ximo 2014 a partir del intenso trabajo de vinculaci&oacute;n realizado este ejercicio, dijo el vocal presidente del Instituto de Transparencia Informativa al presentar su informe anual de labores.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Ante el pleno del ITIES, su vocal presidente, Francisco Cuevas S&aacute;enz, detall&oacute; que las 8,331 solicitudes registradas representan 10.42 por ciento m&aacute;s con respecto a las 7,545 del per&iacute;odo anterior, que hab&iacute;a sido el de mayor crecimiento en siete a&ntilde;os desde que los sonorenses cuentan con el derecho de acceder a la informaci&oacute;n p&uacute;blica gubernamental.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&ldquo;Esto es un indicativo de que el ciudadano est&aacute; ejerciendo cada vez m&aacute;s su derecho de preguntar y que se le responda sobre lo que hace el gobierno&rdquo;, dijo Cuevas S&aacute;enz, quien agreg&oacute;: &ldquo;y aunque en una proporci&oacute;n poblacional no representa una gran cifra, lo cierto es que con esto Sonora sigue ubicado por encima de la media nacional en el rubro de solicitudes de acceso&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>El vocal presidente del ITIES marc&oacute; tambi&eacute;n el prop&oacute;sito de incrementar todav&iacute;a m&aacute;s esta cifra el a&ntilde;o pr&oacute;ximo, &ldquo;lo cual va a ser muy viable a partir de los resultados que arroje nuestro programa estatal de vinculaci&oacute;n, al que hemos dado especial impulso, concretando 25 convenios de coordinaci&oacute;n y colaboraci&oacute;n, 21 de ellos con centros de ense&ntilde;anza superior, adem&aacute;s de los convenios especiales con el Poder Ejecutivo y los 72 ayuntamientos&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>En el informe aprobado por el Pleno del ITIES, que integran tambi&eacute;n los vocales Andr&eacute;s Miranda Guerrero y Arely L&oacute;pez Navarro, Cuevas S&aacute;enz dio cuenta de los resultados de la capacitaci&oacute;n a sujetos obligados, de la cual se llevaron a cabo dos jornadas a las que en promedio asisti&oacute; el 72 por ciento de las entidades de gobierno convocadas.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Asimismo, en el informe anual del ITIES se dio cuenta de las operaciones administrativas y financieras, al igual que de los avances program&aacute;ticos, sobre todo lo cual los ciudadanos podr&aacute;n conocer accediendo al portal del Instituto en Internet, a la direcci&oacute;n www.transparenciasonora.org.mx, donde se publicar&aacute; &iacute;ntegro el documento respectivo.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Modificado</div>\r\n', 'Vocales del ITIES: Lic. Arely López Navarro, Lic. Francisco Cuevas Sáenz y Mtro. Andrés Miranda Guerrero  \r\nmodificado', '', 0, '2014-01-14 12:04:57', 1, NULL, NULL),
	(5, '20/12/2013', 'PRESENTAN INFORME ANUAL DEL INSTITUTO DE TRANSPARENCIA INFORMATIVA : :::', 'Más sonorenses usan el derecho de acceso a la información pública : MMM', 'Por segunda vez consecutiva Sonora superó su marca histórica de solicitudes de acceso a la información pública, que hasta la fecha suman 8,331, la cual se espera rebasar en el 2014 a partir del trabajo de vinculación realizado este ejercicio, dijo el vocal presidente del IITIES al presentar su informe anual de labores.\r\n\r\nModificado', '', '', '<div>Por segunda vez consecutiva Sonora super&oacute; su marca hist&oacute;rica de solicitudes de acceso a la informaci&oacute;n p&uacute;blica, que hasta la fecha suman 8,331, la cual se espera de nuevo rebasar para el pr&oacute;ximo 2014 a partir del intenso trabajo de vinculaci&oacute;n realizado este ejercicio, dijo el vocal presidente del Instituto de Transparencia Informativa al presentar su informe anual de labores.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Ante el pleno del ITIES, su vocal presidente, Francisco Cuevas S&aacute;enz, detall&oacute; que las 8,331 solicitudes registradas representan 10.42 por ciento m&aacute;s con respecto a las 7,545 del per&iacute;odo anterior, que hab&iacute;a sido el de mayor crecimiento en siete a&ntilde;os desde que los sonorenses cuentan con el derecho de acceder a la informaci&oacute;n p&uacute;blica gubernamental.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&ldquo;Esto es un indicativo de que el ciudadano est&aacute; ejerciendo cada vez m&aacute;s su derecho de preguntar y que se le responda sobre lo que hace el gobierno&rdquo;, dijo Cuevas S&aacute;enz, quien agreg&oacute;: &ldquo;y aunque en una proporci&oacute;n poblacional no representa una gran cifra, lo cierto es que con esto Sonora sigue ubicado por encima de la media nacional en el rubro de solicitudes de acceso&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>El vocal presidente del ITIES marc&oacute; tambi&eacute;n el prop&oacute;sito de incrementar todav&iacute;a m&aacute;s esta cifra el a&ntilde;o pr&oacute;ximo, &ldquo;lo cual va a ser muy viable a partir de los resultados que arroje nuestro programa estatal de vinculaci&oacute;n, al que hemos dado especial impulso, concretando 25 convenios de coordinaci&oacute;n y colaboraci&oacute;n, 21 de ellos con centros de ense&ntilde;anza superior, adem&aacute;s de los convenios especiales con el Poder Ejecutivo y los 72 ayuntamientos&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>En el informe aprobado por el Pleno del ITIES, que integran tambi&eacute;n los vocales Andr&eacute;s Miranda Guerrero y Arely L&oacute;pez Navarro, Cuevas S&aacute;enz dio cuenta de los resultados de la capacitaci&oacute;n a sujetos obligados, de la cual se llevaron a cabo dos jornadas a las que en promedio asisti&oacute; el 72 por ciento de las entidades de gobierno convocadas.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Asimismo, en el informe anual del ITIES se dio cuenta de las operaciones administrativas y financieras, al igual que de los avances program&aacute;ticos, sobre todo lo cual los ciudadanos podr&aacute;n conocer accediendo al portal del Instituto en Internet, a la direcci&oacute;n www.transparenciasonora.org.mx, donde se publicar&aacute; &iacute;ntegro el documento respectivo.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Modificado</div>\r\n', 'Vocales del ITIES: Lic. Arely López Navarro, Lic. Francisco Cuevas Sáenz y Mtro. Andrés Miranda Guerrero  \r\nmodificado', '', 0, '2014-01-14 12:04:55', 1, NULL, NULL),
	(6, '16/1/2014', '', '', '', '', '', '', '', '', 0, '2014-05-26 13:50:44', 0, NULL, NULL),
	(7, '16/1/2014', 'FIRMAN CONVENIO EL PRI Y EL INSTITUTO DE TRANSPARENCIA INFORMATIVA', 'Capacitará en rendición de cuentas el ITIES al PRI   ', 'El ITIES concretó el primer convenio de colaboración con una organización política en Sonora, mediante el cual el Partido Revolucionario Institucional se compromete a cadyuvar en la difusión de la cultura de la transparencia y cumplir puntualmente con su rendición de cuentas', '', '', '<div>El Instituto de Transparencia Informativa (ITIES) concret&oacute; el primer convenio de colaboraci&oacute;n con una organizaci&oacute;n pol&iacute;tica en Sonora, con el cual el Partido Revolucionario Institucional se compromete a coadyuvar en la difusi&oacute;n de la cultura de la transparencia y a cumplir puntualmente con sus obligaciones de rendici&oacute;n de cuentas.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>El documento fue firmado por los vocales del ITIES Francisco Cuevas S&aacute;enz y Andr&eacute;s Miranda Guerrero, en tanto que por el comit&eacute; directivo estatal del PRI lo hizo su secretaria general, Natalia Rivera Grijalva.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>En su mensaje Cuevas S&aacute;enz, vocal presidente del ITIES, apunt&oacute; que &ldquo;la transparencia es un &aacute;rea de oportunidad para fortalecer a las instituciones, al igual que a los partidos pol&iacute;ticos, mediante la generaci&oacute;n de confianza entre los ciudadanos&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>En el mismo sentido, el vocal Miranda Guerrero dijo que &ldquo;la transparencia es una herramienta ganadora para los partidos, pues quien le apuesta a la transparencia gana elecciones y abona al desarrollo de la democracia&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Record&oacute; tambi&eacute;n que en Sonora los partidos pol&iacute;ticos siempre han sido sujetos obligados de rendir cuentas sobre el financiamiento p&uacute;blico que reciben, y advirti&oacute; que tras la reciente reforma constitucional en materia de transparencia, las mismas organizaciones a nivel nacional deber&aacute;n tambi&eacute;n transparentarse.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Por su parte la secretaria general pri&iacute;sta se mostr&oacute; complacida del acuerdo de trabajo pactado con el Instituto, pues consider&oacute; que a trav&eacute;s de &eacute;l &ldquo;podremos seguir demostrando que en el PRI buscamos no simplemente el ejercicio del poder en el gobierno, sino ser una instituci&oacute;n de transmisi&oacute;n de valores democr&aacute;ticos hacia la gente&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Mediante este convenio el PRI recibir&aacute; de parte del ITIES asesor&iacute;a y capacitaci&oacute;n en la materia, la cual incluso se buscar&aacute; replicar en quienes en su momento ocupen cargos de elecci&oacute;n popular, a fin de sensibilizarlos sobre los temas de rendici&oacute;n de cuentas, el derecho de acceso a la informaci&oacute;n p&uacute;blica y la protecci&oacute;n de datos personales.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>En el evento tambi&eacute;n estuvieron presentes el secretario de Organizaci&oacute;n del PRI, Daniel Hidalgo Hurtado; el presidente de la Fundaci&oacute;n Colosio Sonora, Gilberto Guti&eacute;rrez S&aacute;nchez; y el secretario de transparencia del mismo partido, Rafael Higuera Alfaro.</div>\r\n', '', '126126084.jpg', 1, '2014-01-17 08:36:23', 1, NULL, NULL),
	(8, '15/1/2014', 'FIRMAN CONVENIO QUE INCLUYE EVALUAR BUENAS PRÁCTICAS DE TRANSPARENCIA…', 'Van por la transparencia el ITIES y Sonora Ciudadana', 'En su propósito de acercarse mas a la gente, el ITIES firmó el primer convenio en colaboración de este año con Sonora Ciudadana, para promover el derecho de acceso a la información pública, y en el cual se incluye una medición anual que realizará la sociedad civil. ', '', '', '<div>En su prop&oacute;sito de acercarse m&aacute;s a la gente, el Instituto de Transparencia Informativa firm&oacute; el primer convenio de colaboraci&oacute;n de este a&ntilde;o con Sonora Ciudadana, A.C., para juntos promover el derecho de acceso a la informaci&oacute;n p&uacute;blica, y en el cual se incluye una medici&oacute;n anual que la asociaci&oacute;n civil realizar&aacute; sobre las buenas pr&aacute;cticas del ITIES.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>El documento fue firmado por el director de Sonora Ciudadana, Guillermo Noriega Esparza, y por los vocales del ITIES Francisco Cuevas S&aacute;enz y Andr&eacute;s Miranda Guerrero, quienes establecieron como acci&oacute;n inmediata iniciar la planeaci&oacute;n de un programa de conferencias, seminarios y diplomados dirigidos a la ciudadan&iacute;a en general sobre temas de transparencia, protecci&oacute;n de datos personales, rendici&oacute;n de cuentas y derecho de acceso.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Cuevas S&aacute;enz, vocal presidente del ITIES, destac&oacute; que &ldquo;cuando hablamos de acercarnos a la sociedad civil, es muy significativo el que lo hagamos tambi&eacute;n a trav&eacute;s de organizaciones como Sonora Ciudadana, que durante a&ntilde;os se ha mantenido atenta a las necesidades de la gente y ha abanderado bastantes causas sociales&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Por su parte, al apuntar que &ldquo;el ITIES debe ser ejemplo de rendici&oacute;n de cuentas y buenas pr&aacute;cticas de transparencia&rdquo;, Noriega Esparza explic&oacute; que la medici&oacute;n al desempe&ntilde;o del Instituto sustentar&aacute; la forma en que &eacute;ste resuelve los recursos de revisi&oacute;n o quejas que presentan las personas, as&iacute; como el cumplimiento de sus obligaciones de transparencia.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Al respecto, el vocal Miranda Guerrero coment&oacute; que &ldquo;el Instituto siempre estar&aacute; dispuesto a ser evaluado, porque eso nos ayuda a ganar la confianza de la gente y a medir la eficiencia en las resoluciones y sobre el cumplimiento de las mismas&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>En el evento, en el cual tambi&eacute;n estuvo presente el maestro Alberto Haaz D&iacute;az como miembro de la junta directiva de Sonora Ciudadana, se detall&oacute; que otro de los compromisos establecidos en el convenio es el que ambas partes exploren estrategias para la mejor implementaci&oacute;n del concepto &ldquo;gobierno abierto&rdquo; a nivel estatal y municipal, enfatizando en la apertura de datos y en el uso de tecnolog&iacute;as de la informaci&oacute;n y la comunicaci&oacute;n.</div>\r\n', '', '351839885.jpg', 1, '2014-01-17 08:41:50', 1, NULL, NULL),
	(9, '0/0/0', 'PRESENTAN PLAN DE TRABAJO ANUAL DEL INSTITUTO DE TRANSPARENCIA INFORMATIVA…', 'Más solicitudes de información y transparencia en universidades, meta del ITIES', 'Ser mas cercano a la gente a fin de que los sonorenses aprovechen mejor su derecho a preguntar lo que se hace con los recursos públicos, es la meta del ITIES este 2014, donde se espera de nuevo superar el record de solicitudes de información registradas.', '', '', '<div>Ser m&aacute;s cercano a la gente a fin de que los sonorenses aprovechen mejor su derecho a preguntar lo que se hace con los recursos p&uacute;blicos, es la meta del Instituto de Transparencia Informativa (ITIES) en este a&ntilde;o 2014, donde se espera de nuevo superar el r&eacute;cord de solicitudes de informaci&oacute;n registradas, tal como se ha hecho los dos &uacute;ltimos ejercicios.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>As&iacute; se plante&oacute; en la reuni&oacute;n de trabajo que hoy lunes 13 de enero sostuvieron todas las &aacute;reas de este Instituto, encabezadas por el vocal presidente Francisco Cuevas S&aacute;enz y el vocal Andr&eacute;s Miranda Guerrero, donde cada una de ellas present&oacute; su plan de trabajo anual.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Entre las metas y objetivos planteados destacan el de establecer centros de investigaci&oacute;n y estudio de la transparencia en las instituciones de educaci&oacute;n superior, as&iacute; como promover el desarrollo de una asignatura especializada en el tema, tal como incluso lo instruye la recientemente reformada Ley estatal de Acceso a la Informaci&oacute;n P&uacute;blica Gubernamental.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Para ello la direcci&oacute;n de Vinculaci&oacute;n del ITIES dar&aacute; seguimiento a los 21 convenios de colaboraci&oacute;n establecidos con universidades durante el ejercicio anterior, adem&aacute;s de que reforzar&aacute;n este tipo de acuerdos de trabajo ahora con organizaciones de la sociedad civil. Tambi&eacute;n esta &aacute;rea enfatizar&aacute; en el programa de capacitaci&oacute;n a los entes de gobierno obligados a rendir cuentas.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>El &aacute;rea jur&iacute;dica se prepara para atender un mayor n&uacute;mero de recursos de revisi&oacute;n o quejas que presentan los solicitantes de informaci&oacute;n, los cuales apenas en el arranque de este a&ntilde;o muestran la misma tendencia que en el pasado 2012, cuando se recibieron 302 recursos, constituyendo la mayor cantidad en toda la historia, puesto que el m&aacute;ximo registrado hab&iacute;a sido de 224 en el a&ntilde;o 2010.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>En el rubro de Difusi&oacute;n, se mantendr&aacute; el trabajo de comunicaci&oacute;n sobre las actividades del Instituto, pero a la vez se enfatizar&aacute; la promoci&oacute;n de la cultura de la transparencia mediante programas de difusi&oacute;n con impresos y campa&ntilde;as promocionales que refuercen el conocimiento de derechos como el de acceder a la informaci&oacute;n y el de inconformarse en caso de no obtener los datos solicitados a las dependencias de gobierno.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Por su parte, la direcci&oacute;n de Administraci&oacute;n, Planeaci&oacute;n y Finanzas del ITIES, har&aacute; posible la consecuci&oacute;n de &eacute;stas y otras metas, garantizando el flujo y la correcta aplicaci&oacute;n de los recursos presupuestales.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>En el encuentro tambi&eacute;n participaron la contralor&iacute;a interna y la secretar&iacute;a general del Instituto de Transparencia Informativa del Estado de Sonora.</div>\r\n', '', '776466726.jpg', 1, '2014-01-17 08:44:42', 1, NULL, NULL),
	(10, '0/0/0', 'PRESENTAN INFORME ANUAL DEL INSTITUTO DE TRANSPARENCIA INFORMATIVA', 'Más sonorenses usan el derecho de acceso a la información pública ', 'Por segunda vez consecutiva Sonora superó su marca histórica de solicitudes de acceso a la información pública, que hasta la fecha suman 8,331, la cual se esperaba rebasar en el 2014 a partir del trabajo de vinculación realizado este ejercicio, dijo el vocal presidente del ITIES al presentar su informe anual de labores', '', '', '<div>Por segunda vez consecutiva Sonora super&oacute; su marca hist&oacute;rica de solicitudes de acceso a la informaci&oacute;n p&uacute;blica, que hasta la fecha suman 8,331, la cual se espera de nuevo rebasar para el pr&oacute;ximo 2014 a partir del intenso trabajo de vinculaci&oacute;n realizado este ejercicio, dijo el vocal presidente del Instituto de Transparencia Informativa al presentar su informe anual de labores.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Ante el pleno del ITIES, su vocal presidente, Francisco Cuevas S&aacute;enz, detall&oacute; que las 8,331 solicitudes registradas representan 10.42 por ciento m&aacute;s con respecto a las 7,545 del per&iacute;odo anterior, que hab&iacute;a sido el de mayor crecimiento en siete a&ntilde;os desde que los sonorenses cuentan con el derecho de acceder a la informaci&oacute;n p&uacute;blica gubernamental.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&ldquo;Esto es un indicativo de que el ciudadano est&aacute; ejerciendo cada vez m&aacute;s su derecho de preguntar y que se le responda sobre lo que hace el gobierno&rdquo;, dijo Cuevas S&aacute;enz, quien agreg&oacute;: &ldquo;y aunque en una proporci&oacute;n poblacional no representa una gran cifra, lo cierto es que con esto Sonora sigue ubicado por encima de la media nacional en el rubro de solicitudes de acceso&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>El vocal presidente del ITIES marc&oacute; tambi&eacute;n el prop&oacute;sito de incrementar todav&iacute;a m&aacute;s esta cifra el a&ntilde;o pr&oacute;ximo, &ldquo;lo cual va a ser muy viable a partir de los resultados que arroje nuestro programa estatal de vinculaci&oacute;n, al que hemos dado especial impulso, concretando 25 convenios de coordinaci&oacute;n y colaboraci&oacute;n, 21 de ellos con centros de ense&ntilde;anza superior, adem&aacute;s de los convenios especiales con el Poder Ejecutivo y los 72 ayuntamientos&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>En el informe aprobado por el Pleno del ITIES, que integran tambi&eacute;n los vocales Andr&eacute;s Miranda Guerrero y Arely L&oacute;pez Navarro, Cuevas S&aacute;enz dio cuenta de los resultados de la capacitaci&oacute;n a sujetos obligados, de la cual se llevaron a cabo dos jornadas a las que en promedio asisti&oacute; el 72 por ciento de las entidades de gobierno convocadas.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Asimismo, en el informe anual del ITIES se dio cuenta de las operaciones administrativas y financieras, al igual que de los avances program&aacute;ticos, sobre todo lo cual los ciudadanos podr&aacute;n conocer accediendo al portal del Instituto en Internet, a la direcci&oacute;n www.transparenciasonora.org.mx, donde se publicar&aacute; &iacute;ntegro el documento respectivo.</div>\r\n\r\n<div>&nbsp;</div>\r\n', '', '54215180.jpg', 1, '2014-01-17 08:49:13', 1, NULL, NULL),
	(11, '16/12/2013', 'FIRMA EL ITIES CONVENIO 21 CON INSTITUCIONES EDUCATIVAS…', 'Promoverá transparencia el CECYTES en 48 planteles  ', 'En los 48 planteles del CECYTES se promoverá la cultura de la transparencia y el derecho de acceso a la información, mediante el convenio firmado mediante este centro de estudios y el ITIES, que suma ya 21 acuerdos de este tipo con instituciones de enseñanza superior.', '', '', '<div>En los 48 planteles del CECYTES se promover&aacute; la cultura de la transparencia y el derecho de acceso a la informaci&oacute;n p&uacute;blica, mediante el convenio de colaboraci&oacute;n firmado entre este centro de estudios y el Instituto de Transparencia Informativa del Estado de Sonora, que suma ya 21 acuerdos de este tipo con instituciones de ense&ntilde;anza superior y media superior.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>El documento fue signado este jueves 12 de diciembre por los vocales del ITIES Francisco Cuevas S&aacute;enz, Andr&eacute;s Miranda Guerrero y Arely L&oacute;pez Navarro, as&iacute; como por el director general del Colegio de Estudios Cient&iacute;ficos y Tecnol&oacute;gicos del Estado de Sonora (CECYTES), Mart&iacute;n Alejandro L&oacute;pez Garc&iacute;a.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Al dar a conocer los alcances y objetivo del convenio, el vocal Miranda Guerrero se&ntilde;al&oacute; que &ldquo;es de nuestro mayor inter&eacute;s que los j&oacute;venes ejerzan su derecho a preguntar sobre lo que se hace con los recursos p&uacute;blicos, y sobre todo que esa informaci&oacute;n que obtengan les sea de utilidad para su desarrollo acad&eacute;mico y profesional&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>El director del CECYTES coincidi&oacute; con el comentario y apunt&oacute; que &ldquo;somos una instituci&oacute;n comprometida con la transparencia, a la cual vemos como una herramienta con la que educamos a nuestros j&oacute;venes para la vida&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Por su parte Cuevas S&aacute;enz, vocal presidente del ITIES, y la vocal Arely L&oacute;pez Navarro recordaron que tras la reciente reforma a la ley estatal en la materia, se ampliaron las obligaciones de rendici&oacute;n de cuentas para las instituciones de educaci&oacute;n superior, las que ahora deber&aacute;n proporcionar de oficio cierta informaci&oacute;n diferenciada, entre la que se cuenta las evaluaciones al desempe&ntilde;o de la planta docente, los listados de profesores con licencia o en a&ntilde;o sab&aacute;tico y, entre otra, las fuentes de ingresos financieros de cada una de las escuelas.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Este convenio con el CECYTES se suma a los que el ITIES ya ha firmado con el Tec de Monterrey, El Colegio de Sonora, la Universidad Estatal de Sonora, Universidad de la Sierra, Universidad Tecnol&oacute;gica de Hermosillo, Universidad Tecnol&oacute;gica de Etchojoa, Universidad Tecnol&oacute;gica de Guaymas, Instituto Tecnol&oacute;gico Superior de Cajeme, Universidad Kino, Universidad La Salle, Universidad Tecnol&oacute;gica del Sur de Sonora, Instituto Tecnol&oacute;gico de Sonora, Universidad de Sonora en Navojoa, Instituto Tecnol&oacute;gico Superior de Cananea, Universidad Tecnol&oacute;gica de Nogales, Universidad Tecnol&oacute;gica de Puerto Pe&ntilde;asco, Instituto Tecnol&oacute;gico Superior de Puerto Pe&ntilde;asco, Universidad Tecnol&oacute;gica de San Luis R&iacute;o Colorado, Universidad del Valle de M&eacute;xico y Colegio de Bachilleres del Estado de Sonora (COBACH).</div>\r\n', '', '116036668.jpg', 1, '2014-01-17 08:54:49', 1, NULL, NULL),
	(12, '7/2/2014', 'CONVENIO DEL ITIES CON UNIVERSIDAD INTERAMERICANA PARA EL DESARROLLO…', 'Preguntar por transparencia es más sencillo que el derecho de petición', 'Muchos profesionistas siguen recurriendo al derecho de petición para solicitar información al gobierno, a pesar de que preguntar por medio de transparencia es mucho más rápido y sencillo, dijeron los vocales del ITIES al firmar convenio de colaboración con la Universidad Interamericana para el Desarrollo', '', '', '<div>Actualmente muchos profesionistas siguen recurriendo al derecho de petici&oacute;n para solicitar informaci&oacute;n al gobierno, a pesar de que preguntar por medio de transparencia es mucho m&aacute;s r&aacute;pido y sencillo, dijeron los vocales del ITIES al firmar convenio de colaboraci&oacute;n con la Universidad Interamericana para el Desarrollo (UNID).</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&ldquo;De ah&iacute; la importancia de que en la formaci&oacute;n acad&eacute;mica de los j&oacute;venes universitarios se incluya el conocimiento del derecho que todos tenemos de acceder a la informaci&oacute;n p&uacute;blica gubernamental, el cual tiene ventajas como menores tiempos de espera y la posibilidad de proteger la identidad de los solicitantes&rdquo;, asent&oacute; el vocal presidente del Instituto de Transparencia Informativa del Estado de Sonora (ITIES), Francisco Cuevas S&aacute;enz.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>El tambi&eacute;n vocal Andr&eacute;s Miranda Guerrero coment&oacute; que el derecho de acceso en M&eacute;xico es relativamente nuevo, con apenas una d&eacute;cada de existencia, &ldquo;y por tanto es un derecho de j&oacute;venes, que ser&aacute;n quienes mejor y mayormente lo aprovechen en el futuro inmediato&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Durante la firma del acuerdo mediante el cual la UNID promover&aacute; la cultura de la transparencia en sus planteles de Hermosillo y Ciudad Obreg&oacute;n, el director de la universidad, Miguel &Aacute;ngel Guerrero Badilla, destac&oacute; que este tipo de convenios &ldquo;nos sirven para impulsar la formaci&oacute;n integral de los alumnos e incluso de nuestros maestros, quienes adem&aacute;s podr&aacute;n convertirse en multiplicadores en la difusi&oacute;n de este derecho&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Este convenio es el sexto que el ITIES firma en lo que va del presente a&ntilde;o, y el n&uacute;mero 23 de todos los que se han concretado con instituciones de educaci&oacute;n media superior y superior en el Estado, entre las que se cuentan adem&aacute;s de la UNID, el Conalep, Cecytes, Tec de Monterrey, El Colegio de Sonora, Universidad Estatal de Sonora, Universidad de la Sierra, Universidad Tecnol&oacute;gica de Hermosillo, Universidad Tecnol&oacute;gica de Etchojoa, Universidad Tecnol&oacute;gica de Guaymas, Instituto Tecnol&oacute;gico Superior de Cajeme, Universidad Kino, Universidad La Salle, Universidad Tecnol&oacute;gica del Sur de Sonora, Instituto Tecnol&oacute;gico de Sonora, Universidad de Sonora unidad regional sur, Instituto Tecnol&oacute;gico Superior de Cananea, Universidad Tecnol&oacute;gica de Nogales, Universidad Tecnol&oacute;gica de Puerto Pe&ntilde;asco, Instituto Tecnol&oacute;gico Superior de Puerto Pe&ntilde;asco, Universidad Tecnol&oacute;gica de San Luis R&iacute;o Colorado, Universidad del Valle de M&eacute;xico y el Colegio de Bachilleres del Estado de Sonora.</div>\r\n', '', '416541828.jpg', 0, '2014-05-26 08:31:33', 1, NULL, NULL),
	(13, '5/2/2014', 'REVISA COMAIP AVANCES EN LA MÉTRICA DE LA TRANSPARENCIA\r\n \r\n  \r\n', 'Deben tomar opinión de Estados para la nueva ley de transparencia', 'Para ser eficaz, la nueva ley general de transparencia debe tomar en cuenta las realidades de cada uno de los Estados, y para ello los órganos garantes estatales agrupados en la COMAIP preparan una propuesta de ley que harán llegar a los legisladores federales.', '', '', '<div>Para ser eficaz, la nueva ley general de transparencia debe tomar en cuenta las realidades de cada uno de los Estados, y para ello los &oacute;rganos garantes estatales agrupados en la COMAIP preparan una propuesta de ley que har&aacute;n llegar a los legisladores federales.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>As&iacute; se acord&oacute; en la Cuarta Asamblea Extraordinaria de la Conferencia Mexicana para el Acceso a la Informaci&oacute;n P&uacute;blica (COMAIP), realizada en la ciudad de M&eacute;xico, a la que por parte del Instituto de Transparencia Informativa del Estado de Sonora (ITIES) asisti&oacute; el vocal Andr&eacute;s Miranda Guerrero.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>El maestro Miranda explic&oacute; que para los miembros de la COMAIP es muy importante que la ley general que se emitir&aacute; tras la reciente reforma constitucional en materia de transparencia, &ldquo;considere las distintas caracter&iacute;sticas que hay entre nuestras regiones, y sobre todo que no desde&ntilde;e que en muchos aspectos las legislaciones estatales est&aacute;n incluso m&aacute;s avanzadas que la ley federal&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>De esto &uacute;ltimo cit&oacute; como ejemplo que en el caso de Sonora &ldquo;los partidos pol&iacute;ticos siempre han sido sujetos obligados de rendir cuentas, mientras que a nivel federal a penas ahora ser&aacute; una novedad&rdquo;; de ah&iacute; la importancia de que antes de redactar la nueva ley se escuche la opini&oacute;n de los estados, &ldquo;y por eso en la COMAIP habremos de presentar nuestra propuesta, la cual vamos a tener lista a mediados de marzo pr&oacute;ximo&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Por otra parte, en el encuentro inaugurado por el jefe de gobierno del Distrito Federal, Miguel &Aacute;ngel Mancera, se dieron a conocer tambi&eacute;n los avances en la M&eacute;trica de la Transparencia 2013-2014, que est&aacute; elaborando a nivel nacional el Centro de Investigaci&oacute;n y Docencia Econ&oacute;micas (CIDE), y sobre la cual se inform&oacute; que ya se encuentran en la revisi&oacute;n de los marcos normativos estatales y de los portales web de los sujetos obligados de rendir cuentas, y que pr&oacute;ximamente se entrar&aacute; a la etapa de medici&oacute;n con usuarios simulado y de entrevistas directas a los &oacute;rganos garantes estatales.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Otros acuerdos tomados en esta asamblea extraordinaria de la COMAIP fueron realizar en el mes de marzo un evento a nivel nacional y cuatro m&aacute;s regionales, con motivo del d&eacute;cimo aniversario de esta conferencia que agrupa a todos los organismos de transparencia en el pa&iacute;s; asimismo se lanzar&aacute; una convocatoria para reconocer a las agrupaciones civiles que en cada Entidad de la Rep&uacute;blica se hayan destacado por su trabajo en favor de la transparencia, el derecho de acceso a la informaci&oacute;n y la rendici&oacute;n de cuentas.</div>\r\n', 'El jefe de gobierno del Distrito Federal, Miguel Ángel Mancera, en saludo con el vocal del ITIES Andrés Miranda Guerrero, durante la inauguración de la asamblea de la COMAIP. ', '713894527.jpg', 0, '2014-05-26 08:31:32', 1, NULL, NULL),
	(14, '5/2/2014', 'REVISA COMAIP AVANCES EN LA MÉTRICA DE LA TRANSPARENCIA\r\n \r\n  \r\n', 'Deben tomar opinión de Estados para la nueva ley de transparencia', 'Para ser eficaz, la nueva ley general de transparencia debe tomar en cuenta las realidades de cada uno de los Estados, y para ello los órganos garantes estatales agrupados en la COMAIP preparan una propuesta de ley que harán llegar a los legisladores federales.', '', '', '<div>Para ser eficaz, la nueva ley general de transparencia debe tomar en cuenta las realidades de cada uno de los Estados, y para ello los &oacute;rganos garantes estatales agrupados en la COMAIP preparan una propuesta de ley que har&aacute;n llegar a los legisladores federales.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>As&iacute; se acord&oacute; en la Cuarta Asamblea Extraordinaria de la Conferencia Mexicana para el Acceso a la Informaci&oacute;n P&uacute;blica (COMAIP), realizada en la ciudad de M&eacute;xico, a la que por parte del Instituto de Transparencia Informativa del Estado de Sonora (ITIES) asisti&oacute; el vocal Andr&eacute;s Miranda Guerrero.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>El maestro Miranda explic&oacute; que para los miembros de la COMAIP es muy importante que la ley general que se emitir&aacute; tras la reciente reforma constitucional en materia de transparencia, &ldquo;considere las distintas caracter&iacute;sticas que hay entre nuestras regiones, y sobre todo que no desde&ntilde;e que en muchos aspectos las legislaciones estatales est&aacute;n incluso m&aacute;s avanzadas que la ley federal&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>De esto &uacute;ltimo cit&oacute; como ejemplo que en el caso de Sonora &ldquo;los partidos pol&iacute;ticos siempre han sido sujetos obligados de rendir cuentas, mientras que a nivel federal a penas ahora ser&aacute; una novedad&rdquo;; de ah&iacute; la importancia de que antes de redactar la nueva ley se escuche la opini&oacute;n de los estados, &ldquo;y por eso en la COMAIP habremos de presentar nuestra propuesta, la cual vamos a tener lista a mediados de marzo pr&oacute;ximo&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Por otra parte, en el encuentro inaugurado por el jefe de gobierno del Distrito Federal, Miguel &Aacute;ngel Mancera, se dieron a conocer tambi&eacute;n los avances en la M&eacute;trica de la Transparencia 2013-2014, que est&aacute; elaborando a nivel nacional el Centro de Investigaci&oacute;n y Docencia Econ&oacute;micas (CIDE), y sobre la cual se inform&oacute; que ya se encuentran en la revisi&oacute;n de los marcos normativos estatales y de los portales web de los sujetos obligados de rendir cuentas, y que pr&oacute;ximamente se entrar&aacute; a la etapa de medici&oacute;n con usuarios simulado y de entrevistas directas a los &oacute;rganos garantes estatales.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Otros acuerdos tomados en esta asamblea extraordinaria de la COMAIP fueron realizar en el mes de marzo un evento a nivel nacional y cuatro m&aacute;s regionales, con motivo del d&eacute;cimo aniversario de esta conferencia que agrupa a todos los organismos de transparencia en el pa&iacute;s; asimismo se lanzar&aacute; una convocatoria para reconocer a las agrupaciones civiles que en cada Entidad de la Rep&uacute;blica se hayan destacado por su trabajo en favor de la transparencia, el derecho de acceso a la informaci&oacute;n y la rendici&oacute;n de cuentas.</div>\r\n', 'El jefe de gobierno del Distrito Federal, Miguel Ángel Mancera, en saludo con el vocal del ITIES Andrés Miranda Guerrero, durante la inauguración de la asamblea de la COMAIP. aaa', '', 0, '2014-02-13 10:29:39', 1, NULL, NULL),
	(17, '17/3/2014', 'EN HERMOSILLO CAPACITAN A AYUNTAMIENTOS EN TRANSPARENCIA…', 'No seremos tolerantes con incumplidos de rendición de cuentas: ITIES', 'Los sujetos obligados a rendir cuentas en Sonora tienen todo el apoyo del ITIES, “pero de igual manera deben esperar de nosotros una postura firme y dispuesta a aplicar las sanciones que nos faculta la ley, en caso de que no cumplan”, advirtió el vocal presidente de este Instituto, Francisco Cuevas Sáenz.', '', '', '<div>Los sujetos obligados a rendir cuentas en Sonora tienen todo el apoyo del Instituto de Transparencia Informativa, &ldquo;pero de igual manera deben esperar de nosotros una postura firme y dispuesta a aplicar las sanciones que nos faculta la ley, en caso de que no cumplan&rdquo;, advirti&oacute; el presidente del ITIES, Francisco Cuevas S&aacute;enz.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Durante la inauguraci&oacute;n de la primera jornada de capacitaci&oacute;n de este a&ntilde;o para Ayuntamientos, realizada en Hermosillo, Cuevas S&aacute;enz se&ntilde;al&oacute; que siempre el ITIES se ha conducido con una actitud conciliatoria en la que se privilegia &ndash;dijo&ndash; el acuerdo por sobre la aplicaci&oacute;n de las medidas coactivas para quienes fallan en el cumplimiento de sus responsabilidades de transparencia.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&ldquo;Sin embargo &ndash;apunt&oacute;&ndash; no vamos a ser tolerantes con quienes pretendan abusar de nuestra disposici&oacute;n para ayudarlos a cumplir&rdquo;, como es el caso de quienes no mantengan su informaci&oacute;n p&uacute;blica b&aacute;sica en los portales web de transparencia, tal como lo obliga la ley, se&ntilde;al&oacute;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Consider&oacute; que &ldquo;no hay argumentos para no cumplir con una disposici&oacute;n como esta si, por ejemplo, a los ayuntamientos que no cuentan con una p&aacute;gina de internet nuestro propio Instituto se la proporciona sin costo, a trav&eacute;s del programa Red de Municipios Transparentes&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>El vocal presidente dijo que las medidas de apremio de que disponen van desde el extra&ntilde;amiento hasta la suspensi&oacute;n y cese definitivo, recordando adem&aacute;s que en todos los asuntos que el Instituto ha resuelto sobre incumplimientos de transparencia, se ha girado un apercibimiento, e incluso en dos casos se impuso multa econ&oacute;mica con cargo al patrimonio del servidor p&uacute;blico responsable.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Por su parte, el vocal del ITIES Andr&eacute;s Miranda Guerrero resalt&oacute; que de ah&iacute; la importancia de la capacitaci&oacute;n sobre las nuevas responsabilidades marcadas en la ley estatal en la materia luego de su reforma de agosto pasado, as&iacute; como en los lineamientos generales de acceso, archivo e informaci&oacute;n restringida, que igualmente fueron modificados recientemente, y sobre lo cual vers&oacute; la capacitaci&oacute;n en esta primera jornada obligatoria anual.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Hermosillo fue la s&eacute;ptima sede regional en la que trabajaron los capacitadores del ITIES, pues antes, entre el 25 de febrero y el 11 de marzo, hab&iacute;an llevado a cabo los mismos cursos para Ayuntamientos en Ciudad Obreg&oacute;n, Sahuaripa, Moctezuma, Caborca, Nogales y Cananea.</div>\r\n', '', '416656494.jpg', 1, '2014-05-26 10:14:24', 1, NULL, NULL),
	(18, '17/3/2014', 'ENTREGA EL INSTITUTO DE TRANSPARENCIA INFORME ANUAL AL CONGRESO…', 'Ante aumento de solicitudes, el ITIES atiende más recursos de revisión  ', 'En Sonora cada vez más gente solicita información pública y, consecuentemente, han aumentado los recursos de revisión, aunque éstos siguen representando una baja proporción del total de solicitudes, se destaca en el informe anual que el ITIES entregó al Congreso del Estado.\r\n', '', '', '<div>En Sonora cada vez m&aacute;s gente solicita informaci&oacute;n p&uacute;blica y, consecuentemente, tambi&eacute;n han aumentado los recursos de revisi&oacute;n contra los sujetos obligados de rendir cuentas, aunque &eacute;stos siguen representando una muy baja proporci&oacute;n del total de solicitudes registradas, se destaca en el informe anual que el Instituto de Transparencia Informativa entreg&oacute; al Congreso del Estado.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Conforme a los tiempos que obliga la ley local en la materia, los vocales del ITIES pusieron a disposici&oacute;n de los diputados el documento donde se da cuenta del impacto en el trabajo en favor de la transparencia, como es el caso de las 8,791 solicitudes de informaci&oacute;n logradas en el 2013, que fueron 16.5 por ciento m&aacute;s que las 7,545 del a&ntilde;o 2012.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Asimismo, se detalla que de ese total de solicitudes derivaron 302 recursos de revisi&oacute;n o quejas debido a inconformidades de los solicitantes con la respuesta obtenida. Dicha cantidad es la mayor que se ha presentado en los poco m&aacute;s de siete a&ntilde;os del derecho de acceso en Sonora, sin embargo siguen representando un bajo 3.43 por ciento del total de solicitudes registradas en el a&ntilde;o.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>El vocal presidente del Instituto, Francisco Cuevas S&aacute;enz, coment&oacute; a este respecto que &ldquo;en parte es bueno tener m&aacute;s recursos de revisi&oacute;n, pues significa que las personas ya no se quedan conformes con la respuesta que se les otorga, y exigen justamente lo que pidieron de informaci&oacute;n, lo cual nos ir&aacute; llevando a que los entes obligados de rendir cuentas pongan m&aacute;s cuidado en lo que contestan a la gente&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Agreg&oacute; que &ldquo;junto a esa actitud de exigencia del ciudadano, igualmente mis compa&ntilde;eros vocales Andr&eacute;s Miranda Guerrero y Arely L&oacute;pez Navarro estamos comprometidos con la m&aacute;xima publicidad de la informaci&oacute;n en poder del gobierno, y en el a&ntilde;o del que informamos el 99 por ciento de los recursos de revisi&oacute;n los resolvimos en favor de la gente; es decir 299 de 302 asuntos&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>En cuanto a qui&eacute;n se pregunta m&aacute;s, el informe del ITIES se&ntilde;ala que la mayor cantidad de solicitudes se dirigi&oacute; al Ayuntamiento de Cajeme, con 955, seguido por la Secretar&iacute;a de la Contralor&iacute;a General del Estado con 365, el Ayuntamiento de San Luis R&iacute;o Colorado con 320, la Secretar&iacute;a de Educaci&oacute;n y Cultura, y la Coordinaci&oacute;n de Infraestructura del Ayuntamiento de Hermosillo, ambas con 255.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Estos y otros datos, como los comparativos hist&oacute;ricos de solicitudes, recursos de revisi&oacute;n, y las acciones desarrolladas por cada una de las &aacute;reas del ITIES en el a&ntilde;o 2013, pueden ser consultados en el documento original que se publica en el portal www.transparenciasonora.org.mx.</div>\r\n\r\n<div>&nbsp;</div>\r\n', 'El Mtro. Andrés Miranda Guerrero, vocal del ITIES, y el vocal presidente del mismo Instituto, Lic. Francisco Cuevas Sáenz, al hacer entrega del documento que contiene el informe 2013 de este organismo autónomo.', '733543800.jpg', 1, '2014-05-26 10:16:30', 1, NULL, NULL),
	(19, '20/3/2014', 'CAPACITAN EN TRANSPARENCIA A EJECUTIVO, LEGISLATIVO Y JUDICIAL…', 'Cumplir obligaciones para que no se politice la transparencia: ITIES   ', 'La publicación de resultados de la métrica de la transparencia que actualmente se realiza a nivel nacional, coincidirá con el inicio de la época electoral, y los obligados de rendir cuentas deben estar preparados para que el tema no se politice, advirtió el presidente del ITIES.\r\n\r\n', '', '', '<div>\r\n<div>La publicaci&oacute;n de resultados de la m&eacute;trica de la transparencia que actualmente se realiza a nivel nacional, coincidir&aacute; con el inicio de la &eacute;poca electoral, y los obligados de rendir cuentas deben estar preparados para que el tema no se politice, advirti&oacute; el presidente del Instituto de Transparencia Informativa del Estado de Sonora.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Al inaugurar la primera jornada de capacitaci&oacute;n de este a&ntilde;o dirigida a dependencias de los tres poderes y organismos aut&oacute;nomos estatales, el vocal presidente del ITIES, Lic. Francisco Cuevas S&aacute;enz, coment&oacute; que &ldquo;en septiembre de este a&ntilde;o conoceremos las posiciones que los entes de gobierno de cada entidad federativa ocupar&aacute;n tras esta medici&oacute;n que lleva a cabo el Centro de Investigaci&oacute;n y Docencia Econ&oacute;micas (CIDE)&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Agreg&oacute; que se estar&aacute; muy cerca del arranque de las campa&ntilde;as pol&iacute;ticas, por lo que &ldquo;posiblemente haya quienes pretendan utilizar el tema de transparencia para exaltar o atacar a sus oponentes; y la mejor forma en que nosotros podemos neutralizar esa situaci&oacute;n es cumpliendo cabalmente con nuestras obligaciones de rendir cuentas y de atender el derecho de la gente a acceder a la informaci&oacute;n p&uacute;blica gubernamental&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Cuevas S&aacute;enz asent&oacute; que, de hecho, hay una tendencia a que aumenten las solicitudes de informaci&oacute;n durante los per&iacute;odos electorales, y ejemplific&oacute; con el a&ntilde;o 2011, cuando entre los meses de enero y junio se tuvieron s&oacute;lo 1,198 solicitudes, las cuales aumentaron a 3,365 en el mismo per&iacute;odo del 2012, que fue un a&ntilde;o en que se celebraron votaciones locales.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Por ello el vocal presidente del ITIES insisti&oacute; en la importancia de que los encargados de las cuestiones de transparencia se capaciten sobre las novedades que presenta la ley estatal en la materia luego de su reforma en agosto pasado, as&iacute; como en sus lineamientos generales de acceso, archivo e informaci&oacute;n restringida, que igualmente fueron actualizados recientemente.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>A los cursos que iniciaron este mi&eacute;rcoles 19 de marzo en Hermosillo, asistir&aacute;n en tres d&iacute;as distintos todas las dependencias de los poderes Ejecutivo, Legislativo y Judicial, as&iacute; como funcionarios de los cinco organismos aut&oacute;nomos que existen en Sonora.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Esta misma capacitaci&oacute;n se imparti&oacute; antes a todos los Ayuntamientos del Estado, en eventos realizados en siete sedes regionales en Ciudad Obreg&oacute;n, Sahuaripa, Moctezuma, Caborca, Nogales, Cananea y Hermosillo.</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n', 'El vocal presidente del ITIES, Francisco Cuevas Sáenz, en charla con algunos de los asistentes a la capacitación en materia de transparencia, realizada hoy en Hermosillo.', '125033740.jpg', 1, '2014-05-26 10:19:41', 1, NULL, NULL),
	(20, '24/3/2014', 'CONTINÚA LA CAPACITACIÓN EN TRANSPARENCIA A LOS TRES PODERES…', 'Treinta años deben conservarse los archivos en Sonora, advierte el ITIES   ', 'Los archivos de las dependencias de gobierno en Sonora deben conservarse por lo menos 30 años y estar disponibles para la gente que solicite conocerlos, advirtió el vocal presidente del ITIES durante la primera jornada de capacitación en Hermosillo a sujetos obligados de rendir cuentas.', '', '', '<div>Los archivos de las dependencias de gobierno en Sonora deben conservarse por lo menos 30 a&ntilde;os y estar disponibles para la gente que solicite conocerlos, advirti&oacute; el vocal presidente del Instituto de Transparencia Informativa, Francisco Cuevas S&aacute;enz, durante la primera jornada de capacitaci&oacute;n en Hermosillo a sujetos obligados de rendir cuentas.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>En el segundo d&iacute;a de tres en que el ITIES impartir&aacute; cursos a servidores p&uacute;blicos de los tres poderes de gobierno y organismos aut&oacute;nomos, Cuevas S&aacute;enz hizo una introducci&oacute;n sobre el tema de archivo, destacando que tras la reforma a la ley estatal en la materia se dispusieron mejoras tan importantes como el reducir el tiempo de conservaci&oacute;n de documentos p&uacute;blicos, que pas&oacute; de 40 a 30 a&ntilde;os.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Coment&oacute; que esto no es un retroceso sino un esfuerzo por mantener archivos eficientes, adem&aacute;s de que &ndash;dijo&ndash; &ldquo;por supuesto que los documentos que se consideren hist&oacute;ricos pasan a formar parte de tal acervo y por ninguna raz&oacute;n son desaparecidos al t&eacute;rmino de los 30 a&ntilde;os&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Explic&oacute; que en la reformada ley tambi&eacute;n se establece la disminuci&oacute;n de los tiempos en que el ITIES debe resolver las solicitudes de destrucci&oacute;n documental anticipada, que antes eran de tres meses y ahora qued&oacute; en s&oacute;lo un mes, con lo cual dijo &ldquo;se busca dar agilidad a este proceso en el que nosotros revisamos y, en su caso, autorizamos dar de baja ciertos archivos que ya han perdido sus valor administrativo, legal o fiscal, y que no posean valores hist&oacute;ricos&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>El vocal presidente del ITIES subray&oacute; tambi&eacute;n como un cambio importante en la ley, el que ahora todos los entes de gobierno est&eacute;n obligados a contar con dos tipos de archivo, como son los de tr&aacute;mite y los de concentraci&oacute;n.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>En esta capacitaci&oacute;n dirigida a dependencias del Ejecutivo, Legislativo, Judicial y organismos aut&oacute;nomos, se impartieron tambi&eacute;n cursos sobre los nuevos lineamientos generales de acceso y de informaci&oacute;n restringida, los cuales tambi&eacute;n fueron actualizados recientemente.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Estos cursos organizados por el Instituto de Transparencia Informativa culminar&aacute;n ma&ntilde;ana viernes 21 de marzo, luego de las dos etapas previas en Hermosillo y de siete eventos similares que se llevaron a cabo para los Ayuntamientos en igual n&uacute;mero de sedes regionales.</div>\r\n', 'Treinta años deben conservarse los archivos en Sonora, advierte el ITIES   ', '2990923.jpg', 1, '2014-05-26 10:21:18', 1, NULL, NULL),
	(21, '22/3/2014', 'INSTITUTO DE TRANSPARENCIA INFORMATIVA CAPACITARÁ SOBRE EL TEMA…', 'No fundamentan bien los acuerdos para reservar información: ITIES   ', 'En Sonora noventa y nueve por ciento de las quejas sobre acceso a la información son resueltas en favor de la gente porque el ITIES actúa bajo el principio de máxima publicidad, pero también porque la mayoría de los entes de gobierno no hacen bien sus acuerdos de reserva.\r\n', '', '', '<div>En Sonora noventa y nueve por ciento de las quejas sobre acceso a la informaci&oacute;n son resueltas en favor de la gente porque el Instituto de Transparencia Informativa act&uacute;a bajo el principio de m&aacute;xima publicidad, pero tambi&eacute;n porque la mayor&iacute;a de los entes de gobierno no hacen bien sus acuerdos de reserva, revelaron los vocales del ITIES.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Durante el tercer d&iacute;a de capacitaci&oacute;n en Hermosillo a dependencias de los tres poderes y organismos aut&oacute;nomos, los vocales Francisco Cuevas S&aacute;enz y Andr&eacute;s Miranda Guerrero consideraron que, incluso, las fallas en los acuerdos de reserva pueden agravarse debido a las nuevas exigencias de la ley local en la materia, por lo que el Instituto enfatiza en la capacitaci&oacute;n sobre este tema.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Ambos vocales consideraron que as&iacute; como es importante garantizar el acceso a la informaci&oacute;n, lo es tambi&eacute;n preservar la reserva de ciertos datos que pueden afectar la estabilidad del estado o da&ntilde;ar a terceros, sin embargo ello debe hacerse conforme lo estipula la ley, se&ntilde;alando rigurosamente las causas por las que se reserva e incluso el tiempo durante el cual se mantendr&aacute; restringido el acceso a dicha informaci&oacute;n.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>A partir de ello, el vocal Miranda Guerrero adelant&oacute; que las formas para expresar y fundar debidamente los acuerdos de reserva &ldquo;es una asignatura pendiente, porque si bien tocamos el tema en los cursos de nuestro Instituto, evidentemente necesitamos reforzarlo, y as&iacute; vamos a hacerlo con una capacitaci&oacute;n especial&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Por su parte, el vocal presidente Cuevas S&aacute;enz consider&oacute; que &ldquo;corremos el riesgo de que las deficiencias en los acuerdos de reserva se acent&uacute;en a partir de las nuevas disposiciones en la ley estatal de acceso, recientemente reformada, la cual ya es m&aacute;s espec&iacute;fica y limitativa sobre cu&aacute;l informaci&oacute;n puede reservarse y sus porqu&eacute;s&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>De ah&iacute; la importancia de que los sujetos obligados de rendir cuentas se mantengan actualizados, como es el caso &ndash;dijeron&ndash; de los asistentes a esta primera jornada de capacitaci&oacute;n anual del ITIES, a la que fueron convocadas todas las dependencias de los poderes Ejecutivo, Legislativo y Judicial, adem&aacute;s de los cinco organismos aut&oacute;nomos que operan en Soniora.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>El evento fue inaugurado por el licenciado Adri&aacute;n Alcal&aacute; M&eacute;ndez, consejero del Instituto de Transparencia y Acceso a la Informaci&oacute;n P&uacute;blica de Baja California y coordinador de la regi&oacute;n norte de la Conferencia Mexicana para el Acceso a la Informaci&oacute;n P&uacute;blica (COMAIP), quien resalt&oacute; que este tipo de capacitaciones &ldquo;son fundamentales para ocupar buenos lugares en los niveles de transparencia en el pa&iacute;s, pero sobre todo para garantizar a los ciudadanos su acceso a la informaci&oacute;n p&uacute;blica&rdquo;.</div>\r\n', 'De izquiera a derecha: Mtro. Andrés Miranda Guerrero, Lic. Francisco Cuevas Sáenz y Lic. Adrián Alcalá Méndez.', '694446342.jpg', 1, '2014-05-26 10:22:37', 1, NULL, NULL),
	(22, '24/3/2014', 'SE REÚNEN VOCALES DEL ITIES CON DIRECTORES DE LA ZONA ESCOLAR XIII', 'Siete secundarias más promoverán la cultura de la transparencia', 'Con el apoyo del ITIES siete secundarias técnicas de tres municipios promocionarán la cultura de la transparencia entre maestros, alumnos y padres de familia, conforme se acordó con directores de escuelas de la Zona Escolar Número XIII.', '', '', '<div>Siete secundarias t&eacute;cnicas de tres municipios promocionar&aacute;n la cultura de la transparencia y el derecho de acceso a la informaci&oacute;n p&uacute;blica entre maestros, alumnos y padres de familia, con el apoyo del Instituto de Transparencia Informativa del Estado de Sonora.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>As&iacute; lo acordaron en una reuni&oacute;n de trabajo los vocales del ITIES con los directores de dichas escuelas ubicadas en Hermosillo, el Poblado Miguel Alem&aacute;n, Mazat&aacute;n, Arivechi y Ures, y en la cual tambi&eacute;n particip&oacute; el Supervisor de la Zona Escolar N&uacute;mero XIII, que agrupa a estos planteles.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>En el encuentro los vocales Arely L&oacute;pez Navarro, Andr&eacute;s Miranda Guerrero y el vocal presidente del Instituto, Francisco Cuevas S&aacute;enz, subrayaron a los maestros reunidos en la Escuela Secundaria 57, de la colonia El Sahuaro, la importancia de que los j&oacute;venes se vayan adentrando en el conocimiento de su derecho a preguntar sobre lo que se hace con los recursos p&uacute;blicos y en la obligaci&oacute;n que tienen los entes de gobierno de rendir cuentas.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&ldquo;Nos interesa tambi&eacute;n que los alumnos aprendan c&oacute;mo darle una utilidad pr&aacute;ctica a la informaci&oacute;n y datos obtenidos, ya sea en la academia, en el &aacute;rea productiva o incluso para beneficio directo de sus comunidades y familias&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Por su parte el director de la escuela anfitriona y el supervisor de la Zona XIII, profesores Efr&eacute;n Camargo Ochoa y Rafael de la Rosa Mart&iacute;nez, respectivamente, se comprometieron a promover que en los pr&oacute;ximos proyectos did&aacute;cticos que se presentar&aacute;n en el mes de mayo venidero, se incluya el tema de la transparencia.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>El evento fue aprovechado para hacer entrega de varios ejemplares de la Ley estatal de Acceso a la Informaci&oacute;n P&uacute;blica y de Protecci&oacute;n de Datos Personales, as&iacute; como de 1,200 paquetes promocionales de los programas y servicios del ITIES, en los que se incluye material escolar y folletos sobre el tema.&nbsp;</div>\r\n', 'Los vocales del ITIES Francisco Cuevas Sáenz, Andrés Miranda Guerrero y Arely López Navarro, promoviendo la transparencia con maestros y directores de escuelas secundarias.', '380376733.jpg', 1, '2014-05-26 10:24:15', 1, NULL, NULL),
	(23, '25/3/2014', 'FIRMAN CONVENIO DE COLABORACIÓN EL ITIES Y EL ISC…', 'Aprovechan red cultural de Sonora para promover la transparencia', 'El derecho de acceso a la información pública será promovido en los 72 municipios del Estado aprovechando la red cultural e infraestructura que opera el Instituto Sonorense de Cultura, luego de concretarse el convenio de colaboración entre este organismo y el ITIES.', '', '', '<div>El derecho de acceso a la informaci&oacute;n p&uacute;blica ser&aacute; promovido en los 72 municipios del Estado aprovechando la red cultural e infraestructura que opera el Instituto Sonorense de Cultura, luego de concretarse el convenio de colaboraci&oacute;n entre este organismo y el Instituto de Transparencia Informativa.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>El vocal presidente del ITIES y la directora del ISC, Francisco Cuevas S&aacute;enz y Mar&iacute;a Dolores Coronel G&aacute;ndara, respectivamente, resaltaron la importancia de este acuerdo de trabajo mediante el cual una parte proveer&aacute; de materiales de difusi&oacute;n sobre transparencia, derecho de acceso, rendici&oacute;n de cuentas y protecci&oacute;n de datos personales, y la otra los pondr&aacute; a disposici&oacute;n de la gente en sus instalaciones.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>En particular, para este fin se utilizar&aacute;n las 147 bibliotecas p&uacute;blicas que opera el ISC en toda la entidad, &ldquo;cuyas instalaciones pueden servir incluso para la realizaci&oacute;n de eventos de promoci&oacute;n y capacitaci&oacute;n&rdquo;, coment&oacute; Coronel G&aacute;ndara.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Por su parte, Cuevas S&aacute;enz destac&oacute; que se trata de un gran apoyo en la tarea de dar a conocer a la gente su derecho de preguntar lo que se hace con los recursos p&uacute;blicos, &ldquo;e informarles tambi&eacute;n del derecho que tienen de interponer ante el ITIES un recurso de revisi&oacute;n, o queja, cuando sientan que sus solicitudes de informaci&oacute;n no fueron atendidas de manera adecuada por los sujetos obligados de rendir cuentas&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>El convenio fue signado igualmente por los vocales del ITIES Arely L&oacute;pez Navarro y Andr&eacute;s Miranda Guerrero, quienes ponderaron que esta conjunci&oacute;n de esfuerzos permitir&aacute; llevar a m&aacute;s sonorenses los programas y servicios del Instituto de Transparencia Informativa, entre ellos algunas convocatorias a concursos y otros eventos como congresos, conferencias, talleres y seminarios, muchos de ellos impartidos por expositores de talla nacional e internacional.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>En lo inmediato, el ISC colocar&aacute; en sus bibliotecas ejemplares de la Ley estatal de Acceso a la Informaci&oacute;n P&uacute;blica y de Protecci&oacute;n de Datos Personales, as&iacute; como diversos materiales impresos que promueven la cultura de la transparencia.</div>\r\n\r\n<div>&nbsp;</div>\r\n', '', '48318301.jpg', 1, '2014-05-26 10:25:33', 1, NULL, NULL),
	(24, '26/3/2014', 'ASISTEN EL ITSON, ITESCA Y UTS A CAPACITACIÓN DEL ITIES…', 'Conviene a universidades rendir cuentas y ser transparentes', 'Rendir cuentas puede ser muy redituable para las instituciones educativas, al permitirles un más fácil acceso a apoyos federales, consideró el vocal presidente del ITIES durante una reunión de trabajo con tres universidades en Ciudad Obregón.', '', '', '<div>Rendir cuentas puede ser muy redituable para las instituciones educativas, al permitirles un m&aacute;s f&aacute;cil acceso a apoyos federales, consider&oacute; el vocal presidente del Instituto de Transparencia Informativa del Estado de Sonora durante una reuni&oacute;n de trabajo con tres universidades en Ciudad Obreg&oacute;n.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Al inaugurar el evento, el presidente del ITIES, Francisco Cuevas S&aacute;enz, resalt&oacute; que para el otorgamiento de recursos federales extraordinarios, los organismos calificadores toman muy en cuenta las buenas pr&aacute;cticas de transparencia que llevan a cabo las universidades.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&ldquo;Son est&aacute;ndares actuales que pueden determinar la aprobaci&oacute;n o no de una solicitud para ingresar a ciertos programas de apoyo a centros de ense&ntilde;anza superior&rdquo;, agreg&oacute; Cuevas S&aacute;enz, y se&ntilde;al&oacute; que de ah&iacute; la importancia de que los funcionarios universitarios se mantengan actualizados en sus obligaciones de transparencia, como es el caso de la capacitaci&oacute;n que el ITIES desarroll&oacute; este martes 25 de marzo en Ciudad Obreg&oacute;n.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>En dicho taller, al que asistieron funcionarios administrativos y acad&eacute;micos del ITSON, ITESCA y Universidad Tecnol&oacute;gica del Sur de Sonora, se dieron a conocer las nuevas disposiciones de la Ley estatal de Acceso a la Informaci&oacute;n P&uacute;blica y de Protecci&oacute;n de Datos Personales, luego de su reforma en agosto pasado.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Por su parte, los vocales del ITIES Andr&eacute;s Miranda Guerrero y Arely L&oacute;pez Navarro, destacaron que en el curso se detalla lo relativo a la informaci&oacute;n diferenciada que ahora deben publicar de oficio las instituciones de educaci&oacute;n superior, como son los planes y programas de estudio, procedimientos y requisitos de admisi&oacute;n, estados financieros y patrimonio, monto anual de ingresos y su fuente, licencias y a&ntilde;os sab&aacute;ticos de los maestros, as&iacute; como los indicadores de gesti&oacute;n y evaluaciones al desempe&ntilde;o de la planta acad&eacute;mica y administrativa.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Este mismo taller ser&aacute; impartido por los capacitadores del ITIES ma&ntilde;ana en la unidad regional sur de la Universidad de Sonora, en tanto que la gira de vocales del Instituto continuar&iacute;a este mismo martes por la tarde en Navojoa, con una asesor&iacute;a especial a empresarios de la CANACO Servytur del Mayo sobre protecci&oacute;n de datos personales.</div>\r\n', '', '152325630.jpg', 1, '2014-05-26 10:27:11', 1, NULL, NULL),
	(25, '27/3/2014', 'ASESORA EL ITIES A COMERCIANTES DE LA CANACO EN NAVOJOA…', 'Proteger datos personales es oportunidad para las empresas ', 'Las empresas pueden convertir en una oportunidad para los negocios su obligación de proteger las bases de datos personales que posean, dijeron los vocales del ITIES a miembros de la CANACO Servytur del Mayo, con quienes se reunieron para asesorarlos sobre este tema.', '', '', '<div>Las empresas pueden convertir en una oportunidad para los negocios su obligaci&oacute;n de proteger las bases de datos personales que posean, dijeron los vocales del Instituto de Transparencia Informativa del Estado de Sonora a miembros de la CANACO Servytur del Mayo, con quienes se reunieron para asesorarlos sobre este tema.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>En las instalaciones de la C&aacute;mara Nacional de Comercio en Navojoa, los vocales del ITIES Francisco Cuevas S&aacute;enz, Andr&eacute;s Miranda Guerrero y Arely L&oacute;pez Navarro, fueron recibidos por el presidente de ese gremio, Gerardo Valdivia Urrea, as&iacute; como por quien a partir del pr&oacute;ximo 31 de marzo ocupar&aacute; tal cargo, Mar&iacute;a Remedios Pulido Torres.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Cuevas S&aacute;enz, vocal presidente del Instituto, coment&oacute; que &ldquo;aunque de entrada puede parecer una carga para las empresas la obligaci&oacute;n legal de proteger los datos personales de clientes, proveedores e incluso de empleados, esto terminar&aacute; benefici&aacute;ndoles&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&ldquo;Es cierto &ndash;agreg&oacute;&ndash; que ahorita puede verse como un gasto el dedicarle a esto tiempo y hasta recursos extra, pero en realidad se trata de una inversi&oacute;n, pues ustedes saben que las marcas crecen con base en la calidad, pero igualmente se asientan en la lealtad de los consumidores, y esa lealtad se gana generando confianza&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Por su parte, los comerciantes de la regi&oacute;n del Mayo se mostraron dispuestos a cumplir con lo que marca la ley federal de protecci&oacute;n de datos en posesi&oacute;n de particulares, &ldquo;y la mejor muestra de ello es que estemos aqu&iacute; reunidos y que hayamos pedido su asesor&iacute;a&rdquo;, dijo el dirigente de la CANACO en aquella regi&oacute;n.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>En tanto, los vocales Arely L&oacute;pez Navarro y Andr&eacute;s Miranda Guerrero explicaron que aunque vigilar la protecci&oacute;n de datos por parte de los particulares es una cuesti&oacute;n federal y no del ITIES, &eacute;ste Instituto est&aacute; comprometido a apoyar a todas las empresas y agrupaciones gremiales que lo soliciten.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>El taller impartido por capacitadores del Instituto de Transparencia Informativa, aborda las principales obligaciones de las empresas en cuanto a proteger las bases de datos en su poder, como son las emisiones de avisos de privacidad, las medidas de seguridad que deben aplicarse, el cuidado de los datos sensibles, y garantizar la aplicaci&oacute;n de los llamados derechos ARCO, es decir la posibilidad de que cualquier persona acceda, rectifique, cancele o se oponga al tratamiento de sus datos.</div>\r\n', 'Ing. Gerardo Valdivia Urrea, presidente de la CANACO Servytur del Mayo; y los vocales del ITIES Mtro. Andrés Miranda Guerrero, Lic. Francisco Cuevas Sáenz y Lic. Arely López Navarro.', '9598005.jpg', 1, '2014-05-26 10:28:38', 1, NULL, NULL),
	(26, '7/4/2014', 'ADVIERTE EL ITIES A AYUNTAMIENTOS SOBRE OBLIGACIONES…', 'No hay excusa para no contar con portal web de transparencia', 'Contar con un portal web de transparencia es obligatorio y ni siquiera el no tener acceso directo a internet es excusa para no cumplir con esta disposición legal, advirtió el vocal presidente del ITIES a alcaldes y funcionarios municipales convocados a un evento del Centro Estatal de Desarrollo Municipal.', '', '', '<div>Contar con un portal web de transparencia es obligatorio y ni siquiera el no tener acceso directo a internet es excusa para no cumplir con esta disposici&oacute;n legal, advirti&oacute; el vocal presidente del Instituto de Transparencia Informativa del Estado de Sonora a alcaldes y funcionarios municipales convocados a un evento del Centro Estatal de Desarrollo Municipal.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>En la reuni&oacute;n de CEDEMUN realizada este jueves 3 de abril en Hermosillo sobre el tema &ldquo;Programas federales y agenda para el desarrollo municipal&rdquo;, se incluy&oacute; la participaci&oacute;n del presidente del ITIES, licenciado Francisco Cuevas S&aacute;enz, quien se&ntilde;al&oacute; que actualmente varios ayuntamientos no est&aacute;n cumpliendo con esta obligaci&oacute;n, &ldquo;y algunos ni siquiera se han interesado por dejarse apoyar&rdquo;, como son los casos de Divisaderos, Fronteras, Huachinera, Nacozari, &Oacute;navas, Opodepe, Oquitoa, San Javier, S&aacute;ric, Soyopa, Tepache, Villa Hidalgo y Villa Pesqueira.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Cuevas S&aacute;enz reconoci&oacute; que algunas de estas localidades tienen hasta dificultades para acceder al servicio de Internet, pero apunto que eso no debe ser una limitante, pues para ello el ITIES aplica el principio de subsidiaridad.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Explic&oacute; que &ldquo;desde el a&ntilde;o pasado conformamos la Red de Municipios Transparentes, como un programa mediante el cual nuestro Instituto proporciona sin costo a los gobiernos municipales los servidores y dominios necesarios para contar con su sitio web, e incluso se les facilita un sistema automatizado para la creaci&oacute;n y administraci&oacute;n de dichos portales&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Dijo que adem&aacute;s se les ha capacitado en el uso del mencionado sistema, &ldquo;y todo a cambio de que mantengan actualizada su informaci&oacute;n p&uacute;blica b&aacute;sica; e incluso si tienen problemas con el acceso a la red, les hemos ofrecido que nosotros mismos en el ITIES podemos subirles la informaci&oacute;n que nos indiquen&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Pero subray&oacute; que los municipios se&ntilde;alados &ldquo;no han definido si desean este apoyo que les ofrecemos desinteresadamente&rdquo;, contrario a otros que s&iacute; han aprovechado el principio de subsidiaridad con que act&uacute;a el Instituto de Transparencia Informativa, y los cuales son: Altar, B&aacute;cum, Tubutama, Sonoyta, Magdalena, San Miguel de Horcasitas, Santa Ana, Moctezuma, Etchojoa, Naco y Arivechi.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Otros municipios tienen su propia p&aacute;gina con proveedores distintos, y otros m&aacute;s est&aacute;n en proceso de utilizar este servicio que proporciona el ITIES a trav&eacute;s de la Red de Municipios Transparentes, siendo estos Aconchi, Huatabampo, &Iacute;muris, Y&eacute;cora, Pitiquito, Quiriego y Benjam&iacute;n Hill.</div>\r\n', 'El vocal presidente del ITIES, Lic. Francisco Cuevas Sáenz, durante su participación ante presidentes municipales en la reunión de CEDEMUN.', '141630908.jpg', 1, '2014-05-26 10:30:09', 1, NULL, NULL),
	(27, '11/4/2014', 'EL TAMBIÉN VOCAL DEL ITIES IMPULSARÁ ONCE LÍNEAS DE TRABAJO…', 'Andrés Miranda, nuevo coordinador de la región norte de la COMAIP   ', 'El vocal del ITIES Andrés Miranda Guerrero fue nombrado coordinador de la región norte de la COMAIP, el organismo que agrupa a todos los institutos y comisiones de transparencia en el país, para la cual propuso un plan de trabajo con once líneas de acción.\r\n', '', '', '<div>El vocal del ITIES Andr&eacute;s Miranda Guerrero fue nombrado coordinador de la regi&oacute;n norte de la COMAIP, el organismo que agrupa a todos los institutos y comisiones de transparencia en el pa&iacute;s, para la cual propuso un plan de trabajo con once l&iacute;neas de acci&oacute;n.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Durante la octava sesi&oacute;n ordinaria de esta regi&oacute;n de la Conferencia Mexicana para el Acceso a la Informaci&oacute;n P&uacute;blica (COMAIP), realizada en Hermosillo este jueves 10 de abril, votaron a favor de Miranda Guerrero los ocho organismos asistentes que pertenecen a la citada regi&oacute;n norte: Chihuahua, Sinaloa, Baja California, Nuevo Le&oacute;n, Baja California Sur, Durango, Coahuila y Sonora.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>En el plan de trabajo del tambi&eacute;n vocal del Instituto de Transparencia Informativa del Estado de Sonora (ITIES), destaca buscar la armonizaci&oacute;n de las legislaciones locales en cuanto a principios y procedimientos para el acceso a la informaci&oacute;n, e implementar un programa que permita compartir los criterios bajo los cuales resuelven las quejas ciudadanas los &oacute;rganos garantes de transparencia en M&eacute;xico; asimismo, se propone promover la realizaci&oacute;n de encuentros de capacitaci&oacute;n y concursos de ensayo sobre los diversos temas de la transparencia.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>En el mismo evento el vocal presidente del ITIES, Francisco Cuevas S&aacute;enz, hizo un llamado a redise&ntilde;ar el esquema bajo el que opera la COMAIP, &ldquo;haci&eacute;ndolo m&aacute;s eficiente y orientado a fortalecer a los propios &oacute;rganos garantes que integramos esta Conferencia&rdquo;, dijo.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Miranda Guerrero sustituye en el cargo a Adri&aacute;n Alcal&aacute; M&eacute;ndez, consejero del instituto de Baja California, a quien en el mismo acto el dirigente nacional de la COMAIP, Orlando Espinoza Rodr&iacute;guez, le entreg&oacute; un reconocimiento por su labor de dos a&ntilde;os coordinando la regi&oacute;n norte de la Conferencia.&nbsp;</div>\r\n', '', '919580002.jpg', 1, '2014-05-26 10:31:31', 1, NULL, NULL),
	(28, '11/4/2014', 'INAUGURA EL PRESIDENTE DEL ITIES FORO NACIONAL DE ANÁLISIS…', 'Ley de acceso y protección de datos en un solo compendio: Cuevas Sáenz   ', 'Los temas fundamentales de la transparencia deben estar compendiados en una sola ley, a manera de un código que incluya tanto las disposiciones para el acceso como la protección de datos personales, consideró el vocal presidente del ITIES al inaugurar el foro nacional de la COMAIP en Hermosillo.', '', '', '<div>Los temas fundamentales de la transparencia deben estar compendiados en una sola ley, a manera de un c&oacute;digo que incluya tanto las disposiciones para el acceso a la informaci&oacute;n como la protecci&oacute;n de datos personales, consider&oacute; el vocal presidente del ITIES al inaugurar el Foro Nacional de An&aacute;lisis sobre la Creaci&oacute;n de la Ley General de Protecci&oacute;n de Datos Personales.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>En el evento realizado este jueves 10 de abril en Hermosillo, y al que se dieron cita representantes de todos los organismos de transparencia en el pa&iacute;s, el presidente del Instituto de Transparencia Informativa del Estado de Sonora, Francisco Cuevas S&aacute;enz, coment&oacute; que hay dos posturas en torno a este asunto:</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&ldquo;La de quienes propugnan porque la ley de protecci&oacute;n de datos quede separada de lo que ser&iacute;a la ley general de acceso a la informaci&oacute;n, y por los que vemos m&aacute;s viable no s&oacute;lo el que se mantengan ambos temas en una sola ley, sino que a &eacute;sta se le anexe adem&aacute;s el libro de los datos personales en poder de particulares&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Explic&oacute; que entre los beneficios est&aacute;n la armonizaci&oacute;n de disposiciones para que unas y otras leyes no se contrapongan, y la oportunidad de eficientar las temporalidades para los procedimientos, &ldquo;lo cual es bueno para los &oacute;rganos garantes, pero sobre todo para la gente&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Dentro de este mismo foro, la doctora Mar&iacute;a Solange Maqueo Ram&iacute;rez, investigadora del CIDE, imparti&oacute; una conferencia sobre los alcances que puede tener en las entidades federativas y, particularmente, en los &oacute;rganos garantes estatales, la reciente reforma constitucional en materia de transparencia.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Luego de la conferencia se presentaron paneles de opini&oacute;n en los que participaron consejeros y comisionados de distintos organismos estatales de transparencia, y miembros de la sociedad civil como Guillermo Noriega Esparza, fundador de Sonora Ciudadana y actualmente en las ternas finalistas de aspirante a comisionado del IFAI.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>El foro fue convocado por la Conferencia Mexicana de Acceso a la Informaci&oacute;n P&uacute;blica (COMAIP), cuyo dirigente nacional, Orlando Espinoza Rodr&iacute;guez, inform&oacute; que otras tres reuniones similares se llevar&aacute;n a cabo en distintas sedes, a fin de recabar las mejores propuestas para presentarlas al Senado de la Rep&uacute;blica, donde se legislar&aacute; las nuevas normatividades en esta materia.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>La inauguraci&oacute;n del evento fue hecha por el presidente del Supremo Tribunal de Justicia de Sonora, magistrado Juan Sebasti&aacute;n Sotomayor Tovar, quien estuvo acompa&ntilde;ado por la secretaria de la Contralor&iacute;a estatal, Mar&iacute;a Guadalupe Ru&iacute;z Durazo, el comisionado del INFO-DF, Mucio Hern&aacute;ndez Guerrero, y por los vocales del ITIES Arely L&oacute;pez Navarro y Andr&eacute;s Miranda Guerrero.</div>\r\n', '', '542703391.jpg', 1, '2014-05-26 10:32:44', 1, NULL, NULL),
	(29, '13/5/2014', 'PARTICIPA EL ITIES EN JORNADAS DE TRANSPARENCIA ELECTORAL…', 'Firman convenio Tribunal Electoral y el Instituto de Transparencia Informativa ', 'El ITIES y el Tribunal Electoral del Poder Judicial de la Federación promoverán en Sonora la rendición de cuentas como parte esencial de la cultura democrática, luego de firmar un convenio de colaboración al cual también se adhirieron otros siete organismos estatales de transparencia.', '', '', '<div>El Tribunal Electoral del Poder Judicial de la Federaci&oacute;n y el Instituto de Transparencia Informativa (ITIES) promover&aacute;n en Sonora la rendici&oacute;n de cuentas como parte esencial de la cultura democr&aacute;tica, luego de haber firmado un convenio de colaboraci&oacute;n al cual tambi&eacute;n se adhirieron otros siete organismos estatales de transparencia.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Por parte del ITIES, el acuerdo de trabajo fue signado por el vocal Andr&eacute;s Miranda Guerrero durante las Primeras Jornadas de Transparencia Electoral, a las que convoc&oacute; el TEPJF en la ciudad de Los Cabos, Baja California Sur.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>El maestro Miranda Guerrero explic&oacute; que la finalidad del convenio es desarrollar programas y actividades acad&eacute;micas y culturales, entre otras, &ldquo;que coadyuven a fomentar la rendici&oacute;n de cuentas y la transparencia como una pol&iacute;tica p&uacute;blica que incide en la confianza ciudadana hacia candidatos y partidos pol&iacute;ticos, e incluso autoridades electorales&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Coment&oacute; que en esto &uacute;ltimo fue enf&aacute;tico el magistrado presidente del TEPJF, Jos&eacute; Alejandro Luna Ramos, quien al suscribir el convenio explic&oacute; que el m&aacute;ximo organismo jurisdiccional en materia electoral del pa&iacute;s ha implementado varias medidas que fomentan el principio de m&aacute;xima publicidad, como el hecho de que transmitan en vivo por Internet las sesiones de su Comit&eacute; de Adquisiciones, y el de que todas sus sentencias queden publicadas en un plazo no mayor a 24 horas.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Adem&aacute;s del Instituto de Transparencia Informativa del Estado de Sonora, suscribieron el convenio los organismos de transparencia y acceso a la informaci&oacute;n de Baja California, Baja California Sur, Chihuahua, Durango, Jalisco, Nayarit y Sinaloa, correspondientes a la primera circunscripci&oacute;n plurinominal.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>En el evento se impartieron tambi&eacute;n las conferencias &ldquo;Dimensiones de la reforma constitucional en materia de transparencia&rdquo;, &ldquo;Impactos de la reforma constitucional de transparencia en el &aacute;mbito electoral&rdquo; y &ldquo;Los nuevos retos de la transparencia&rdquo;, a las que asisti&oacute; el maestro Miranda Guerrero representando al Pleno del ITIES y como coordinador de la Regi&oacute;n Norte de la Conferencia Mexicana de Acceso a la Informaci&oacute;n P&uacute;blica (COMAIP).</div>\r\n', 'Mgda. Mónica Aralí Soto Fregoso, presidenta de la Sala Regional Guadalajara del TEPJF; Mgdo. José Alejandro Luna Ramos, presidente del TEPJF; y Mtro. Andrés Miranda Guerrero, vocal del ITIES.', '921605406.jpg', 1, '2014-05-26 10:34:44', 1, NULL, NULL),
	(30, '16/5/2014', 'IMPARTE EL ITIES CURSOS A PERSONAL DEL DIF SONORA…', 'Apoyan rendición de cuentas las Unidades de Enlace de Transparencia   ', 'Personal de las diferentes áreas del Sistema DIF Sonora asistieron al curso de capacitación complementaria que les impartió el ITIES, donde se subrayó la importancia de las unidades de enlace de transparencia, con las que por ley deben contar todas las dependencias de gobierno.', '', '', '<div>Personal de las diferentes &aacute;reas del Sistema DIF Sonora asistieron al curso de capacitaci&oacute;n complementaria que les imparti&oacute; el Instituto de Transparencia Informativa del Estado de Sonora, donde se subray&oacute; la importancia de las unidades de enlace de transparencia, con las que por ley deben contar todas las dependencias de gobierno.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Al inaugurar el evento, los vocales del ITIES Arely L&oacute;pez Navarro y Francisco Cuevas S&aacute;enz explicaron que estas unidades de enlace de transparencia se encargan internamente de que se atiendan las solicitudes de acceso a la informaci&oacute;n p&uacute;blica, de mantener actualizados los portales de transparencia en Internet y de que se protejan efectivamente los datos personales que se posean.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Dijeron que, sin embargo, en muchos casos las propias unidades de enlace batallan para que las otras &aacute;reas operativas y administrativas de las dependencias o de los Ayuntamientos les proporcionen los datos que han de entregar a los ciudadanos, lo cual advirtieron que no debe ser as&iacute;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&ldquo;Si nuestro Instituto aplica una sanci&oacute;n por incumplir la rendici&oacute;n de cuentas, &eacute;sta ser&aacute; para el servidor p&uacute;blico directamente responsable, y no para el titular de la unidad de enlace&rdquo;, dijo la vocal L&oacute;pez Navarro, quien agreg&oacute;: &ldquo;Entonces, nos conviene atender los requerimientos de las unidades de enlace de transparencia, que est&aacute;n ah&iacute; para ayudarnos a cumplir nuestras obligaciones&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Por su parte el vocal presidente del ITIES, Cuevas S&aacute;enz, coment&oacute; que ese entendimiento entre las unidades de enlace y el resto de las &aacute;reas adquiere mayor relevancia a partir de las recientes reformas constitucionales en esta materia, que endurecen las responsabilidades y que permitir&aacute;n que las quejas de los solicitantes de informaci&oacute;n sean revisadas tanto a nivel estatal como luego a nivel federal por el IFAI.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Por parte del DIF Sonora encabez&oacute; los trabajos su director administrativo, Erick Mart&iacute;nez Rodr&iacute;guez, quien aval&oacute; que los servidores p&uacute;blicos no deben ver en la transparencia un requisito, sino un elemento con el que se gana confianza y credibilidad ante la sociedad.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Los cursos impartidos por capacitadores del Instituto de Transparencia Informativa abordaron los temas de acceso a la informaci&oacute;n, archivo y control documental, informaci&oacute;n restringida y protecci&oacute;n de datos personales.</div>\r\n', '', '30610507.jpg', 1, '2014-05-26 10:45:03', 1, NULL, NULL),
	(31, '16/5/2014', 'NAVOJOA, BENITO JUÁREZ, HUATABAMPO, QUIRIEGO Y ROSARIO DE TESOPACO', 'Se entrevistan vocales del ITIES con cinco alcaldes del sur del Estado', 'Para analizar los niveles de rendición de cuentas de municipios del sur de la entidad, los vocales del ITIES se reunieron con los alcaldes de Navojoa, Benito Juárez, Huatabampo, Quiriego y Rosario de Tesopaco, en una gira de trabajo en la que además firmaron un convenio con empresarios de Navojoa.', '', '', '<div>Para analizar los niveles de rendici&oacute;n de cuentas de municipios del sur de la entidad, los vocales del Instituto de Transparencia Informativa del Estado de Sonora se reunieron hoy con los alcaldes de Navojoa y Benito Ju&aacute;rez, y lo har&aacute;n ma&ntilde;ana viernes con los de Huatabampo, Quiriego y Rosario de Tesopaco.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>En una gira de trabajo que incluye adem&aacute;s eventos de capacitaci&oacute;n y la firma de un convenio de colaboraci&oacute;n con comerciantes de Navojoa, el presidente del ITIES Francisco Cuevas S&aacute;enz y la vocal Arely L&oacute;pez Navarro se entrevistaron primero con el presidente municipal de Benito Ju&aacute;rez, Guillermo Paredes Cebreros.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Luego del encuentro se realiz&oacute; un curso de capacitaci&oacute;n a los empleados de ese Ayuntamiento, el cual fue solicitado de manera especial por el propio alcalde Paredes Cebreros, quien subray&oacute; su inter&eacute;s por caracterizar su administraci&oacute;n por una pol&iacute;tica p&uacute;blica de transparencia.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>M&aacute;s tarde, en Navojoa, Cuevas S&aacute;enz y L&oacute;pez Navarro sostuvieron una pl&aacute;tica con el alcalde Alberto Natanael Guerrero L&oacute;pez, con quien abordaron el tema de las actualizaciones a los portales web con la informaci&oacute;n p&uacute;blica b&aacute;sica a que obliga la ley estatal en la materia.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Para ma&ntilde;ana viernes 16 de mayo se tiene programada la visita a los alcaldes de Huatabampo, Quiriego y Rosario de Tesopaco, con los que ultimar&aacute;n detalles para que sus portales de transparencia en Internet utilicen el sistema automatizado que el ITIES provee sin costo a los ayuntamientos, dentro del programa Red de Municipios Transparentes.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Tambi&eacute;n en Huatabampo se impartir&aacute;n a empleados del Ayuntamiento cursos sobre acceso a la informaci&oacute;n p&uacute;blica, archivo y control documental, informaci&oacute;n restringida y protecci&oacute;n de datos personales.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Ese mismo viernes los vocales del ITIES firmar&aacute;n un convenio de colaboraci&oacute;n con comerciantes adheridos a la Canaco Servytur del Mayo, con el fin de unir esfuerzos para promover la cultura de la transparencia y, de manera particular, la obligaci&oacute;n de las empresas en cuanto a proteger los datos personales de sus clientes, proveedores y empleados.</div>\r\n', 'Los vocales del ITIES Arely López Navarro y Francisco Cuevas Sáenz, con el presidente municipal de Benito Juárez, Guillermo Paredes Cebreros.', '685527010.jpg', 1, '2014-05-26 10:46:17', 1, NULL, NULL),
	(32, '20/5/2014', 'FIRMAN CONVENIO EL ITIES Y LA CANACO SERVYTUR DEL MAYO', 'Comprometidos empresarios de Navojoa a proteger datos personales', 'Los empresarios de Navojoa afiliados a la Cámara Nacional de Comercio en aquella región del Estado, se comprometieron a proteger las bases de datos personales que posean, luego de firmar un convenio de colaboración con el Instituto de Transparencia Informativa del Estado de Sonora.', '', '', '<div>Los empresarios de Navojoa afiliados a la C&aacute;mara Nacional de Comercio en aquella regi&oacute;n del Estado, se comprometieron a proteger las bases de datos personales que posean, luego de firmar un convenio de colaboraci&oacute;n con el Instituto de Transparencia Informativa del Estado de Sonora.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>La Canaco Servytur del Mayo, que dirige la C.P.C. Mar&iacute;a Remedios Pulido Torres, se convierte en el quinto organismo de la sociedad civil que signa un acuerdo de trabajo con el ITIES, as&iacute; como antes lo han hecho las delegaciones estatales de la C&aacute;mara Nacional de la Industria de la Construcci&oacute;n (CMIC) y de la Confederaci&oacute;n Patronal de la Rep&uacute;blica Mexicana (COPARMEX), adem&aacute;s del Consejo Ciudadano para la Transparencia y Rendici&oacute;n de Cuentas de Navojoa, y la asociaci&oacute;n civil Sonora Ciudadana.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>El vocal presidente del ITIES, Lic. Francisco Cuevas S&aacute;enz, coment&oacute; durante la firma del convenio que las empresas pueden convertir en una oportunidad para sus negocios la obligaci&oacute;n de proteger las bases de datos personales que posean, &ldquo;pues aunque de entrada puede parecer una carga, esto terminar&aacute; benefici&aacute;ndoles al ganar confianza entre sus clientes, proveedores y empleados&rdquo;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Por lo dem&aacute;s &ndash;dijo&ndash; para las empresas es muy importante mantenerse actualizados sobre sus obligaciones en esta materia, a fin de evitar multas que en algunos casos pueden llegar a montos considerables. De hecho, a partir de ello precisamente la Canaco Servytur del Mayo tiene programado un seminario en este tema para sus agremiados, en el que participar&aacute;n capacitadores del ITIES.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Por su parte, Mar&iacute;a Remedios Pulido Torres destac&oacute; que la finalidad del convenio es promover la cultura de la transparencia entre los comerciantes de servicios y turismo, entre quienes adem&aacute;s se difundir&aacute; el derecho que tienen de acceder a la informaci&oacute;n p&uacute;blica, obteniendo datos que luego pueden aprovechar para sus negocios.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>El convenio fue firmado tambi&eacute;n por el Mtro. Jorge Mario Terminel Siqueiros, secretario de la CANACO SERVYTUR del Mayo, quien coordina los esfuerzos de este organismo por difundir las obligaciones de las empresas en cuanto a las bases de datos que posean, como son los avisos de privacidad, el cumplimiento de los llamados derechos ARCO y las medidas de seguridad que deben aplicarse, entre otras.&nbsp;</div>\r\n', 'El presidente del ITIES, Francisco Cuevas Sáenz, y la dirigente de la Canaco Servytur del Mayo, María Remedios Pulido Torres, acompañados durante la firma de convenio por Jorge Mario Terminel Siqueiros.', '949272305.jpg', 1, '2014-05-26 10:47:44', 1, NULL, NULL),
	(33, '22/5/2014', 'GANA ESCUELA DEL POBLADO MIGUEL ALEMÁN CONCURSO DE TRANSPARENCIA', 'Promueve el ITIES protección de datos entre jóvenes de secundaria', 'La Escuela Secundaria Técnica No. 78, del Poblado Miguel Alemán, resultó ganadora en los “Proyectos Didácticos Compartidos 2014”, que sobre el tema de protección de datos personales y derecho de acceso a la información realizó la Zona Escolar No. XIII en coordinación con el ITIES.', '', '', '<div>La Escuela Secundaria T&eacute;cnica No. 78, del Poblado Miguel Alem&aacute;n, result&oacute; ganadora en los &ldquo;Proyectos Did&aacute;cticos Compartidos 2014&rdquo;, que sobre el tema de protecci&oacute;n de datos personales y derecho de acceso a la informaci&oacute;n realiz&oacute; la Zona Escolar No. XIII en coordinaci&oacute;n con el Instituto de Transparencia Informativa del Estado de Sonora.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>El vocal presidente del ITIES, Francisco Cuevas S&aacute;enz y el supervisor de la zona escolar, Mtro. Rafael de la Rosa Mart&iacute;nez, dieron fe del concurso y entregaron los premios del evento llevado a cabo en el auditorio de la Secundaria 57, en Hermosillo.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>El equipo ganador estuvo integrado por Cruz Maritza Rodr&iacute;guez Guti&eacute;rrez, Alondra Karina Ruiz S&aacute;nchez, Perla Leticia Cota Valdez y Kenia Guadalupe Montiel Valderrama. Todas ellas recibieron constancia de participaci&oacute;n y, como est&iacute;mulo, una tableta electr&oacute;nica de siete pulgadas para apoyar sus trabajos acad&eacute;micos</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>El segundo lugar fue para la Escuela Secundaria T&eacute;cnica No. 57, de Hermosillo, con el equipo integrado por Sugey Marina Armenta D&oacute;rame, Carlos Gerardo L&oacute;pez Zalvalza, Juan Pablo Mart&iacute;nez Romero y Martha Cecilia Zamidio Gaxiola.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>El tercer puesto lo ocup&oacute; la Escuela Secundaria T&eacute;cnica No. 40, de Mazat&aacute;n, con los alumnos Marcos Maga&ntilde;a Ahumada, Itzel Guadalupe Noriega Luna, Daniela Alejandra Noriega Santos y Cecilia Guadalupe P&eacute;rez Magallanes.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Los otros participantes, con el cuarto y quinto sitio, fueron respectivamente las secundarias n&uacute;mero 14, de Arivechi, y 60, de Hermosillo. Por estas dos escuelas participaron Alejandra Guadalupe Flores Monge, Valeria Guadalupe Flores Guarista, Mar&iacute;a Mercedes Garc&iacute;a Orozco y Jes&uacute;s Guillermo Borjas Castillo, as&iacute; como Yerania Yatzbek Contreras Insunza, Seline Lucero Madrid Liz&aacute;rraga, Perla Ir&aacute;n Ahumada Garc&iacute;a y Jos&eacute; Jes&uacute;s Ruiz Galindo.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Adem&aacute;s de la presentaci&oacute;n de proyectos en pro de la transparencia, durante el evento se montaron exposiciones sobre c&oacute;mo los estudiantes de secundaria conceptualizan el derecho de acceder a la informaci&oacute;n p&uacute;blica, la rendici&oacute;n de cuentas y la necesidad de proteger los datos personales.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>El presidente del ITIES, Cuevas S&aacute;enz, reiter&oacute; el compromiso del Instituto de promover estos temas sobre todo entre los j&oacute;venes, &ldquo;pues estamos convencidos que ser&aacute;n ellos quienes mejor aprovechen los beneficios de este derecho de preguntar sobre lo que se hace con los recursos p&uacute;blicos&rdquo;.</div>\r\n', '', '673418879.jpg', 1, '2014-05-26 10:49:02', 1, NULL, NULL),
	(34, '0/0/0', '', 'La promesa de un gobierno abierto', '"La promesa del gobierno abierto”, libro editado por el InfoDF y el ITAIP, con 25 ensayos de diversos estudiosos del tema con reflexiones y experiencias regionales e internacionales, y en cuyo prólogo el político chileno José Miguel Insulza, secretario general de la OEA, advierte: “El gobierno abierto es una política pública que agrupa los conceptos de transparencia, participación y colaboración de los ciudadanos, en donde la información y los datos gubernamentales juegan un rol esencial…”.\r\n', '', '', '', '', 'phpThumb_generated_thumbnailjpeg (1).jpg', 1, '2014-05-26 14:16:23', 0, 'promesa_gobierno_abierto.pdf', NULL),
	(35, '0/0/0', '', 'Panel magistral en el Primer Congreso de Transparencia y Acceso a la Información.', 'Vea aquí el vídeo del panel magistral de análisis del "Primer Congreso de Transparencia y Acceso a la Información - Balance y perspectivas", convocado por el ITIES, en el que participaron el Mtro. Óscar Guerra Ford, la Dra. Munda Dora Buchahin y el Dr. Víctor Peña Mancillas. La sesión de preguntas y respuestas puede verlas desde esta liga: http://youtu.be/sm-VPihQLic', '', '', '', '', 'phpThumb_generated_thumbnailjpeg (2).jpg', 1, '2014-05-27 09:15:57', 0, '', 'http://www.youtube.com/watch?v=-q_zFlZp3xo&feature=youtu.be'),
	(36, '0/0/0', '', 'El ABC de los datos personales', 'Folleto ilustrado que ofrece nociones fundamentales del Derecho a la Protección de los Datos Personales. Se trata de que con este material, de una manera básica, cualquier persona se entere y comprenda nuestro derecho humano fundamental a la intimidad y de cómo las leyes lo protegen.', '', '', '', '', 'phpThumb_generated_thumbnailjpeg (3).jpg', 1, '2014-05-27 13:52:46', 0, 'abc_datos.pdf', ''),
	(37, '0/0/0', '', 'Con vinculación y capacitación, mayor cultura de la transparencia', 'El año pasado Sonora superó de nuevo su marca histórica de solicitudes de información realizadas, y la expectativa es que se incrementen este 2014 a partir de los resultados que arrojen los programas de vinculación, capacitación y de difusión de la cultura de la transparencia.', '', '', '', '', 'phpThumb_generated_thumbnailjpeg (4).jpg', 1, '2014-05-27 13:54:50', 0, 'rev_asi_33aniv_ities.pdf', ''),
	(38, '0/0/0', '', 'Consulta aquí las BASES para ser Vocal Infantil del ITIES', 'Bases completas (REQUISITOS, PREMIOS Y ESTÍMULOS) de la convocatoria para ser Vocal Infantil del ITIES por un día, este próximo 29 de abril; actividad realizada para celebrar el Día del Niño y promover la cultura de la transparencia entre la niñez sonorense.', '', '', '', '', 'vocalinfantil.jpg', 1, '2015-04-16 11:18:06', 0, 'vocal_infantil_ities2015.pdf', '');
/*!40000 ALTER TABLE `dfs_notas` ENABLE KEYS */;


-- Volcando estructura para tabla dbiti.dir_servidores_ities
CREATE TABLE IF NOT EXISTS `dir_servidores_ities` (
  `id_srv` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE latin1_spanish_ci DEFAULT '0',
  `telefono` varchar(100) COLLATE latin1_spanish_ci DEFAULT '0',
  `email` varchar(50) COLLATE latin1_spanish_ci DEFAULT '0',
  `foto` varchar(200) COLLATE latin1_spanish_ci DEFAULT NULL,
  `cargo` text COLLATE latin1_spanish_ci,
  `area` text COLLATE latin1_spanish_ci,
  `curriculum` varchar(200) COLLATE latin1_spanish_ci DEFAULT NULL,
  `direccion` varchar(200) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nivel` int(11) DEFAULT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_srv`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='Directorio de servidores Publicos del ITIES';

-- Volcando datos para la tabla dbiti.dir_servidores_ities: 24 rows
/*!40000 ALTER TABLE `dir_servidores_ities` DISABLE KEYS */;
REPLACE INTO `dir_servidores_ities` (`id_srv`, `nombre`, `telefono`, `email`, `foto`, `cargo`, `area`, `curriculum`, `direccion`, `nivel`, `activo`) VALUES
	(1, 'Lic. FRANCISCO CUEVAS SAENZ', '(662)213-15-43 (46)  212-43-08 Y 01800 701 65 66 EXT. 101', 'franciscocuevas@transparenciasonora.org', '5to concurso spot radio comaip.jpg', 'VOCAL PRESIDENTE DEL INSTITUTO DE TRANSPARENCIA INFORMATIVA DEL ESTADO DE SONORA  ', NULL, '', 'Calle Dr. Hoeffer No. 65, esquina calle Bravo, Colonia Centenario.\r\nHermosillo, Sonora, México	', 13, 1),
	(2, 'Lic. MARTHA ARELY LOPEZ NAVARRO', '(662)213-15-43 (46)  212-43-08 Y 01800 701 65 66 EXT. 105', 'arelylopeznavarro@transparenciasonora.org', NULL, 'VOCAL  DEL INSTITUTO DE TRANSPARENCIA INFORMATIVA DEL ESTADO DE SONORA', 'vocalía', NULL, NULL, NULL, 1),
	(3, 'Lic. ANDRES MIRANDA GUERRERO', '(662)213-15-43 (46)  212-43-08 Y 01800 701 65 66 EXT. 104', 'andresmiranda@transparenciasonora.org', '', 'VOCAL  DEL INSTITUTO DE TRANSPARENCIA INFORMATIVA DEL ESTADO DE SONORA', 'vocalía', NULL, NULL, NULL, 1),
	(4, 'Lic. DIANA KARINA BARRERAS SAMANIEGO', '(662)213-15-43 (46)  212-43-08 Y 01800 701 65 66 EXT. 115', 'dianabarreras@transparenciasonora.org', NULL, 'SECRETARIA  TECNICA', 'vocalía', NULL, NULL, NULL, 1),
	(5, 'Lic. JAVIER DURAZO GABILONDO', '(662)213-15-43 (46)  212-43-08 Y 01800 701 65 66 EXT. 103', 'javierdurazo@transparenciasonora.org', '', 'ASISTENTE DE PLENO', 'vocalía', NULL, NULL, NULL, 1),
	(6, 'DELIA SUSANA AGUILAR CANO', '(662)213-15-43 (46)  212-43-08 Y 01800 701 65 66 EXT. 103', 'susanaaguilar@transparenciasonora.org', '', 'SECRETARIA', 'vocalía', NULL, NULL, NULL, 1),
	(7, 'Lic. BERTHA ISABEL QUIJADA DURAZO', '(662)213-15-43 (46)  212-43-08 Y 01800 701 65 66 EXT. 106', 'berthaquijada@transparenciasonora.org', NULL, 'DIRECCION GRAL DE INVESTIGACION Y ASUNTOS JURIDICOS', 'DIRECCIÓN GENERAL DE ASUNTOS JURIDICOS', NULL, NULL, NULL, 0),
	(8, 'Lic. MIRIAM MONREAL VIDALES', '(662)213-15-43 (46)  212-43-08 Y 01800 701 65 66 EXT. 116', 'miriammonreal@transparenciasonora.org', NULL, 'SECRETARIO DE TRAMITE DEL RECURSO DE REVISION', 'DIRECCIÓN GENERAL DE ASUNTOS JURIDICOS', NULL, NULL, NULL, 1),
	(9, 'Lic. CELIA MARINA AGUILAR ESQUER', '(662)213-15-43 (46)  212-43-08 Y 01800 701 65 66 EXT. 112', 'marinaaguilar@transparenciasonora.org', NULL, 'SECRETARIO PROYECTISTA', 'DIRECCIÓN GENERAL DE ASUNTOS JURIDICOS', NULL, NULL, NULL, 1),
	(10, 'Lic. YAJAIRA GUADALUPE VARGAS CORDOVA', '(662)213-15-43 (46)  212-43-08 Y 01800 701 65 66 EXT. 118', 'yajairavargas@transparenciasonora.org', NULL, 'OFICIAL DE PARTES ', 'DIRECCIÓN GENERAL DE ASUNTOS JURIDICOS', NULL, NULL, NULL, 1),
	(11, 'Lic. ALAN GARCIA CORDOVA', '(662)213-15-43 (46)  212-43-08 Y 01800 701 65 66 EXT. 118', 'alangarcia@transparenciasonora.org', NULL, 'ACTUARIA', 'DIRECCIÓN GENERAL DE ASUNTOS JURIDICOS', NULL, NULL, NULL, 1),
	(12, 'Lic. AURELIO CUEVAS ALTAMIRANO', '(662)213-15-43 (46)  212-43-08 Y 01800 701 65 66 EXT. 111', 'aureliocuevas@transparenciasonora.org', NULL, 'DIRECCION GENERAL DE VINCULACION Y  CAPACITACION', 'DIRECCION GENERAL DE VINCULACIÓN Y CAPACITACIÓN', NULL, NULL, NULL, 1),
	(13, 'Lic. JOSE CIRILO TORRES VELDERRAIN', '(662)213-15-43 (46)  212-43-08 Y 01800 701 65 66 EXT. 109', 'josetorres@transparenciasonora.org', '', 'DIRECCION DE PARTICIPACION SOCIAL', 'DIRECCION GENERAL DE VINCULACIÓN Y CAPACITACIÓN', NULL, NULL, NULL, 1),
	(14, 'Lic. MARIA DOLORES MARTINEZ ALDACO', '(662)213-15-43 (46)  212-43-08 Y 01800 701 65 66 EXT. 120', 'mariamartinez@transparenciasonora.org', NULL, 'DIRECCION DE RELACIONES INSTITUCIONALES', 'DIRECCION GENERAL DE VINCULACIÓN Y CAPACITACIÓN', NULL, NULL, NULL, 1),
	(15, 'Lic. YIGAL TERAN RIVERA', '(662)213-15-43 (46)  212-43-08 Y 01800 701 65 66 EXT. 121', 'yigalteran@transparenciasonora.org', NULL, 'SUBDIRECCION DE INVESTIGACION Y CAPACITACION EN MATERIA DE ADMINISTRACION DOCUMENTAL', 'DIRECCION GENERAL DE VINCULACIÓN Y CAPACITACIÓN', NULL, NULL, NULL, 1),
	(16, 'Lic. MIRIAM ELIZABETH OSUNA MARTINEZ', '(662)213-15-43 (46)  212-43-08 Y 01800 701 65 66 EXT. 121', 'miriam.osuna@transparenciasonora.org', NULL, 'CAPACITADOR', 'DIRECCION GENERAL DE VINCULACIÓN Y CAPACITACIÓN', NULL, NULL, NULL, 1),
	(17, 'Lic. JUAN ALBERTO LOPEZ MENDIVIL', '(662)213-15-43 (46)  212-43-08 Y 01800 701 65 66 EXT. 110', 'juanalbertolopez@transparenciasonora.org', '', 'SUBDIRECCION DE INVESTIGACION Y CAPACITACION EN MATERIA DE INFORMACION RESERVADA', 'DIRECCION GENERAL DE VINCULACIÓN Y CAPACITACIÓN', NULL, NULL, NULL, 1),
	(18, 'Ing. DEISY EDREY RODRIGUEZ HERNANDEZ', '(662)213-15-43 (46)  212-43-08 Y 01800 701 65 66 EXT. 121', 'deisy.rodriguez@transparenciasonora.org', NULL, 'SUBDIRECCION DE TECNOLOGIAS DE LA INFORMACIÓN', 'DIRECCION GENERAL DE VINCULACIÓN Y CAPACITACIÓN', NULL, NULL, NULL, 1),
	(19, 'GUADALUPE  EDGARDO CARRILLO LOPEZ', '(662)213-15-43 (46)  212-43-08 Y 01800 701 65 66 EXT. 107', 'edgardo@transparenciasonora.org', NULL, 'DIRECCION GENERAL DE DIFUSION', 'DIRECCIÓN GENERAL DE DIFUSION', NULL, NULL, NULL, 1),
	(20, 'Lic. YOLANDA GUTIERREZ LOPEZ', '(662)213-15-43 (46)  212-43-08 Y 01800 701 65 66 EXT. 119', 'yolandagutierrez@transparenciasonora.org', '', 'SUBDIRECTOR DE DIFUSION', 'DIRECCIÓN GENERAL DE DIFUSION', NULL, NULL, NULL, 1),
	(24, 'Juan Álvaro López López ', ' (662) 213-15-43, 213-77-64, SIN COSTO: 01 800 701 65 66', 'alvarolopez@transparenciasonora.org', 'LOGO OQUITOA.jpg', 'Director General Juridico', NULL, '', 'Calle Dr. Hoeffer No. 65, esquina calle Bravo, Colonia Centenario.\r\nHermosillo, Sonora, México	', 12, 1),
	(21, 'Lic. LIZBETH SABINA GONZALEZ BUSTAMANTE', '(662)213-15-43 (46)  212-43-08 Y 01800 701 65 66 EXT. 108', 'lizbethgonzalez@transparenciasonora.org', NULL, 'DIRECCION ADMINISTRATIVA', 'DIRECCIÓN GENERAL ADMINISTRATIVA', NULL, NULL, NULL, 1),
	(22, 'Lic. MYRIAM LUCIA RIVERA OCHOA', '(662)213-15-43 (46)  212-43-08 Y 01800 701 65 66 EXT. 117', 'myriamrivera@transparenciasonora.org', NULL, 'AUXILIAR CONTABLE', 'DIRECCIÓN GENERAL ADMINISTRATIVA', NULL, NULL, NULL, 1),
	(23, 'CYNTHIA GABRIELA BUSTAMANTE ANDREWS', '(662)213-15-43 (46)  212-43-08 Y 01800 701 65 66 EXT. 113', 'cynthiabustamante@transparenciasonora.org', NULL, 'CONTRALOR', 'CONTRALORIA', NULL, NULL, NULL, 1);
/*!40000 ALTER TABLE `dir_servidores_ities` ENABLE KEYS */;


-- Volcando estructura para tabla dbiti.dsf_materiales
CREATE TABLE IF NOT EXISTS `dsf_materiales` (
  `id_mat` int(11) NOT NULL AUTO_INCREMENT,
  `mat_titulo` varchar(200) COLLATE latin1_spanish_ci DEFAULT NULL,
  `mat_autor` varchar(200) COLLATE latin1_spanish_ci DEFAULT NULL,
  `mat_editorial` varchar(200) COLLATE latin1_spanish_ci DEFAULT NULL,
  `mat_edicion` varchar(200) COLLATE latin1_spanish_ci DEFAULT NULL,
  `mat_año` int(11) DEFAULT NULL,
  `mat_paginas` int(11) DEFAULT NULL,
  `mat_ejemplares` int(11) DEFAULT NULL,
  `mat_portada` varchar(200) COLLATE latin1_spanish_ci DEFAULT NULL,
  `mat_contrap` varchar(200) COLLATE latin1_spanish_ci DEFAULT NULL,
  `activo` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_mat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- Volcando datos para la tabla dbiti.dsf_materiales: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `dsf_materiales` DISABLE KEYS */;
/*!40000 ALTER TABLE `dsf_materiales` ENABLE KEYS */;


-- Volcando estructura para tabla dbiti.enl_indices
CREATE TABLE IF NOT EXISTS `enl_indices` (
  `id_ind` int(10) NOT NULL AUTO_INCREMENT,
  `id_so` int(10) DEFAULT NULL,
  `archivo` varchar(300) COLLATE latin1_spanish_ci DEFAULT NULL,
  `semestre` int(4) DEFAULT NULL,
  `anio` int(4) DEFAULT NULL,
  `activo` int(4) DEFAULT NULL,
  `usr_id` int(4) DEFAULT NULL,
  `fecha_mod` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `id_ind` (`id_ind`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='Indices de información Reservada ';

-- Volcando datos para la tabla dbiti.enl_indices: 0 rows
/*!40000 ALTER TABLE `enl_indices` DISABLE KEYS */;
/*!40000 ALTER TABLE `enl_indices` ENABLE KEYS */;


-- Volcando estructura para tabla dbiti.enl_informes
CREATE TABLE IF NOT EXISTS `enl_informes` (
  `id_inft` int(10) NOT NULL AUTO_INCREMENT,
  `id_so` int(10) DEFAULT NULL,
  `anio` int(10) DEFAULT NULL,
  `trimestre` int(10) DEFAULT NULL,
  `archivo` varchar(300) COLLATE latin1_spanish_ci DEFAULT NULL,
  `activo` tinyint(3) DEFAULT NULL,
  `fecha_mod` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `id_inft` (`id_inft`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='Informes Trimestrales de Enlaces de Sujetos Obligados';

-- Volcando datos para la tabla dbiti.enl_informes: 0 rows
/*!40000 ALTER TABLE `enl_informes` DISABLE KEYS */;
/*!40000 ALTER TABLE `enl_informes` ENABLE KEYS */;


-- Volcando estructura para tabla dbiti.glr_galeria
CREATE TABLE IF NOT EXISTS `glr_galeria` (
  `glr_id` int(11) NOT NULL AUTO_INCREMENT,
  `glr_descripcion` text COLLATE latin1_spanish_ci NOT NULL,
  `glr_fecha` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `activo` int(11) NOT NULL DEFAULT '1',
  `glr_fechareg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seccion` int(11) NOT NULL DEFAULT '0',
  `glr_nombre` varchar(500) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`glr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='Galerias registradas';

-- Volcando datos para la tabla dbiti.glr_galeria: 17 rows
/*!40000 ALTER TABLE `glr_galeria` DISABLE KEYS */;
REPLACE INTO `glr_galeria` (`glr_id`, `glr_descripcion`, `glr_fecha`, `activo`, `glr_fechareg`, `seccion`, `glr_nombre`) VALUES
	(8, '', '27/11 /2013', 1, '2014-01-17 09:38:30', 2, 'Capacitación ITIES en Hermosillo'),
	(9, 'Dfdsf', '18/6/2014', 1, '2014-06-18 11:45:37', 0, 'galeria de prueba de miniaturas'),
	(10, 'Dfdsf', '18/6/2014', 1, '2014-06-18 11:48:01', 0, 'galeria de prueba de miniaturas'),
	(11, 'Dfdsf', '18/6/2014', 1, '2014-06-18 11:48:37', 0, 'galeria de prueba de miniaturas'),
	(12, 'Dfdsf', '18/6/2014', 1, '2014-06-18 11:49:18', 0, 'galeria de prueba de miniaturas'),
	(13, '', '18/6/2014', 1, '2014-06-30 10:21:31', 0, 'prueba '),
	(14, '', '18/6/2014', 1, '2014-06-18 11:58:48', 0, 'prueba 2'),
	(15, '', '7/5/2015', 1, '2015-05-07 10:12:25', 0, ''),
	(16, 'Seleccion multiple de fotos', '7/5/2015', 1, '2015-05-07 10:18:06', 0, 'probando multiple'),
	(17, 'Seleccion multiple de fotos', '7/5/2015', 1, '2015-05-07 10:18:51', 0, 'probando multiple'),
	(18, 'Seleccion multiple de fotos', '7/5/2015', 1, '2015-05-07 10:19:27', 0, 'probando multiple'),
	(19, 'Seleccion multiple de fotos', '7/5/2015', 1, '2015-05-07 10:23:13', 0, 'probando multiple'),
	(20, 'Seleccion multiple de fotos', '7/5/2015', 1, '2015-05-07 10:26:56', 0, 'probando multiple'),
	(21, 'Seleccion multiple de fotos', '7/5/2015', 1, '2015-05-07 10:34:17', 0, 'probando multiple'),
	(22, 'Seleccion multiple de fotos', '7/5/2015', 1, '2015-05-07 10:36:00', 0, 'probando multiple'),
	(23, 'Seleccion multiple de fotos', '7/5/2015', 1, '2015-05-07 10:36:23', 0, 'probando multiple'),
	(24, 'Seleccion multiple de fotos', '7/5/2015', 1, '2015-05-07 10:38:14', 0, 'probando multiple');
/*!40000 ALTER TABLE `glr_galeria` ENABLE KEYS */;


-- Volcando estructura para tabla dbiti.glr_gfotos
CREATE TABLE IF NOT EXISTS `glr_gfotos` (
  `glr_id` int(11) NOT NULL,
  `glrd_id` int(11) NOT NULL AUTO_INCREMENT,
  `glrd_photo` varchar(500) COLLATE latin1_spanish_ci NOT NULL,
  `glrd_descripcion` text COLLATE latin1_spanish_ci NOT NULL,
  `glrd_fechareg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `activo` int(11) NOT NULL DEFAULT '1',
  `glrd_portada` int(11) DEFAULT '0',
  PRIMARY KEY (`glrd_id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='fotos de la galeria';

-- Volcando datos para la tabla dbiti.glr_gfotos: 50 rows
/*!40000 ALTER TABLE `glr_gfotos` DISABLE KEYS */;
REPLACE INTO `glr_gfotos` (`glr_id`, `glrd_id`, `glrd_photo`, `glrd_descripcion`, `glrd_fechareg`, `activo`, `glrd_portada`) VALUES
	(8, 14, 'imagenities232.jpg', '', '2014-01-17 09:38:30', 1, 0),
	(8, 13, 'imagenities231.jpg', '', '2014-01-17 09:38:30', 1, 0),
	(8, 12, 'imagenities230.jpg', '', '2014-01-17 09:38:30', 1, 0),
	(8, 11, 'imagenities229.jpg', '', '2014-01-17 09:38:30', 1, 0),
	(8, 10, 'imagenities228.jpg', '', '2014-01-17 09:38:30', 1, 1),
	(12, 15, 'FORMATO CORREO.jpg', '', '2014-06-18 11:49:18', 1, 1),
	(13, 16, '10403067_519514184840909_4759875683707543844_n.jpg', '', '2014-06-30 10:13:57', 0, 1),
	(14, 17, 'IMG_20140519_140625_338.jpg', '', '2014-06-18 11:58:48', 1, 1),
	(13, 18, '919580002.jpg', '', '2014-06-30 10:20:25', 0, 1),
	(13, 19, 'bacanora 1.jpg', '', '2014-06-30 10:19:47', 1, 0),
	(13, 20, 'dibujo-monsterhigh.jpg', '', '2014-06-30 10:20:02', 0, 0),
	(13, 21, 'bacanora.jpg', '', '2014-06-30 10:19:47', 1, 0),
	(15, 22, 'IMG-20150203-WA0001.jpg', '', '2015-05-07 10:12:25', 1, 1),
	(16, 23, 'emma-stone-amazing-spider-man-2-new-york-film-premiere-nude-prada-dress-shory-haircut-celebrity-fringe-red-carpet-fashion_1.jpg', '', '2015-05-07 10:18:06', 1, 1),
	(17, 24, 'emma-stone-amazing-spider-man-2-new-york-film-premiere-nude-prada-dress-shory-haircut-celebrity-fringe-red-carpet-fashion_1.jpg', '', '2015-05-07 10:18:51', 1, 1),
	(18, 25, 'emma-stone-amazing-spider-man-2-new-york-film-premiere-nude-prada-dress-shory-haircut-celebrity-fringe-red-carpet-fashion_1.jpg', '', '2015-05-07 10:19:27', 1, 1),
	(18, 26, 'mapa ITIES.jpg', '', '2015-05-07 10:19:27', 1, 0),
	(18, 27, 'MAPA REGION NORTE.jpg', '', '2015-05-07 10:19:27', 1, 0),
	(18, 28, 'mapa sonora con division politica.jpg', '', '2015-05-07 10:19:27', 1, 0),
	(18, 29, 'Mapa-de-la-Republica-Mexicana-sin-nombre-para-imprimir.jpg', '', '2015-05-07 10:19:27', 1, 0),
	(19, 30, 'emma-stone-amazing-spider-man-2-new-york-film-premiere-nude-prada-dress-shory-haircut-celebrity-fringe-red-carpet-fashion_1.jpg', '', '2015-05-07 10:23:13', 1, 1),
	(19, 31, 'mapa ITIES.jpg', '', '2015-05-07 10:23:13', 1, 0),
	(19, 32, 'MAPA REGION NORTE.jpg', '', '2015-05-07 10:23:13', 1, 0),
	(19, 33, 'mapa sonora con division politica.jpg', '', '2015-05-07 10:23:13', 1, 0),
	(19, 34, 'Mapa-de-la-Republica-Mexicana-sin-nombre-para-imprimir.jpg', '', '2015-05-07 10:23:13', 1, 0),
	(20, 35, 'emma-stone-amazing-spider-man-2-new-york-film-premiere-nude-prada-dress-shory-haircut-celebrity-fringe-red-carpet-fashion_1.jpg', '', '2015-05-07 10:26:56', 1, 1),
	(20, 36, 'mapa ITIES.jpg', '', '2015-05-07 10:26:56', 1, 0),
	(20, 37, 'MAPA REGION NORTE.jpg', '', '2015-05-07 10:26:56', 1, 0),
	(20, 38, 'mapa sonora con division politica.jpg', '', '2015-05-07 10:26:56', 1, 0),
	(20, 39, 'Mapa-de-la-Republica-Mexicana-sin-nombre-para-imprimir.jpg', '', '2015-05-07 10:26:57', 1, 0),
	(21, 40, 'emma-stone-amazing-spider-man-2-new-york-film-premiere-nude-prada-dress-shory-haircut-celebrity-fringe-red-carpet-fashion_1.jpg', '', '2015-05-07 10:34:17', 1, 1),
	(21, 41, 'mapa ITIES.jpg', '', '2015-05-07 10:34:17', 1, 0),
	(21, 42, 'MAPA REGION NORTE.jpg', '', '2015-05-07 10:34:17', 1, 0),
	(21, 43, 'mapa sonora con division politica.jpg', '', '2015-05-07 10:34:17', 1, 0),
	(21, 44, 'Mapa-de-la-Republica-Mexicana-sin-nombre-para-imprimir.jpg', '', '2015-05-07 10:34:17', 1, 0),
	(22, 45, 'emma-stone-amazing-spider-man-2-new-york-film-premiere-nude-prada-dress-shory-haircut-celebrity-fringe-red-carpet-fashion_1.jpg', '', '2015-05-07 10:36:00', 1, 1),
	(22, 46, 'mapa ITIES.jpg', '', '2015-05-07 10:36:00', 1, 0),
	(22, 47, 'MAPA REGION NORTE.jpg', '', '2015-05-07 10:36:00', 1, 0),
	(22, 48, 'mapa sonora con division politica.jpg', '', '2015-05-07 10:36:00', 1, 0),
	(22, 49, 'Mapa-de-la-Republica-Mexicana-sin-nombre-para-imprimir.jpg', '', '2015-05-07 10:36:00', 1, 0),
	(23, 50, 'emma-stone-amazing-spider-man-2-new-york-film-premiere-nude-prada-dress-shory-haircut-celebrity-fringe-red-carpet-fashion_1.jpg', '', '2015-05-07 10:36:23', 1, 1),
	(23, 51, 'mapa ITIES.jpg', '', '2015-05-07 10:36:23', 1, 0),
	(23, 52, 'MAPA REGION NORTE.jpg', '', '2015-05-07 10:36:23', 1, 0),
	(23, 53, 'mapa sonora con division politica.jpg', '', '2015-05-07 10:36:23', 1, 0),
	(23, 54, 'Mapa-de-la-Republica-Mexicana-sin-nombre-para-imprimir.jpg', '', '2015-05-07 10:36:23', 1, 0),
	(24, 55, '', '', '2015-05-07 10:38:14', 1, 1),
	(24, 56, '', '', '2015-05-07 10:38:14', 1, 0),
	(24, 57, '', '', '2015-05-07 10:38:14', 1, 0),
	(24, 58, '', '', '2015-05-07 10:38:14', 1, 0),
	(24, 59, '', '', '2015-05-07 10:38:14', 1, 0);
/*!40000 ALTER TABLE `glr_gfotos` ENABLE KEYS */;


-- Volcando estructura para tabla dbiti.inf_articulos
CREATE TABLE IF NOT EXISTS `inf_articulos` (
  `id_Art` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion` mediumtext COLLATE latin1_spanish_ci,
  `activo` tinyint(4) DEFAULT '1',
  `detalle` longtext COLLATE latin1_spanish_ci,
  `orden` tinyint(4) DEFAULT NULL,
  KEY `id_Art` (`id_Art`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='Listado de articulos a publicar en el portal';

-- Volcando datos para la tabla dbiti.inf_articulos: 6 rows
/*!40000 ALTER TABLE `inf_articulos` DISABLE KEYS */;
REPLACE INTO `inf_articulos` (`id_Art`, `descripcion`, `activo`, `detalle`, `orden`) VALUES
	(1, 'Articulo 14', 1, NULL, 1),
	(2, 'Artículo 15', 1, NULL, 2),
	(3, 'Articulo 17', 1, NULL, 3),
	(4, 'Artículo 17 BIS G', 1, NULL, 4),
	(5, 'Artículo 35 BIS B', 1, NULL, 5),
	(6, 'Artículo 70. En la Ley Federal y de las Entidades Federativas se contemplará que los sujetos obligados pongan a disposición del público y mantengan actualizada, en los respectivos medios electrónicos, de acuerdo con sus facultades, atribuciones, funciones u objeto social, según corresponda, la información, por lo menos, de los temas, documentos y políticas que a continuación se señalan: ', 1, 'Ley General de Transparencia y Acceso a la Información', 6);
/*!40000 ALTER TABLE `inf_articulos` ENABLE KEYS */;


-- Volcando estructura para tabla dbiti.inf_pub_det
CREATE TABLE IF NOT EXISTS `inf_pub_det` (
  `id_info` int(10) NOT NULL AUTO_INCREMENT,
  `id_frc` int(10) DEFAULT NULL,
  `anio` int(10) DEFAULT NULL,
  `archivo` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `fecha_mod` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `descripcion` varchar(150) COLLATE latin1_spanish_ci NOT NULL,
  `orden` int(10) DEFAULT NULL,
  `tipo_info` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `usr_id` tinyint(4) DEFAULT NULL,
  `bd` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `id_grupo` int(11) DEFAULT NULL,
  `activo` int(11) DEFAULT '1',
  KEY `id_info` (`id_info`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='Información Publica detallada por año y fraccion';

-- Volcando datos para la tabla dbiti.inf_pub_det: 36 rows
/*!40000 ALTER TABLE `inf_pub_det` DISABLE KEYS */;
REPLACE INTO `inf_pub_det` (`id_info`, `id_frc`, `anio`, `archivo`, `fecha_mod`, `descripcion`, `orden`, `tipo_info`, `usr_id`, `bd`, `id_grupo`, `activo`) VALUES
	(1, 1, NULL, 'constitucion del estado de sonora.pdf', '2014-05-29 08:59:30', '	CONSTITUCIÓN POLÍTICA DEL ESTADO DE SONORA ', NULL, 'A', NULL, NULL, 2, 1),
	(2, 1, NULL, 'constitucion_mexicana.pdf', '2014-05-29 08:59:25', '	CONSTITUCION POLÍTICA DE LOS ESTADOS UNIDOS MEXICANO', NULL, 'A', NULL, NULL, 1, 1),
	(3, 1, NULL, 'ley federal de transparencia.pdf', '2014-05-29 09:01:31', '	LEY FEDERAL DE TRANSPARENCIA Y ACCESO A LA INFORMACIÓN PÚBLICA', NULL, 'A', NULL, NULL, 1, 1),
	(4, 1, NULL, 'Ley de Acceso y Proteccion de Datos Personales.pdf', '2014-05-29 08:59:52', '	LEY DE ACCESO A LA INFORMACIÓN PÚBLICA Y PROTECCION DE DATOS PERSONALES DEL ESTADO DE SONORA', NULL, 'A', NULL, NULL, 2, 1),
	(5, 1, NULL, 'Reglamentointerno-ITIES2012.pdf', '2014-05-29 08:59:57', 'REGLAMENTO INTERNO DEL ITIES', NULL, NULL, NULL, NULL, 3, 1),
	(6, 1, NULL, 'LineamientosdeADMINISTRACIONDOCUMENTAL-ITIES2012.pdf', '2014-05-29 09:00:09', '	LINEAMIENTOS DE ADMINISTRACIÓN DOCUMENTAL', NULL, NULL, NULL, NULL, 6, 1),
	(7, 1, NULL, 'LineamientosdeACCESO-ITIES2012.pdf', '2014-05-29 09:00:14', '	LINEAMIENTOS DE ACCESO A LA INFORMACIÓN PÚBLICA', NULL, 'A', NULL, NULL, 6, 1),
	(8, 1, NULL, 'LineamientosdeRESTRINGIDAYDATOSPERSONALES-ITIES2012.pdf', '2014-05-29 11:43:45', '	LINEAMIENTOS DE INFORMACIÓN RESTRINGIDA Y DATOS PERSONALES', NULL, 'A', NULL, NULL, 6, 0),
	(9, 2, NULL, 'EstructuraOrganicaITIESMAYO2012.pdf', '2013-09-24 14:24:24', 'Estructura Orgánica', NULL, 'A', NULL, NULL, NULL, 1),
	(10, 3, NULL, 'atribucionesmarzo2011.pdf', '2013-09-24 14:26:21', 'Atribuciones del ITIES', NULL, 'A', NULL, NULL, NULL, 1),
	(11, 4, NULL, 'DIRECTORIOITIES.pdf', '2013-09-25 09:33:28', 'Directorio de Servidores Públicos', NULL, 'BD', NULL, 'dir_servidores_ities', NULL, 1),
	(12, 5, NULL, NULL, '2013-09-24 15:15:29', '', NULL, NULL, NULL, NULL, NULL, 1),
	(13, 6, NULL, 'FRACCION V.-REMUNERACION.pdf', '2013-09-24 15:16:57', 'Remuneración Mensual', NULL, 'A', NULL, NULL, NULL, 1),
	(14, 6, NULL, 'FRACCION V.-COMPENSACION Y ESTIMULOS.pdf', '2013-09-24 15:17:30', 'Compensación y Estímulos', NULL, 'A', NULL, NULL, NULL, 1),
	(15, 7, NULL, 'Interponer un recurso de Revision.pdf', '2013-09-24 15:30:31', 'Procedimiento para Interponer un Recurso de Revisión', NULL, 'A', NULL, NULL, NULL, 1),
	(16, 8, NULL, 'Solicitar Información pública.pdf', '2013-09-24 15:30:28', 'Procedimiento para solicitar información pública', NULL, 'A', NULL, NULL, NULL, 1),
	(17, 9, 2012, 'FraccionVIII.-MetasyObjetivosavancessegundo trimestre 2012.psf', '2013-09-24 15:40:04', 'Avance de Metas y Objetivos 2do Trimestre 2012', 3, 'A', NULL, NULL, NULL, 1),
	(18, 9, 2012, 'FRACCIONVIII.-METASYOBJETIVOS 3er trim 2012.pdf', '2013-09-24 15:40:02', 'Avance de Metas y Objetivos 3er Trimestre 2012', 4, 'A', NULL, NULL, NULL, 1),
	(19, 9, 2012, 'FraccionVIII.-MetasyObjetivos 2012.pdf', '2013-09-24 15:39:53', 'Metas y Objetivos 2012', 1, 'A', NULL, NULL, NULL, 1),
	(20, 9, 2012, 'fraccionVIII_avancemetas_mayo2012.pdf', '2013-09-24 15:46:34', 'Avance de Metas y Objetivos 1er Trimestre 2012', 2, 'A', NULL, NULL, NULL, 1),
	(21, 9, 2012, '2012_cuarto_inf_trimestral.pdf', '2013-09-24 15:48:19', 'Avance de Metas y Objetivos 4to Trimestre 2012', 5, 'A', NULL, NULL, NULL, 1),
	(22, 9, 2013, 'FRACCION VIII.- METAS 2013.pdf', '2013-09-24 15:39:40', 'Metas y Objetivos 2013', 1, 'A', NULL, NULL, NULL, 1),
	(23, 10, 2013, 'FRACCION IX.- PPTO.2013 Y SU EJECUCIONprimer trimestre2013.pdf', '2013-09-24 15:56:56', 'Presupuesto asignado y Avances de Ejecución 1er Trimestre 2013', NULL, 'A', NULL, NULL, NULL, 1),
	(24, 10, 2013, 'FRACCION IX.- PPTO.2013 Y SU EJECUCION2DO trimestre2013.pdf', '2013-09-24 15:49:16', 'Presupuesto asignado y Avances de Ejecución 2do Trimestre 2013', NULL, 'A', NULL, NULL, NULL, 1),
	(25, 10, 2010, 'AnaliticoPpto2010.pdf', '2013-09-24 15:51:18', 'PRESUPUESTO POR DESGLOCE DE PARTIDAS 2010', NULL, 'A', NULL, NULL, NULL, 1),
	(26, 10, 2011, 'FRACC.IXPPTO.EJERCIDOXPARTIDAGLOBALAL30MZO.11.pdf', '2013-09-24 15:54:33', 'Presupuesto Asignado y Avances de Ejecucion 1er Trimestre 2011', NULL, 'A', NULL, NULL, NULL, 1),
	(27, 10, 2012, 'fraccionIX.-Presupuestoasignadoyavances 2012 2do trim.pdf', '2013-09-25 09:13:45', 'Presupuesto Asignado y Avances de Ejecucion 2do Trimestre 2012', NULL, 'A', NULL, NULL, NULL, 1),
	(28, 10, 2012, 'AvancepresupuestalITIES-4totrimestre2012.pdf', '2013-09-25 09:15:48', 'Presupuesto Asignado y Avances de Ejecucion 4to Trimestres 2012', NULL, 'A', NULL, NULL, NULL, 1),
	(29, 1, 0, 'c://xampp/htdocs/admin/files/inf_pub/29-05-14BOLETIN 16 DIC 2010 AUTONOMIA ITIES.pdf', '2014-05-29 11:15:08', 'Decreto de Creación ITIES', NULL, NULL, NULL, NULL, 5, 0),
	(30, 1, 0, 'c://xampp/htdocs/admin/files/inf_pub/29-05-14BOLETIN 16 DIC 2010 AUTONOMIA ITIES.pdf', '2014-05-29 11:15:14', 'Decreto de Creación ITIES', NULL, NULL, NULL, NULL, 5, 0),
	(31, 1, 0, '29-05-14BOLETIN 16 DIC 2010 AUTONOMIA ITIES.pdf', '2014-05-29 11:43:44', 'Decreto de Creación ITIES', NULL, NULL, NULL, NULL, 5, 0),
	(31, 1, 0, '29-05-14BOLETIN 16 DIC 2010 AUTONOMIA ITIES.pdf', '2014-05-29 11:43:44', 'Decreto de Creación ITIES 1', NULL, NULL, NULL, NULL, 5, 0),
	(32, 15, 2013, '29-05-14Ejecutivo.pdf', '2014-05-29 12:49:11', 'ITIES- Gobierno del Estado de Sonora', NULL, NULL, NULL, NULL, 7, 1),
	(33, 32, 2014, '18-06-14RECURSOS DE REVISION.pdf', '2014-06-18 10:39:59', 'Recursos Interpuestos', NULL, NULL, NULL, NULL, 0, 1),
	(34, 2, 2014, '15-04-15DIRECTORIO ITIES 2015.pdf', '2015-04-15 10:17:57', 'organigrama juridico', NULL, NULL, NULL, NULL, 0, 1),
	(35, 44, 0, '08-06-16Art 70 - I.xlsx', '2016-06-08 12:00:47', '', NULL, NULL, NULL, NULL, 0, 1);
/*!40000 ALTER TABLE `inf_pub_det` ENABLE KEYS */;


-- Volcando estructura para tabla dbiti.inf_pub_frc
CREATE TABLE IF NOT EXISTS `inf_pub_frc` (
  `id_frc` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(300) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_act` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `responsable` varchar(500) COLLATE latin1_general_ci DEFAULT NULL,
  `detalle` longtext CHARACTER SET latin1,
  `activo` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `id_art` int(4) unsigned DEFAULT NULL,
  `frc_num` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `orden` int(10) DEFAULT NULL,
  `anio_reforma` int(10) DEFAULT NULL,
  `fecha_rev` date DEFAULT NULL,
  PRIMARY KEY (`id_frc`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Volcando datos para la tabla dbiti.inf_pub_frc: 44 rows
/*!40000 ALTER TABLE `inf_pub_frc` DISABLE KEYS */;
REPLACE INTO `inf_pub_frc` (`id_frc`, `descripcion`, `fecha_act`, `responsable`, `detalle`, `activo`, `id_art`, `frc_num`, `orden`, `anio_reforma`, `fecha_rev`) VALUES
	(1, 'MARCO NORMATIVO, LEGAL Y REGLAMENTARIO QUE LES SEA APLICABLE', NULL, NULL, NULL, 1, 1, 'I', 2, 2013, NULL),
	(2, 'ESTRUCTURA ORGANICA Y MANUALES DE PROCEDIMIENTOS ', '2015-04-15 10:17:57', NULL, NULL, 1, 1, 'II', 3, 2013, '2015-04-15'),
	(3, 'ATRIBUCIONES DE CADA UNIDAD ADMINISTRATIVA, CON INDICADORES DE GESTION ', NULL, NULL, NULL, 1, 1, 'III', 4, 2013, NULL),
	(4, 'El directorio de servidores públicos, desde su titular hasta el nivel de jefe de departamento o sus equivalentes, con nombre, fotografía, domicilio oficial, número telefónico oficial y, en su caso, correo electrónico oficial', NULL, NULL, NULL, 1, 1, 'IV', 5, NULL, NULL),
	(5, 'El perfil de los puestos de los  servidores públicos y el currículum de quienes ocupan esos puestos', NULL, NULL, NULL, 1, 1, 'IV BIS', 6, 2013, NULL),
	(6, 'La remuneración mensual integral por puesto, mensual bruta y neta de todos los servidores públicos por sueldos o por honorarios, incluyendo todas las percepciones, prestaciones, estímulos y compensaciones, en un formato que permita vincular a cada servidor público con su remuneración', NULL, NULL, NULL, 1, 1, 'V', 7, NULL, NULL),
	(7, 'Los servicios a su cargo y los trámites, tiempos de respuesta, requisitos, formatos correspondientes y, en su caso, el monto de los derechos para acceder a los mismos, debiendo incluir además información sobre la población a la cual están destinados los programas', NULL, NULL, NULL, 1, 1, 'VI', 8, 2013, NULL),
	(8, 'La descripción de las reglas de procedimiento para obtener información', NULL, NULL, NULL, 1, 1, 'VII', 9, 2013, NULL),
	(9, 'Las metas y objetivos de las unidades administrativas, de conformidad con sus programas operativos', NULL, NULL, NULL, 1, 1, 'VIII', 10, 2013, NULL),
	(10, 'El presupuesto de ingresos y de egresos autorizado por la instancia correspondiente del ejercicio fiscal vigente y un apartado con el histórico con un mínimo de diez años de antigüedad; así como los avances en la ejecución del vigente', NULL, NULL, NULL, 1, 1, 'IX', 11, NULL, NULL),
	(11, 'Los resultados de las auditorias al ejercicio presupuestal de cada dependencia o entidad que realicen, según correspon', NULL, NULL, NULL, 1, 1, 'X', 12, 2013, NULL),
	(12, 'El diseño, ejecución, montos asignados y criterios de acceso a programas de subsidio y el padrón de beneficiarios', NULL, NULL, NULL, 1, 1, 'XI', 13, 2013, NULL),
	(13, 'Los montos, criterios, convocatorias y listado de personas a quienes, por cualquier motivo, se les entregue o permita usar recursos públicos. Asimismo, cuando la normatividad interna lo establezca, los informes que dichas personas les entreguen sobre el uso y destino de dichos recursos', NULL, NULL, NULL, 1, 1, 'XI BIS', 14, 2013, NULL),
	(14, 'Los balances generales y su estado financiero', NULL, NULL, NULL, 1, 1, 'XII', 15, 2013, NULL),
	(15, 'Los convenios institucionales celebrados por el sujeto obligado, especificando el tipo de convenio, con quién se celebra, objetivo, fecha de celebración y vigencia, así como copia digitalizada del convenio para su descarga; (auditorias CEE partidos políticos)', NULL, NULL, NULL, 1, 1, 'XIII', 16, 2013, NULL),
	(16, 'El listado, estado procesal y sentido de la resolución de los juicios de amparo, de las controversias constitucionales y las acciones de inconstitucionalidad presentadas ante el Poder Judicial de la Federación en los que sean parte', NULL, NULL, NULL, 1, 1, 'XIV', 17, 2013, NULL),
	(17, 'Las cuentas públicas que deba presentar cada sujeto obligado, según corresponda', NULL, NULL, NULL, 1, 1, 'XV', 18, 2013, NULL),
	(18, '(DEROGADA) Las iniciativas de leyes y reglamentos que se presenten ante el Congreso del Estado o ante los Ayuntamientos según corresponda', NULL, NULL, NULL, 1, 1, 'XVI', 19, 2013, NULL),
	(19, 'Las opiniones, consideraciones, datos y fundamentos legales referidos en los expedientes administrativos relativos al otorgamiento de permisos, concesiones o licencias que les corresponda autorizar, incluyéndose el nombre o razón social del titular, el concepto de la concesión, autorización, ', NULL, NULL, NULL, 1, 1, 'XVII', 20, 2013, NULL),
	(20, 'La calendarización de las reuniones públicas de los diversos consejos, comités, órganos colegiados, gabinetes, ayuntamientos, sesiones plenarias, comisiones y sesiones de trabajo a que se convoquen', NULL, NULL, NULL, 1, 1, 'XVII BIS', 21, 2013, NULL),
	(21, 'Los resultados sobre procedimientos de adjudicación directa, invitación restringida y licitación de cualquier naturaleza, incluido el expediente respectivo, el documento en el que consta el fallo y el o los contratos celebrados', NULL, NULL, NULL, 1, 1, 'XVIII', 22, 2013, NULL),
	(22, 'Los informes que, por disposición legal, generen las dependencias y entidades estatales y municipales', NULL, NULL, NULL, 1, 1, 'XIX', 23, 2013, NULL),
	(23, 'Los mecanismos de participación ciudadana que, en su caso, hayan implementado', NULL, NULL, NULL, 1, 1, 'XX', 24, 2013, NULL),
	(24, 'El listado de proveedores', NULL, NULL, NULL, 1, 1, 'XXI', 25, 2013, NULL),
	(25, 'La relación de fideicomisos, mandatos o contratos análogos a los que aporten recursos presupuestarios, el monto de los mismos, sus documentos básicos de creación, así como sus informes financieros', NULL, NULL, NULL, 1, 1, 'XXII', 26, 2013, NULL),
	(26, 'El padrón inmobiliario y vehicular', NULL, NULL, NULL, 1, 1, 'XXII BIS', 27, 2013, NULL),
	(27, 'Los catálogos documentales de sus archivos administrativos', NULL, NULL, NULL, 1, 1, 'XXII BIS A', 28, 2013, NULL),
	(28, 'Cualquier otra información que sea de utilidad o se considere relevante, además de la que responda a las solicitudes realizadas con más frecuencia por el público', NULL, NULL, NULL, 1, 1, 'XXIII', 29, 2013, NULL),
	(29, 'El Poder Judicial del Estado deberá hacer públicas las sentencias que hayan causado estado o ejecutoria, pero si las partes anticipan el deseo de que no se publiquen sus datos personales éstos serán omitidos.', NULL, NULL, NULL, 1, 2, NULL, 30, 2013, NULL),
	(30, 'Además de la información referida en la fracción XVIII del artículo 14, los sujetos  obligados oficiales deberán difundir los informes que presenten las personas a quienes entreguen recursos públicos sobre el uso y destino de dichos recursos', NULL, NULL, NULL, 1, 3, NULL, 31, 2013, NULL),
	(31, 'También deberá difundirse, para que sea de libre acceso a cualquier persona, la información relativa a la contratación y designación de servidores públicos, sus gastos de representación, costos de  viajes, emolumentos o pagos en concepto de viáticos y otros semejantes, sea cual fuere el nivel de dic', NULL, NULL, NULL, 1, 3, NULL, 32, 2013, NULL),
	(32, 'El resultado de los recursos de revisión interpuestos y las versiones públicas de las resoluciones emitidas', NULL, NULL, NULL, 1, 4, 'I', 33, 2013, NULL),
	(33, 'Los estudios que apoyan la resolución de los recursos de revisión', NULL, NULL, NULL, 1, 4, 'II', 34, 2013, NULL),
	(34, 'La relación de juicios de amparos que existan en contra de sus resoluciones', NULL, NULL, NULL, 1, 4, 'III', 35, 2013, NULL),
	(35, 'Estadísticas sobre las solicitudes de información. En ellas, se deberá identificar: el sujeto obligado que la recibió, el perfil del solicitante, el tipo de respuesta, y la temática de las solicitudes', NULL, NULL, NULL, 1, 4, 'IV', 36, 2013, NULL),
	(36, 'Las actas de las sesiones del pleno', NULL, NULL, NULL, 1, 4, 'V', 37, 2013, NULL),
	(37, 'Los resultados, criterios y metodología de la evaluación del cumplimiento de la ley a los sujetos obligados', NULL, NULL, NULL, 1, 4, 'VI', 38, 2013, NULL),
	(38, 'Los convenios y acuerdos celebrados con otros sujetos obligados', NULL, NULL, NULL, 1, 4, 'VII', 39, 2013, NULL),
	(39, 'Informes sobre las acciones de promoción de la cultura de transparencia', NULL, NULL, NULL, 1, 4, 'VIII', 40, 2013, NULL),
	(40, 'Las demás que se consideren relevantes y de interés para el público', NULL, NULL, NULL, 1, 4, 'IX', 41, 2013, NULL),
	(41, 'Los sujetos obligados deberán publicar en su página de internet, la relación de los fideicomisos, mandatos o contratos análogos a los que aporten recursos presupuestarios y el monto de los mismos', NULL, NULL, NULL, 1, 5, NULL, 42, 2013, NULL),
	(42, 'El marco normativo aplicable al sujeto obligado, en el que deberá incluirse leyes, códigos, reglamentos, decretos de creación, manuales administrativos, reglas de operación, criterios, políticas, entre otros;', '2016-06-08 11:41:39', 'juridico', '', 0, 6, '', 1, 3, NULL),
	(43, 'El marco normativo aplicable al sujeto obligado, en el que deberá incluirse leyes, códigos, reglamentos, decretos de creación, manuales administrativos, reglas de operación, criterios, políticas, entre otros;', '2016-06-08 11:44:27', 'juridico', '', 0, 6, 'I', 1, 3, NULL),
	(44, 'El marco normativo aplicable al sujeto obligado, en el que deberá incluirse leyes, códigos, reglamentos, decretos de creación, manuales administrativos, reglas de operación, criterios, políticas, entre otros;', '2016-06-08 12:00:47', 'juridico', '', 1, 6, 'I', 2, 3, '2016-06-08');
/*!40000 ALTER TABLE `inf_pub_frc` ENABLE KEYS */;


-- Volcando estructura para tabla dbiti.inf_pub_tabla
CREATE TABLE IF NOT EXISTS `inf_pub_tabla` (
  `id_tabla` int(11) NOT NULL AUTO_INCREMENT,
  `id_frc` int(11) DEFAULT '0',
  `query` varchar(600) COLLATE latin1_spanish_ci DEFAULT NULL,
  KEY `id_tabla` (`id_tabla`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- Volcando datos para la tabla dbiti.inf_pub_tabla: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `inf_pub_tabla` DISABLE KEYS */;
REPLACE INTO `inf_pub_tabla` (`id_tabla`, `id_frc`, `query`) VALUES
	(1, 1, 'SELECT id_info,descripcion,tipo_info,id_grupo,archivo FROM inf_pub_det  WHERE id_frc = %s AND activo = 1'),
	(2, 36, 'SELECT act_num, CONCAT(act_fecha,\' \',act_descripcion) as descripcion, act_fecha as fecha, act_anio as anio, act_archivo as archivo  FROM pln_actas WHERE activo = 1 order by act_anio,act_num desc'),
	(3, 15, 'SELECT cvn_institucion as descripcion, cvn_anio as anio, cvn_archivo as archivo, id_grupo  FROM cv_convenios where activo = 1 order by anio'),
	(4, 20, 'SELECT cnv_id, cnv_anio as anio, CONCAT(\'Convocatoria a sesion del pleno \',cnv_fecha) as descripcion , date_format(STR_TO_DATE(cnv_fecha,\'%d-%m-%Y\'),\'%Y-%m-%d\') as fecha,cnv_archivo as archivo FROM pln_convocatorias WHERE activo = 1  ORDER BY anio,fecha desc'),
	(5, 32, 'SELECT rsl_expediente as descripcion, rsl_archivo as archivo, rsl_anio as anio FROM pln_resoluciones WHERE activo = 1 \r\nunion \r\nSELECT descripcion, archivo, anio FROM inf_pub_det WHERE activo = 1 AND id_frc = 32 ORDER BY anio DESC');
/*!40000 ALTER TABLE `inf_pub_tabla` ENABLE KEYS */;


-- Volcando estructura para tabla dbiti.mat_autores
CREATE TABLE IF NOT EXISTS `mat_autores` (
  `id_aut` int(11) DEFAULT NULL,
  `aut_nombre` varchar(500) COLLATE latin1_spanish_ci NOT NULL,
  `activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- Volcando datos para la tabla dbiti.mat_autores: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `mat_autores` DISABLE KEYS */;
/*!40000 ALTER TABLE `mat_autores` ENABLE KEYS */;


-- Volcando estructura para tabla dbiti.pln_actas
CREATE TABLE IF NOT EXISTS `pln_actas` (
  `act_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `act_descripcion` varchar(200) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `act_fecha` varchar(50) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `act_anio` int(11) NOT NULL DEFAULT '0',
  `activo` int(11) NOT NULL DEFAULT '1',
  `act_archivo` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `act_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`act_id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='actas del pleno';

-- Volcando datos para la tabla dbiti.pln_actas: 48 rows
/*!40000 ALTER TABLE `pln_actas` DISABLE KEYS */;
REPLACE INTO `pln_actas` (`act_id`, `act_descripcion`, `act_fecha`, `act_anio`, `activo`, `act_archivo`, `act_num`) VALUES
	(28, 'Acta Jurídica', '03-04-2013', 2013, 1, '2013-04-03 Acta.pdf', 10),
	(27, 'Acta Jurídica', '21-03-2013', 2013, 1, '2013-03-21 Acta.pdf', 9),
	(26, 'Acta Jurídica', '01-03-2013', 2013, 1, '2013-03-01 Acta Juridica.pdf', 8),
	(25, 'Acta Administrativa', '01-03-2013', 2013, 1, '2013-03-01 Acta Administrativa.pdf', 7),
	(24, 'Acta Jurídica', '22-02-2013', 2013, 1, '2013-02-22 Acta.pdf', 6),
	(23, 'Acta Jurídica', '18-02-2013', 2013, 1, '2013-02-18 Acta.pdf', 5),
	(22, 'Acta Jurídica', '13-02-2013', 2013, 1, '2013-02-13 Acta.pdf', 4),
	(21, 'Acta Administrativa', '12-02-2013', 2013, 1, '2013-02-12 Acta.pdf', 3),
	(20, 'Acta Jurídica', '07-02-2013', 2013, 1, '2013-02-07 Acta.pdf', 2),
	(19, 'Acta Jurídica', '29-01-2013', 2013, 1, '2013-01-29 Acta.pdf', 1),
	(29, 'Acta Administrativa', '10-04-2013', 2013, 1, '2013-04-10 Acta.pdf', 11),
	(30, 'Acta Jurídica', '02-05-2013', 2013, 1, '2013-05-02 Acta.pdf', 12),
	(31, 'Acta Jurídica', '09-05-2013', 2013, 1, '2013-05-09 Acta.pdf', 13),
	(32, 'Acta Jurídica', '22-05-2013', 2013, 1, '2013-05-22 Acta.pdf', 14),
	(33, 'Acta Administrativa', '24-06-2013', 2013, 1, '2013-06-24 Acta.pdf', 15),
	(34, 'Acta Jurídica', '25-06-2013', 2013, 1, '2013-06-25 Acta.pdf', 16),
	(35, 'Acta Jurídica', '03-07-2013', 2013, 1, '2013-07-03 Acta.pdf', 17),
	(36, 'Acta Administrativa', '04-07-2013', 2013, 1, '2013-07-04 Acta.pdf', 18),
	(37, 'Acta Jurídica', '08-07-2013', 2013, 1, '2013-07-08 Acta.pdf', 19),
	(38, 'Acta Jurídica', '14-08-2013', 2013, 1, '2013-08-14 Acta.pdf', 20),
	(39, 'Acta Jurídica', '19-08-2013', 2013, 1, '2013-08-19 Acta.pdf', 21),
	(40, 'Acta Jurídica', '27-08-2013', 2013, 1, '2013-08-27 Acta.pdf', 22),
	(41, 'Acta Jurídica', '28-08-2013', 2013, 1, '2013-08-28 Acta.pdf', 23),
	(42, 'Acta Jurídica', '04-09-2013', 2013, 1, '2013-09-04 Acta.pdf', 24),
	(43, 'Acta Jurídica', '09-09-2013', 2013, 1, '2013-09-09 Acta.pdf', 25),
	(44, 'Acta Jurídica', '17-09-2013', 2013, 1, '2013-09-17 Acta.pdf', 26),
	(45, 'Acta Jurídica', '19-09-2013', 2013, 1, '2013-09-19 Acta.pdf', 27),
	(46, 'Acta Jurídica', '30-09-2013', 2013, 1, '2013-09-30 Acta.pdf', 28),
	(47, 'Acta Jurídica', '08-10-2013', 2013, 1, '2013-10-08 Acta.pdf', 29),
	(48, 'Acta Jurídica', '12-10-2013', 2013, 1, '2013-10-12 Acta.pdf', 30),
	(49, 'Acta Jurídica', '15-10-2013', 2013, 1, '2013-10-15 Acta.pdf', 31),
	(50, 'Acta Jurídica', '22-10-2013', 2013, 1, '2013-10-22 Acta.pdf', 32),
	(51, 'Acta Jurídica', '29-10-2013', 2013, 1, '2013-10-29 Acta.pdf', 33),
	(52, 'Acta Jurídica', '05-11-2013', 2013, 1, '2013-11-05 Acta.pdf', 34),
	(53, 'Acta Administrativa', '13-11-2013', 2013, 1, '2013-11-13 Acta.pdf', 35),
	(54, 'Acta Jurídica', '02-12-2013', 2013, 1, '2013-12-02 Acta.pdf', 36),
	(55, 'Acta Administrativa', '16-12-2013', 2013, 1, '2013-12-16 Acta Administrativa.pdf', 37),
	(56, 'Acta Solemne', '18-12-2013', 2013, 1, '2013-12-18 Acta Solemne.pdf', 38),
	(57, 'Acta Extraordinaria', '18-12-2013', 2013, 1, '2013-12-18 Acta Extraordinaria.pdf', 39),
	(58, 'Acta Jurídica', '10-01-2014', 2014, 1, '2014-01-10 Acta Juridica.pdf', 1),
	(59, 'Acta Jurídica', '31-01-2014', 2014, 1, '2014-01-31 Acta Juridica.pdf', 2),
	(60, 'Acta Jurídica', '10-02-2014', 2014, 1, '2014-02-10 Acta.pdf', 3),
	(61, 'Acta Jurídica', '28-02-2014', 2014, 1, '2014-02-28 Acta.pdf', 4),
	(62, 'Acta Jurídica', '10-03-2014', 2014, 1, '2014-03-10 Acta.pdf', 5),
	(63, 'Acta Jurídica', '24-03-2014', 2014, 1, '2014-03-24 Acta.pdf', 6),
	(64, 'Acta Jurídica', '31-03-2014', 2014, 1, '2014-03-31 Acta.pdf', 7),
	(65, 'Acta Administrativa', '22-04-2014', 2014, 1, '2014-04-22 Acta Administrativa.pdf', 8),
	(66, 'Acta Adminsitrativa', '30-04-2014', 2014, 1, '2014-04-30 Acta Administrativa.pdf', 9);
/*!40000 ALTER TABLE `pln_actas` ENABLE KEYS */;


-- Volcando estructura para tabla dbiti.pln_acuerdos
CREATE TABLE IF NOT EXISTS `pln_acuerdos` (
  `acr_id` int(11) NOT NULL AUTO_INCREMENT,
  `acr_expedientes` varchar(500) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `acr_archivo` varchar(200) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `acr_anio` int(11) NOT NULL DEFAULT '0',
  `acr_fecha` varchar(200) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `acr_fechareg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `activo` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`acr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='Lista de acuerdos de revision pleno ITIES';

-- Volcando datos para la tabla dbiti.pln_acuerdos: 3 rows
/*!40000 ALTER TABLE `pln_acuerdos` DISABLE KEYS */;
REPLACE INTO `pln_acuerdos` (`acr_id`, `acr_expedientes`, `acr_archivo`, `acr_anio`, `acr_fecha`, `acr_fechareg`, `activo`) VALUES
	(1, 'ITIES RR 001/2014,  ITIES RR 002/2014', 'Lista-7-1-2014.pdf', 2014, '7/1/2014', '2014-01-10 22:35:15', 0),
	(2, '', 'Lista-7-1-2014.pdf', 2014, '7/1/2014', '2014-01-10 22:36:16', 1),
	(3, 'vsgslkgs', 'Lista-9-1-2014.pdf', 2014, '9/1/2014', '2014-01-12 23:00:56', 1);
/*!40000 ALTER TABLE `pln_acuerdos` ENABLE KEYS */;


-- Volcando estructura para tabla dbiti.pln_convocatorias
CREATE TABLE IF NOT EXISTS `pln_convocatorias` (
  `cnv_id` int(11) NOT NULL AUTO_INCREMENT,
  `cnv_fecha` varchar(200) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `cnv_anio` int(11) NOT NULL DEFAULT '0',
  `cnv_fechareg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `activo` int(11) NOT NULL DEFAULT '1',
  `cnv_usrid` int(11) NOT NULL,
  `cnv_archivo` varchar(500) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`cnv_id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='convocatorias del pleno';

-- Volcando datos para la tabla dbiti.pln_convocatorias: 57 rows
/*!40000 ALTER TABLE `pln_convocatorias` DISABLE KEYS */;
REPLACE INTO `pln_convocatorias` (`cnv_id`, `cnv_fecha`, `cnv_anio`, `cnv_fechareg`, `activo`, `cnv_usrid`, `cnv_archivo`) VALUES
	(1, '29-01-2013', 2013, '2014-06-13 13:16:53', 1, 0, 'Convocatoria 290113.pdf'),
	(2, '07-02-2013', 2013, '2014-06-13 13:17:42', 1, 0, 'Convocatoria 070213.pdf'),
	(3, '13-02-2013', 2013, '2014-06-13 13:22:58', 1, 0, 'Convocatoria 130213.pdf'),
	(4, '18-02-2013', 2013, '2014-06-13 13:23:46', 1, 0, 'Convocatoria 180213.pdf'),
	(5, '22-02-2013', 2013, '2014-06-13 13:24:12', 1, 0, 'Convocatoria 220213.pdf'),
	(6, '21-03-2013', 2013, '2014-06-13 13:24:57', 1, 0, 'Convocatoria 210313.pdf'),
	(7, '01-03-2013', 2013, '2014-06-13 13:25:31', 1, 0, 'Convocatoria 01-03-13.pdf'),
	(8, '03-04-2013', 2013, '2014-06-13 13:26:05', 1, 0, 'Convocatoria 030413.pdf'),
	(9, '09-05-2013', 2013, '2014-06-13 13:26:38', 1, 0, 'Convocatoria 090513.pdf'),
	(10, '13-05-2013', 2013, '2014-06-13 13:27:12', 1, 0, 'Convocatoria 130513.pdf'),
	(11, '15-05-2013', 2013, '2014-06-13 13:27:36', 1, 0, 'Convocatoria 150513.pdf'),
	(12, '22-05-2013', 2013, '2014-06-13 13:28:04', 1, 0, 'Convocatoria 220513.pdf'),
	(13, '02-05-2013', 2013, '2014-06-13 13:28:46', 1, 0, 'Convocatoria Sesion Pleno 020513.pdf'),
	(14, '25-06-2013', 2013, '2014-06-13 13:29:23', 1, 0, 'Convocatoria de Resolucion 250613.pdf'),
	(15, '14-08-2013', 2013, '2014-06-13 13:30:05', 1, 0, 'Convocatoria 140813.pdf'),
	(16, '19-08-2013', 2013, '2014-06-13 13:30:28', 1, 0, 'Convocatoria 190813.pdf'),
	(17, '27-08-2013', 2013, '2014-06-13 13:30:54', 1, 0, 'Convocatoria 270813.pdf'),
	(18, '28-08-2013', 2013, '2014-06-13 13:31:18', 1, 0, 'Convocatoria 280813.pdf'),
	(19, '04-09-2013', 2013, '2014-06-13 13:31:48', 1, 0, 'Convocatoria 040913.pdf'),
	(20, '09-09-2013', 2013, '2014-06-13 13:32:11', 1, 0, 'Convocatoria 090913.pdf'),
	(21, '17-09-2013', 2013, '2014-06-13 13:32:35', 1, 0, 'Convocatoria 170913.pdf'),
	(22, '19-09-2013', 2013, '2014-06-13 13:32:59', 1, 0, 'Convocatoria 190913.pdf'),
	(23, '30-09-2013', 2013, '2014-06-13 13:33:24', 1, 0, 'Convocatoria 300913.pdf'),
	(24, '08-10-2013', 2013, '2014-06-13 13:33:52', 1, 0, 'Convocatoria 081013.pdf'),
	(25, '15-10-2013', 2013, '2014-06-13 13:34:15', 1, 0, 'Convocatoria 151013.pdf'),
	(26, '22-10-2013', 2013, '2014-06-13 13:34:40', 1, 0, 'Convocatoria 221013.pdf'),
	(27, '29-10-2013', 2013, '2014-06-13 13:35:22', 1, 0, 'Convocatoria 291013.pdf'),
	(28, '05-11-2013', 2013, '2014-06-13 13:35:56', 1, 0, 'Convocatoria 051113.pdf'),
	(29, '12-11-2013', 2013, '2014-06-13 13:36:23', 1, 0, 'Convocatoria 121113.pdf'),
	(30, '22-11-2013', 2013, '2014-06-13 13:36:47', 1, 0, 'Convocatoria 221113.pdf'),
	(31, '02-12-2013', 2013, '2014-06-13 13:37:22', 1, 0, 'Convocatoria 021213.pdf'),
	(32, '18-12-2013', 2013, '2014-06-13 13:38:13', 1, 0, 'Convocatoria Solemne 181213.pdf'),
	(33, '18-12-2013', 2013, '2014-06-13 13:39:02', 1, 0, 'Convocatoria extraordinaria 181213.pdf'),
	(34, '12-02-2013', 2013, '2014-06-13 13:40:21', 1, 0, 'Convocatoria 120213.pdf'),
	(35, '01-03-2013', 2013, '2014-06-13 13:45:12', 1, 0, 'Convocatoria Administrativa 01-03-13.pdf'),
	(36, '10-04-2013', 2013, '2014-06-13 13:45:55', 1, 0, 'Convocatoria Administrativa 10-04-13.pdf'),
	(37, '24-06-2013', 2013, '2014-06-13 13:46:36', 1, 0, 'Convocatoria Administrativa 240613.pdf'),
	(38, '04-07-2013', 2013, '2014-06-13 13:47:11', 1, 0, 'Convocatoria Administrativa 040713.pdf'),
	(39, '31-07-2013', 2013, '2014-06-13 13:47:39', 1, 0, 'Convocatoria Administrativa 310713.pdf'),
	(40, '30-09-2013', 2013, '2014-06-13 13:48:19', 1, 0, 'Convocatoria Administrativa 300913.pdf'),
	(41, '18-10-2013', 2013, '2014-06-13 13:49:04', 1, 0, 'Convocatoria Administrativa 181013.pdf'),
	(42, '13-11-2013', 2013, '2014-06-13 13:50:40', 1, 0, 'Convocatoria Administrativa 131113.pdf'),
	(43, '16-12-2013', 2013, '2014-06-13 13:51:42', 1, 0, 'Convocatoria Administrativa -16-DIC-13.pdf'),
	(44, '10-01-2014', 2014, '2014-06-13 13:53:29', 1, 0, 'Convocatoria 100114.pdf'),
	(45, '31-01-2014', 2014, '2014-06-13 13:53:57', 1, 0, 'Convocatoria 310114.pdf'),
	(46, '10-02-2014', 2014, '2014-06-13 13:54:25', 1, 0, 'Convocatoria 100214.pdf'),
	(47, '28-02-2014', 2014, '2014-06-13 13:54:48', 1, 0, 'Convocatoria 280214.pdf'),
	(48, '10-03-2014', 2014, '2014-06-13 13:55:19', 1, 0, 'Convocatoria 100314.pdf'),
	(49, '24-03-2014', 2014, '2014-06-13 13:55:45', 1, 0, 'Convocatoria 240314.pdf'),
	(50, '31-03-2014', 2014, '2014-06-13 13:58:09', 1, 0, 'Convocatoria 310314.pdf'),
	(51, '14-05-2014', 2014, '2014-06-13 13:58:53', 1, 0, 'Convocatoria 140514.pdf'),
	(52, '28-05-2014', 2014, '2014-06-13 13:59:15', 1, 0, 'Convocatoria 280514.pdf'),
	(53, '30-05-2014', 2014, '2014-06-13 13:59:37', 1, 0, 'Convocatoria 300514.pdf'),
	(54, '10-02-2014', 2014, '2014-06-13 14:00:13', 1, 0, 'Convocatoria Administrativa 100214.pdf'),
	(55, '22-04-2014', 2014, '2014-06-13 14:00:44', 1, 0, 'Convocatoria Admtiva 220414.pdf'),
	(56, '30-04-2014', 2014, '2014-06-13 14:01:46', 1, 0, 'Convocatoria Admtva. 300414.pdf'),
	(57, '13-05-2014', 2014, '2014-06-13 14:02:21', 1, 0, 'Convocatoria 130514.pdf');
/*!40000 ALTER TABLE `pln_convocatorias` ENABLE KEYS */;


-- Volcando estructura para tabla dbiti.pln_resoluciones
CREATE TABLE IF NOT EXISTS `pln_resoluciones` (
  `rsl_id` int(11) NOT NULL AUTO_INCREMENT,
  `rsl_expediente` varchar(200) COLLATE latin1_spanish_ci DEFAULT '0',
  `rsl_sobligado` varchar(200) COLLATE latin1_spanish_ci DEFAULT '0',
  `rsl_recurrente` varchar(200) COLLATE latin1_spanish_ci DEFAULT '0',
  `rsl_fecha` varchar(50) COLLATE latin1_spanish_ci DEFAULT '0',
  `rsl_archivo` varchar(200) COLLATE latin1_spanish_ci DEFAULT '0',
  `activo` int(11) NOT NULL DEFAULT '1',
  `rsl_fechareg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `rsl_anio` int(11) NOT NULL,
  PRIMARY KEY (`rsl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=190 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- Volcando datos para la tabla dbiti.pln_resoluciones: 188 rows
/*!40000 ALTER TABLE `pln_resoluciones` DISABLE KEYS */;
REPLACE INTO `pln_resoluciones` (`rsl_id`, `rsl_expediente`, `rsl_sobligado`, `rsl_recurrente`, `rsl_fecha`, `rsl_archivo`, `activo`, `rsl_fechareg`, `rsl_anio`) VALUES
	(1, 'ITIES-RR-271/2013', 'Ayuntamiento de Cajeme', 'Juan López', '0', 'ITIES-RR-271-2013.pdf', 1, '2014-06-16 10:10:29', 2013),
	(2, 'ITIES-RR-009/2012', 'Ayuntamiento de Hermosillo', 'Omar Pérez Corana', '0', 'ITIES RR-009-2012.pdf', 1, '2014-06-16 10:10:25', 2012),
	(3, 'ITIES-RR-300/2013', '0', '0', '0', 'ITIES-RR-300-2013.pdf', 1, '2014-06-16 10:11:53', 2013),
	(4, 'ITIES-RR-278/2013', '0', '0', '0', 'ITIES-RR-278-2013.pdf', 1, '2014-06-16 10:12:42', 2013),
	(5, 'ITIES-RR-274/2013', '0', '0', '0', 'ITIES-RR-274-2013.pdf', 1, '2014-06-16 10:13:29', 2013),
	(6, 'ITIES-RR-273/2013', '0', '0', '0', 'ITIES-RR-273-2013.pdf', 1, '2014-06-16 10:14:44', 2013),
	(7, 'ITIES-RR-272/2013', '0', '0', '0', 'ITIES-RR-272-2013.pdf', 1, '2014-06-16 10:16:27', 2013),
	(8, 'ITIES-RR-226/2013', '0', '0', '0', 'ITIES-RR-226-2013.pdf', 1, '2014-06-16 10:17:16', 2013),
	(9, 'ITIES-RR-225/2013', '0', '0', '0', 'ITIES-RR-225-2013.pdf', 1, '2014-06-16 10:18:08', 2013),
	(10, 'ITIES-RR-219/2013', '0', '0', '0', 'ITIES-RR-219-2013.pdf', 1, '2014-06-16 10:20:10', 2013),
	(11, 'ITIES-RR-216/2013', '0', '0', '0', 'ITIES-RR-216-2013.pdf', 1, '2014-06-16 10:24:21', 2013),
	(12, 'ITIES-RR-215/2013', '0', '0', '0', 'ITIES-RR-215-2013.pdf', 1, '2014-06-16 10:24:54', 2013),
	(13, 'ITIES-RR-186/2013', '0', '0', '0', 'ITIES-RR-186-2013.pdf', 1, '2014-06-16 10:26:07', 2013),
	(14, 'ITIES-RR-185/2013', '0', '0', '0', 'ITIES-RR-185-2013.pdf', 1, '2014-06-16 10:26:38', 2013),
	(15, 'ITIES-RR-184/2013', '0', '0', '0', 'ITIES-RR-184-2013.pdf', 1, '2014-06-16 10:27:20', 2013),
	(16, 'ITIES-RR-183/2013', '0', '0', '0', 'ITIES-RR-183-2013.pdf', 1, '2014-06-16 10:28:24', 2013),
	(17, 'ITIES-RR-182/2013', '0', '0', '0', 'ITIES-RR-182-2013.pdf', 1, '2014-06-16 10:29:01', 2013),
	(18, 'ITIES-RR-181/2013', '0', '0', '0', 'ITIES-RR-181-2013.pdf', 1, '2014-06-16 10:33:18', 2013),
	(19, 'ITIES-RR-180/2013', '0', '0', '0', 'ITIES-RR-180-2013.pdf', 1, '2014-06-16 10:34:11', 2013),
	(20, 'ITIES-RR-179/2013', '0', '0', '0', 'ITIES-RR-179-2013.pdf', 1, '2014-06-16 10:35:26', 2013),
	(21, 'ITIES-RR-178/2013', '0', '0', '0', 'ITIES-RR-178-2013.pdf', 1, '2014-06-16 10:35:59', 2013),
	(22, 'ITIES-RR-177/2013', '0', '0', '0', 'ITIES-RR-177-2013.pdf', 1, '2014-06-16 10:36:50', 2013),
	(23, 'ITIES-RR-176/2013', '0', '0', '0', 'ITIES-RR-176-2013.pdf', 1, '2014-06-16 10:38:57', 2013),
	(24, 'ITIES-RR-175/2013', '0', '0', '0', 'ITIES-RR-175-2013.pdf', 1, '2014-06-16 10:39:26', 2013),
	(25, 'ITIES-RR-174/2013', '0', '0', '0', 'ITIES-RR-174-2013.pdf', 1, '2014-06-16 10:39:31', 2013),
	(26, 'ITIES-RR-173/2013', '0', '0', '0', 'ITIES-RR-173-2013.pdf', 1, '2014-06-16 10:40:06', 2013),
	(27, 'ITIES-RR-172/2013', '0', '0', '0', 'ITIES-RR-172-2013.pdf', 1, '2014-06-16 10:40:41', 2013),
	(28, 'ITIES-RR-171/2013', '0', '0', '0', 'ITIES-RR-171-2013.pdf', 1, '2014-06-16 10:41:10', 2013),
	(29, 'ITIES-RR-170/2013', '0', '0', '0', 'ITIES-RR-170-2013.pdf', 1, '2014-06-16 10:41:38', 2013),
	(30, 'ITIES-RR-158/2013', '0', '0', '0', 'ITIES-RR-158-2013.pdf', 1, '2014-06-16 10:42:15', 2013),
	(31, 'ITIES-RR-157/2013', '0', '0', '0', 'ITIES-RR-157-2013.pdf', 1, '2014-06-16 10:42:46', 2013),
	(32, 'ITIES-RR-140/2013', '0', '0', '0', 'ITIES-RR-140-2013.pdf', 1, '2014-06-16 10:43:22', 2013),
	(33, 'ITIES-RR-139/2013', '0', '0', '0', 'ITIES-RR-139-2013.pdf', 1, '2014-06-16 10:44:01', 2013),
	(34, 'ITIES-RR-138/2013', '0', '0', '0', 'ITIES-RR-138-2013.pdf', 1, '2014-06-16 10:44:33', 2013),
	(35, 'ITIES-RR-135/2013', '0', '0', '0', 'ITIES-RR-135-2013.pdf', 1, '2014-06-16 10:45:02', 2013),
	(36, 'ITIES-RR-133/2013', '0', '0', '0', 'ITIES-RR-133-2013.pdf', 1, '2014-06-16 10:45:30', 2013),
	(37, 'ITIES-RR-132/2013', '0', '0', '0', 'ITIES-RR-132-2013.pdf', 1, '2014-06-16 10:46:05', 2013),
	(38, 'ITIES-RR-131/2013', '0', '0', '0', 'ITIES-RR-131-2013.pdf', 1, '2014-06-16 10:46:40', 2013),
	(39, 'ITIES-RR-129/2013', '0', '0', '0', 'ITIES-RR-129-2013.pdf', 1, '2014-06-16 10:48:03', 2013),
	(40, 'ITIES-RR-128/2013', '0', '0', '0', 'ITIES-RR-128-2013.pdf', 1, '2014-06-16 10:48:55', 2013),
	(41, 'ITIES-RR-127/2013', '0', '0', '0', 'ITIES-RR-127-2013.pdf', 1, '2014-06-16 10:50:32', 2013),
	(42, 'ITIES-RR-126/2013', '0', '0', '0', 'ITIES-RR-126-2013.pdf', 1, '2014-06-16 10:52:20', 2013),
	(43, 'ITIES-RR-125/2013', '0', '0', '0', 'ITIES-RR-125-2013.pdf', 1, '2014-06-16 10:53:48', 2013),
	(44, 'ITIES-RR-123/2013', '0', '0', '0', 'ITIES-RR-123-2013.pdf', 1, '2014-06-16 10:54:53', 2013),
	(45, 'ITIES-RR-122/2013', '0', '0', '0', 'ITIES-RR-122-2013.pdf', 1, '2014-06-16 10:55:49', 2013),
	(46, 'ITIES-RR-120/2013', '0', '0', '0', 'ITIES-RR-120-2013.pdf', 1, '2014-06-16 10:56:24', 2013),
	(47, 'ITIES-RR-119/2013', '0', '0', '0', 'ITIES-RR-119-2013.pdf', 1, '2014-06-16 10:56:59', 2013),
	(48, 'ITIES-RR-116/2013', '0', '0', '0', 'ITIES-RR-116-2013.pdf', 1, '2014-06-16 10:57:31', 2013),
	(49, 'ITIES-RR-115/2013', '0', '0', '0', 'ITIES-RR-115-2013.pdf', 1, '2014-06-16 10:58:36', 2013),
	(50, 'ITIES-RR-114/2013', '0', '0', '0', 'ITIES-RR-114-2013.pdf', 1, '2014-06-16 10:59:07', 2013),
	(51, 'ITIES-RR-113/2013', '0', '0', '0', 'ITIES-RR-113-2013.pdf', 1, '2014-06-16 11:00:03', 2013),
	(52, 'ITIES-RR-112/2013', '0', '0', '0', 'ITIES-RR-112-2013.pdf', 1, '2014-06-16 11:00:41', 2013),
	(53, 'ITIES-RR-111/2013', '0', '0', '0', 'ITIES-RR-111-2013.pdf', 1, '2014-06-16 11:01:10', 2013),
	(54, 'ITIES-RR-110/2013', '0', '0', '0', 'ITIES-RR-110-2013.pdf', 1, '2014-06-16 11:01:46', 2013),
	(55, 'ITIES-RR-109/2013', '0', '0', '0', 'ITIES-RR-109-2013.pdf', 1, '2014-06-16 11:02:23', 2013),
	(56, 'ITIES-RR-108/2013', '0', '0', '0', 'ITIES-RR-108-2013.pdf', 1, '2014-06-16 11:02:54', 2013),
	(57, 'ITIES-RR-107/2013', '0', '0', '0', 'ITIES-RR-107-2013.pdf', 1, '2014-06-16 11:03:25', 2013),
	(58, 'ITIES-RR-106/2013', '0', '0', '0', 'ITIES-RR-106-2013.pdf', 1, '2014-06-16 11:03:55', 2013),
	(59, 'ITIES-RR-105/2013', '0', '0', '0', 'ITIES-RR-105-2013.pdf', 1, '2014-06-16 11:04:21', 2013),
	(60, 'ITIES-RR-103/2013', '0', '0', '0', 'ITIES-RR-103-2013.pdf', 1, '2014-06-16 11:09:18', 2013),
	(61, 'ITIES-RR-102/2013', '0', '0', '0', 'ITIES-RR-102-2013.pdf', 1, '2014-06-16 11:09:40', 2013),
	(62, 'ITIES-RR-100/2013', '0', '0', '0', 'ITIES-RR-100-2013.pdf', 1, '2014-06-16 11:10:07', 2013),
	(63, 'ITIES-RR-098/2013', '0', '0', '0', 'ITIES-RR-098-2013.pdf', 1, '2014-06-16 11:10:45', 2013),
	(64, 'ITIES-RR-097/2013', '0', '0', '0', 'ITIES-RR-97-2013.pdf', 1, '2014-06-16 11:11:30', 2013),
	(65, 'ITIES-RR-096/2013', '0', '0', '0', 'ITIES-RR-96-2013.pdf', 1, '2014-06-16 11:12:35', 2013),
	(66, 'ITIES-RR-095/2013', '0', '0', '0', 'ITIES-RR-95-2013.pdf', 1, '2014-06-16 11:13:59', 2013),
	(67, 'ITIES-RR-093/2013', '0', '0', '0', 'ITIES-RR-093-2013.pdf', 1, '2014-06-16 11:15:10', 2013),
	(68, 'ITIES-RR-092/2013', '0', '0', '0', 'ITIES-RR-92-2013.pdf', 1, '2014-06-16 11:15:44', 2013),
	(69, 'ITIES-RR-086/2013', '0', '0', '0', 'ITIES-RR-086-2013.pdf', 1, '2014-06-16 11:16:16', 2013),
	(70, 'ITIES-RR-085/2013', '0', '0', '0', 'ITIES-RR-085-2013.pdf', 1, '2014-06-16 11:17:00', 2013),
	(71, 'ITIES-RR-084/2013', '0', '0', '0', 'ITIES-RR-084-2013.pdf', 1, '2014-06-16 11:17:35', 2013),
	(72, 'ITIES-RR-083/2013', '0', '0', '0', 'ITIES-RR-083-2013.pdf', 1, '2014-06-16 11:18:10', 2013),
	(73, 'ITIES-RR-081/2013', '0', '0', '0', 'ITIES-RR-081-2013.pdf', 1, '2014-06-16 11:20:04', 2013),
	(74, 'ITIES-RR-080/2013', '0', '0', '0', 'ITIES-RR-080-2013.pdf', 1, '2014-06-16 11:20:41', 2013),
	(75, 'ITIES-RR-079/2013', '0', '0', '0', 'ITIES-RR-079-2013.pdf', 1, '2014-06-16 11:21:39', 2013),
	(76, 'ITIES-RR-078/2013', '0', '0', '0', 'ITIES-RR-078-2013.pdf', 1, '2014-06-16 11:22:17', 2013),
	(77, 'ITIES-RR-077/2013', '0', '0', '0', 'ITIES-RR-077-2013.pdf', 1, '2014-06-16 11:23:01', 2013),
	(78, 'ITIES-RR-076/2013', '0', '0', '0', 'ITIES-RR-076-2013.pdf', 1, '2014-06-16 11:23:38', 2013),
	(79, 'ITIES-RR-075/2013', '0', '0', '0', 'ITIES-RR-075-2013.pdf', 1, '2014-06-16 11:25:59', 2013),
	(80, 'ITIES-RR-074/2013', '0', '0', '0', 'ITIES-RR-074-2013.pdf', 1, '2014-06-16 11:26:05', 2013),
	(81, 'ITIES-RR-073/2013', '0', '0', '0', 'ITIES-RR-073-2013.pdf', 1, '2014-06-16 11:26:34', 2013),
	(82, 'ITIES-RR-072/2013', '0', '0', '0', 'ITIES-RR-072-2013.pdf', 1, '2014-06-16 11:27:19', 2013),
	(83, 'ITIES-RR-069/2013', '0', '0', '0', 'ITIES-RR-069-2013.pdf', 1, '2014-06-16 11:28:00', 2013),
	(84, 'ITIES-RR-068/2013', '0', '0', '0', 'ITIES-RR-068-2013.pdf', 1, '2014-06-16 11:28:35', 2013),
	(85, 'ITIES-RR-067/2013', '0', '0', '0', 'ITIES-RR-067-2013.pdf', 1, '2014-06-16 11:30:18', 2013),
	(86, 'ITIES-RR-066/2013', '0', '0', '0', 'ITIES-RR-066-2013.pdf', 1, '2014-06-16 11:31:15', 2013),
	(87, 'ITIES-RR-065/2013', '0', '0', '0', 'ITIES-RR-065-2013.pdf', 1, '2014-06-16 11:32:16', 2013),
	(88, 'ITIES-RR-064/2013', '0', '0', '0', 'ITIES-RR-064-2013.pdf', 1, '2014-06-16 11:32:54', 2013),
	(89, 'ITIES-RR-063/2013', '0', '0', '0', 'ITIES-RR-063-2013.pdf', 1, '2014-06-16 11:34:30', 2013),
	(90, 'ITIES-RR-062/2013', '0', '0', '0', 'ITIES-RR-062-2013.pdf', 1, '2014-06-16 11:35:00', 2013),
	(91, 'ITIES-RR-060/2013', '0', '0', '0', 'ITIES-RR-060-2013.pdf', 1, '2014-06-16 11:35:48', 2013),
	(92, 'ITIES-RR-059/2013', '0', '0', '0', 'ITIES-RR-059-2013.pdf', 1, '2014-06-16 11:36:24', 2013),
	(93, 'ITIES-RR-058/2013', '0', '0', '0', 'ITIES-RR-058-2013.pdf', 1, '2014-06-16 11:37:06', 2013),
	(94, 'ITIES-RR-057/2013', '0', '0', '0', 'ITIES-RR-057-2013.pdf', 1, '2014-06-16 11:37:51', 2013),
	(95, 'ITIES-RR-056/2013', '0', '0', '0', 'ITIES-RR-056-2013.pdf', 1, '2014-06-16 11:38:45', 2013),
	(96, 'ITIES-RR-055/2013', '0', '0', '0', 'ITIES-RR-055-2013.pdf', 1, '2014-06-16 11:39:50', 2013),
	(97, 'ITIES-RR-054/2013', '0', '0', '0', 'ITIES-RR-054-2013.pdf', 1, '2014-06-16 11:40:31', 2013),
	(98, 'ITIES-RR-053/2013', '0', '0', '0', 'ITIES-RR-053-2013.pdf', 1, '2014-06-16 11:41:09', 2013),
	(99, 'ITIES-RR-052/2013', '0', '0', '0', 'ITIES-RR-052-2013.pdf', 1, '2014-06-16 11:41:36', 2013),
	(100, 'ITIES-RR-051/2013', '0', '0', '0', 'ITIES-RR-051-2013.pdf', 1, '2014-06-16 11:42:12', 2013),
	(101, 'ITIES-RR-050/2013', '0', '0', '0', 'ITIES-RR-050-2013.pdf', 1, '2014-06-16 11:43:00', 2013),
	(102, 'ITIES-RR-049/2013', '0', '0', '0', 'ITIES-RR-049-2013.pdf', 1, '2014-06-16 11:44:13', 2013),
	(103, 'ITIES-RR-047/2013', '0', '0', '0', 'ITIES-RR-047-2013.pdf', 1, '2014-06-16 11:44:59', 2013),
	(104, 'ITIES-RR-046/2013', '0', '0', '0', 'ITIES-RR-046-2013.pdf', 1, '2014-06-16 11:45:27', 2013),
	(105, 'ITIES-RR-044/2013', '0', '0', '0', 'ITIES-RR-044-2013.pdf', 1, '2014-06-16 11:50:34', 2013),
	(106, 'ITIES-RR-043/2013', '0', '0', '0', 'ITIES-RR-043-2013.pdf', 1, '2014-06-16 11:51:08', 2013),
	(107, 'ITIES-RR-042/2013', '0', '0', '0', 'ITIES-RR-042-2013.pdf', 1, '2014-06-16 11:55:30', 2013),
	(108, 'ITIES-RR-041/2013', '0', '0', '0', 'ITIES-RR-041-2013.pdf', 1, '2014-06-16 11:56:54', 2013),
	(109, 'ITIES-RR-040/2013', '0', '0', '0', 'ITIES-RR-040-2013.pdf', 1, '2014-06-16 11:57:32', 2013),
	(110, 'ITIES-RR-039/2013', '0', '0', '0', 'ITIES-RR-039-2013.pdf', 1, '2014-06-16 11:58:21', 2013),
	(111, 'ITIES-RR-038/2013', '0', '0', '0', 'ITIES-RR-038-2013.pdf', 1, '2014-06-16 11:59:18', 2013),
	(112, 'ITIES-RR-037/2013', '0', '0', '0', 'ITIES-RR-037-2013.pdf', 1, '2014-06-16 11:59:47', 2013),
	(113, 'ITIES-RR-036/2013', '0', '0', '0', 'ITIES-RR-036-2013.pdf', 1, '2014-06-16 12:00:54', 2013),
	(114, 'ITIES-RR-035/2013', '0', '0', '0', 'ITIES-RR-035-2013.pdf', 1, '2014-06-16 12:01:29', 2013),
	(115, 'ITIES-RR-034/2013', '0', '0', '0', 'ITIES-RR-034-2013.pdf', 1, '2014-06-16 12:01:58', 2013),
	(116, 'ITIES-RR-033/2013', '0', '0', '0', 'ITIES-RR-033-2013.pdf', 1, '2014-06-16 14:07:16', 2013),
	(117, 'ITIES-RR-032/2013', '0', '0', '0', 'ITIES-RR-032-2013.pdf', 1, '2014-06-16 14:10:20', 2013),
	(118, 'ITIES-RR-031/2013', '0', '0', '0', 'ITIES-RR-031-2013.pdf', 1, '2014-06-16 14:10:09', 2013),
	(119, 'ITIES-RR-030/2013', '0', '0', '0', 'ITIES-RR-030-2013.pdf', 1, '2014-06-16 14:10:15', 2013),
	(120, 'ITIES-RR-029/2013', '0', '0', '0', 'ITIES-RR-029-2013.pdf', 1, '2014-06-16 14:11:04', 2013),
	(121, 'ITIES-RR-028/2013', '0', '0', '0', 'ITIES-RR-028-2013.pdf', 1, '2014-06-16 14:17:01', 2013),
	(122, 'ITIES-RR-026/2013', '0', '0', '0', 'ITIES-RR-026-2013.pdf', 1, '2014-06-16 14:17:41', 2013),
	(123, 'ITIES-RR-025/2013', '0', '0', '0', 'ITIES-RR-025-2013.pdf', 1, '2014-06-17 08:33:32', 2013),
	(124, 'ITIES-RR-024/2013', '0', '0', '0', 'ITIES-RR-024-2013.pdf', 1, '2014-06-17 08:35:55', 2013),
	(125, 'ITIES-RR-023/2013', '0', '0', '0', 'ITIES-RR-023-2013.pdf', 1, '2014-06-17 08:35:45', 2013),
	(126, 'ITIES-RR-022/2013', '0', '0', '0', 'ITIES-RR-022-2013.pdf', 1, '2014-06-17 08:36:31', 2013),
	(127, 'ITIES-RR-021/2013', '0', '0', '0', 'ITIES-RR-021-2013.pdf', 1, '2014-06-17 08:36:59', 2013),
	(128, 'ITIES-RR-019/2013', '0', '0', '0', 'ITIES-RR-019-2013.pdf', 1, '2014-06-17 08:37:43', 2013),
	(129, 'ITIES-RR-018/2013', '0', '0', '0', 'ITIES-RR-018-2013.pdf', 1, '2014-06-17 08:38:11', 2013),
	(130, 'ITIES-RR-017/2013', '0', '0', '0', 'ITIES-RR-017-2013.pdf', 1, '2014-06-17 08:39:52', 2013),
	(131, 'ITIES-RR-016/2013', '0', '0', '0', 'ITIES-RR-016-2013.pdf', 1, '2014-06-17 08:40:27', 2013),
	(132, 'ITIES-RR-015/2013', '0', '0', '0', 'ITIES-RR-015-2013.pdf', 1, '2014-06-17 08:42:19', 2013),
	(133, 'ITIES-RR-014/2013', '0', '0', '0', 'ITIES-RR-014-2013.pdf', 1, '2014-06-17 08:42:55', 2013),
	(134, 'ITIES-RR-013/2013', '0', '0', '0', 'ITIES-RR-013-2013.pdf', 1, '2014-06-17 08:43:32', 2013),
	(135, 'ITIES-RR-012/2013', '0', '0', '0', 'ITIES-RR-012-2013.pdf', 1, '2014-06-17 08:44:04', 2013),
	(136, 'ITIES-RR-011/2013', '0', '0', '0', 'ITIES-RR-011-2013.pdf', 1, '2014-06-17 08:44:55', 2013),
	(137, 'ITIES-RR-010/2013', '0', '0', '0', 'ITIES-RR-010-2013.pdf', 1, '2014-06-17 08:45:23', 2013),
	(138, 'ITIES-RR-009/2013', '0', '0', '0', 'ITIES-RR-09-2013.pdf', 1, '2014-06-17 08:46:38', 2013),
	(139, 'ITIES-RR-008/2013', '0', '0', '0', 'ITIES-RR-008-2013.pdf', 1, '2014-06-17 08:46:49', 2013),
	(140, 'ITIES-RR-007/2013', '0', '0', '0', 'ITIES-RR-007-2013.pdf', 1, '2014-06-17 08:47:14', 2013),
	(141, 'ITIES-RR-005/2013', '0', '0', '0', 'ITIES-RR-005-2013.pdf', 1, '2014-06-17 08:47:43', 2013),
	(142, 'ITIES-RR-004/2013', '0', '0', '0', 'ITIES-RR-004-2013.pdf', 1, '2014-06-17 08:48:12', 2013),
	(143, 'ITIES-RR-003/2013', '0', '0', '0', 'ITIES-RR-003-2013.pdf', 1, '2014-06-17 08:48:49', 2013),
	(144, 'ITIES-RR-002/2013', '0', '0', '0', 'ITIES-RR-002-2013.pdf', 1, '2014-06-17 08:49:19', 2013),
	(146, 'ITIES-RR-104/2013', '0', '0', '0', 'ITIES-RR- 104-2013.pdf', 1, '2014-06-17 09:45:17', 2013),
	(147, 'ITIES-RR-090/2013', '0', '0', '0', 'ITIES-RR- 90-2013.pdf', 1, '2014-06-17 09:45:53', 2013),
	(148, 'ITIES-RR-088/2013', '0', '0', '0', 'ITIES-RR- 88-2013.pdf', 1, '2014-06-17 09:46:28', 2013),
	(149, 'ITIES-RR-061/2013', '0', '0', '0', 'ITIES-RR 061-2013.pdf', 1, '2014-06-17 09:47:09', 2013),
	(150, 'ITIES-RR-271/2013', '0', '0', '0', 'ITIES-RR-271-2013.pdf', 1, '2014-06-17 09:47:48', 2013),
	(151, 'ITIES-RR-060/2012', '0', '0', '0', 'ITIES-RR-060-2012.pdf', 1, '2014-06-17 09:51:35', 2012),
	(152, 'ITIES-RR-003/2012', '0', '0', '0', 'ITIES-RR-003-2012.pdf', 1, '2014-06-17 09:51:32', 2012),
	(153, 'ITIES-RR-063/2012', '0', '0', '0', 'ITIES-RR-63-2012.pdf', 1, '2014-06-17 09:51:30', 2012),
	(154, 'ITIES-RR-062/2012', '0', '0', '0', 'ITIES-RR-62-2012.pdf', 1, '2014-06-17 09:51:26', 2012),
	(155, 'ITIES-RR-054/2012', '0', '0', '0', 'ITIES-RR-054-2012.pdf', 1, '2014-06-17 09:51:19', 2012),
	(156, 'ITIES-RR-053/2012', '0', '0', '0', 'ITIES-RR-53-2012.pdf', 1, '2014-06-17 09:52:38', 2012),
	(157, 'ITIES-RR-052/2012', '0', '0', '0', 'ITIES-RR-52-2012.pdf', 1, '2014-06-17 09:52:44', 2012),
	(158, 'ITIES-RR-050/2012', '0', '0', '0', 'ITIES-RR-050-2012.pdf', 1, '2014-06-17 09:53:07', 2012),
	(159, 'ITIES-RR-048/2012', '0', '0', '0', 'ITIES-RR-048-2012.pdf', 1, '2014-06-17 09:54:05', 2012),
	(160, 'ITIES-RR-046/2012', '0', '0', '0', 'ITIES-RR-46-2012.pdf', 1, '2014-06-17 09:54:42', 2012),
	(161, 'ITIES-RR-042/2012', '0', '0', '0', 'ITIES-RR-042-2012.pdf', 1, '2014-06-17 09:55:32', 2012),
	(162, 'ITIES-RR-040/2012', '0', '0', '0', 'ITIES-RR-040-2012.pdf', 1, '2014-06-17 09:56:00', 2012),
	(163, 'ITIES-RR-039/2012', '0', '0', '0', 'ITIES-RR-39-2012.pdf', 1, '2014-06-17 09:56:31', 2012),
	(164, 'ITIES-RR-038/2012', '0', '0', '0', 'ITIES-RR-038-2012.pdf', 1, '2014-06-17 10:12:49', 2012),
	(165, 'ITIES-RR-037/2012', '0', '0', '0', 'ITIES-RR-037-2012.pdf', 1, '2014-06-17 10:13:19', 2012),
	(166, 'ITIES-RR-036/2012', '0', '0', '0', 'ITIES-RR-36-2012.pdf', 1, '2014-06-17 10:14:11', 2012),
	(167, 'ITIES-RR-035/2012', '0', '0', '0', 'ITIES-RR-035-2012.pdf', 1, '2014-06-17 10:14:50', 2012),
	(168, 'ITIES-RR-032/2012', '0', '0', '0', 'ITIES-RR-032-2012.pdf', 1, '2014-06-17 10:15:24', 2012),
	(169, 'ITIES-RR-031/2012', '0', '0', '0', 'ITIES-RR-031-2012.pdf', 1, '2014-06-17 10:15:49', 2012),
	(170, 'ITIES-RR-029/2012', '0', '0', '0', 'ITIES-RR-029-2012.pdf', 1, '2014-06-17 10:16:22', 2012),
	(171, 'ITIES-RR-028/2012', '0', '0', '0', 'ITIES-RR-028-2012.pdf', 1, '2014-06-17 10:52:34', 2012),
	(172, 'ITIES-RR-027/2012', '0', '0', '0', 'ITIES-RR-027-2012.pdf', 1, '2014-06-17 10:53:16', 2012),
	(173, 'ITIES-RR-026/2012', '0', '0', '0', 'ITIES-RR-026-2012.pdf', 1, '2014-06-17 10:53:45', 2012),
	(174, 'ITIES-RR-024/2012', '0', '0', '0', 'ITIES-RR-024-2012.pdf', 1, '2014-06-17 10:54:12', 2012),
	(175, 'ITIES-RR-023/2012', '0', '0', '0', 'ITIES-RR-023-2012.pdf', 1, '2014-06-17 10:54:52', 2012),
	(176, 'ITIES-RR-022/2012', '0', '0', '0', 'ITIES-RR-022-2012.pdf', 1, '2014-06-17 10:55:30', 2012),
	(177, 'ITIES-RR-021/2012', '0', '0', '0', 'ITIES-RR-021-2012.pdf', 1, '2014-06-17 10:55:58', 2012),
	(178, 'ITIES-RR-020/2012', '0', '0', '0', 'ITIES-RR-020-2012.pdf', 1, '2014-06-17 10:56:23', 2012),
	(179, 'ITIES-RR-019/2012', '0', '0', '0', 'ITIES-RR-019-2012.pdf', 1, '2014-06-17 10:56:49', 2012),
	(180, 'ITIES-RR-018/2012', '0', '0', '0', 'ITIES-RR-018-2012.pdf', 1, '2014-06-17 10:57:23', 2012),
	(181, 'ITIES-RR-014/2012', '0', '0', '0', 'ITIES-RR-014-2012.pdf', 1, '2014-06-17 10:58:39', 2012),
	(182, 'ITIES-RR-012/2012', '0', '0', '0', 'ITIES-RR-012-2012.pdf', 1, '2014-06-17 10:59:02', 2012),
	(183, 'ITIES-RR-011/2012', '0', '0', '0', 'ITIES-RR-011-2012.pdf', 1, '2014-06-17 11:00:50', 2012),
	(184, 'ITIES-RR-010/2012', '0', '0', '0', 'ITIES-RR-010-2012.pdf', 1, '2014-06-17 11:01:27', 2012),
	(185, 'ITIES-RR-009/2012', '0', '0', '0', 'ITIES-RR-009-2012.pdf', 1, '2014-06-17 11:28:03', 2012),
	(186, 'ITIES-RR-041/2012', '0', '0', '0', 'ITIES-RR-041-12.pdf', 1, '2014-06-17 11:04:20', 2012),
	(187, 'ITIES-RR-036/2014', '0', '0', '0', 'ITIES-RR-036-2014.pdf', 1, '2014-06-17 11:26:53', 2014),
	(188, 'ITIES-RR-035/2014', '0', '0', '0', 'ITIES-RR-035-2014.pdf', 1, '2014-06-17 11:27:21', 2014),
	(189, 'ITIES-RR-034/2014', '0', '0', '0', 'ITIES-RR-034-2014.pdf', 1, '2014-06-17 11:27:46', 2014);
/*!40000 ALTER TABLE `pln_resoluciones` ENABLE KEYS */;


-- Volcando estructura para tabla dbiti.pln_rrfacil
CREATE TABLE IF NOT EXISTS `pln_rrfacil` (
  `rr_id` int(11) NOT NULL AUTO_INCREMENT,
  `rr_solicitante` varchar(250) COLLATE latin1_spanish_ci DEFAULT NULL,
  `rr_rsocial` varchar(250) COLLATE latin1_spanish_ci DEFAULT NULL,
  `rr_representante` varchar(250) COLLATE latin1_spanish_ci DEFAULT NULL,
  `rr_email` varchar(250) COLLATE latin1_spanish_ci DEFAULT NULL,
  `rr_so` varchar(500) COLLATE latin1_spanish_ci DEFAULT NULL,
  `rr_acto` text COLLATE latin1_spanish_ci,
  `rr_hechos` text COLLATE latin1_spanish_ci,
  `rr_pruebas` text COLLATE latin1_spanish_ci,
  `rr_sol` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `rr_pdf` text COLLATE latin1_spanish_ci,
  `rr_fechareg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `rr_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- Volcando datos para la tabla dbiti.pln_rrfacil: ~17 rows (aproximadamente)
/*!40000 ALTER TABLE `pln_rrfacil` DISABLE KEYS */;
REPLACE INTO `pln_rrfacil` (`rr_id`, `rr_solicitante`, `rr_rsocial`, `rr_representante`, `rr_email`, `rr_so`, `rr_acto`, `rr_hechos`, `rr_pruebas`, `rr_sol`, `rr_pdf`, `rr_fechareg`, `rr_status`) VALUES
	(1, 'Deisy Rodriguez Hernandez', '', '', 'edrey22@hotmail.com', 'Secretaria de Gobierno', 'sdgsdgsfg\r\nsdfsd\r\nsdfgsdg sefsdgsd\r\n sdgsdgsd sdgsdgsgsd sdgsdgsdgs', 'sgsdg sdfsdgsd sdgsdgsdg', 'sgsdg sdgsdgs sdgsdgsd', '', NULL, '2014-05-28 10:27:38', 1),
	(2, 'Deisy Rodriguez Hernandez', '', '', 'edrey22@hotmail.com', 'Secretaria de Gobierno', 'sdgsdgsfg\r\nsdfsd\r\nsdfgsdg sefsdgsd\r\n sdgsdgsd sdgsdgsgsd sdgsdgsdgs', 'sgsdg sdfsdgsd sdgsdgsdg', 'sgsdg sdgsdgs sdgsdgsd', '', NULL, '2014-05-28 10:52:54', 1),
	(3, 'Deisy Rodriguez Hernandez', '', '', 'edrey22@hotmail.com', 'Secretaria de Gobierno', 'sdgsdgsfg\r\nsdfsd\r\nsdfgsdg sefsdgsd\r\n sdgsdgsd sdgsdgsgsd sdgsdgsdgs', 'sgsdg sdfsdgsd sdgsdgsdg', 'sgsdg sdgsdgs sdgsdgsd', '', NULL, '2014-05-28 10:53:59', 1),
	(4, 'Deisy Rodriguez Hernandez', '', '', 'edrey22@hotmail.com', 'Secretaria de Gobierno', 'sdgsdgsfg\r\nsdfsd\r\nsdfgsdg sefsdgsd\r\n sdgsdgsd sdgsdgsgsd sdgsdgsdgs', 'sgsdg sdfsdgsd sdgsdgsdg', 'sgsdg sdgsdgs sdgsdgsd', '', NULL, '2014-05-28 10:55:38', 1),
	(5, 'Deisy Rodriguez Hernandez', '', '', 'edrey22@hotmail.com', 'Secretaria de Gobierno', 'sdgsdgsfg\r\nsdfsd\r\nsdfgsdg sefsdgsd\r\n sdgsdgsd sdgsdgsgsd sdgsdgsdgs', 'sgsdg sdfsdgsd sdgsdgsdg', 'sgsdg sdgsdgs sdgsdgsd', '', NULL, '2014-05-28 11:08:22', 1),
	(6, 'Deisy Rodriguez Hernandez', '', '', 'edrey22@hotmail.com', 'Secretaria de Gobierno', 'sdgsdgsfg\r\nsdfsd\r\nsdfgsdg sefsdgsd\r\n sdgsdgsd sdgsdgsgsd sdgsdgsdgs', 'sgsdg sdfsdgsd sdgsdgsdg', 'sgsdg sdgsdgs sdgsdgsd', '', NULL, '2014-05-28 11:12:26', 1),
	(7, 'Deisy Rodriguez Hernandez', '', '', 'edrey22@hotmail.com', 'Secretaria de Gobierno', 'sdgsdgsfg\r\nsdfsd\r\nsdfgsdg sefsdgsd\r\n sdgsdgsd sdgsdgsgsd sdgsdgsdgs', 'sgsdg sdfsdgsd sdgsdgsdg', 'sgsdg sdgsdgs sdgsdgsd', '', NULL, '2014-05-28 11:13:46', 1),
	(8, 'Deisy Rodriguez Hernandez', '', '', 'edrey22@hotmail.com', 'Secretaria de Gobierno', 'sdgsdgsfg\r\nsdfsd\r\nsdfgsdg sefsdgsd\r\n sdgsdgsd sdgsdgsgsd sdgsdgsdgs', 'sgsdg sdfsdgsd sdgsdgsdg', 'sgsdg sdgsdgs sdgsdgsd', '', NULL, '2014-05-28 11:15:33', 1),
	(9, 'Deisy Rodriguez Hernandez', '', '', 'edrey22@hotmail.com', 'Secretaria de Gobierno', 'sdgsdgsfg\r\nsdfsd\r\nsdfgsdg sefsdgsd\r\n sdgsdgsd sdgsdgsgsd sdgsdgsdgs', 'sgsdg sdfsdgsd sdgsdgsdg', 'sgsdg sdgsdgs sdgsdgsd', '', NULL, '2014-05-28 11:16:52', 1),
	(10, 'Deisy Rodriguez Hernandez', '', '', 'edrey22@hotmail.com', 'Secretaria de Gobierno', 'sdgsdgsfg\r\nsdfsd\r\nsdfgsdg sefsdgsd\r\n sdgsdgsd sdgsdgsgsd sdgsdgsdgs', 'sgsdg sdfsdgsd sdgsdgsdg', 'sgsdg sdgsdgs sdgsdgsd', '', NULL, '2014-05-28 11:19:00', 1),
	(11, 'Deisy Rodriguez Hernandez', '', '', 'edrey22@hotmail.com', 'Secretaria de Gobierno', 'sdgsdgsfg\r\nsdfsd\r\nsdfgsdg sefsdgsd\r\n sdgsdgsd sdgsdgsgsd sdgsdgsdgs', 'sgsdg sdfsdgsd sdgsdgsdg', 'sgsdg sdgsdgs sdgsdgsd', '', NULL, '2014-05-28 11:19:51', 1),
	(12, 'Deisy Rodriguez Hernandez', '', '', 'edrey22@hotmail.com', 'Secretaria de Gobierno', 'sdgsdgsfg\r\nsdfsd\r\nsdfgsdg sefsdgsd\r\n sdgsdgsd sdgsdgsgsd sdgsdgsdgs', 'sgsdg sdfsdgsd sdgsdgsdg', 'sgsdg sdgsdgs sdgsdgsd', '', NULL, '2014-05-28 11:20:46', 1),
	(13, 'Deisy Rodriguez Hernandez', '', '', 'edrey22@hotmail.com', 'Secretaria de Gobierno', 'sdgsdgsfg\r\nsdfsd\r\nsdfgsdg sefsdgsd\r\n sdgsdgsd sdgsdgsgsd sdgsdgsdgs', 'sgsdg sdfsdgsd sdgsdgsdg', 'sgsdg sdgsdgs sdgsdgsd', '', NULL, '2014-05-28 11:25:06', 1),
	(14, 'Deisy Edrey Rodriguez', '', '', 'edrey22@hotmail.com', 'gubernatura', 'no se me brindo informacion publica basica', 'no la tienen publicada en el portal', 'la pedi anexo la solicitud', '', NULL, '2014-08-28 10:14:18', 1),
	(15, '', '', '', '', '', '', '', '', '', NULL, '2014-08-29 10:39:00', 1),
	(16, '', '', '', '', '', '', '', '', '', NULL, '2014-08-29 11:06:50', 1),
	(17, 'Deisy Edrey Rodriguez', '', '', 'edrey22@hotmail.com', 'Oficialía Mayor', 'sfsfg asgsh ga rgsrf erhadfh rhah', '', '', '', NULL, '2014-08-29 11:34:30', 1),
	(18, 'Deisy Edrey Rodriguez', '', '', 'edrey22@hotmail.com', 'Oficialía Mayor', 'sfsfg asgsh ga rgsrf erhadfh rhah', '', '', '', NULL, '2014-08-29 11:41:27', 1);
/*!40000 ALTER TABLE `pln_rrfacil` ENABLE KEYS */;


-- Volcando estructura para tabla dbiti.pln_rrpruebas
CREATE TABLE IF NOT EXISTS `pln_rrpruebas` (
  `rr_id` int(11) DEFAULT NULL,
  `rp_namearchivo` int(11) DEFAULT NULL,
  `rp_id` int(11) NOT NULL AUTO_INCREMENT,
  `rp_fechamod` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `rp_id` (`rp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- Volcando datos para la tabla dbiti.pln_rrpruebas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pln_rrpruebas` DISABLE KEYS */;
/*!40000 ALTER TABLE `pln_rrpruebas` ENABLE KEYS */;


-- Volcando estructura para disparador dbiti.act_fecharevFrc
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `act_fecharevFrc` AFTER INSERT ON `inf_pub_det` FOR EACH ROW BEGIN
UPDATE inf_pub_frc SET fecha_rev = NOW() WHERE id_frc = NEW.id_frc;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
