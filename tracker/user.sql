-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 14, 2022 at 07:19 AM
-- Server version: 10.3.37-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `publishe_hccampaign`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL,
  `team` varchar(15) NOT NULL,
  `role` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `team`, `role`) VALUES
(1, 'mohamed.s@hockeycurve.com', 'garud', 'Garud', 0),
(2, 'sapna.g@hockeycurve.com', 'nischay', 'Nischay', 0),
(3, 'vishwadeep.sonawale@hockeycurve.com', 'gati', 'Gati', 1),
(4, 'Amazon Prime', 'aprime', 'apv', 2),
(5, 'MPL', 'mpl', 'mpl', 2),
(6, 'jasmeet.singh@hockeycurve.com', 'garud', 'Garud', 0),
(7, 'mahesh.b@hockeycurve.com', 'nischay', 'Nischay', 0),
(8, 'mridul@hockeycurve.com', 'nischay', 'Nischay', 0),
(9, 'pavan.vichare@hockeycurve.com', 'garud', 'Garud', 0),
(10, 'pooja@hockeycurve.com', 'nischay', 'Nischay', 0),
(11, 'adithi@hockeycurve.com', 'nischay', 'Nischay', 0),
(12, 'aneeshk@hockeycurve.com', 'garud', 'Garud', 0),
(13, 'prathamesh.bhagwat@hockeycurve.com', 'garud', 'Garud', 0),
(14, 'nikhil.g@hockeycurve.com', 'garud', 'Garud', 0),
(15, 'nikita.d@hockeycurve.com', 'veena@', 'Veena', 3),
(16, 'siddhi.phalke@hockeycurve.com', 'veena@', 'Veena', 3),
(17, 'raj.p@hockeycurve.com', 'gati', 'Gati', 1),
(18, 'hariharanv@hockeycurve.com', 'veena@', 'Veena', 3),
(19, 'tejshwini@hockeycurve.com', 'veena@', 'Veena', 3),
(20, 'apowar@hockeycurve.com', 'veena@', 'Veena', 3),
(21, 'ninad.ganu@hockeycurve.com', 'veena@', 'Veena', 3),
(22, 'bavika@hockeycurve.com', 'veena@', 'Veena', 3),
(23, 'dinesh@hockeycurve.com', 'lakshay', 'Lakshay', 0),
(24, 'priya.rajput@hockeycurve.com', 'lakshay', 'Lakshay', 0),
(25, 'naved.chowdhary@hockeycurve.com', 'lakshay', 'Lakshay', 0),
(26, 'manish.madhavi@hockeycurve.com', 'lakshay', 'Lakshay', 0),
(27, 'tanishq', 'tanishq', 'tanishq', 2),
(28, 'shivam.singh@hockeycurve.com', 'lakshay', 'Lakshay', 0),
(29, 'shivam.singh@hockeycurve.com', 'gati', 'Gati', 1),
(30, 'aditya@hockeycurve.com', 'gati', 'Gati', 1),
(31, 'aditya@hockeycurve.com', 'lakshay', 'Lakshay', 0),
(32, 'sai@hockeycurve.com', 'lakshay', 'Lakshay', 0),
(33, 'sai@hockeycurve.com', 'gati', 'Gati', 1),
(34, 'sai@hockeycurve.com', 'veena@', 'Veena', 3),
(35, 'harsh@hockeycurve.com', 'veena@', 'Veena', 3),
(36, 'harsh@hockeycurve.com', 'gati', 'Gati', 1),
(37, 'harsh@hockeycurve.com', 'lakshay', 'Lakshay', 0),
(38, 'sravan@hockeycurve.com', 'lakshay', 'Lakshay', 0),
(39, 'sravan@hockeycurve.com', 'veena@', 'Veena', 3),
(40, 'sravan@hockeycurve.com', 'gati', 'Gati', 1),
(41, 'aditya@hockeycurve.com', 'veena@', 'Veena', 3),
(42, 'dinesh@hockeycurve.com', 'veena@', 'Veena', 3),
(43, 'dinesh@hockeycurve.com', 'gati', 'Gati', 1),
(44, 'shivam.singh@hockeycurve.com', 'veena@', 'Veena', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;