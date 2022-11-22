-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2022 at 08:40 AM
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
-- Table structure for table `assign_task`
--

CREATE TABLE `assign_task` (
  `id` int(11) NOT NULL,
  `task_name` varchar(255) NOT NULL,
  `temp_tbd` varchar(255) NOT NULL DEFAULT '0',
  `assign_to` varchar(255) NOT NULL,
  `time_v` int(255) NOT NULL,
  `deviation_v` int(255) NOT NULL,
  `status_v` int(11) NOT NULL DEFAULT 0,
  `member` varchar(255) NOT NULL,
  `assign_time` datetime NOT NULL,
  `assets` varchar(255) NOT NULL,
  `previews` varchar(255) NOT NULL,
  `adtags` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assign_task`
--

INSERT INTO `assign_task` (`id`, `task_name`, `temp_tbd`, `assign_to`, `time_v`, `deviation_v`, `status_v`, `member`, `assign_time`, `assets`, `previews`, `adtags`) VALUES
(139, 'test for nischay', 'All Feed Based', 'Nischay', 8100, 0, 0, '', '2022-11-22 11:10:11', '', '', ''),
(140, 'fcat none test', 'Rich Media', 'Garud', 5400, 0, 1, '', '2022-11-22 11:12:27', '', '', ''),
(141, 'demo title', 'Swiper without feed', 'Veena', 5400, 0, 2, 'Siddhi', '2022-11-22 11:14:41', 'test 2', '', ''),
(142, 'demo title', 'Vertical Slider', 'Veena', 5400, 0, 2, 'Siddhi', '2022-11-22 11:17:29', 'jsdasadas', '', ''),
(143, 'demo title', 'Rich Media', 'Veena', 5400, 0, 2, 'Nikhil', '2022-11-22 12:50:44', 'test 5', 'mahesh ', 'saleem'),
(144, 'demo title', 'Swiper without feed', 'Garud', 5400, 0, 1, '', '2022-11-22 11:17:22', '', '', ''),
(145, 'demo title', 'Vertical Slider', 'Garud', 5400, 0, 1, '', '2022-11-22 11:22:58', '', '', ''),
(146, 'fcat none test-Rich Media', '', '', 0, 0, 0, '', '2022-11-22 12:04:29', '', '', ''),
(147, '', '', 'Gati', 0, 0, 0, '', '2022-11-22 12:06:03', '', '', ''),
(148, 'demo title-Swiper without feed', '', 'Gati', 0, 0, 0, '', '2022-11-22 12:49:00', '', '', ''),
(149, 'demo title-Vertical Slider', '', 'Gati', 0, 0, 0, '', '2022-11-22 12:49:34', '', '', ''),
(150, 'demo title', 'Rich Media', 'Garud', 5400, 0, 2, 'Nikhil', '2022-11-22 12:50:44', '', 'mahesh ', 'saleem'),
(151, 'demo title', 'Rich Media', 'Gati', 5400, 0, 0, '', '2022-11-22 12:50:54', '', '', ''),
(152, 'mahesh test', 'Swiper without feed', 'Veena', 5400, 0, 2, 'Nikhil', '2022-11-22 12:55:47', 'asset link', 'preview', 'adtags'),
(153, 'mahesh test', 'Vertical Slider', 'Veena', 5400, 0, 2, 'Siddhi', '2022-11-22 13:01:21', 'assets', '', ''),
(154, 'mahesh test', 'Rich Media', 'Veena', 5400, 0, 1, '', '0000-00-00 00:00:00', '', '', ''),
(155, 'mahesh test', '360 Degree carousel', 'Veena', 10800, 0, 0, '', '0000-00-00 00:00:00', '', '', ''),
(156, 'mahesh test', 'Swiper without feed', 'Garud', 5400, 0, 2, 'Nikhil', '2022-11-22 12:55:47', '', 'preview', 'adtags'),
(157, 'mahesh test', 'Swiper without feed', 'Gati', 5400, 0, 0, '', '2022-11-22 12:56:06', '', '', ''),
(158, 'mahesh test', 'Vertical Slider', 'Garud', 5400, 0, 1, '', '2022-11-22 13:01:29', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `garud_team`
--

CREATE TABLE `garud_team` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `task` varchar(255) NOT NULL,
  `time` int(20) NOT NULL,
  `mail_id` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `assign_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `garud_team`
--

INSERT INTO `garud_team` (`id`, `name`, `task`, `time`, `mail_id`, `status`, `assign_time`) VALUES
(11, 'Nikhil', 'mahesh test--Vertical Slider', 5400, 'nikhil.g@hockeycurve.com', 1, '2022-11-22 07:35:45');

-- --------------------------------------------------------

--
-- Table structure for table `hc_templates`
--

CREATE TABLE `hc_templates` (
  `sno` int(11) NOT NULL,
  `template` varchar(255) NOT NULL,
  `time_req_veena` int(100) NOT NULL,
  `time_req` int(100) NOT NULL,
  `type` varchar(255) NOT NULL,
  `development_assign` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hc_templates`
--

INSERT INTO `hc_templates` (`sno`, `template`, `time_req_veena`, `time_req`, `type`, `development_assign`) VALUES
(3, 'Swiper without feed', 5400, 10800, 'swiper', 'Garud'),
(4, 'Vertical Slider', 5400, 10800, 'carousel', 'Garud'),
(5, 'Rich Media', 5400, 10800, 'richMedia', 'Garud'),
(6, 'Countdown', 5400, 10800, 'timer', 'Garud'),
(7, 'Video Creatives', 5400, 10800, 'video', 'Garud'),
(8, 'CanvasFlip', 5400, 10800, 'flip', 'Garud'),
(9, 'Card flip without feed', 5400, 10800, 'flip', 'Garud'),
(10, 'Static Slider', 5400, 10800, 'carousel', 'Garud'),
(11, 'Vertical Auto Scroll', 5400, 10800, 'animation', 'Garud'),
(12, 'Time of the day - dynamic time only', 5400, 10800, 'dynamic', 'Garud'),
(13, 'Search based', 5400, 11700, 'search', 'Garud'),
(14, 'Carousel flip', 5400, 10800, 'carousel', 'Garud'),
(15, 'CTA flip', 5400, 10800, 'animation', 'Garud'),
(16, 'sensex/Nifty', 5400, 11700, 'api', 'Nischay'),
(17, 'Dynamic city', 5400, 11700, 'dynamic', 'Garud'),
(18, 'Dropdown', 8100, 21600, 'interactive', 'Garud'),
(19, 'Feed Based Creative', 8100, 21600, 'feed', 'Nischay'),
(20, 'New innovations', 10800, 259200, 'other', 'Nischay'),
(21, '360 Degree carousel', 10800, 23400, 'carousel', 'Nischay'),
(22, 'Swipe With Feed', 8100, 21600, 'feed', 'Nischay'),
(23, 'Moment Marketing (Sports API)', 16200, 172800, 'api', 'Nischay'),
(24, 'Conditional Countdown Timer', 8100, 86400, 'timer', 'Nischay'),
(25, 'Time of the day - dynamic content', 8100, 86400, 'dynamic', 'Nischay'),
(26, 'Weather', 8100, 86400, 'api', 'Garud'),
(27, 'Geo Location', 8100, 86400, 'geo', 'Garud'),
(28, 'Crypto', 10800, 129600, 'api', 'Nischay'),
(29, 'Mutual Funds', 10800, 129600, 'interactive', 'Nischay'),
(30, 'All Feed Based', 8100, 21600, 'feed', 'Nischay'),
(31, 'All Reco Based', 8100, 21600, 'redo', 'Nischay'),
(32, 'Video Moment Marketing', 9000, 86400, 'video', 'Nischay'),
(34, 'Moment Marketing + Geo Location', 16200, 259200, 'feed', 'Nischay'),
(35, 'Moment Marketing + Dynamic Products', 16200, 259200, 'feed+dynamic', 'Nischay');

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
(161, 'demo title', 'amazon prime video', '', '2022-11-22 11:13:58', '2022-12-10 11:13:00', '', 'swiper,carousel,richMedia,', 1555142, 'Swiper without feed,Vertical Slider,Rich Media,'),
(162, 'mahesh test', 'amazon prime video', '', '2022-11-22 12:52:41', '2022-12-10 12:52:00', '', 'swiper,carousel,richMedia,', 1555159, 'Swiper without feed,Vertical Slider,Rich Media,360 Degree carousel,');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL,
  `team` varchar(15) NOT NULL,
  `role` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `team`, `role`) VALUES
(1, 'Mohamed', 'mohamed.s@hockeycurve.com', 'garud', 'Garud', 3),
(2, 'Sapna', 'sapna.g@hockeycurve.com', 'nischay', 'Nischay', 5),
(3, 'Vishwadeep', 'vishwadeep.sonawale@hockeycurve.com', 'gati', 'Gati', 0),
(6, 'Jasmeet', 'jasmeet.singh@hockeycurve.com', 'garud', 'Garud', 3),
(7, 'Mahesh', 'mahesh.b@hockeycurve.com', 'nischay', 'Nischay', 5),
(9, 'Pavan', 'pavan.vichare@hockeycurve.com', 'garud', 'Garud', 3),
(10, 'Pooja', 'pooja@hockeycurve.com', 'nischay', 'Nischay', 5),
(11, 'Adithi', 'adithi@hockeycurve.com', 'nischay', 'Nischay', 6),
(13, 'Prathamesh', 'prathamesh.bhagwat@hockeycurve.com', 'garud', 'Garud', 3),
(14, 'Nikhil', 'nikhil.g@hockeycurve.com', 'garud', 'Garud', 4),
(15, 'Nikita', 'nikita.d@hockeycurve.com', 'veena', 'Veena', 1),
(16, 'Siddhi', 'siddhi.phalke@hockeycurve.com', 'veena', 'Veena', 2),
(17, 'Raj', 'raj.p@hockeycurve.com', 'gati', 'Gati', 0),
(18, 'Hariharan', 'hariharanv@hockeycurve.com', 'veena', 'Veena', 1),
(19, 'Tejshwini', 'tejshwini@hockeycurve.com', 'veena', 'Veena', 1),
(20, 'Amar', 'apowar@hockeycurve.com', 'veena', 'Veena', 1),
(21, 'Ninad', 'ninad.ganu@hockeycurve.com', 'veena', 'Veena', 1),
(22, 'Bavika', 'bavika@hockeycurve.com', 'veena', 'Veena', 1),
(23, 'Dinesh', 'dinesh@hockeycurve.com', 'admin', 'Lakshya', 9),
(24, 'Priya', 'priya.rajput@hockeycurve.com', 'admin', 'Lakshya', 9),
(25, 'Naved', 'naved.chowdhary@hockeycurve.com', 'lakshya', 'Lakshya', 7),
(26, 'Manish', 'manish.madhavi@hockeycurve.com', 'lakshya', 'Lakshya', 7),
(29, 'Shivam', 'shivam.singh@hockeycurve.com', 'admin', 'Gati', 9),
(30, 'Aditya', 'aditya@hockeycurve.com', 'admin', 'Gati', 9),
(32, 'Sai', 'sai@hockeycurve.com', 'admin', 'Lakshya', 9),
(37, 'Harsh', 'harsh@hockeycurve.com', 'admin', 'Lakshya', 9),
(38, 'Sravan', 'sravan@hockeycurve.com', 'admin', 'Lakshya', 9),
(45, 'Rajeshri', 'rajeshri@hockeycurve.com', 'admin', 'HR', 9);

-- --------------------------------------------------------

--
-- Table structure for table `veena_team`
--

CREATE TABLE `veena_team` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `task` varchar(255) NOT NULL,
  `time` int(20) NOT NULL,
  `mail_id` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `assign_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deviation` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `veena_team`
--

INSERT INTO `veena_team` (`id`, `name`, `task`, `time`, `mail_id`, `status`, `assign_time`, `deviation`) VALUES
(53, 'Ninad', 'fcat none test--Countdown', 5400, 'ninad.ganu@hockeycurve.com', 0, '2022-11-19 06:23:52', 0),
(63, 'Siddhi', 'mahesh test--Rich Media', 5400, 'siddhi.phalke@hockeycurve.com', 0, '2022-11-22 07:31:13', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assign_task`
--
ALTER TABLE `assign_task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `garud_team`
--
ALTER TABLE `garud_team`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `assign_task`
--
ALTER TABLE `assign_task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `garud_team`
--
ALTER TABLE `garud_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `hc_templates`
--
ALTER TABLE `hc_templates`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tracker_data`
--
ALTER TABLE `tracker_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `veena_team`
--
ALTER TABLE `veena_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
