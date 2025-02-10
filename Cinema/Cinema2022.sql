-- Adminer 4.7.4 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `BD101_ACTEURS`;
CREATE TABLE `BD101_ACTEURS` (
  `NumInd` int(5) NOT NULL,
  `NumFilm` int(5) NOT NULL,
  `Role` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`NumInd`,`NumFilm`),
  KEY `NumFilm` (`NumFilm`),
  CONSTRAINT `BD101_ACTEURS_ibfk_1` FOREIGN KEY (`NumInd`) REFERENCES `BD101_INDIVIDUS` (`NumInd`),
  CONSTRAINT `BD101_ACTEURS_ibfk_2` FOREIGN KEY (`NumFilm`) REFERENCES `BD101_FILMS` (`NumFilm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `BD101_ACTEURS` (`NumInd`, `NumFilm`, `Role`) VALUES
(1,	5,	'Grace'),
(2,	5,	'Torn Edison'),
(3,	4,	'Bess'),
(4,	4,	'Jan'),
(4,	5,	'Chuck'),
(5,	3,	'Vincent Vega'),
(6,	3,	'Jules Winnfield'),
(7,	3,	'Butch Collidge'),
(8,	2,	'Beverly & Elliot Mantle'),
(9,	1,	'James Ballard'),
(10,	1,	'Helen Remington'),
(11,	1,	'Gabrielle'),
(16,	7,	'May Day'),
(20,	8,	'Madeleine'),
(21,	8,	'Charles'),
(22,	8,	NULL),
(24,	9,	'Jake Sully'),
(24,	11,	'Jake Sully'),
(25,	9,	'Grace Augustine'),
(25,	11,	NULL),
(26,	9,	'Neytiri'),
(26,	11,	'Neytiri'),
(27,	9,	'Trudy Chacon'),
(28,	9,	'Quaritch'),
(28,	11,	'Colonel Miles Quaritch'),
(29,	10,	'Jack Dawson'),
(29,	12,	'Rick Dalton'),
(30,	10,	'Rose jeune'),
(31,	10,	'Rose âgée'),
(32,	10,	'Cal Hockley'),
(33,	12,	'Cliff Booth'),
(34,	12,	'Sharon Tate');

DROP TABLE IF EXISTS `BD101_CINEMAS`;
CREATE TABLE `BD101_CINEMAS` (
  `NumCine` int(4) NOT NULL,
  `Nom` varchar(15) NOT NULL,
  `Adresse` varchar(30) NOT NULL DEFAULT 'Pas renseignée',
  PRIMARY KEY (`NumCine`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `BD101_CINEMAS` (`NumCine`, `Nom`, `Adresse`) VALUES
(1,	'Le Renoir',	'13100 Aix-en-Provence'),
(2,	'Le Fontenelle',	'78160 Marky-le-Roy'),
(3,	'Gaumont Wilson',	'31000 Toulouse'),
(4,	'Espace Ciné',	'93800 Epinay-sur-Seine'),
(5,	'UGC GEORGE V',	'146 AVENUE DES CHAMPS ELYSEES'),
(6,	'UGC NORMANDIE',	'116 AVENUE DES CHAMPS ELYSEES'),
(7,	'TEMPO',	'1 ROUTE DE TOULOUSE'),
(8,	'GAUMONT COMEDIE',	'10 PLACE DE LA COMEDIE'),
(9,	'LE REGENT',	'3 BD PHILIPPE AUGUSTE');

DROP TABLE IF EXISTS `BD101_FILMS`;
CREATE TABLE `BD101_FILMS` (
  `NumFilm` int(5) NOT NULL,
  `NumInd` int(5) NOT NULL,
  `Titre` varchar(50) NOT NULL DEFAULT '',
  `Genre` varchar(15) NOT NULL DEFAULT '',
  `Annee` year(4) NOT NULL DEFAULT 0000,
  PRIMARY KEY (`NumFilm`),
  KEY `NumInd` (`NumInd`),
  CONSTRAINT `BD101_FILMS_ibfk_1` FOREIGN KEY (`NumInd`) REFERENCES `BD101_INDIVIDUS` (`NumInd`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `BD101_FILMS` (`NumFilm`, `NumInd`, `Titre`, `Genre`, `Annee`) VALUES
(1,	15,	'Crash',	'Drame',	'1996'),
(2,	15,	'Faux-Semblants',	'Epouvante',	'1988'),
(3,	14,	'Pulp Fiction',	'Policier',	'1994'),
(4,	13,	'Breaking the waves',	'Drame',	'1996'),
(5,	13,	'Dogville',	'Drame',	'2002'),
(6,	12,	'Alamo',	'Western',	'1960'),
(7,	18,	'Dangereusement vôtre',	'Espionnage',	'1985'),
(8,	19,	'Une belle course',	'Drame',	'2022'),
(9,	23,	'Avatar',	'Science-Fiction',	'2009'),
(10,	23,	'Titanic',	'Drame',	'1998'),
(11,	23,	'Avatar 3',	'Science-Fiction',	'2024'),
(12,	14,	'Once Upon a Time in Hollywood',	'Drame',	'2019');

DROP TABLE IF EXISTS `BD101_INDIVIDUS`;
CREATE TABLE `BD101_INDIVIDUS` (
  `NumInd` int(5) NOT NULL,
  `Nom` varchar(15) NOT NULL DEFAULT '',
  `Prenom` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`NumInd`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `BD101_INDIVIDUS` (`NumInd`, `Nom`, `Prenom`) VALUES
(1,	'Kidman',	'Nicole'),
(2,	'Bettany',	'Paul'),
(3,	'Watson',	'Emily'),
(4,	'Skarsgard',	'Stellan'),
(5,	'Travolta',	'John'),
(6,	'L. Jackson',	'Samuel'),
(7,	'Willis',	'Bruce'),
(8,	'Irons',	'Jeremy'),
(9,	'Spacler',	'Jarnes'),
(10,	'Hunter',	'Holly'),
(11,	'Arquette',	'Rosanna'),
(12,	'Wayne',	'John'),
(13,	'von Trier',	'Lars'),
(14,	'Tarantino',	'Quentin'),
(15,	'Cronenberg',	'David'),
(16,	'Mazursky',	'Paul'),
(17,	'Jones',	'Grace'),
(18,	'Glen',	'John'),
(19,	'Carion',	'Christian'),
(20,	'Renaud',	'Line'),
(21,	'Boon',	'Dany'),
(22,	'Izaac',	'Alice'),
(23,	'Cameron',	'James'),
(24,	'Worthington',	'Sam'),
(25,	'Weaver',	'Sigourney'),
(26,	'Saldana',	'Zoe'),
(27,	'Rodriguez',	'Michelle'),
(28,	'Lang',	'Stephen'),
(29,	'DiCaprio',	'Leonardo'),
(30,	'Winslet',	'Kate'),
(31,	'Stuart',	'Gloria'),
(32,	'Zane',	'Billy'),
(33,	'Pitt',	'Brad'),
(34,	'Robbie',	'Margot'),
(35,	'Lucas',	'Georges'),
(36,	'Abrams',	'Jeffrey Jacob'),
(37,	'Johnson',	'Rian')
;

DROP TABLE IF EXISTS `BD101_PROJECTIONS`;
CREATE TABLE `BD101_PROJECTIONS` (
  `NumCine` int(4) NOT NULL,
  `NumFilm` int(5) NOT NULL,
  `DateProj` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`NumCine`,`NumFilm`,`DateProj`),
  KEY `NumFilm` (`NumFilm`),
  CONSTRAINT `BD101_PROJECTIONS_ibfk_1` FOREIGN KEY (`NumCine`) REFERENCES `BD101_CINEMAS` (`NumCine`),
  CONSTRAINT `BD101_PROJECTIONS_ibfk_2` FOREIGN KEY (`NumFilm`) REFERENCES `BD101_FILMS` (`NumFilm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `BD101_PROJECTIONS` (`NumCine`, `NumFilm`, `DateProj`) VALUES
(1,	1,	'1996-05-07'),
(1,	2,	'1988-03-12'),
(1,	4,	'1996-08-02'),
(1,	6,	'1980-07-05'),
(1,	6,	'1980-07-06'),
(2,	2,	'1990-09-25'),
(2,	4,	'1996-09-02'),
(2,	4,	'1996-12-02'),
(2,	5,	'2002-05-01'),
(2,	5,	'2002-05-02'),
(2,	5,	'2002-05-03'),
(2,	7,	'1985-05-09'),
(2,	8,	'2022-09-21'),
(2,	10,	'1998-01-10'),
(3,	3,	'1994-11-05'),
(3,	6,	'1960-11-09'),
(3,	8,	'2022-09-21'),
(3,	10,	'1998-01-15'),
(3,	12,	'2019-09-21'),
(4,	3,	'1994-04-08'),
(4,	3,	'1994-11-06'),
(4,	6,	'2002-08-01'),
(4,	8,	'2022-09-28'),
(4,	10,	'1998-01-10'),
(4,	12,	'2019-09-28'),
(5,	9,	'2009-12-22'),
(5,	10,	'1998-01-25'),
(5,	12,	'2019-12-22'),
(6,	9,	'2022-09-29'),
(6,	10,	'1998-01-21'),
(6,	12,	'2019-09-29'),
(8,	8,	'2010-01-15'),
(8,	10,	'1998-01-16'),
(8,	12,	'2019-01-15'),
(9,	8,	'2010-01-05'),
(9,	10,	'1998-01-10');

-- 2022-09-29 16:06:34
