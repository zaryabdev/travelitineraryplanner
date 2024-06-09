-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2023 at 09:09 PM
-- Server version: 10.4.11-MariaDB
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
-- Database: `bonpedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `attractions`
--

CREATE TABLE `attractions` (
  `x_id` int(11) NOT NULL,
  `x_name` varchar(256) NOT NULL,
  `x_image_url` varchar(200) NOT NULL,
  `x_price` int(11) NOT NULL,
  `x_desc` varchar(256) NOT NULL,
  `x_reviews` varchar(500) NOT NULL,
  `x_rating` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attractions`
--
INSERT
	INTO
	`attractions` (`x_id`,
	`x_name`,
	`x_image_url`,
	`x_price`,
	`x_desc`,
	`x_reviews`,
	`x_rating`)
VALUES
(1,
'Sydney Opera House',
'https://images.unsplash.com/photo-1540448051910-09cfadd5df61?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
152,
'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing',
'514',
'4.5'),
(2,
'Sydney Harbour',
'https://images.unsplash.com/photo-1624138784614-87fd1b6528f8?q=80&w=1933&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
200,
'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing',
'312',
'4'),
(3,
'City Circle Tram',
'https://images.unsplash.com/photo-1570092735972-adecd9d48411?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
250,
'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing',
'212',
'4.5'),
(4,
'Kings Park and Botanic Garden',
'https://plus.unsplash.com/premium_photo-1680855302067-6aae0782e43c?q=80&w=1780&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
525,
'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing',
'302',
'4');
--
-- Indexes for dumped tables
--

--
-- Indexes for table `attractions`
--
ALTER TABLE `attractions`
  ADD PRIMARY KEY (`x_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attractions`
--
ALTER TABLE `attractions`
  MODIFY `x_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
