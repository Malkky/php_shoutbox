-- phpMyAdmin SQL Dump
-- version 4.5.3.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2016 at 08:44 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoutit`
--

-- --------------------------------------------------------

--
-- Table structure for table `shoutit`
--

CREATE TABLE `shoutit` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shoutit`
--

INSERT INTO `shoutit` (`id`, `name`, `message`, `time`) VALUES
(1, 'Brad', 'um dolor sit amet, consectetur adipiscing elit. In ullamcorper, magna ut elementum mattis, est lectus mollis neque, id faucibus nisi mi ac n', '10:30:32'),
(2, 'Tom', 'um dolor sit amet, consectetur adipiscing elit. In ullamcorper, magna ut elementum mattis, est lectus mollis neque, id faucibus nisi mi ac n', '10:33:13')


--
-- Indexes for dumped tables
--

--
-- Indexes for table `shoutit`
--
ALTER TABLE `shoutit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shoutit`
--
ALTER TABLE `shoutit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
