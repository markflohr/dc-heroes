-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Gegenereerd op: 07 feb 2018 om 10:13
-- Serverversie: 5.7.19
-- PHP-versie: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dc-heroes`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `hero`
--

CREATE TABLE `hero` (
  `heroId` int(3) NOT NULL COMMENT 'the unique heroId used as a parameter in the URL and fetched by PHP using the $_GET superblobal variable',
  `heroName` varchar(50) NOT NULL COMMENT 'the name of the hero, just a string',
  `heroDescription` text NOT NULL COMMENT 'some information of the hero, just a string',
  `heroPower` text NOT NULL,
  `heroImage` varchar(50) NOT NULL COMMENT 'the image of the hero is strored as a string. The actual image is strored on the server. Use the string as the source of the HTML img-tag.',
  `teamId` int(3) NOT NULL COMMENT 'this is the teamId. Used as a referenc to the team table.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `hero`
--

INSERT INTO `hero` (`heroId`, `heroName`, `heroDescription`, `heroPower`, `heroImage`, `teamId`) VALUES
(7, 'Superman', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus posuere dolor ut tristique fermentum. Duis vitae erat quis erat viverra suscipit in vel est. Morbi quis pulvinar massa. Proin aliquet lorem erat, eu pretium magna eleifend et. Maecenas pulvinar pulvinar ex eget ornare. Sed quis eros faucibus, cursus dui eget, congue lorem. Duis elit lectus, porta eget odio ornare, rhoncus consequat dolor. Praesent et volutpat libero. Integer vitae augue venenatis, bibendum felis sed, venenatis felis.', 'Lorem\r\nipsum \r\ndolor \r\nsit \r\namet', 'images/superman', 1),
(8, 'Batman', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus posuere dolor ut tristique fermentum. Duis vitae erat quis erat viverra suscipit in vel est. Morbi quis pulvinar massa. Proin aliquet lorem erat, eu pretium magna eleifend et. Maecenas pulvinar pulvinar ex eget ornare. Sed quis eros faucibus, cursus dui eget, congue lorem. Duis elit lectus, porta eget odio ornare, rhoncus consequat dolor. Praesent et volutpat libero. Integer vitae augue venenatis, bibendum felis sed, venenatis felis.', 'Lorem \r\nipsum \r\ndolor \r\nsit \r\namet', 'images/batman', 1),
(9, 'Wonder Woman', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus posuere dolor ut tristique fermentum. Duis vitae erat quis erat viverra suscipit in vel est. Morbi quis pulvinar massa. Proin aliquet lorem erat, eu pretium magna eleifend et. Maecenas pulvinar pulvinar ex eget ornare. Sed quis eros faucibus, cursus dui eget, congue lorem. Duis elit lectus, porta eget odio ornare, rhoncus consequat dolor. Praesent et volutpat libero. Integer vitae augue venenatis, bibendum felis sed, venenatis felis.', 'Lorem \r\nipsum \r\ndolor \r\nsit \r\namet', 'images/wonder_woman', 1),
(10, 'The Flash', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus posuere dolor ut tristique fermentum. Duis vitae erat quis erat viverra suscipit in vel est. Morbi quis pulvinar massa. Proin aliquet lorem erat, eu pretium magna eleifend et. Maecenas pulvinar pulvinar ex eget ornare. Sed quis eros faucibus, cursus dui eget, congue lorem. Duis elit lectus, porta eget odio ornare, rhoncus consequat dolor. Praesent et volutpat libero. Integer vitae augue venenatis, bibendum felis sed, venenatis felis.', 'Lorem \r\nipsum \r\ndolor \r\nsit \r\namet', 'images/the_flash', 1),
(11, 'Aquaman', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus posuere dolor ut tristique fermentum. Duis vitae erat quis erat viverra suscipit in vel est. Morbi quis pulvinar massa. Proin aliquet lorem erat, eu pretium magna eleifend et. Maecenas pulvinar pulvinar ex eget ornare. Sed quis eros faucibus, cursus dui eget, congue lorem. Duis elit lectus, porta eget odio ornare, rhoncus consequat dolor. Praesent et volutpat libero. Integer vitae augue venenatis, bibendum felis sed, venenatis felis.', 'Lorem \r\nipsum \r\ndolor \r\nsit \r\namet', 'images/aquaman', 1),
(12, 'Nightwing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus posuere dolor ut tristique fermentum. Duis vitae erat quis erat viverra suscipit in vel est. Morbi quis pulvinar massa. Proin aliquet lorem erat, eu pretium magna eleifend et. Maecenas pulvinar pulvinar ex eget ornare. Sed quis eros faucibus, cursus dui eget, congue lorem. Duis elit lectus, porta eget odio ornare, rhoncus consequat dolor. Praesent et volutpat libero. Integer vitae augue venenatis, bibendum felis sed, venenatis felis.', 'Lorem \r\nipsum \r\ndolor \r\nsit \r\namet', 'images/nightwing', 2),
(13, 'Zatara', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus posuere dolor ut tristique fermentum. Duis vitae erat quis erat viverra suscipit in vel est. Morbi quis pulvinar massa. Proin aliquet lorem erat, eu pretium magna eleifend et. Maecenas pulvinar pulvinar ex eget ornare. Sed quis eros faucibus, cursus dui eget, congue lorem. Duis elit lectus, porta eget odio ornare, rhoncus consequat dolor. Praesent et volutpat libero. Integer vitae augue venenatis, bibendum felis sed, venenatis felis.', 'Lorem \r\nipsum \r\ndolor \r\nsit \r\namet', 'images/zatara', 2),
(14, 'Superboy', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus posuere dolor ut tristique fermentum. Duis vitae erat quis erat viverra suscipit in vel est. Morbi quis pulvinar massa. Proin aliquet lorem erat, eu pretium magna eleifend et. Maecenas pulvinar pulvinar ex eget ornare. Sed quis eros faucibus, cursus dui eget, congue lorem. Duis elit lectus, porta eget odio ornare, rhoncus consequat dolor. Praesent et volutpat libero. Integer vitae augue venenatis, bibendum felis sed, venenatis felis.', 'Lorem \r\nipsum \r\ndolor \r\nsit \r\namet', 'images/superboy', 2),
(15, 'Miss Martian', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus posuere dolor ut tristique fermentum. Duis vitae erat quis erat viverra suscipit in vel est. Morbi quis pulvinar massa. Proin aliquet lorem erat, eu pretium magna eleifend et. Maecenas pulvinar pulvinar ex eget ornare. Sed quis eros faucibus, cursus dui eget, congue lorem. Duis elit lectus, porta eget odio ornare, rhoncus consequat dolor. Praesent et volutpat libero. Integer vitae augue venenatis, bibendum felis sed, venenatis felis.', 'Lorem \r\nipsum \r\ndolor \r\nsit \r\namet', 'images/miss_martian', 2),
(16, 'Beast Boy', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus posuere dolor ut tristique fermentum. Duis vitae erat quis erat viverra suscipit in vel est. Morbi quis pulvinar massa. Proin aliquet lorem erat, eu pretium magna eleifend et. Maecenas pulvinar pulvinar ex eget ornare. Sed quis eros faucibus, cursus dui eget, congue lorem. Duis elit lectus, porta eget odio ornare, rhoncus consequat dolor. Praesent et volutpat libero. Integer vitae augue venenatis, bibendum felis sed, venenatis felis.', 'Lorem \r\nipsum \r\ndolor \r\nsit \r\namet', 'images/beast_boy', 2),
(17, 'John Constantine', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus posuere dolor ut tristique fermentum. Duis vitae erat quis erat viverra suscipit in vel est. Morbi quis pulvinar massa. Proin aliquet lorem erat, eu pretium magna eleifend et. Maecenas pulvinar pulvinar ex eget ornare. Sed quis eros faucibus, cursus dui eget, congue lorem. Duis elit lectus, porta eget odio ornare, rhoncus consequat dolor. Praesent et volutpat libero. Integer vitae augue venenatis, bibendum felis sed, venenatis felis.', 'Lorem \r\nipsum \r\ndolor \r\nsit \r\namet', 'images/john_constantine', 3),
(18, 'Enchantress', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus posuere dolor ut tristique fermentum. Duis vitae erat quis erat viverra suscipit in vel est. Morbi quis pulvinar massa. Proin aliquet lorem erat, eu pretium magna eleifend et. Maecenas pulvinar pulvinar ex eget ornare. Sed quis eros faucibus, cursus dui eget, congue lorem. Duis elit lectus, porta eget odio ornare, rhoncus consequat dolor. Praesent et volutpat libero. Integer vitae augue venenatis, bibendum felis sed, venenatis felis.', 'Lorem \r\nipsum \r\ndolor \r\nsit \r\namet', 'images/enchantress', 3),
(19, 'Doctor Fate', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus posuere dolor ut tristique fermentum. Duis vitae erat quis erat viverra suscipit in vel est. Morbi quis pulvinar massa. Proin aliquet lorem erat, eu pretium magna eleifend et. Maecenas pulvinar pulvinar ex eget ornare. Sed quis eros faucibus, cursus dui eget, congue lorem. Duis elit lectus, porta eget odio ornare, rhoncus consequat dolor. Praesent et volutpat libero. Integer vitae augue venenatis, bibendum felis sed, venenatis felis.', 'Lorem \r\nipsum \r\ndolor \r\nsit \r\namet', 'images/doctor_fate', 3),
(20, 'Swamp Thing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus posuere dolor ut tristique fermentum. Duis vitae erat quis erat viverra suscipit in vel est. Morbi quis pulvinar massa. Proin aliquet lorem erat, eu pretium magna eleifend et. Maecenas pulvinar pulvinar ex eget ornare. Sed quis eros faucibus, cursus dui eget, congue lorem. Duis elit lectus, porta eget odio ornare, rhoncus consequat dolor. Praesent et volutpat libero. Integer vitae augue venenatis, bibendum felis sed, venenatis felis.', 'Lorem \r\nipsum \r\ndolor \r\nsit \r\namet', 'images/swamp_thing', 3),
(21, 'Zatanna', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus posuere dolor ut tristique fermentum. Duis vitae erat quis erat viverra suscipit in vel est. Morbi quis pulvinar massa. Proin aliquet lorem erat, eu pretium magna eleifend et. Maecenas pulvinar pulvinar ex eget ornare. Sed quis eros faucibus, cursus dui eget, congue lorem. Duis elit lectus, porta eget odio ornare, rhoncus consequat dolor. Praesent et volutpat libero. Integer vitae augue venenatis, bibendum felis sed, venenatis felis.', 'Lorem \r\nipsum \r\ndolor \r\nsit \r\namet', 'images/zatanna', 3),
(22, 'Firestorm', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus posuere dolor ut tristique fermentum. Duis vitae erat quis erat viverra suscipit in vel est. Morbi quis pulvinar massa. Proin aliquet lorem erat, eu pretium magna eleifend et. Maecenas pulvinar pulvinar ex eget ornare. Sed quis eros faucibus, cursus dui eget, congue lorem. Duis elit lectus, porta eget odio ornare, rhoncus consequat dolor. Praesent et volutpat libero. Integer vitae augue venenatis, bibendum felis sed, venenatis felis.', 'Lorem \r\nipsum \r\ndolor \r\nsit \r\namet', 'images/firestorm', 4),
(23, 'Atom', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus posuere dolor ut tristique fermentum. Duis vitae erat quis erat viverra suscipit in vel est. Morbi quis pulvinar massa. Proin aliquet lorem erat, eu pretium magna eleifend et. Maecenas pulvinar pulvinar ex eget ornare. Sed quis eros faucibus, cursus dui eget, congue lorem. Duis elit lectus, porta eget odio ornare, rhoncus consequat dolor. Praesent et volutpat libero. Integer vitae augue venenatis, bibendum felis sed, venenatis felis.', 'Lorem \r\nipsum \r\ndolor \r\nsit \r\namet', 'images/atom', 4),
(24, 'Steel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus posuere dolor ut tristique fermentum. Duis vitae erat quis erat viverra suscipit in vel est. Morbi quis pulvinar massa. Proin aliquet lorem erat, eu pretium magna eleifend et. Maecenas pulvinar pulvinar ex eget ornare. Sed quis eros faucibus, cursus dui eget, congue lorem. Duis elit lectus, porta eget odio ornare, rhoncus consequat dolor. Praesent et volutpat libero. Integer vitae augue venenatis, bibendum felis sed, venenatis felis.', 'Lorem \r\nipsum \r\ndolor \r\nsit \r\namet', 'images/steel', 4),
(25, 'Vixen', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus posuere dolor ut tristique fermentum. Duis vitae erat quis erat viverra suscipit in vel est. Morbi quis pulvinar massa. Proin aliquet lorem erat, eu pretium magna eleifend et. Maecenas pulvinar pulvinar ex eget ornare. Sed quis eros faucibus, cursus dui eget, congue lorem. Duis elit lectus, porta eget odio ornare, rhoncus consequat dolor. Praesent et volutpat libero. Integer vitae augue venenatis, bibendum felis sed, venenatis felis.', 'Lorem \r\nipsum \r\ndolor \r\nsit \r\namet', 'images/vixen', 4),
(26, 'Captain Cold', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus posuere dolor ut tristique fermentum. Duis vitae erat quis erat viverra suscipit in vel est. Morbi quis pulvinar massa. Proin aliquet lorem erat, eu pretium magna eleifend et. Maecenas pulvinar pulvinar ex eget ornare. Sed quis eros faucibus, cursus dui eget, congue lorem. Duis elit lectus, porta eget odio ornare, rhoncus consequat dolor. Praesent et volutpat libero. Integer vitae augue venenatis, bibendum felis sed, venenatis felis.', 'Lorem \r\nipsum \r\ndolor \r\nsit \r\namet', 'images/captain_cold', 4),
(27, 'Green Arrow', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus posuere dolor ut tristique fermentum. Duis vitae erat quis erat viverra suscipit in vel est. Morbi quis pulvinar massa. Proin aliquet lorem erat, eu pretium magna eleifend et. Maecenas pulvinar pulvinar ex eget ornare. Sed quis eros faucibus, cursus dui eget, congue lorem. Duis elit lectus, porta eget odio ornare, rhoncus consequat dolor. Praesent et volutpat libero. Integer vitae augue venenatis, bibendum felis sed, venenatis felis.', 'Lorem \r\nipsum \r\ndolor \r\nsit \r\namet', 'images/green_arrow', 5),
(28, 'Spartan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus posuere dolor ut tristique fermentum. Duis vitae erat quis erat viverra suscipit in vel est. Morbi quis pulvinar massa. Proin aliquet lorem erat, eu pretium magna eleifend et. Maecenas pulvinar pulvinar ex eget ornare. Sed quis eros faucibus, cursus dui eget, congue lorem. Duis elit lectus, porta eget odio ornare, rhoncus consequat dolor. Praesent et volutpat libero. Integer vitae augue venenatis, bibendum felis sed, venenatis felis.', 'Lorem \r\nipsum \r\ndolor \r\nsit \r\namet', 'images/spartan', 5),
(29, 'Overwatch', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus posuere dolor ut tristique fermentum. Duis vitae erat quis erat viverra suscipit in vel est. Morbi quis pulvinar massa. Proin aliquet lorem erat, eu pretium magna eleifend et. Maecenas pulvinar pulvinar ex eget ornare. Sed quis eros faucibus, cursus dui eget, congue lorem. Duis elit lectus, porta eget odio ornare, rhoncus consequat dolor. Praesent et volutpat libero. Integer vitae augue venenatis, bibendum felis sed, venenatis felis.', 'Lorem \r\nipsum \r\ndolor \r\nsit \r\namet', 'images/overwatch', 5),
(30, 'Black Canary', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus posuere dolor ut tristique fermentum. Duis vitae erat quis erat viverra suscipit in vel est. Morbi quis pulvinar massa. Proin aliquet lorem erat, eu pretium magna eleifend et. Maecenas pulvinar pulvinar ex eget ornare. Sed quis eros faucibus, cursus dui eget, congue lorem. Duis elit lectus, porta eget odio ornare, rhoncus consequat dolor. Praesent et volutpat libero. Integer vitae augue venenatis, bibendum felis sed, venenatis felis.', 'Lorem \r\nipsum \r\ndolor \r\nsit \r\namet', 'images/black_canary', 5),
(31, 'Mr. Terrific', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus posuere dolor ut tristique fermentum. Duis vitae erat quis erat viverra suscipit in vel est. Morbi quis pulvinar massa. Proin aliquet lorem erat, eu pretium magna eleifend et. Maecenas pulvinar pulvinar ex eget ornare. Sed quis eros faucibus, cursus dui eget, congue lorem. Duis elit lectus, porta eget odio ornare, rhoncus consequat dolor. Praesent et volutpat libero. Integer vitae augue venenatis, bibendum felis sed, venenatis felis.', 'Lorem \r\nipsum \r\ndolor \r\nsit \r\namet', 'images/mr_terrific', 5);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `rating`
--

CREATE TABLE `rating` (
  `ratingId` int(3) NOT NULL COMMENT 'unique rating is, auto incremented',
  `heroId` int(3) NOT NULL COMMENT 'the heroId used as reference to the hero table, can''t be unique in thie table',
  `rating` int(3) NOT NULL COMMENT 'rating is defined as an integer from 0 (min) to 10 (max)',
  `ratingDate` int(5) NOT NULL COMMENT 'the date of this rating. Dates are presented as an integer (timestamp) and displayed as a human readable date and time string using the PHP strftime() function',
  `ratingReview` text NOT NULL COMMENT 'a textual review added by the user\\nthe form where the user can rate the hero by using stars (radio-buttons)'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `team`
--

CREATE TABLE `team` (
  `teamId` int(3) NOT NULL COMMENT 'unique teamId can be used as a parameter in the URL and fetched using the $_GET variable',
  `teamName` varchar(50) NOT NULL COMMENT 'team name, just an ordinary string',
  `teamDescription` text NOT NULL COMMENT 'team description, just a string',
  `teamImage` varchar(100) NOT NULL COMMENT 'team image, stored as a string and used with the source of the HTML-tag'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `team`
--

INSERT INTO `team` (`teamId`, `teamName`, `teamDescription`, `teamImage`) VALUES
(1, 'Justice League', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam malesuada sed leo ultricies commodo. Etiam ac commodo neque. Proin et mi at purus dapibus placerat in quis erat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eu mollis dolor. Integer placerat mi vel nisl maximus molestie. Sed quis purus ante. Sed eu nunc tellus. In varius ultricies diam, at pretium orci.', ''),
(2, 'Teen Titans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam malesuada sed leo ultricies commodo. Etiam ac commodo neque. Proin et mi at purus dapibus placerat in quis erat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eu mollis dolor. Integer placerat mi vel nisl maximus molestie. Sed quis purus ante. Sed eu nunc tellus. In varius ultricies diam, at pretium orci.', ''),
(3, 'Justice League Dark', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam malesuada sed leo ultricies commodo. Etiam ac commodo neque. Proin et mi at purus dapibus placerat in quis erat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eu mollis dolor. Integer placerat mi vel nisl maximus molestie. Sed quis purus ante. Sed eu nunc tellus. In varius ultricies diam, at pretium orci.', ''),
(4, 'Legends of Tomorrow', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam malesuada sed leo ultricies commodo. Etiam ac commodo neque. Proin et mi at purus dapibus placerat in quis erat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eu mollis dolor. Integer placerat mi vel nisl maximus molestie. Sed quis purus ante. Sed eu nunc tellus. In varius ultricies diam, at pretium orci.', ''),
(5, 'Team Arrow', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam malesuada sed leo ultricies commodo. Etiam ac commodo neque. Proin et mi at purus dapibus placerat in quis erat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eu mollis dolor. Integer placerat mi vel nisl maximus molestie. Sed quis purus ante. Sed eu nunc tellus. In varius ultricies diam, at pretium orci.', '');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`heroId`);

--
-- Indexen voor tabel `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`ratingId`);

--
-- Indexen voor tabel `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`teamId`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `hero`
--
ALTER TABLE `hero`
  MODIFY `heroId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'the unique heroId used as a parameter in the URL and fetched by PHP using the $_GET superblobal variable', AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT voor een tabel `rating`
--
ALTER TABLE `rating`
  MODIFY `ratingId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'unique rating is, auto incremented';
--
-- AUTO_INCREMENT voor een tabel `team`
--
ALTER TABLE `team`
  MODIFY `teamId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'unique teamId can be used as a parameter in the URL and fetched using the $_GET variable', AUTO_INCREMENT=6;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
