-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1
-- Genereringstid: 14. 02 2018 kl. 12:36:35
-- Serverversion: 10.1.28-MariaDB
-- PHP-version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `databaseexam`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `adminusers`
--

CREATE TABLE `adminusers` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `adminusers`
--

INSERT INTO `adminusers` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `imageURL` varchar(255) NOT NULL,
  `owner` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `images`
--

INSERT INTO `images` (`id`, `imageURL`, `owner`) VALUES
(6, 'http://static.tvtropes.org/pmwiki/pub/images/friendship_is_magic_newpageimage_1684.png', 2),
(7, 'https://vignette.wikia.nocookie.net/mugen/images/1/13/Fluttershy_artwork.png/revision/latest?cb=20130311003323', 2),
(12, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Star_Wars_Logo.svg/1280px-Star_Wars_Logo.svg.png', 6),
(13, 'https://static.independent.co.uk/s3fs-public/styles/article_small/public/thumbnails/image/2017/10/30/18/star-wars.jpg', 6),
(14, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNBchsue7h4Q4DMrbHfkHVfNTFNI4ocjC283_ZKOWrgQvLWyMJSA', 6),
(15, 'https://zdnet2.cbsistatic.com/hub/i/r/2017/12/19/981915a7-c8c1-4e34-b4b9-b781f4e6ff28/resize/770xauto/b8918195ed868c7157c07f8ed1a14df4/mickey-mouse-vs-darth-vader-star-wars-episode-vii.jpg', 6),
(16, 'https://images-na.ssl-images-amazon.com/images/M/MV5BODQ0NjIzNjQ3MV5BMl5BanBnXkFtZTgwMTQ3MjgyNzE@._CR187,120,1281,960_UX614_UY460._SY230_SX307_AL_.jpg', 6);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `users`
--

INSERT INTO `users` (`UserID`, `username`, `password`, `name`) VALUES
(2, 'fShy34', 'friendshipism4gic', 'Fluttershy'),
(6, 'kyloren', 'darth4ever', 'Han Solo');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `adminusers`
--
ALTER TABLE `adminusers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foreign key` (`owner`);

--
-- Indeks for tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `adminusers`
--
ALTER TABLE `adminusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tilføj AUTO_INCREMENT i tabel `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tilføj AUTO_INCREMENT i tabel `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Begrænsninger for dumpede tabeller
--

--
-- Begrænsninger for tabel `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `foreign key` FOREIGN KEY (`owner`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
