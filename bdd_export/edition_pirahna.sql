-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 14 nov. 2020 à 11:40
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `edition_pirahna`
--

-- --------------------------------------------------------

--
-- Structure de la table `authors`
--

DROP TABLE IF EXISTS `authors`;
CREATE TABLE IF NOT EXISTS `authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorName` varchar(50) NOT NULL,
  `authorBirthday` year(4) DEFAULT NULL,
  `authorCityBirth` varchar(100) DEFAULT NULL,
  `authorCity` varchar(100) DEFAULT NULL,
  `authorBiography` text,
  PRIMARY KEY (`id`),
  KEY `authorName` (`authorName`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `authors`
--

INSERT INTO `authors` (`id`, `authorName`, `authorBirthday`, `authorCityBirth`, `authorCity`, `authorBiography`) VALUES
(4, 'Thees Uhlmann', 1974, NULL, NULL, 'Né en 1974, Thees Uhlmann est musicien (en solo ou avec son groupe Tomte, il a connu de grands succès en Allemagne). Il est également journaliste pour de nombreux quotidiens et magazines. Mon ex, la Mort et moi est son premier roman.'),
(5, 'Natacha Diem', NULL, 'Belgique', 'Paris', 'Née en Belgique, Natacha Diem vit à Paris depuis vingt ans. Elle travaille dans le milieu de l’audiovisuel. Elle écrit des scénarios et des nouvelles, et elle dessine. L’Invention d’Adélaïde Fouchon est son premier roman.'),
(6, 'Patrick Cargnelutti', 1957, 'Châlons-sur-Marne', 'Carhaix', 'Passionné de musique, de littérature et de peinture, il s’intéresse à la politique et à l’écologie. Ancien infirmier en psychiatrie, après de nombreux engagements associatifs, il cofonde en 2013 le webzine littéraire Quatre Sans Quatre et crée l’émission de radio « Des polars et des notes ». Auteur de Peace and Death (Jigal Polar, 2017), il est lauréat du prix Dora-Suarez de la nouvelle 2017 pour « Amin » (Enfantillages, AO).');

-- --------------------------------------------------------

--
-- Structure de la table `catalog`
--

DROP TABLE IF EXISTS `catalog`;
CREATE TABLE IF NOT EXISTS `catalog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `bookLink` varchar(200) NOT NULL,
  `authorName` varchar(50) NOT NULL,
  `translator` varchar(50) DEFAULT NULL,
  `releaseDate` date NOT NULL,
  `abstract` text NOT NULL,
  `backCover` text NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `author` (`authorName`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `catalog`
--

INSERT INTO `catalog` (`id`, `title`, `bookLink`, `authorName`, `translator`, `releaseDate`, `abstract`, `backCover`, `image`) VALUES
(1, 'Succession', 'succession', 'Patrick Cargnelutti', NULL, '2020-09-17', 'Au cœur des ténèbres, en Afrique centrale, mercenaires, barbouzes, fonctionnaires et chefs d’entreprise occidentaux corrompus et chefs de guerre cupides, sèment la terreur et détruisent impitoyablement un pays et ses habitants.', 'En Afrique centrale, dans la région des Grands Lacs, mercenaires, barbouzes, fonctionnaires occidentaux corrompus et chefs de guerre cupides s’en donnent à cœur joie, détruisant impitoyablement un pays et ses habitants. Les hommes droits, comme Egbéblé, chef de village qui veut venger sa fille, ou Pelletier, ingénieur agronome qui fourre son nez où il ne faut pas, ne sont que des pions sacrifiés sur l’autel du pouvoir et de l’argent. Même les exploiteurs et les comploteurs minables, manipulés par plus puissants qu’eux, ne sortiront pas indemnes du cœur des ténèbres, et le lecteur assiste, impuissant et révolté, au délitement de l’âme et du monde.\r\n\r\nSuccession est le roman de la folie de l’homme et du pouvoir, de la corruption absolue, celle qui détruit les innocents et fait se déchirer les peuples.', NULL),
(2, 'L\'invention d\'Adelaïde Fouchon', 'l\'invention_d\'adelaide_fouchon', 'Natacha Diem', NULL, '2020-01-16', 'Le livre sur les petites filles et les femmes qui va bouleverser les pères et les hommes.\r\n\r\nNatacha Diem manie aussi bien la langue de l’enfant que celle de l’adulte, la langue crue que la langue délicate.\r\n\r\nNostalgique, dérangeant et jubilatoire, ce livre est un feelgood book merveilleusement écrit, dans lequel de nombreuses femmes (et de nombreux hommes) se reconnaîtront.', 'Adélaïde, petite fille spéciale vit dans une famille vraiment pas comme les autres. \r\n\r\nElle a comme tout le monde ou à peu près une mère un grand frère et des grands-parents. Mais tout le monde n\'a pas une chatte nommée Rapoustine et un hamster baptisé Éluard… ni deux papas. \r\n\r\nPour se sentir « normale » elle va s\'épuiser pendant toute son enfance à courir partout et à tenir le devant de la scène… Adélaïde adulte choisit de rester en retrait derrière son homme leurs enfants et son chat… \r\n\r\nLorsqu\'elle reçoit un coup de fil de Bruxelles lui annonçant la mort de son père sa vie ou la perception qu\'elle en a se disloque et les souvenirs surgissent et se bousculent : Adélaïde s\'emporte !', NULL),
(3, 'Mon ex, la mort et moi', 'mon_ex_la_mort_et_moi', 'Thees Uhlmann', 'Brice Germain', '2019-06-20', 'Lorsque la Mort se présente à la porte, il est urgent de savoir la convaincre d’attendre pour avoir le temps d’accomplir les choses essentielles de la vie.', 'L’homme qui se tient devant la porte d’entrée prétend être la Mort. Il est venu chercher le narrateur. Mais pendant la discussion qui suit, il doit admettre qu’il est incapable de le faire mourir. À la place du grand voyage, le narrateur, accompagné de la Mort et de son ex-petite amie, entame un road movie délirant dans le but de retrouver son fils de sept ans, qu’il n’a pas vu depuis une éternité mais à qui il envoie chaque jour une carte postale.\r\nDu paradis à l’enfer (mais ces lieux existent réellement ?), le trajet est émaillé de scènes cocasses provoquées par la gaucherie de la Mort qui doit bien se dépatouiller avec le monde des vivants et par des questions existentielles du genre : la Mort a-t-elle besoin de pisser ? Ou : est-il préférable de brûler vif ou de s’éteindre à petit feu ?', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
