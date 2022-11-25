-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2022 at 06:46 AM
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
(162, 'title-5', 'Swiper without feed', 'Veena', 5400, 0, 2, 'Siddhi', '2022-11-25 02:05:07', 'https://www.dropbox.com/scl/fo/ociy3x9svll1jkonztmca/h?dl=0&rlkey=squ2g58vbd5pndzscmkmbwhyp', '', ''),
(163, 'title-5', 'Vertical Slider', 'Veena', 5400, 0, 2, 'Siddhi', '2022-11-25 02:24:28', 'test 5', '', ''),
(164, 'title-5', 'Rich Media', 'Veena', 5400, 0, 2, 'Siddhi', '2022-11-25 02:33:40', 'https://www.dropbox.com/scl/fo/ociy3x9svll1jkonztmca/h?dl=0&rlkey=squ2g58vbd5pndzscmkmbwhyp', '', ''),
(165, 'title-5', 'Swiper without feed', 'Garud', 5400, 0, 2, 'Nikhil', '2022-11-25 02:06:23', 'https://www.dropbox.com/scl/fo/ociy3x9svll1jkonztmca/h?dl=0&rlkey=squ2g58vbd5pndzscmkmbwhyp', 'https://publisherplex.io/Adtag/previews.php?id=547', 'https://publisherplex.io/Adtag/adtags.php?id=547'),
(166, 'title-5', 'Swiper without feed', 'Gati', 5400, 0, 0, '', '2022-11-25 02:19:58', '', 'https://publisherplex.io/Adtag/previews.php?id=547', 'https://publisherplex.io/Adtag/adtags.php?id=547'),
(167, 'title-5', 'Vertical Slider', 'Garud', 4320, 0, 2, 'Nikhil', '2022-11-25 02:25:03', 'test 5', 'https://publisherplex.io/Adtag/previews.php?id=548', 'https://publisherplex.io/Adtag/adtags.php?id=548'),
(168, 'title-5', 'Vertical Slider', 'Gati', 5400, 0, 0, '', '2022-11-25 02:25:42', '', 'https://publisherplex.io/Adtag/previews.php?id=548', 'https://publisherplex.io/Adtag/adtags.php?id=548'),
(169, 'title-5', 'Rich Media', 'Garud', 4320, 0, 1, '', '2022-11-25 02:33:44', 'https://www.dropbox.com/scl/fo/ociy3x9svll1jkonztmca/h?dl=0&rlkey=squ2g58vbd5pndzscmkmbwhyp', '', ''),
(170, 'task for nischay', 'Moment Marketing + Geo Location', 'Veena', 16200, 0, 2, 'Siddhi', '2022-11-25 02:57:06', 'https://www.dropbox.com/scl/fo/ociy3x9svll1jkonztmca/h?dl=0&rlkey=squ2g58vbd5pndzscmkmbwhyp', '', ''),
(173, 'veena test', 'All Reco Based', 'Veena', 8100, 0, 2, 'Siddhi', '2022-11-25 03:21:32', 'https://www.dropbox.com/scl/fo/ociy3x9svll1jkonztmca/h?dl=0&rlkey=squ2g58vbd5pndzscmkmbwhyp', '', ''),
(174, 'veena test', 'Moment Marketing + Geo Location', 'Veena', 16200, 0, 2, 'Siddhi', '2022-11-25 03:21:27', 'https://www.dropbox.com/scl/fo/ociy3x9svll1jkonztmca/h?dl=0&rlkey=squ2g58vbd5pndzscmkmbwhyp', '', ''),
(175, 'veena test', 'Moment Marketing + Dynamic Products', 'Veena', 16200, 0, 2, 'Siddhi', '2022-11-25 03:18:32', 'https://www.dropbox.com/scl/fo/ociy3x9svll1jkonztmca/h?dl=0&rlkey=squ2g58vbd5pndzscmkmbwhyp', '', ''),
(176, 'veena test', 'Moment Marketing + Dynamic Products', 'Nischay', 93600, 0, 2, 'Adithi', '2022-11-25 03:22:06', 'https://www.dropbox.com/scl/fo/ociy3x9svll1jkonztmca/h?dl=0&rlkey=squ2g58vbd5pndzscmkmbwhyp', 'https://publisherplex.io/Adtag/previews.php?id=547', 'https://publisherplex.io/hockeycurve/adtag/tagpage.php?id=2643'),
(178, 'veena test', 'Moment Marketing + Geo Location', 'Nischay', 18800, 0, 0, '', '2022-11-25 03:21:30', 'https://www.dropbox.com/scl/fo/ociy3x9svll1jkonztmca/h?dl=0&rlkey=squ2g58vbd5pndzscmkmbwhyp', '', ''),
(179, 'veena test', 'All Reco Based', 'Nischay', 10800, 0, 0, '', '2022-11-25 03:21:36', 'https://www.dropbox.com/scl/fo/ociy3x9svll1jkonztmca/h?dl=0&rlkey=squ2g58vbd5pndzscmkmbwhyp', '', ''),
(180, 'veena test', 'Moment Marketing + Dynamic Products', 'Gati', 900, 0, 0, '', '2022-11-25 03:22:18', '', 'https://publisherplex.io/Adtag/previews.php?id=547', 'https://publisherplex.io/hockeycurve/adtag/tagpage.php?id=2643');

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
(15, 'Nikhil', 'title-5--Rich Media', 4320, 'nikhil.g@hockeycurve.com', 1, '2022-11-24 21:04:38');

