-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 27, 2021 at 04:39 AM
-- Server version: 8.0.27-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registreduca`
--
CREATE DATABASE IF NOT EXISTS `registreduca` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `registreduca`;

-- --------------------------------------------------------

--
-- Table structure for table `aulas`
--

CREATE TABLE `aulas` (
  `id` int NOT NULL,
  `inicio` datetime NOT NULL,
  `fim` datetime NOT NULL,
  `intervalo` tinyint(1) NOT NULL DEFAULT '0',
  `presenca` tinyint(1) DEFAULT NULL,
  `professor_id` int NOT NULL,
  `substituto_id` int DEFAULT NULL,
  `turma_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aulas`
--

INSERT INTO `aulas` (`id`, `inicio`, `fim`, `intervalo`, `presenca`, `professor_id`, `substituto_id`, `turma_id`) VALUES
(1, '2021-11-29 07:00:00', '2021-11-29 07:45:00', 0, 1, 1, NULL, 1),
(2, '2021-11-29 07:45:00', '2021-11-29 08:30:00', 0, 1, 1, NULL, 1),
(3, '2021-11-29 08:30:00', '2021-11-29 09:15:00', 0, 1, 2, NULL, 1),
(4, '2021-11-29 09:15:00', '2021-11-29 10:00:00', 0, 1, 3, NULL, 1),
(5, '2021-11-29 10:00:00', '2021-11-29 10:20:00', 1, 1, 3, NULL, 1),
(6, '2021-11-29 10:20:00', '2021-11-29 11:05:00', 0, 1, 3, NULL, 1),
(7, '2021-11-29 11:05:00', '2021-11-29 11:50:00', 0, 0, 4, 1, 1),
(8, '2021-11-30 07:00:00', '2021-11-30 07:45:00', 0, NULL, 4, NULL, 1),
(9, '2021-11-30 07:45:00', '2021-11-30 08:30:00', 0, NULL, 3, NULL, 1),
(10, '2021-11-30 08:30:00', '2021-11-30 09:15:00', 0, NULL, 3, NULL, 1),
(11, '2021-11-30 09:15:00', '2021-11-30 10:00:00', 0, NULL, 2, NULL, 1),
(12, '2021-11-30 10:00:00', '2021-11-30 10:20:00', 1, NULL, 2, NULL, 1),
(13, '2021-11-30 10:20:00', '2021-11-30 11:05:00', 0, NULL, 1, NULL, 1),
(14, '2021-11-30 11:05:00', '2021-11-30 11:50:00', 0, NULL, 5, NULL, 1),
(15, '2021-11-29 13:40:00', '2021-11-29 14:25:00', 0, 1, 5, NULL, 2),
(16, '2021-11-29 14:25:00', '2021-11-29 15:10:00', 0, 1, 5, NULL, 2),
(17, '2021-11-29 15:10:00', '2021-11-29 15:55:00', 0, 1, 2, NULL, 2),
(18, '2021-11-29 15:55:00', '2021-11-29 16:40:00', 0, 1, 1, NULL, 2),
(19, '2021-11-29 16:40:00', '2021-11-29 17:00:00', 1, 1, 6, NULL, 2),
(20, '2021-11-29 17:00:00', '2021-11-29 17:45:00', 0, 1, 7, NULL, 2),
(21, '2021-11-29 17:45:00', '2021-11-29 18:30:00', 0, 1, 3, NULL, 2),
(22, '2021-11-30 13:40:00', '2021-11-30 14:25:00', 0, NULL, 1, NULL, 2),
(23, '2021-11-30 14:25:00', '2021-11-30 15:10:00', 0, NULL, 1, NULL, 2),
(24, '2021-11-30 15:10:00', '2021-11-30 15:55:00', 0, NULL, 7, NULL, 2),
(25, '2021-11-30 15:55:00', '2021-11-30 16:40:00', 0, NULL, 7, NULL, 2),
(26, '2021-11-30 16:40:00', '2021-11-30 17:00:00', 1, NULL, 2, NULL, 2),
(27, '2021-11-30 17:00:00', '2021-11-30 17:45:00', 0, NULL, 2, NULL, 2),
(28, '2021-11-30 17:45:00', '2021-11-30 18:30:00', 0, NULL, 3, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `professores`
--

CREATE TABLE `professores` (
  `id` int NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `professores`
--

INSERT INTO `professores` (`id`, `nome`) VALUES
(1, 'João'),
(2, 'Maria'),
(3, 'Roberto'),
(4, 'André'),
(5, 'Vanessa'),
(6, 'Bruno'),
(7, 'Gustavo'),
(8, 'Rodrigo'),
(9, 'Jonas'),
(10, 'Pedro'),
(11, 'Clara'),
(12, 'Fernanda');

-- --------------------------------------------------------

--
-- Table structure for table `turmas`
--

CREATE TABLE `turmas` (
  `id` int NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `periodo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `turmas`
--

INSERT INTO `turmas` (`id`, `nome`, `periodo`) VALUES
(1, '5-A', 'Manhã'),
(2, '5-B', 'Tarde'),
(4, '6-A', 'Manhã'),
(5, '6-B', 'Tarde');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'auxiliar',
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `senha`, `tipo`, `nome`) VALUES
(1, 'admin@escola.com.br', 'admin', 'diretor', 'Leôncio da Costa Silva');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Professor` (`professor_id`),
  ADD KEY `Professor_Substituto` (`substituto_id`),
  ADD KEY `Turma` (`turma_id`);

--
-- Indexes for table `professores`
--
ALTER TABLE `professores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `turmas`
--
ALTER TABLE `turmas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aulas`
--
ALTER TABLE `aulas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `professores`
--
ALTER TABLE `professores`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `turmas`
--
ALTER TABLE `turmas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aulas`
--
ALTER TABLE `aulas`
  ADD CONSTRAINT `Turma` FOREIGN KEY (`turma_id`) REFERENCES `turmas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
