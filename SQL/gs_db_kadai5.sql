-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2024 at 02:53 PM
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
-- Database: `gs_db_kadai5`
--

-- --------------------------------------------------------

--
-- Table structure for table `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `country` varchar(64) NOT NULL,
  `start` date NOT NULL DEFAULT '1900-01-01',
  `end` date NOT NULL DEFAULT '1900-01-01',
  `url` text NOT NULL,
  `image` varchar(256) NOT NULL,
  `rate` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `country`, `start`, `end`, `url`, `image`, `rate`, `comment`, `date`) VALUES
(20, 'Cuba', '2006-12-11', '2006-12-25', '{\"lat\":21.521757,\"lng\":-77.781167}', 'img/20/66b9bf31107a8.jpg', 4, '', '2024-08-11 12:28:10'),
(22, 'Nepal', '2017-08-26', '2017-09-03', '{\"lat\":28.394857,\"lng\":84.12400799999999}', '', 2, '', '2024-08-11 12:32:20'),
(25, 'Brazil', '2020-03-05', '2020-03-07', '{\"lat\":-14.235004,\"lng\":-51.92528}', '', 3, '', '2024-08-12 00:20:49'),
(26, 'Bangladesh', '2019-08-18', '2019-08-25', '{\"lat\":23.684994,\"lng\":90.356331}', '', 2, '', '2024-08-12 00:23:22'),
(27, 'Mexico', '2017-02-27', '2017-03-05', '{\"lat\":23.634501,\"lng\":-102.552784}', '', 3, '', '2024-08-12 00:32:06'),
(29, 'Spain', '2019-02-16', '2019-02-24', '{\"lat\":40.46366700000001,\"lng\":-3.74922}', 'img/29/66b9bdfa6353d.JPG', 4, '', '2024-08-12 13:07:24');

-- --------------------------------------------------------

--
-- Table structure for table `gs_done_table`
--

CREATE TABLE `gs_done_table` (
  `id` int(12) NOT NULL,
  `country` varchar(64) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `photo` varchar(2083) NOT NULL,
  `comment` text NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gs_user_table`
--

CREATE TABLE `gs_user_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) NOT NULL,
  `lid` varchar(128) NOT NULL,
  `lpw` varchar(64) NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gs_user_table`
--

INSERT INTO `gs_user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(1, 'テスト１管理者', 'test1', 'test1', 1, 0),
(2, 'テスト2一般', 'test2', 'test2', 0, 0),
(3, 'テスト333', 'test3', 'test3', 0, 0),
(4, 'test4', 'test44', 'test444', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_done_table`
--
ALTER TABLE `gs_done_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_user_table`
--
ALTER TABLE `gs_user_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `gs_done_table`
--
ALTER TABLE `gs_done_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gs_user_table`
--
ALTER TABLE `gs_user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
