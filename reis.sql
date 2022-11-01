-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 01 nov 2022 om 09:17
-- Serverversie: 10.4.22-MariaDB
-- PHP-versie: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `b3`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `reis`
--

CREATE TABLE `reis` (
  `Reisnr` int(4) NOT NULL,
  `Bestemmingcode` varchar(10) NOT NULL,
  `Vertrekdatum` date NOT NULL,
  `Aantal_dagen` int(4) NOT NULL,
  `Prijs_per_persoon` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='De reis die de klant gaat maken';

--
-- Gegevens worden geëxporteerd voor tabel `reis`
--

INSERT INTO `reis` (`Reisnr`, `Bestemmingcode`, `Vertrekdatum`, `Aantal_dagen`, `Prijs_per_persoon`) VALUES
(1, 'SANPA', '2019-04-05', 14, '1150.00'),
(2, 'SANFR', '2019-05-17', 14, '1600.00'),
(3, 'BALI', '2019-05-18', 21, '2150.00'),
(4, 'CORSI', '2019-05-19', 7, '800.00'),
(5, 'CORDO', '2019-05-20', 21, '2650.00'),
(6, 'MADRI', '2019-05-20', 10, '700.00'),
(7, 'SANPA', '2019-05-22', 23, '2450.00'),
(8, 'RABAT', '2019-05-24', 12, '1385.00'),
(9, 'TANGE', '2019-05-24', 23, '1825.00'),
(10, 'VERAC', '2019-05-24', 14, '2450.00'),
(11, 'MEDAN', '2019-05-27', 19, '2660.00'),
(12, 'TANGE', '2019-05-30', 14, '1397.00'),
(13, 'GRANC', '2019-05-03', 10, '650.00'),
(14, 'ISTAN', '2019-05-04', 14, '1386.00'),
(15, 'HELSI', '2019-05-04', 12, '1199.00'),
(16, 'MIAMI', '2019-05-05', 23, '2945.00'),
(17, 'RABAT', '2019-05-05', 14, '1475.00'),
(18, 'RABAT', '2019-05-05', 21, '1795.00'),
(19, 'GITES', '2019-05-10', 14, '1600.00'),
(20, 'LIMA', '2019-05-10', 28, '3395.00'),
(21, 'BANGK', '2019-05-10', 22, '2697.00'),
(22, 'SURUB', '2019-05-12', 28, '3333.00'),
(23, 'CAIRO', '2019-05-12', 8, '734.00'),
(24, 'BARCE', '2019-05-12', 9, '620.00'),
(25, 'DUSSD', '2019-05-03', 4, '420.00'),
(26, 'MOIRA', '2019-05-03', 10, '815.00'),
(27, 'MIAMI', '2019-05-05', 21, '2650.00'),
(28, 'CORSI', '2019-05-05', 10, '1200.00');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `reis`
--
ALTER TABLE `reis`
  ADD PRIMARY KEY (`Reisnr`),
  ADD KEY `Bestemmingcode` (`Bestemmingcode`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `reis`
--
ALTER TABLE `reis`
  MODIFY `Reisnr` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `reis`
--
ALTER TABLE `reis`
  ADD CONSTRAINT `bestemming_bestemming` FOREIGN KEY (`Bestemmingcode`) REFERENCES `bestemming` (`Bestemmingcode`),
  ADD CONSTRAINT `reis_ibfk_1` FOREIGN KEY (`Bestemmingcode`) REFERENCES `bestemming` (`Bestemmingcode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
