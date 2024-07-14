-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 14, 2024 at 04:17 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(4, 'n4'),
(5, 'N_cat'),
(6, 'Eg_News'),
(7, 'US_News'),
(8, 'Palastine_News'),
(9, 'Quods'),
(10, 'lu_news'),
(11, 'palestine_news'),
(12, 'palestine'),
(13, 'Gaza'),
(14, 'World_news'),
(15, 'test01');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(10) UNSIGNED NOT NULL,
  `news_date` date NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` varchar(250) NOT NULL,
  `author` varchar(150) NOT NULL,
  `category` varchar(20) NOT NULL,
  `photo_name` varchar(250) NOT NULL,
  `photo_path` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_date`, `title`, `content`, `author`, `category`, `photo_name`, `photo_path`) VALUES
(1, '2024-07-13', 'b', 'Contents', 'aa', '1', '', ''),
(5, '2024-07-14', 'zi', 'Contents', 'zi', 'cat2', '', ''),
(6, '2024-07-13', 'a', 'Contents', 'ai', 'cat2', 'download.jpeg', 'Nimg/download.jpeg'),
(7, '2024-07-14', 'why', 'Contents', 'a', 'cat1', 'download.jpeg', 'Nimg/download.jpeg'),
(8, '2024-07-14', 'quods', 'Contents', 'lu', 'cat1', 'download.jpeg', 'Nimg/download.jpeg'),
(9, '2024-07-14', 'new news', 'Contents', 'li', 'cat1', 'news-700x435-3.jpg', 'Nimg/news-700x435-3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `user_name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `active` enum('Yes','No') NOT NULL,
  `pass` varchar(150) NOT NULL,
  `photo_name` varchar(250) NOT NULL,
  `photo_path` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `full_name`, `user_name`, `email`, `active`, `pass`, `photo_name`, `photo_path`) VALUES
(2, 'sata0', 'earthadmin', 'earthadmin@gmail.com', 'Yes', 'DevelopEarth100%', 'download.jpeg', ''),
(3, 'un', 'earthadmin', 'earthadmin@gmail.com', 'Yes', 'DevelopEarth100%', '', ''),
(4, 'unnu', 'earthadmin', 'earthadmin@gmail.com', 'Yes', 'DevelopEarth100%', 'download.jpeg', ''),
(5, 'un0', 'earthadmin', 'earthadmin@gmail.com', 'Yes', 'DevelopEarth100%', '', ''),
(7, 'un2', 'earthadmin', 'earthadmin@gmail.com', 'Yes', 'DevelopEarth100%', '', ''),
(8, 'un2', 'earthadmin', 'earthadmin@gmail.com', 'Yes', 'DevelopEarth100%', '', ''),
(9, 'nono', 'earthadmin', 'earthadmin@gmail.com', 'Yes', 'DevelopEarth100%', 'news-700x435-3.jpg', ''),
(10, 'un2', 'earthadmin', 'earthadmin@gmail.com', 'Yes', 'DevelopEarth100%', '', ''),
(11, 'un2', 'earthadmin', 'earthadmin@gmail.com', 'Yes', 'DevelopEarth100%', '', ''),
(12, 'un10', 'earthadmin', 'earthadmin@gmail.com', 'Yes', 'DevelopEarth100%', 'Screenshot from 2024-07-13 03-51-53.png', 'img/Screenshot from 2024-07-13 03-51-53.png'),
(13, 'un100', 'earthadmin', 'earthadmin@gmail.com', 'Yes', 'DevelopEarth100%', 'download.jpeg', 'img/download.jpeg'),
(14, 'lil', 'earthadminli', 'earthadmin@gmail.com', 'Yes', 'DevelopEarth100%', 'download.jpeg', 'img/download.jpeg'),
(15, 'na', 'earthadmin', 'earthadmin@gmail.com', 'Yes', 'DevelopEarth100%', 'download.jpeg', 'img/download.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
