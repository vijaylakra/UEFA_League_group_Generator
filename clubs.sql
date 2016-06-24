-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2015 at 09:56 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clubs`
--

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE IF NOT EXISTS `teams` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `country` text NOT NULL,
  `logo` varchar(120) NOT NULL,
  `domestic_champion` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `country`, `logo`, `domestic_champion`) VALUES
(1, 'Arsenal(ENG)', 'ENG', 'css/images/Arsenal.png', 'NO'),
(2, 'Astana(KAZ)', 'KAZ', 'css/images/Astana.png', 'NO'),
(3, 'Atletico(ESP)', 'ESP', 'css/images/Atletico.png', 'NO'),
(4, 'Barcelona(ESP)', 'ESP', 'css/images/Barcelona.png', 'YES'),
(5, 'BATE(BLR)', 'BLR', 'css/images/BATE.png', 'NO'),
(6, 'Bayern(GER)', 'GER', 'css/images/Bayern.png', 'YES'),
(7, 'Benfica(POR)', 'POR', 'css/images/Benfica.png', 'YES'),
(8, 'Chelsea(ENG)', 'ENG', 'css/images/Chelsea.png', 'YES'),
(9, 'CSKA Moskva(RUS)', 'RUS', 'css/images/CSKA Moskva.png', 'NO'),
(10, 'Dinamo Zagreb(CRO)', 'CRO', 'css/images/Dinamo Zagreb.png', 'NO'),
(11, 'Dynamo Kyiv(UKR)', 'UKR', 'css/images/Dynamo Kyiv.png', 'NO'),
(12, 'Galatasaray(TUR)', 'TUR', 'css/images/Galatasaray.png', 'NO'),
(13, 'Gent(BEL)', 'BEL', 'css/images/Gent.png', 'NO'),
(14, 'Juventus(ITA)', 'ITA', 'css/images/Juventus.png', 'YES'),
(15, 'Leverkusen(GER)', 'GER', 'css/images/Leverkusen.png', 'NO'),
(16, 'Lyon(FRA)', 'FRA', 'css/images/Lyon.png', 'NO'),
(17, 'M. Tel-Aviv(ISR)', 'ISR', 'css/images/M. Tel-Aviv.png', 'NO'),
(18, 'Malmo(SWE)', 'SWE', 'css/images/Malmo.png', 'NO'),
(19, 'Man. City(ENG)', 'ENG', 'css/images/Man. City.png', 'NO'),
(20, 'Man. United(ENG)', 'ENG', 'css/images/Man. United.png', 'NO'),
(21, 'Monchengladbach(GER)', 'GER', 'css/images/Monchengladbach.png', 'NO'),
(22, 'Olympiacos(GRE)', 'GRE', 'css/images/Olympiacos.png', 'NO'),
(23, 'Paris(FRA)', 'FRA', 'css/images/Paris.png', 'YES'),
(24, 'Porto(POR)', 'POR', 'css/images/Porto.png', 'NO'),
(25, 'PSV(NED)', 'NED', 'css/images/PSV.png', 'YES'),
(26, 'Real Madrid(ESP)', 'ESP', 'css/images/Real Madrid.png', 'NO'),
(27, 'Roma(ITA)', 'ITA', 'css/images/Roma.png', 'NO'),
(28, 'Sevilla(ESP)', 'ESP', 'css/images/Sevilla.png', 'NO'),
(29, 'Shakhtar Donetsk(UKR)', 'UKR', 'css/images/Shakhtar Donetsk.png', 'NO'),
(30, 'Valencia(ESP)', 'ESP', 'css/images/Valencia.png', 'NO'),
(31, 'Wolfsburg(GER)', 'GER', 'css/images/Wolfsburg.png', 'NO'),
(32, 'Zenit(RUS)', 'RUS', 'css/images/Zenit.png', 'YES');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
