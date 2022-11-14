-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2022 at 12:51 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `hc_templates`
--

CREATE TABLE `hc_templates` (
  `sno` int(11) NOT NULL,
  `template` varchar(255) NOT NULL,
  `time_req_veena` int(100) NOT NULL,
  `time_req` int(100) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hc_templates`
--

INSERT INTO `hc_templates` (`sno`, `template`, `time_req_veena`, `time_req`, `type`) VALUES
(3, 'Swiper without feed', 5400, 10800, 'swiper'),
(4, 'Vertical Slider', 5400, 10800, 'carousel'),
(5, 'Rich Media', 5400, 10800, 'richMedia'),
(6, 'Countdown', 5400, 10800, 'timer'),
(7, 'Video Creatives', 5400, 10800, 'video'),
(8, 'CanvasFlip', 5400, 10800, 'flip'),
(9, 'Card flip without feed', 5400, 10800, 'flip'),
(10, 'Static Slider', 5400, 10800, 'carousel'),
(11, 'Vertical Auto Scroll', 5400, 10800, 'animation'),
(12, 'Time of the day - dynamic time only', 5400, 10800, 'dynamic'),
(13, 'Search based', 5400, 11700, 'search'),
(14, 'Carousel flip', 5400, 10800, 'carousel'),
(15, 'CTA flip', 5400, 10800, 'animation'),
(16, 'sensex/Nifty', 5400, 11700, 'api'),
(17, 'Dynamic city', 5400, 11700, 'dynamic'),
(18, 'Dropdown', 8100, 21600, 'interactive'),
(19, 'Feed Based Creative', 8100, 21600, 'feed'),
(20, 'New innovations', 10800, 259200, 'other'),
(21, '360 Degree carousel', 10800, 23400, 'carousel'),
(22, 'Swipe With Feed', 8100, 21600, 'feed'),
(23, 'Moment Marketing (Sports API)', 16200, 172800, 'api'),
(24, 'Conditional Countdown Timer', 8100, 86400, 'timer'),
(25, 'Time of the day - dynamic content', 8100, 86400, 'dynamic'),
(26, 'Weather', 8100, 86400, 'api'),
(27, 'Geo Location', 8100, 86400, 'geo'),
(28, 'Crypto', 10800, 129600, 'api'),
(29, 'Mutual Funds', 10800, 129600, 'interactive'),
(30, 'All Feed Based', 8100, 21600, 'feed'),
(31, 'All Reco Based', 8100, 21600, 'redo'),
(32, 'Video Moment Marketing', 9000, 86400, 'video'),
(34, 'Moment Marketing + Geo Location', 16200, 259200, 'feed'),
(35, 'Moment Marketing + Dynamic Products', 16200, 259200, 'feed+dynamic');

-- --------------------------------------------------------

--
-- Table structure for table `tracker_data`
--

CREATE TABLE `tracker_data` (
  `id` int(11) NOT NULL,
  `campaign_name` varchar(255) NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `agency_name` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL DEFAULT current_timestamp(),
  `start_date` datetime NOT NULL,
  `client_vertical` varchar(255) NOT NULL,
  `templates` varchar(500) NOT NULL,
  `time_left` int(255) NOT NULL,
  `tempmade` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tracker_data`
--

INSERT INTO `tracker_data` (`id`, `campaign_name`, `client_name`, `agency_name`, `create_time`, `start_date`, `client_vertical`, `templates`, `time_left`, `tempmade`) VALUES
(136, 'test123', 'tanishq', 'DBM', '2022-11-12 08:08:11', '2022-11-18 08:08:00', '', 'richMedia,', 518389, ' Rich Media ,'),
(137, 'jasmeet', 'mpl', '', '2022-11-12 08:08:42', '2022-11-19 08:08:00', '', 'carousel,', 604758, ' Static Slider ,'),
(138, 'fcat none test', 'tanishq', '', '2022-11-12 08:09:10', '2022-11-19 08:09:00', '', 'feed,', 604790, ' Moment Marketing + Geo Location ,'),
(139, 'jasmeet124', 'amazon prime video', 'DBM', '2022-11-12 08:29:34', '2022-11-26 08:29:00', '', 'richMedia,', 1209566, ' Rich Media ,'),
(140, 'demo ', 'tanishq', 'DBM', '2022-11-12 12:34:13', '2022-11-19 12:34:00', '', 'feed,', 604787, ' Moment Marketing + Geo Location ,');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `team`, `role`) VALUES
(1, 'mohamed.s@hockeycurve.com', 'garud', 'Garud', 0),
(2, 'sapna.g@hockeycurve.com', 'nischay', 'Nischay', 0),
(3, 'vishwadeep.sonawale@hockeycurve.com', 'gati', 'Gati', 1),
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

-- --------------------------------------------------------

--
-- Table structure for table `veena_team`
--

CREATE TABLE `veena_team` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `task` varchar(255) NOT NULL,
  `time` int(20) NOT NULL,
  `assets` varchar(255) NOT NULL,
  `mail_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `veena_team`
--

INSERT INTO `veena_team` (`id`, `name`, `task`, `time`, `assets`, `mail_id`) VALUES
(1, 'Hari', '', 0, '', 'hariharanv@hockeycurve.com'),
(2, 'Siddhi', 'demo ', 16200, '', 'siddhi.phalke@hockeycurve.com'),
(3, 'Amar', 'jasmeet124', 5400, '', 'apowar@hockeycurve.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hc_templates`
--
ALTER TABLE `hc_templates`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `tracker_data`
--
ALTER TABLE `tracker_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `veena_team`
--
ALTER TABLE `veena_team`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hc_templates`
--
ALTER TABLE `hc_templates`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tracker_data`
--
ALTER TABLE `tracker_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `veena_team`
--
ALTER TABLE `veena_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
