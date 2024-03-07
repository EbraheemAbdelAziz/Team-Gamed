-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2024 at 01:24 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gp-database`
--

-- --------------------------------------------------------

--
-- Table structure for table `skins`
--

CREATE TABLE `skins` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `imageUrl` varchar(255) NOT NULL,
  `scale` varchar(255) NOT NULL,
  `modelUrl` varchar(255) NOT NULL,
  `positionPlane` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skins`
--

INSERT INTO `skins` (`id`, `name`, `imageUrl`, `scale`, `modelUrl`, `positionPlane`, `price`) VALUES
(9, 'Retro', '1709761143898.png', '{\"x\":0.025,\"y\":0.025,\"z\":0.025}', 'models/plane5/skin.glb', '{\"x\":0,\"y\":1,\"z\":0}', 500),
(10, 'Ghost', '1709761249214.png', '{\"x\":0.2,\"y\":0.2,\"z\":0.2}', 'models/plane2/skin.glb', '{\"x\":0,\"y\":1,\"z\":0}', 100),
(11, 'Star Lord', '1709761300460.png', '{\"x\":1,\"y\":1,\"z\":1}', 'models/plane1/skin.glb', '{\"x\":0,\"y\":1,\"z\":0}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `coins` int(11) NOT NULL DEFAULT 200,
  `xp` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `token`, `coins`, `xp`) VALUES
(1, 'ahmed', 'ahmed@email.com', '$2b$10$.QG4yGze9ffc2T/Ccs8cxOJNl6YIUXgRPJfNSk1OJ1SzJrcrUNBtK', 'f0348b7e23dfd834531bfc873162cda8', 500, 0),
(2, 'ebraheem', 'ebraheem@gmail.com', '$2b$10$5CEyoct3FyQ5wHre86baBOIrkuYopQq6M.CWwhzaZCwr1uzQI8fH.', 'ed270d64616d3779e002dbc2e77db04d', 200, 0);

-- --------------------------------------------------------

--
-- Table structure for table `userskins`
--

CREATE TABLE `userskins` (
  `userId` int(11) NOT NULL,
  `skinId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userskins`
--

INSERT INTO `userskins` (`userId`, `skinId`) VALUES
(1, 9),
(1, 10),
(1, 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `skins`
--
ALTER TABLE `skins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userskins`
--
ALTER TABLE `userskins`
  ADD PRIMARY KEY (`userId`,`skinId`),
  ADD KEY `skinId` (`skinId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `skins`
--
ALTER TABLE `skins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `userskins`
--
ALTER TABLE `userskins`
  ADD CONSTRAINT `userskins_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userskins_ibfk_2` FOREIGN KEY (`skinId`) REFERENCES `skins` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
