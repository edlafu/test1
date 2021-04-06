-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-03-2021 a las 11:01:42
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `filmoteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pellicules`
--

CREATE TABLE `pellicules` (
  `id` int(3) NOT NULL,
  `titol` varchar(49) DEFAULT NULL,
  `director` varchar(28) DEFAULT NULL,
  `any` int(4) DEFAULT NULL,
  `pais` varchar(19) DEFAULT NULL,
  `animacio` tinyint(1) DEFAULT NULL,
  `catala` tinyint(1) DEFAULT NULL,
  `puntuacio` int(2) DEFAULT NULL,
  `observacions` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pellicules`
--

INSERT INTO `pellicules` (`id`, `titol`, `director`, `any`, `pais`, `animacio`, `catala`, `puntuacio`, `observacions`) VALUES
(1, 'Buenos días, noche', 'Marco Bellocchio', 2003, 'ITÀLIA', 0, 0, 8, ''),
(2, 'Una vida por delante', 'Lasse Hallström', 2005, 'USA', 0, 0, 2, ''),
(3, 'La ciencia del sueño', 'Michel Gondry', 2006, 'FRANÇA', 0, 0, 2, ''),
(4, 'La joven de la perla', 'Peter Webber', 2003, 'UK', 0, 0, 9, ''),
(5, 'Nueve reinas', 'Fabián Bielinsky', 2000, 'ARGENTINA', 1, 0, 4, ''),
(6, 'Funny Games', 'Michael Haneke', 2007, 'USA', 0, 0, 5, ''),
(7, 'Desayuno en Plutón', 'Neil Jordan', 2005, 'IRLANDA', 0, 0, 9, ''),
(8, 'Llámame Peter', 'Stephen Hopkins', 2004, 'USA', 0, 0, 10, ''),
(9, 'En tierra de nadie', 'Danis Tanovic', 2001, 'BOSNIA-HERZEGOVINA', 0, 0, 9, ''),
(10, 'El secreto de Vera Drake', 'Mike Leigh', 2004, 'UK', 0, 0, 7, ''),
(11, 'Sophie Scholl Los últimos días', 'Marc Rothemund', 2005, 'ALEMANYA', 0, 0, 3, ''),
(12, 'Pelle el conquistador', 'Bille August', 1987, 'DINAMARCA', 0, 0, 7, ''),
(13, 'Balzac y la joven costurera china', 'Dai Sijie', 2002, 'XINA', 0, 0, 8, ''),
(14, 'Tsotsi', 'Gavin Hood', 2005, 'SURÀFRICA', 0, 0, 8, ''),
(15, '24 Hour party people', 'Michael Winterbottom', 2002, 'UK', 0, 0, 8, ''),
(16, 'No sos vos soy yo', 'Juan Taratuto', 2004, 'ARGENTINA', 0, 0, 4, ''),
(17, 'En la cama', 'Matías Bize', 2005, 'XILE', 0, 0, 8, ''),
(18, 'Un funeral de muerte', 'Frank Oz', 2007, 'UK', 0, 0, 8, ''),
(19, 'Intermission', 'John Crowley', 2003, 'IRLANDA', 0, 0, 2, ''),
(20, 'El viaje de Chihiro', 'Hayao Miyazaki', 2001, 'JAPÓ', 1, 0, 4, ''),
(21, 'Un tipo corriente', 'Eduardo Milewicz', 2001, 'ARGENTINA', 0, 0, 10, ''),
(22, 'Crazy', 'Jean-Marc Vallée', 2005, 'CANADÀ', 0, 0, 10, ''),
(23, 'Un toque de canela', 'Tassos Boulmetis', 2003, 'GRÈCIA', 0, 0, 10, ''),
(24, 'Tierra y libertad', 'Ken Loach', 1994, 'UK', 0, 0, 4, ''),
(25, 'El asesinato de Richard Nixon', 'Niels Mueller', 2004, 'USA', 0, 0, 8, ''),
(26, 'Bajo sospecha', 'Stephen Hopkins', 2000, 'USA', 0, 0, 7, ''),
(27, 'El pianista', 'Roman Polanski', 2002, 'UK', 0, 0, 8, ''),
(28, 'Flores rotas', 'Jim Jarmusch', 2005, 'USA', 0, 0, 5, ''),
(29, 'Buffalo 66', 'Vincent Gallo', 1999, 'USA', 0, 0, 5, ''),
(30, 'La escafandra y la mariposa', 'Julian Schnabel', 2007, 'FRANÇA', 0, 0, 7, ''),
(31, 'Factótum', 'Bent Hamer', 2005, 'NORUEGA', 0, 0, 8, ''),
(32, 'Ciudad de Dios', 'Fernando Meirelles', 2002, 'BRASIL', 0, 0, 9, ''),
(33, 'Bailar en la oscuridad', 'Lars von Trier', 2000, 'DINAMARCA', 0, 0, 7, ''),
(34, 'El señor Ibrahim y las flores del Corán', 'François Dupeyron', 2003, 'FRANÇA', 0, 0, 3, ''),
(35, 'Mi hermosa lavandería', 'Stephen Frears', 1985, 'UK', 0, 0, 2, ''),
(36, 'El cielo protector', 'Bernardo Bertolucci', 1989, 'UK', 0, 0, 4, ''),
(37, 'Secretos y mentiras', 'Mike Leigh', 1996, 'UK', 0, 0, 5, ''),
(38, 'Las mujeres de verdad tienen curvas', 'Patricia Cardoso', 2002, 'USA', 0, 0, 7, ''),
(39, 'Adiós a mi concubina', 'Chen Kaige', 1993, 'XINA', 0, 0, 10, ''),
(40, 'Cinema Paradiso', 'Giuseppe Tornatore', 1988, 'ITÀLIA', 0, 0, 4, ''),
(41, 'Tigre y dragón', 'Ang Lee', 2000, 'TAIWÀN', 0, 0, 5, ''),
(42, 'Y tu mamá también', 'Alfonso Cuarón', 2001, 'MÈXIC', 0, 0, 5, ''),
(43, 'Un lugar en el mundo', 'Adolfo Aristarain', 1992, 'ARGENTINA', 0, 0, 5, ''),
(44, 'Crimen ferpecto', 'Álex de la Iglesia', 2004, 'ESPANYA', 0, 0, 7, ''),
(45, 'El espinazo del diablo', 'Guillermo del Toro', 2001, 'ESPANYA', 0, 0, 9, ''),
(46, 'Luna de Avellaneda', 'Juan José Campanella', 2004, 'ARGENTINA', 0, 0, 9, ''),
(47, 'Historias del Kronen', 'Montxo Armendáriz', 1995, 'ESPANYA', 0, 0, 4, ''),
(48, 'Amores perros', 'Alejandro González Iñárritu', 2000, 'MÈXIC', 0, 0, 3, ''),
(49, 'El viaje a ninguna parte', 'Fernando Fernán-Gómez', 1986, 'ESPANYA', 0, 0, 5, ''),
(50, 'Roma', 'Adolfo Aristarain', 2004, 'ARGENTINA', 0, 0, 5, ''),
(51, 'La vida de nadie', 'Eduard Cortés', 2003, 'ESPANYA', 0, 0, 4, ''),
(52, 'Guantanamera', 'Tomás G. Alea', 1995, 'CUBA', 0, 0, 7, ''),
(53, 'El viaje de Carol', 'Imanol Uribe', 2002, 'ESPANYA', 0, 0, 6, ''),
(54, 'Tiovivo c. 1950', 'José Luis Garci', 2004, 'ESPANYA', 0, 0, 6, ''),
(55, 'El mismo amor, la misma lluvia', 'Juan José Campanella', 1999, 'ARGENTINA', 0, 0, 6, ''),
(56, 'Celos', 'Vicente Aranda', 1999, 'ESPANYA', 0, 0, 10, ''),
(57, 'La ardilla roja', 'Julio Medem', 1993, 'ESPANYA', 0, 0, 3, ''),
(58, 'El abrazo partido', 'Daniel Burman', 2003, 'ARGENTINA', 0, 0, 3, ''),
(59, 'Bajarse al moro', 'Fernando Colomo', 1988, 'ESPANYA', 0, 0, 5, ''),
(60, 'Historia de un beso', 'José Luis Garci', 2002, 'ESPANYA', 0, 0, 10, ''),
(61, 'La flaqueza del bolchevique', 'Manuel Martín Cuenca', 2003, 'ESPANYA', 0, 0, 9, ''),
(62, 'Sobreviviré', 'Alfonso Albacete', 1999, 'ESPANYA', 0, 0, 6, ''),
(63, 'En la ciudad', 'Cesc Gay', 2003, 'ESPANYA', 0, 0, 2, ''),
(64, 'La virgen de los sicarios', 'Barbet Schroeder', 1999, 'COLÒMBIA', 0, 0, 2, ''),
(65, 'El último emperador', 'Bernardo Bertolucci', 1987, 'UK', 0, 0, 3, ''),
(66, 'Love actually', 'Richard Curtis', 2003, 'UK', 0, 0, 5, ''),
(67, 'Tres colores: Azul', 'Krzysztof Kieslowski', 1993, 'POLÒNIA', 0, 0, 10, ''),
(68, 'Elizabeth', 'Shekhar Kapur', 1998, 'UK', 0, 0, 7, ''),
(69, 'Quiero ser como Beckham', 'Gurinder Chadha', 2002, 'UK', 0, 0, 3, ''),
(70, 'El pacto de los lobos', 'Christophe Gans', 2001, 'FRANÇA', 0, 0, 8, ''),
(71, 'Indochina', 'Régis Wargnier', 1992, 'FRANÇA', 0, 0, 8, ''),
(72, 'The Commitments', 'Alan Parker', 1991, 'UK', 0, 0, 7, ''),
(73, 'El marido de la peluquera', 'Patrice Leconte', 1990, 'FRANÇA', 0, 0, 8, ''),
(74, 'Le divorce', 'James Ivory', 2003, 'USA', 0, 0, 7, ''),
(75, 'Una historia del Bronx', 'Robert De Niro', 1993, 'USA', 0, 0, 5, ''),
(76, 'Amor en conserva', 'David Miller', 1950, 'USA', 0, 0, 4, ''),
(77, 'La defensa Luzhin', 'Marleen Gorris', 2001, 'UK', 0, 0, 5, ''),
(78, 'Coraje de mujer', 'Karen Arthur', 1997, 'USA', 0, 0, 6, ''),
(79, 'Carros de fuego', 'Hugh Hudson', 1981, 'UK', 0, 0, 8, ''),
(80, 'Armas de mujer', 'Mike Nichols', 1988, 'USA', 0, 0, 10, ''),
(81, 'Sr. Y Sra. Smith', 'Doug Liman', 2005, 'USA', 0, 0, 3, ''),
(82, 'Wall Street', 'Oliver Stone', 1987, 'USA', 0, 0, 2, ''),
(83, 'Un puente hacia Terabithia', 'Gabor Csupo', 2007, 'USA', 0, 0, 2, ''),
(84, 'Un día inolvidable', 'Michael Hoffman', 1996, 'USA', 0, 0, 2, ''),
(85, 'La Spagnola', 'Steve Jacobs', 2001, 'AUSTRÀLIA', 0, 0, 2, ''),
(86, 'Sentido y sensibilidad', 'Rodney Bennett', 1981, 'UK', 0, 0, 8, ''),
(87, 'Madame Bovary', 'Tim Fywell', 2000, 'USA', 0, 0, 9, ''),
(88, 'Todo sobre mi madre', 'Pedro Almodóvar', 1999, 'ESPANYA', 0, 0, 6, ''),
(89, 'Los límites del silencio', 'Tom McLoughlin', 2001, 'USA', 0, 0, 4, ''),
(90, 'Un domingo cualquiera', 'Oliver Stone', 1999, 'USA', 0, 0, 10, ''),
(91, 'EL libro negro', 'Paul Verhoeven', 2006, 'HOLANDA', 0, 0, 2, ''),
(92, 'La decisión de Sophie', 'Alan J. Pakula', 1982, 'USA', 0, 0, 6, ''),
(93, 'Lunas de hiel', 'Roman Polanski', 1992, 'UK', 0, 0, 10, ''),
(94, 'The wall', 'Alan Parker', 1982, 'UK', 0, 0, 10, ''),
(95, 'Ragtime', 'Milos Forman', 1981, 'USA', 0, 0, 10, ''),
(96, 'The door in the floor', 'Tod Williams', 2004, 'USA', 0, 0, 3, ''),
(97, 'Good morning Babilonia', 'Paolo Taviani', 1986, 'ITÀLIA', 0, 0, 10, ''),
(98, 'Flower Power (como una regadera)', 'Joel Hershman', 2000, 'UK', 0, 0, 7, ''),
(99, 'Saw II', 'Darren Lynn Bousman', 2005, 'USA', 0, 0, 10, ''),
(100, 'El chico que conquistó Hollywood', 'Brett Morgen,', 2002, 'USA', 0, 0, 2, ''),
(101, 'Deseando amar', 'Wong Kar-Wai', 2000, 'HONG-HONG', 0, 0, 9, ''),
(102, 'Promises', 'Justine Shapiro', 2001, 'ISRAEL', 0, 0, 4, ''),
(103, 'Evelyn', 'Bruce Beresford', 2002, 'IRLANDA', 0, 1, 4, ''),
(104, 'Mr. Magorium y su tienda mágica', 'Zach Helm', 2007, 'USA', 0, 1, 6, ''),
(105, 'Un plan brillante', 'Michael Radford', 2007, 'UK', 0, 0, 6, ''),
(106, 'West side story', 'Robert Wise', 1961, 'USA', 0, 0, 6, ''),
(107, 'En el valle de Elah', 'Paul Haggis', 2007, 'USA', 0, 0, 2, ''),
(108, 'Los siete magníficos', 'John Sturges', 1960, 'USA', 0, 0, 5, ''),
(109, 'El viaje del emperador', 'Luc Jacquet', 2005, 'FRANÇA', 0, 0, 3, ''),
(110, 'Bangkok dangerous', 'Oxide Pang Chun', 2008, 'USA', 0, 1, 7, ''),
(111, 'Michael Clayton', 'Tony Gilroy', 2007, 'USA', 0, 0, 3, ''),
(112, 'La gran evasión', 'John Sturges', 1962, 'USA', 0, 0, 10, ''),
(113, 'Tomates verdes fritos', 'Jon Avnet', 1991, 'USA', 0, 0, 5, ''),
(114, 'Paris, Texas', 'Wim Wenders', 1984, 'Usa', 0, 0, 8, ''),
(115, 'Los amigos de Peter', 'Kenneth Branagh', 1992, 'UK', 0, 0, 4, ''),
(116, 'Mrs. Henderson', 'Stephen Frears', 2005, 'UK', 0, 0, 7, ''),
(117, 'El imperio de los sentidos', 'Nagisa Oshima', 1976, 'JAPÓ', 0, 0, 8, ''),
(118, 'Confidence', 'James Foley', 2003, 'USA', 0, 0, 2, ''),
(119, 'The nanny diaries (Diario de una niñera)', 'Robert Pulcini', 2007, 'USA', 0, 1, 6, ''),
(120, 'Aflicción', 'Paul Schrader', 1998, 'USA', 0, 0, 9, ''),
(121, 'El hombre del tren', 'Patrice Leconte', 2002, 'FRANÇA', 0, 0, 4, ''),
(122, 'El maquinista', 'Brad Anderson', 2004, 'ESPANYA', 0, 0, 9, ''),
(123, 'Los niños de Huang Shi', 'Roger Spottiswoode', 2008, 'XINA', 0, 1, 7, ''),
(124, 'Shaft The return', 'John Singleton', 2000, 'USA', 0, 0, 4, ''),
(201, 'Crash', 'David Cronenberg', 1996, 'CANADÀ', 0, 0, 3, ''),
(202, 'Confidencias', 'Luchino Visconti', 1974, 'ITÀLIA', 0, 0, 10, ''),
(203, 'Solaris', 'Steven Soderbergh', 2002, 'USA', 0, 0, 9, ''),
(204, 'Minority report', 'Steven Spielberg', 2002, 'USA', 0, 0, 4, ''),
(205, 'Injusta condena', 'Bradley Battersby', 2000, 'USA', 0, 0, 7, ''),
(206, 'Apocalypse now', 'Francis Ford Coppola', 1979, 'USA', 0, 0, 8, ''),
(207, 'Mystic river', 'Clint Eastwood', 2003, 'USA', 0, 0, 2, ''),
(208, 'Una relación privada', 'Fréderic Fonteyne', 2000, 'FRANÇA', 0, 0, 2, ''),
(209, 'Smoke', 'Wayne Wang', 1995, 'USA', 0, 0, 6, ''),
(210, 'Tierras de penumbra', 'Richard Attenborough', 1993, 'UK', 0, 0, 10, ''),
(211, 'Soldados de salamina', 'David Trueba', 2003, 'ESPANYA', 0, 0, 2, ''),
(212, 'Full monty', 'Peter Cattaneo', 1997, 'UK', 0, 0, 5, ''),
(213, 'El club de la lucha', 'David Fincher', 1999, 'USA', 0, 0, 10, ''),
(214, 'Lantana', 'Ray Lawrence', 2001, 'AUSTRÀLIA', 0, 0, 7, ''),
(215, 'Martín hache', 'Adolfo Aristarain', 1997, 'ARGENTINA', 0, 0, 8, ''),
(216, 'Femme fatale', 'Brian De Palma', 2002, 'USA', 0, 0, 9, ''),
(217, 'Orgullo y prejuicio', 'Joe Wright', 2005, 'UK', 0, 0, 9, ''),
(218, 'Carne trémula', 'Pedro Almodóvar', 1997, 'ESPANYA', 0, 0, 4, ''),
(219, 'Ali', 'Michael Mann', 2001, 'USA', 0, 0, 2, ''),
(220, 'The queen', 'Stephen Frears', 2006, 'UK', 0, 1, 2, ''),
(221, 'Traffic', 'Steven Soderbergh', 2000, 'USA', 0, 0, 4, ''),
(222, 'Diarios de motocicleta', 'Walter Salles', 2003, 'ARGENTINA', 0, 0, 9, ''),
(223, 'Europa', 'Lars von Trier', 1991, 'DINAMARCA', 0, 0, 9, ''),
(224, 'En el nombre del padre', 'Jim Sheridan', 1993, 'IRLANDA', 0, 0, 7, ''),
(225, 'El mercader de Venecia', 'Michael Radford', 2004, 'UK', 0, 1, 8, ''),
(226, 'El cuarto àngel', 'John Irvin', 2002, 'UK', 0, 0, 10, ''),
(227, 'In & Out', 'Frank Oz', 1997, 'USA', 0, 0, 9, ''),
(228, 'El cuarto protocolo', 'John MacKenzie', 1987, 'UK', 0, 0, 2, ''),
(229, 'Fahrenheit 9/11', 'Michael Moore', 2004, 'USA', 0, 0, 8, ''),
(230, 'En un lugar de África', 'Caroline Link', 2001, 'ALEMANYA', 0, 0, 3, ''),
(231, 'Four Rooms', 'Quentin Tarantino', 1995, 'USA', 0, 1, 5, ''),
(232, 'Monster\'s ball', 'Marc Forster', 2001, 'USA', 0, 0, 7, ''),
(233, 'El americano impasible', 'Phillip Noyce', 2002, 'USA', 0, 0, 5, ''),
(234, 'Twister', 'Jan de Bont', 1996, 'USA', 0, 0, 7, ''),
(235, 'Titanic', 'Jame Cameron', 1997, 'USA', 0, 0, 4, ''),
(236, 'La maldición del escorpión de jade', 'Woody Allen', 2001, 'USA', 0, 0, 5, ''),
(237, 'El amante', 'Jean-Jacques Annaud', 1992, 'FRANÇA', 0, 0, 3, ''),
(238, 'A.I. Inteligencia artificial', 'Steven Spielberg', 2001, 'USA', 0, 0, 6, ''),
(239, 'El río de la vida', 'Robert Redford', 1992, 'USA', 0, 0, 6, ''),
(240, 'Casa de arena y niebla', 'Vadim Perelman', 2003, 'USA', 0, 0, 2, ''),
(241, 'Los lunes al sol', 'Fernando León de Aranoa', 2002, 'ESPANYA', 0, 0, 6, ''),
(242, 'El talento de Mr. Ripley', 'Anthony Minghella', 1999, 'USA', 0, 0, 4, ''),
(243, 'Gente con clase', 'Eric Styles', 2000, 'UK', 0, 0, 4, ''),
(244, 'Tres colores: Blanco', 'Krzysztof Kieslowski', 1994, 'POLÒNIA', 0, 0, 8, ''),
(245, 'El cuchillo en el agua', 'Roman Polanski', 1962, 'POLÒNIA', 0, 0, 7, ''),
(246, 'Buenas noches y buena suerte', 'George Clooney', 2005, 'USA', 0, 0, 2, ''),
(247, 'El Hotel New Hampshire', 'Tony Richardson', 1984, 'UK', 0, 0, 4, ''),
(248, 'Family man', 'Brett Ratner', 2000, 'USA', 0, 0, 9, ''),
(249, 'Cosas que diría con sólo mirarla', 'Rodrigo García', 2000, 'USA', 0, 0, 4, ''),
(250, '¿Qué hace una chica com tú en un lugar como este?', 'Fernando Colomo', 1978, 'ESPANYA', 0, 0, 2, ''),
(251, 'La cuadrilla', 'Ken Loach', 2001, 'UK', 0, 0, 5, ''),
(252, 'La cena de los idiotas', 'Francis Veber', 1998, 'FRANÇA', 0, 0, 6, ''),
(253, 'El piano', 'Jane Campion', 1993, 'NOVA ZELANDA', 0, 0, 7, ''),
(254, 'Mi marido es una ruina', 'Marcello Cesena', 2001, 'ITÀLIA', 0, 0, 6, ''),
(255, 'Match point', 'Woody Allen', 2005, 'UK', 0, 0, 6, ''),
(256, 'Paycheck', 'John Woo', 2003, 'USA', 0, 0, 4, ''),
(257, 'La caja china', 'Wayne Wang', 1997, 'USA', 0, 0, 2, ''),
(258, 'Siete años en el Tibet', 'Jean-Jacques Annaud', 1997, 'USA', 0, 0, 9, ''),
(259, 'El festín de Babette', 'Gabriel Axel', 1987, 'DINAMARCA', 0, 0, 9, ''),
(260, 'Dragon Rapide', 'Jaime Camino', 1986, 'ESPANYA', 0, 0, 4, ''),
(261, 'Lolita', 'Stanley Kubrick', 1962, 'UK', 0, 0, 2, ''),
(262, 'Mi vida sin mi', 'Isabel Coixet', 2003, 'ESPANYA', 0, 0, 9, ''),
(263, '21 gramos', 'Alejandro González Iñárritu', 2003, 'USA', 0, 0, 7, ''),
(264, 'La casa de los espíritus', 'Bille August', 1993, 'USA', 0, 0, 9, ''),
(265, 'El honor de los Prizzi', 'John Huston', 1985, 'USA', 0, 0, 4, ''),
(266, 'Basic', 'John McTiernan', 2003, 'USA', 0, 0, 7, ''),
(267, 'Muerte entre las flores', 'Joel Coen', 1990, 'USA', 0, 0, 2, ''),
(268, 'Monster', 'Patty Jenkins', 2003, 'USA', 0, 0, 9, ''),
(269, 'Gente pez', 'Jorge Iglesias', 2001, 'ESPANYA', 0, 0, 9, ''),
(270, 'Hombres de honor', 'George Tillman Jr.', 2000, 'USA', 0, 0, 10, ''),
(272, 'La vida de Brian', 'Terry Jones', 1979, 'UK', 0, 0, 9, ''),
(273, 'Investigating sex', 'Alan Rudolph', 2001, 'USA', 0, 0, 3, ''),
(274, 'Drácula de Bram Stoker', 'Francis Ford Coppola', 1992, 'USA', 0, 0, 5, ''),
(275, 'Moulin rouge', 'Baz Luhrmann', 2001, 'AUSTRÀLIA', 0, 0, 6, ''),
(276, 'Vecinos sospechosos', 'Tim Hunter', 1996, 'USA', 0, 0, 7, ''),
(277, 'Canciones para después de una guerra', 'Basilio Martín Patino', 1971, 'ESPANYA', 0, 0, 3, ''),
(278, 'Le llaman Bodhi', 'Kathryn Bigelow', 1991, 'USA', 0, 0, 4, ''),
(279, 'La máscara del zorro', 'Martin Campbell', 1998, 'USA', 0, 0, 2, ''),
(280, 'La pasión de Cristo', 'Mel Gibson', 2004, 'USA', 0, 0, 5, ''),
(281, 'Un mundo perfecto', 'Clint Eastwood', 1993, 'USA', 0, 0, 5, ''),
(282, 'La boda de Muriel', 'P.J. Hogan', 1994, 'AUSTRÀLIA', 0, 0, 2, ''),
(283, 'Romeo + Julieta de William Shakespeare', 'Baz Luhrmann', 1996, 'CANADÀ', 0, 0, 9, ''),
(284, 'Chicago', 'Rob Marshall', 2002, 'USA', 0, 0, 4, ''),
(285, 'Dalí', 'Antoni Ribas', 1991, 'ESPANYA', 0, 0, 8, ''),
(286, 'Las reglas del juego', 'Roger Avary', 2002, 'USA', 0, 0, 8, ''),
(287, 'Cyrano de Bergerac', 'Jean-Paul Rappeneau', 1990, 'FRANÇA', 0, 0, 7, ''),
(288, 'Las horas', 'Stephen Daldry', 2002, 'USA', 0, 0, 3, ''),
(289, 'Bagdad café', 'Percy Adlon', 1987, 'ALEMANYA', 0, 0, 6, ''),
(290, 'Italiano para principiantes', 'Lone Scherfig', 2000, 'DINAMARCA', 0, 0, 9, ''),
(291, 'Kate & Leopold', 'James Mangold', 2001, 'USA', 0, 0, 3, ''),
(292, 'Como agua para chocolate', 'Alfonso Arau', 1992, 'MÈXIC', 0, 0, 6, ''),
(293, 'La fortuna de vivir', 'Jean Becker', 1998, 'FRANÇA', 0, 0, 7, ''),
(294, 'Lost in translation', 'Sofia Coppola', 2003, 'USA', 0, 0, 9, ''),
(295, '1492 La conquista del paraíso', 'Ridley Scott', 1992, 'UK', 0, 0, 2, ''),
(296, 'Pemonition 7 días', 'Mennan Yapo', 2007, 'USA', 0, 0, 8, ''),
(297, 'Cadena perpetua', 'Frank Darabont', 1994, 'USA', 0, 0, 3, ''),
(298, 'Los fabulosos baker boys', 'Steve Kloves', 1989, 'USA', 0, 0, 4, ''),
(299, 'Enrique V', 'Kenneth Branagh', 1989, 'UK', 0, 0, 9, ''),
(300, 'El hijo de la novia', 'Juan José Campanella', 2000, 'ARGENTINA', 0, 0, 7, ''),
(301, 'Dogville', 'Lars von Trier', 2003, 'DINAMARCA', 0, 0, 6, ''),
(302, 'El indomable Will Hunting', 'Gus Van Sant', 1997, 'USA', 0, 0, 5, ''),
(303, 'Desde el infierno', 'Albert Hughes', 2001, 'USA', 0, 0, 10, ''),
(304, 'Dogma', 'Kevin Smith', 1999, 'USA', 0, 0, 9, ''),
(305, 'La escopeta nacional', 'Luis García Berlanga', 1978, 'ESPANYA', 0, 0, 9, ''),
(306, 'Amantes', 'Vicente Aranda', 1991, 'ESPANYA', 0, 0, 8, ''),
(307, 'El extraño viaje', 'Fernando Fernán-Gómez', 1964, 'ESPANYA', 0, 0, 4, ''),
(308, 'La gran familia', 'Fernando Palacios', 1962, 'ESPANYA', 0, 0, 2, ''),
(309, 'La buena estrella', 'Ricardo Franco', 1997, 'ESPANYA', 0, 0, 6, ''),
(310, 'Ópera prima', 'Fernando Trueba', 1980, 'ESPANYA', 0, 0, 3, ''),
(311, 'Plácido', 'Luis García Berlanga', 1961, 'ESPANYA', 0, 0, 5, ''),
(312, 'Mission: Impossible', 'Brian De Palma', 1995, 'USA', 0, 0, 10, ''),
(313, 'Las vírgenes suicidas', 'Sofia Coppola', 1999, 'USA', 0, 0, 6, ''),
(314, 'Celebración', 'Thomas Vinterberg', 1998, 'DINAMARCA', 0, 0, 8, ''),
(315, 'Valmont', 'Milos Forman', 1989, 'UK', 0, 0, 10, ''),
(316, 'El abuelo', 'José Luis Garci', 1998, 'ESPANYA', 0, 0, 2, ''),
(317, 'Boca a boca', 'Manuel Gómez Pereira', 1995, 'ESPANYA', 0, 0, 2, ''),
(318, 'Las normas de la casa de la sidra', 'Lasse Hallström', 1999, 'USA', 0, 0, 6, ''),
(319, 'Amelie', 'Jean-Pierre Jeunet', 2001, 'FRANÇA', 0, 0, 8, ''),
(320, 'La liga de los hombres extraordinarios', 'Stephen Norrington', 2003, 'USA', 0, 0, 6, ''),
(321, 'Harry un amigo que os quiere', 'Dominik Moll', 2000, 'FRANÇA', 0, 0, 3, ''),
(322, 'Mediterráneo', 'Gabriele Salvatores', 1991, 'ITÀLIA', 0, 0, 10, ''),
(323, 'Delicatessen', 'Jean-Pierre Jeunet', 1991, 'FRANÇA', 0, 0, 7, ''),
(324, 'El juego de Ripley', 'Liliana Cavani', 2002, 'USA', 0, 0, 6, ''),
(325, 'El último golpe', 'David Mamet', 2001, 'USA', 0, 0, 5, ''),
(326, 'Lolita (1997)', 'Adrian Lyne', 1997, 'USA', 0, 0, 8, ''),
(327, 'To be or not to be', 'Ernst Lubitsch', 1942, 'USA', 0, 0, 10, ''),
(328, '9 songs', 'Michael Winterbottom', 2004, 'UK', 0, 0, 3, ''),
(329, 'Billy Elliot', 'Stephen Daldry', 2000, 'UK', 0, 0, 7, ''),
(330, 'En busca del fuego', 'Jean-Jacques Annaud', 1981, 'CANADÀ', 0, 0, 3, ''),
(332, 'Nadie es perfecto', 'Joel Schumacher', 1999, 'USA', 0, 0, 10, ''),
(333, 'El click', 'Milo Manara', 1997, 'USA', 0, 0, 2, ''),
(334, 'La dolce vita', 'Federico Fellini', 1960, 'ITÀLIA', 0, 0, 10, ''),
(335, 'Ginger y Fred', 'Federico Fellini', 1985, 'ITÀLIA', 0, 0, 5, ''),
(336, 'Oliver Twist', 'David Lean', 1948, 'UK', 0, 0, 7, ''),
(337, 'Casanova', 'Federico Fellini', 1976, 'ITÀLIA', 0, 0, 2, ''),
(338, 'Delicias turcas', 'Paul Verhoeven', 1973, 'HOLANDA', 0, 0, 5, ''),
(339, 'Rebelde sin causa', 'Nicholas Ray', 1955, 'USA', 0, 0, 10, ''),
(340, 'Casablanca', 'Michael Curtiz', 1942, 'USA', 0, 0, 7, ''),
(341, 'Psicosis', 'Alfred Hitchcock', 1960, 'USA', 0, 0, 8, ''),
(342, 'Toma el dinero y corre', 'Woody Allen', 1969, 'USA', 0, 0, 5, ''),
(343, 'La última legión', 'Doug Lefler', 2007, 'UK', 0, 1, 2, ''),
(344, 'Lejos del cielo', 'Todd Haynes', 2002, 'USA', 0, 0, 10, ''),
(345, 'El Dr. T. Y las mujeres', 'Robert Altman', 2000, 'USA', 0, 0, 6, ''),
(346, 'El hundimiento', 'Oliver Hirschbiegel', 2004, 'ALEMANYA', 0, 0, 9, ''),
(347, 'Trece días', 'Roger Donaldson', 2000, 'USA', 0, 0, 9, ''),
(348, 'Mulholland drive', 'David Lynch', 2001, 'USA', 0, 0, 7, ''),
(349, 'El caso wells', 'Wai Keung Lau', 2007, 'USA', 0, 1, 5, ''),
(350, 'Una habitación con vistas', 'James Ivory', 1985, 'UK', 0, 0, 4, ''),
(351, 'Falsas apariencias', 'Jonathan Lynn', 1999, 'USA', 0, 0, 6, ''),
(352, 'El banquete de boda', 'Ang Lee', 1993, 'TAIWÀN', 0, 0, 3, '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pellicules`
--
ALTER TABLE `pellicules`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pellicules`
--
ALTER TABLE `pellicules`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
