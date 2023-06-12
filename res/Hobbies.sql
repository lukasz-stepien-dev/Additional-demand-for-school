-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 12, 2023 at 07:22 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Hobbies`
--

-- --------------------------------------------------------

--
-- Table structure for table `Article`
--

CREATE TABLE `Article` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Article`
--

INSERT INTO `Article` (`id`, `title`, `description`, `date`, `author`) VALUES
(1, 'Programowanie', 'Głównym moim zainteresowaniem jest programowania, już od prawie 3 lat się tym interesuje. Znam całkiem dobrze Java, JS, MySQL. Nawet planuje zrobić pełnoprawną aplikacje w te wakacje. ', '2023-06-11', 1),
(2, 'Fotografia', 'Przygodę z fotografią zacząłem już dawno temu, dokładnie 5 lat temu. Do tego czasu kupiłem lustrzankę i zrobiłem masę zdjęć. Z każdego wyjazdu przywożę kilkaset zdjęć.', '2023-06-10', 1),
(3, 'Deskorolka', 'Od roku uczę się jeździć na deskorolce z średnim rezultatem, jednak idzie mi coraz lepiej już. Nawet już umiem na niej skakać co jest dla mnie naprawdę wielkim osiągnięciem.', '2023-06-09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Author`
--

CREATE TABLE `Author` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `surname` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Author`
--

INSERT INTO `Author` (`id`, `name`, `surname`) VALUES
(1, 'Łukasz', 'Stępień');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Article`
--
ALTER TABLE `Article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Article_Author_id_fk` (`author`);

--
-- Indexes for table `Author`
--
ALTER TABLE `Author`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Article`
--
ALTER TABLE `Article`
  ADD CONSTRAINT `Article_Author_id_fk` FOREIGN KEY (`author`) REFERENCES `Author` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
