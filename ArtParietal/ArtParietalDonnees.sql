SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


TRUNCATE TABLE BD101_CATEGORIES;
INSERT INTO BD101_CATEGORIES (IdCategorie, NomCategorie) VALUES
(1, 'Faune'),
(2, 'Flore'),
(3, 'Humain'),
(4, 'Objet'),
(5, 'Signe');

TRUNCATE TABLE BD101_COMMUNICATIONS;
INSERT INTO BD101_COMMUNICATIONS (IdSalleVia, IdSalleVers) VALUES
(1, 11),
(8, 4),
(9, 1),
(9, 8),
(12, 3),
(12, 9),
(14, 15),
(15, 16),
(16, 17),
(17, 18),
(18, 19),
(19, 20),
(20, 21),
(21, 22),
(22, 23);

TRUNCATE TABLE BD101_FIGURATIONS;
INSERT INTO BD101_FIGURATIONS (IdOeuvre, IdSujet, Quantite) VALUES
(1, 4, 0),
(2, 4, 0),
(3, 4, 2),
(4, 6, 5),
(4, 7, 1),
(4, 15, 1),
(5, 7, 0),
(6, 7, 0),
(7, 7, 0),
(9, 6, 1),
(9, 7, 3),
(9, 19, 1),
(11, 3, 1),
(12, 7, 1),
(12, 19, 2),
(12, 21, 1),
(13, 7, 1),
(13, 9, 1),
(15, 8, 0),
(16, 7, 0),
(17, 6, 1),
(17, 7, 1),
(17, 19, 1),
(17, 20, 1),
(17, 21, 2),
(18, 6, 5),
(18, 7, 8),
(18, 11, 1),
(18, 19, 1),
(18, 21, 2),
(19, 4, 1),
(19, 7, 2),
(21, 4, 1),
(21, 7, 1),
(21, 10, 1),
(21, 13, 1),
(21, 15, 3),
(21, 18, 1),
(22, 5, 7),
(23, 7, 4),
(23, 19, 2),
(24, 5, 2),
(24, 7, 9),
(24, 19, 1),
(25, 7, 3),
(25, 19, 3),
(26, 22, 1);

