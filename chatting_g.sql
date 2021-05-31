-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2021 at 06:26 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatting_g`
--

-- --------------------------------------------------------

--
-- Table structure for table `conv`
--

CREATE TABLE `conv` (
  `id` int(11) NOT NULL,
  `user1` int(11) NOT NULL,
  `user2` int(11) NOT NULL,
  `status` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `conv`
--

INSERT INTO `conv` (`id`, `user1`, `user2`, `status`, `created_at`) VALUES
(1, 1, 1, '', '2021-05-30 16:19:20'),
(2, 2, 2, '', '2021-05-30 16:21:34'),
(3, 1, 2, '', '2021-05-30 16:22:22'),
(4, 3, 2, '', '2021-05-30 16:25:00'),
(5, 3, 1, '', '2021-05-30 16:25:20');

-- --------------------------------------------------------

--
-- Table structure for table `conv_reply`
--

CREATE TABLE `conv_reply` (
  `id` int(11) NOT NULL,
  `conv_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `conv_reply`
--

INSERT INTO `conv_reply` (`id`, `conv_id`, `user_id`, `content`, `status`, `created_at`) VALUES
(1, 1, 1, 'Hello', '', '2021-05-30 16:19:20'),
(2, 2, 2, 'hii', '', '2021-05-30 16:21:34'),
(3, 3, 1, 'Hii', 'seen', '2021-05-30 16:22:35'),
(4, 3, 2, 'Hii', 'seen', '2021-05-30 16:22:50'),
(5, 3, 2, 'heloo', 'seen', '2021-05-30 16:23:05'),
(6, 4, 3, 'hello', 'seen', '2021-05-31 04:14:04'),
(7, 5, 3, 'Hiii', 'seen', '2021-05-30 16:25:38'),
(8, 5, 1, '8989\r\nkk\r\nl', 'seen', '2021-05-30 16:25:58'),
(9, 5, 3, 'ko', 'seen', '2021-05-30 16:32:20'),
(10, 4, 3, 'hii', 'seen', '2021-05-31 04:14:04'),
(11, 5, 3, 'hhh', 'seen', '2021-05-30 16:32:20'),
(12, 5, 3, 'Hello', 'seen', '2021-05-30 16:51:06'),
(13, 5, 1, 'hii', '', '2021-05-30 17:04:37'),
(14, 5, 1, 'hii', '', '2021-05-30 17:07:37'),
(15, 5, 1, 'hi', '', '2021-05-30 17:07:57'),
(16, 3, 2, 'Hii', '', '2021-05-31 03:58:10'),
(17, 3, 2, 'Good morinig', '', '2021-05-31 03:58:19'),
(18, 3, 2, '', '', '2021-05-31 03:58:23'),
(19, 4, 2, 'hello', '', '2021-05-31 04:14:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `bio` text NOT NULL,
  `lastactive` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `bio`, `lastactive`, `status`, `created_at`) VALUES
(1, 'Deepak Sudam Ugale', 'ugale.deepak3010@gmail.com', 'Pass@123', 'I am Hero', '2021-05-31 04:22:14', 'offline', '2021-05-31 04:22:14'),
(2, 'Gayatri Deepak Sabade', 'gayatrisabade000@gmail.com', 'Pass@123', 'I am heroin', '2021-05-31 04:22:43', 'offline', '2021-05-31 04:22:43'),
(3, 'Akanksha Sanjay Shinde', 'akagshashinde@gmail.com', 'Pass@123', 'I am willon', '2021-05-31 04:20:40', 'offline', '2021-05-31 04:23:22'),
(4, 'manali nand rahngdale', 'manali@gmail.com', 'Pass@123', 'I am Powerful', '2021-05-31 04:25:14', '35', '2021-05-31 04:25:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conv`
--
ALTER TABLE `conv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conv_reply`
--
ALTER TABLE `conv_reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conv`
--
ALTER TABLE `conv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `conv_reply`
--
ALTER TABLE `conv_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
