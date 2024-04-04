-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Feb 29, 2024 alle 14:38
-- Versione del server: 10.4.21-MariaDB
-- Versione PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinemafinale`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `attori`
--

CREATE TABLE `attori` (
  `CodAttore` int(11) NOT NULL,
  `Nome` varchar(30) NOT NULL,
  `AnnoNascita` int(11) NOT NULL,
  `Nazionalita` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `attori`
--

INSERT INTO `attori` (`CodAttore`, `Nome`, `AnnoNascita`, `Nazionalita`) VALUES
(1, 'timothee chalamet', 1995, 'francia'),
(2, 'zendaya', 1996, 'usa'),
(3, 'saroirse ronan', 1994, 'usa'),
(4, 'omar sy', 1978, 'francia'),
(5, 'emma watson', 1990, 'inghilterra'),
(6, 'toni servillo', 1959, 'italia'),
(7, 'ryan reynolds', 1976, 'usa'),
(8, 'matthew mc', 1969, 'usa'),
(9, 'anne hathaway', 1982, 'usa'),
(10, 'michael caine', 1933, 'inghilterra'),
(11, 'leonardo dicaprio', 1974, 'usa'),
(12, 'vera farmiga', 1973, 'usa'),
(13, 'patrick wilson', 1973, 'usa'),
(14, 'ethan hawke', 1970, 'usa'),
(15, 'roberto benigni', 1952, 'italia'),
(16, 'audrey tautou', 1976, 'francia'),
(17, 'christoph waltz', 1956, 'germania'),
(18, 'daniel craig', 1968, 'inghilterra'),
(19, 'jamie foxx', 1967, 'usa'),
(20, 'brad pitt', 1963, 'usa'),
(21, 'tom hardy', 1977, 'inghilterra'),
(22, 'cillian murphy', 1976, 'irlanda'),
(23, 'massimo troisi', 1953, 'italia'),
(24, 'daniel radcliffe', 1989, 'inghilterra'),
(25, 'rupert grint', 1988, 'inghilterra'),
(26, 'stefano accorsi', 1971, 'italia'),
(27, 'pierfrancesco favino', 1969, 'italia'),
(28, 'natalie portman', 1981, 'usa'),
(29, 'shailene woodley', 1991, 'usa'),
(30, 'raul bova', 1971, 'italia'),
(31, 'jennifer aniston', 1969, 'usa'),
(32, 'gwyneth paltrow', 1972, 'usa');

-- --------------------------------------------------------

--
-- Struttura della tabella `film`
--

CREATE TABLE `film` (
  `CodFilm` int(11) NOT NULL,
  `Titolo` varchar(30) NOT NULL,
  `AnnoProduzione` int(11) NOT NULL,
  `Nazionalita` varchar(30) NOT NULL,
  `Regista` varchar(30) NOT NULL,
  `Genere` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `film`
--

INSERT INTO `film` (`CodFilm`, `Titolo`, `AnnoProduzione`, `Nazionalita`, `Regista`, `Genere`) VALUES
(1, 'dune', 2021, 'usa', 'villenueve', 'azione'),
(2, 'lady bird', 2017, 'usa', 'gerwig', 'drammatico'),
(3, 'quasi amici', 2011, 'francia', 'nakache', 'drammatico'),
(4, 'piccole donne', 2019, 'usa', 'gerwig', 'drammatico'),
(5, 'la grande bellezza', 2013, 'italia', 'sorrentino', 'drammatico'),
(6, 'free guy', 2021, 'usa', 'levy', 'commedia'),
(7, 'cena con delitto', 2019, 'usa', 'johnson', 'commedia'),
(8, 'interstellar', 2014, 'usa', 'nolan', 'fantascienza'),
(9, 'inception', 2010, 'usa', 'nolan', 'fantascienza'),
(10, 'the conjuring', 2013, 'usa', 'wan', 'horror'),
(11, 'sinister', 2012, 'usa', 'derrickson', 'horror'),
(12, 'la vita è bella', 1997, 'italia', 'benigni', 'storico'),
(13, 'il favoloso mondo di amelie', 2001, 'francia', 'jeunet', 'commedia'),
(14, 'no time to die', 2021, 'usa', 'fukunaga', 'azione'),
(15, 'django unchained', 2012, 'usa', 'tarantino', 'western'),
(16, 'bastardi senza gloria', 2009, 'usa', 'tarantino', 'storico'),
(17, 'dunkirk', 2017, 'usa', 'nolan', 'storico'),
(18, 'revenant', 2015, 'usa', 'inarrutu', 'drammatico'),
(19, 'ricomincio da tre', 1981, 'italia', 'troisi', 'commedia'),
(20, 'the departed', 2006, 'usa', 'scorsese', 'azione');

-- --------------------------------------------------------




-- Struttura della tabella `recita`
--

CREATE TABLE `recita` (
  `CodAttore` int(11) NOT NULL,
  `CodFilm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `recita`
--

INSERT INTO `recita` (`CodAttore`, `CodFilm`) VALUES
(1, 1),
(1, 2),
(1, 4),
(1, 8),
(2, 1),
(3, 2),
(3, 4),
(4, 3),
(5, 4),
(6, 5),
(7, 6),
(8, 8),
(9, 8),
(10, 8),
(10, 9),
(11, 9),
(11, 15),
(11, 18),
(11, 20),
(12, 10),
(12, 20),
(13, 10),
(14, 11),
(15, 12),
(15, 19),
(16, 13),
(17, 14),
(17, 15),
(17, 16),
(18, 7),
(18, 14),
(19, 15),
(20, 16),
(21, 9),
(21, 17),
(21, 18),
(22, 9),
(22, 17),
(23, 19);

-- --------------------------------------------------------



--
-- Indici per le tabelle `attori`
--
ALTER TABLE `attori`
  ADD PRIMARY KEY (`CodAttore`);

--
-- Indici per le tabelle `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`CodFilm`);

-- Indici per le tabelle `recita`
--
ALTER TABLE `recita`
  ADD PRIMARY KEY (`CodAttore`,`CodFilm`),
  ADD KEY `fk_film_recita` (`CodFilm`);

-- AUTO_INCREMENT per la tabella `attori`
--
ALTER TABLE `attori`
  MODIFY `CodAttore` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235257;

--
-- AUTO_INCREMENT per la tabella `film`
--
ALTER TABLE `film`
  MODIFY `CodFilm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;


-- Limiti per la tabella `recita`
--
ALTER TABLE `recita`
  ADD CONSTRAINT `fk_attori_recita` FOREIGN KEY (`CodAttore`) REFERENCES `attori` (`CodAttore`),
  ADD CONSTRAINT `fk_film_recita` FOREIGN KEY (`CodFilm`) REFERENCES `film` (`CodFilm`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