TRUNCATE TABLE BD101_GROTTES;
INSERT INTO BD101_GROTTES (IdGrotte, NomGrotte, CommGrotte, DateDecouverte, Plan, PosGrotte, Ville, IdRegion) VALUES
(1, 'Altamira', 'La grotte espagnole d\'Altamira, située à Santillana del Mar, près de Santander (Cantabrie), renferme l\'un des ensembles picturaux les plus importants de la Préhistoire. Il date de la fin du Paléolithique supérieur, du Magdalénien. Son style artistique relève de ce que l’on appelle l\'art préhistorique franco-cantabrique, caractérisé notamment par le réalisme des représentations et par ses thèmes animaliers.', '1868', 'http://www.hominides.com/data/images/illus/art-par', '43° 22? 57? N 4° 06? 58? W', 'Santillana-del-Mar', 2),
(2, 'Chauvet', 'Le site comporte 420 représentations d\'animaux (peintures, gravures). De nombreuses datations directes par la méthode du carbone 14 ont donné des résultats cohérents proches de 31 000 ans BP. La communauté scientifique admet quasi unanimement que les œuvres de la grotte Chauvet datent de l\'Aurignacien et comptent parmi les plus anciennes au monde.', '18/12/94', NULL, '44° 23? 15? Nord /4° 24? 51? E', 'Vallon-Pont-d\'Arc', 7),
(3, 'Font-de-Gaume', 'La grotte ornée de Font-de-Gaume se trouve sur la commune des Eyzies-de-Tayac en Dordogne. Ses parois comptent plus de 200 gravures et peintures magdaléniennes. La Grotte de Font-de-Gaume est la dernière grotte ornée majeure de France qui présente des œuvres polychromes qui soit ouverte au public. Les œuvres sont comparables par leur richesse à celles de la grotte d\'Altamira ou de la grotte de Lascaux même si leur état de conservation est nettement moindre.', '12/09/01', 'http://www.culture.gouv.fr/culture/conservation/fr', '44° 56? 05? N 1° 01? 44? E', 'Eyzies-de-Tayac', 1),
(4, 'Laas geel', NULL, 'decembre 2', NULL, '9°36?00?N 44°07?00?E', 'Hargeisa', 9),
(5, 'Lascaux', 'La grotte de Lascaux est l\'une des plus importantes grottes ornées paléolithiques par le nombre et la qualité esthétique de ses œuvres. Elle est parfois surnommée «la chapelle Sixtine de l\'art pariétal», selon une expression attribuée à Henri Breuil2 qui la nomme également «Versailles de la Préhistoire»2 ou «Altamira française»3. Les peintures et les gravures qu\'elle renferme n’ont pas pu faire l’objet de datations directes précises: leur âge est estimé entre environ 18 000 et 17 000 ans à parti', '12/09/40', 'http://fr.wikipedia.org/wiki/Fichier:Lascaux_plan.', '45°03?13?N 01°10?12?E', 'Montignac', 1),
(6, 'Les Combarelles', 'Sombre et froide', '1901', 'http://www.hominides.com/data/images/illus/combare', '44° 56? 37? N 1° 02? 32? E ', 'Eyzies de Tayac', 1),
(7, 'Niaux', 'La grotte de Niaux est une grotte ornée du Paléolithique supérieur ayant livré de nombreuses figurations pariétales magdaléniennes. Elle est située en France, en région Midi-Pyrénées, dans le département de l\'Ariège, sur la commune de Niaux, et s\'ouvre à mi-pente dans la vallée de Vicdessos. Elle fait partie du réseau de grotte ornées de la chaîne pyrénéo-cantabrique.', '20/03/05', 'http://www.hominides.com/data/images/illus/grotte/', '42_49_15_N_01_35_37_E', 'Niaux', 4),
(8, 'Pech-Merle', NULL, '1922', 'http://www.france-voyage.com/guide/photo-grotte-pe', '44 30 29 N 1 38 40 Est', 'Cabrerets', 4),
(9, 'Arcy sur Cure', 'Entre 1947 et 1963, les grottes d\'Arcy-sur-Cure ont été fouillées par le préhistorien français André Leroi-Gourhan. Les peintures pariétales, les plus anciennes actuellement connues après celles de la grotte Chauvet, ont été découvertes en 1990.', '1868', 'http://www.hominides.com/data/images/illus/grotte/', '47° 36? 14? Nord       3° 45? ', 'Vézelay', 10);

TRUNCATE TABLE BD101_MATERIAUX;
INSERT INTO BD101_MATERIAUX (IdMateriau, NomMateriau, CommMateriau) VALUES
(1, 'Argile', NULL),
(2, 'Calcaire', 'Permet la gravure'),
(3, 'Charbon de bois', 'Le charbon est un kérogène formé à partir de la dégradation de la matière organique des végétaux'),
(4, 'Grès rose', 'Permet de créer un bruloir , nécessaire à créer la peinture'),
(5, 'Ocre', 'Naturelles au tons rouges, noires, jaunes, brunes'),
(6, 'Oxyde de fer', 'Un oxyde de fer est un composé chimique résultant de la combinaison d\'oxygène et de fer.'),
(7, 'Oxyde de manganèse ', 'Permet de dessiner dans les rouges , jaunes et oranges ');