-- --------------------------------------------------------

--
-- Table structure for table `hc_templates`
--

CREATE TABLE `hc_templates` (
  `sno` int(11) NOT NULL,
  `template` varchar(255) NOT NULL,
  `time_req_veena` int(100) NOT NULL,
  `time_req_dev` int(11) NOT NULL,
  `time_req` int(100) NOT NULL,
  `type` varchar(255) NOT NULL,
  `development_assign` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hc_templates`
--

INSERT INTO `hc_templates` (`sno`, `template`, `time_req_veena`, `time_req_dev`, `time_req`, `type`, `development_assign`) VALUES
(3, 'Swiper without feed', 5400, 4320, 10800, 'swiper', 'Garud'),
(4, 'Vertical Slider', 5400, 4320, 10800, 'carousel', 'Garud'),
(5, 'Rich Media', 5400, 4320, 10800, 'richMedia', 'Garud'),
(6, 'Countdown', 5400, 4320, 10800, 'timer', 'Garud'),
(7, 'Video Creatives', 5400, 4320, 10800, 'video', 'Garud'),
(8, 'CanvasFlip', 5400, 4320, 10800, 'flip', 'Garud'),
(9, 'Card flip without feed', 5400, 4320, 10800, 'flip', 'Garud'),
(10, 'Static Slider', 5400, 4320, 10800, 'carousel', 'Garud'),
(11, 'Vertical Auto Scroll', 5400, 4320, 10800, 'animation', 'Garud'),
(12, 'Time of the day - dynamic time only', 5400, 4320, 10800, 'dynamic', 'Garud'),
(13, 'Search based', 5400, 4860, 11700, 'search', 'Garud'),
(14, 'Carousel flip', 5400, 4320, 10800, 'carousel', 'Garud'),
(15, 'CTA flip', 5400, 4320, 10800, 'animation', 'Garud'),
(16, 'sensex/Nifty', 5400, 4860, 11700, 'api', 'Nischay'),
(17, 'Dynamic city', 5400, 4860, 11700, 'dynamic', 'Garud'),
(18, 'Dropdown', 8100, 10800, 21600, 'interactive', 'Garud'),
(19, 'Feed Based Creative', 8100, 10800, 21600, 'feed', 'Nischay'),
(20, 'New innovations', 10800, 180000, 259200, 'other', 'Nischay'),
(21, '360 Degree carousel', 10800, 10800, 23400, 'carousel', 'Nischay'),
(22, 'Swipe With Feed', 8100, 10800, 21600, 'feed', 'Nischay'),
(23, 'Moment Marketing (Sports API)', 16200, 93600, 172800, 'api', 'Nischay'),
(24, 'Conditional Countdown Timer', 8100, 15300, 86400, 'timer', 'Nischay'),
(25, 'Time of the day - dynamic content', 8100, 15300, 86400, 'dynamic', 'Nischay'),
(26, 'Weather', 8100, 15300, 86400, 'api', 'Garud'),
(27, 'Geo Location', 8100, 15300, 86400, 'geo', 'Garud'),
(28, 'Crypto', 10800, 18900, 129600, 'api', 'Nischay'),
(29, 'Mutual Funds', 10800, 18900, 129600, 'interactive', 'Nischay'),
(30, 'All Feed Based', 8100, 10800, 21600, 'feed', 'Nischay'),
(31, 'All Reco Based', 8100, 10800, 21600, 'redo', 'Nischay'),
(32, 'Video Moment Marketing', 9000, 10800, 86400, 'video', 'Nischay'),
(34, 'Moment Marketing + Geo Location', 16200, 18800, 259200, 'feed', 'Nischay'),
(35, 'Moment Marketing + Dynamic Products', 16200, 93600, 259200, 'feed+dynamic', 'Nischay');

-- --------------------------------------------------------

--
-- Table structure for table `nischay_team`
--

CREATE TABLE `nischay_team` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `task` varchar(255) NOT NULL,
  `time` int(20) NOT NULL,
  `mail_id` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `assign_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(163, 'title-5', 'amazon prime video', '', '2022-11-25 02:03:51', '2022-12-10 02:03:00', '', 'swiper,carousel,richMedia,timer,', 1295949, 'Swiper without feed,Vertical Slider,Rich Media,'),
(164, 'task for nischay', 'singh', '', '2022-11-25 02:56:29', '2022-12-10 02:56:00', '', 'feed,', 1295971, 'Moment Marketing + Geo Location,'),
(165, 'veena test', 'singh', '', '2022-11-25 03:17:04', '2023-01-07 03:16:00', '', 'swiper,flip,other,geo,redo,feed+dynamic,', 3715136, 'All Reco Based,Moment Marketing + Geo Location,Moment Marketing + Dynamic Products,');

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
-- Indexes for table `nischay_team`
--
ALTER TABLE `nischay_team`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `garud_team`
--
ALTER TABLE `garud_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `hc_templates`
--
ALTER TABLE `hc_templates`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `nischay_team`
--
ALTER TABLE `nischay_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tracker_data`
--
ALTER TABLE `tracker_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `veena_team`
--
ALTER TABLE `veena_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