TRUNCATE TABLE BD101_OEUVRES;
INSERT INTO BD101_OEUVRES (IdOeuvre, NomOeuvre, LocOeuvre, Technique, Orientation, DimOeuvre, CommOeuvre, IdSalle, IdPeriode) VALUES
(1, 'Bison au trait noir', 'paroi', 'trait noir', 'profil', NULL, 'petit bison ', 6, 5),
(2, 'Bison recroquevillé', 'plafond', 'peinture', 'profil', NULL, 'Une des peintures les plus expressives et les plus admirées de toute la composition ', 6, 5),
(3, 'Bisons adossés', NULL, NULL, 'profil', NULL, 'Deux bisons mâles peints en miroir se belliquèrent', 8, NULL),
(4, 'Cerfs nageant', NULL, 'peinture', 'profil', NULL, 'Accompagnée signes géométriques enigmatique', 8, NULL),
(5, 'Cheval fuyant', '2,50 m du sol', 'dessin au crayon de manga', 'profil', NULL, NULL, 3, NULL),
(6, 'Cheval ocre', 'plafond', 'peinture', 'profil', NULL, 'Un des sujets les plus anciens de la composition. Ce type de cheval a dû être relativement fréquent sur la corniche cantabrique', 6, 5),
(7, 'Chevaux masqués', NULL, 'peinture', 'profil', '25*30', NULL, 7, 2),
(8, 'Chevaux pommelés', 'paroi', 'peinture', 'profil', '40*20', 'Technique tres inovante pour l\'époque.', 3, 2),
(9, 'Chevaux chinois', 'paroi droite', 'peinture', NULL, NULL, NULL, 3, NULL),
(10, 'Frise bisons et rennes', 'paroi', 'peinture', 'profil', NULL, NULL, 10, 3),
(11, 'Grande biche', 'paroi', 'peinture', 'profil', NULL, 'Grande maîtrise technique ', 6, 5),
(12, 'Grand taureau noir', 'paroi gauche', 'peinture', NULL, NULL, NULL, 3, NULL),
(13, 'L\'Hemione', 'au pied de la paroi gauche', 'peinture', NULL, NULL, NULL, 3, NULL),
(14, 'Le petit bouquetin', 'paroi', 'peinture', 'profil', NULL, NULL, 13, 3),
(15, 'Œuvre d\'un groupe de félins', 'paroi', 'gravure', 'profil', NULL, 'Très difficile d\'accès ', 4, 4),
(16, 'Œuvre du cheval', 'paroi', 'gravure', 'face', NULL, 'Vue de face, exceptionnelle dans l’art paléolithique où les animaux sont généralement représentés de profils ou selon une perspective tordue', 4, 4),
(17, 'Panneau de l\'Ours noir', 'paroi droite', 'peinture', 'profil', NULL, 'Difficilement lisible', 12, 4),
(18, 'Panneau de la Licorne', 'paroi gauche', 'peinture', 'profil', NULL, NULL, 12, NULL),
(19, 'Panneau rouge', 'paroi droite', 'peinture', NULL, NULL, NULL, 3, NULL),
(20, 'Renne de Lascaux', 'paroi', 'gravure', 'profil', NULL, 'Seul renne représenté à Lascaux', 1, 4),
(21, 'Scène du Puits', NULL, NULL, NULL, NULL, NULL, 11, NULL),
(22, 'Sept bouquetins', 'paroi gauche', 'peinture', 'profil', NULL, NULL, 8, NULL),
(23, 'Vache noire', NULL, 'peinture', 'profil', NULL, 'Accompagnée de signes géométriques enigmatiques', 8, NULL),
(24, 'Vache qui tombe', 'paroi droite', 'peinture', NULL, NULL, NULL, 3, NULL),
(25, 'Vaches rouges', 'paroi gauche', 'peinture', NULL, NULL, NULL, 3, NULL),
(26, 'Mammouth', 'paroi gauche', 'peinture', 'profil', NULL, 'Queue à gauche, tête à droite', 14, 1);

TRUNCATE TABLE BD101_PERIODES;
INSERT INTO BD101_PERIODES (IdPeriode, NomPeriode, DatePeriode) VALUES
(1, 'Aurignacien', ' -77 000 à -27 000'),
(2, 'Gravettien', ' -27 000 à -23 000'),
(3, 'Magdalénien', ' -18 000 à -10 000'),
(4, 'Magdalénien ancien', 'Environ -17 000 ans'),
(5, 'Magdalénien inférieur', ' -15 500 à -13 500'),
(6, 'Solutréen', ' -23 000 à -18 000');

TRUNCATE TABLE BD101_REGIONS;
INSERT INTO BD101_REGIONS (IdRegion, NomRegion, Pays) VALUES
(1, 'Aquitaine', 'France'),
(2, 'Cantabrie', 'Espagne'),
(3, 'Dordogne', 'France'),
(4, 'Midi-Pyrénées', 'France'),
(5, 'Patagonie', 'Argentine'),
(6, 'Poitou-Charentes', 'France'),
(7, 'Rhône-Alpes', 'France'),
(8, 'Shanxi', 'Chine'),
(9, 'Woqooyi galbeed', 'Somalie'),
(10, 'Bourgogne', 'France');

TRUNCATE TABLE BD101_SALLES;
INSERT INTO BD101_SALLES (IdSalle, NomSalle, TypeSalle, PosSalle, DimSalle, IdGrotte) VALUES
(1, 'Abside', 'salle ronde', 'vers l\'ouest', NULL, 5),
(2, 'Cabinet des bisons', 'salle', NULL, NULL, 3),
(3, 'Diverticule axial', 'galerie étroite', 'vers le nord', 'environ 17m de long', 5),
(4, 'Diverticule des félins', 'Étroit couloir', 'vers le sud', '20m de long', 5),
(5, 'Galerie des cerfs', 'galerie', NULL, NULL, 1),
(6, 'Grande salle aux bisons', 'salle', NULL, '18m de long, 9m de large', 1),
(7, 'Hilaire', 'salle', NULL, '500m', 2),
(8, 'Nef', 'couloir', 'avant dernière salle', '20', 5),
(9, 'Passage', 'galerie', 'deuxième salle bis', '15', 5),
(10, 'Passage du rubicon', 'salle', 'entrée', NULL, 3),
(11, 'Puits', 'salle', '4-5m en dessous', NULL, 5),
(12, 'Rotonde', 'salle', 'entrée de Lascaux', '17m de long, 6m de large, 7m de haut', 5),
(13, 'Salon noir', 'salle', NULL, NULL, 7),
(14, 'Salle du grand désert', 'salle', 'entrée de la grotte', NULL, 9),
(15, 'Salle de la vierge', 'salle', 'deuxième salle à l\'entrée', NULL, 9),
(16, 'Salle de bal', 'salle', 'galerie ouest, milieu', NULL, 9),
(17, 'Passage de Défilé', 'couloir', 'galerie ouest, milieu', 'largeur env 10m', 9),
(18, 'Salle des Eboulements', 'Salle', 'galerie ouest, milieu', 'largeur env 10m', 9),
(19, 'Salle du Chaos', 'Salle', 'galerie ouest, milieu', 'largeur env 10m', 9),
(20, 'Salle des noyaux de Cerises', 'Salle', 'galerie ouest,nord', 'largeur env 10m', 9),
(21, 'Salle des Vagues', 'Salle', 'galerie ouest,nord', 'largeur env 10m', 9),
(22, 'Trou du Renard', 'Galerie', 'galerie ouest,nord', 'largeur env 10m', 9),
(23, 'Salle de la Cascade', 'Salle', 'galerie ouest,nord', 'largeur env 10m', 9),
(24, 'Salle de Parat', 'Salle', 'galerie est, nord', NULL, 9),
(25, 'Salle de L\'Amphithéatre', 'Salle', 'galerie est, nord', NULL, 9);

TRUNCATE TABLE BD101_SUJETS;
INSERT INTO BD101_SUJETS (IdSujet, NomSujet, IdCategorie) VALUES
(1, 'Auroch', 1),
(2, 'Bâtonnet', 5),
(3, 'Biche', 1),
(4, 'Bison', 1),
(5, 'Bouquetin', 1),
(6, 'Cerf', 1),
(7, 'Cheval', 1),
(8, 'Félin', 1),
(9, 'Hémione', 1),
(10, 'Homme ', 3),
(11, 'Licorne', 1),
(12, 'Main', 5),
(13, 'Oiseau', 1),
(14, 'Ours', 1),
(15, 'Ponctuation', 5),
(16, 'Quadrilatère', 5),
(17, 'Renne', 1),
(18, 'Rhinocéros', 1),
(19, 'Vache', 1),
(20, 'Veau', 1),
(21, 'Taureau', 1),
(22, 'Mammouth', 1);

TRUNCATE TABLE BD101_SUPERPOSITIONS;
INSERT INTO BD101_SUPERPOSITIONS (IdOeuvreSur, IdOeuvreSous) VALUES
(11, 1);

TRUNCATE TABLE BD101_UTILISATIONS;
INSERT INTO BD101_UTILISATIONS (IdMateriau, IdOeuvre) VALUES
(1, 4),
(3, 7),
(3, 14),
(5, 2),
(5, 6),
(5, 11),
(6, 4),
(7, 5),
(7, 23);
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
