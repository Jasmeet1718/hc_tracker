-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2022 at 12:14 PM
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
(63, '', '', '', '2022-11-01 17:22:43', '2022-11-03 00:00:00', '', 'Rich media,Interactive,API,', 172800, ''),
(64, 'demo title', 'Aprimeauto', 'DBM', '2022-11-01 17:22:43', '2022-11-03 00:00:00', 'jasmeet', 'Rich media,Interactive,API,', 172800, ''),
(65, '', '', '', '2022-11-01 17:22:43', '2022-11-02 00:00:00', '', 'Rich media,Interactive,API,', 86400, ''),
(66, '', '', '', '2022-11-01 17:22:43', '2022-11-04 00:00:00', '', '', 259200, ''),
(67, 'APV-lord of the rings', 'Aprimeauto', 'DBM', '2022-11-01 17:22:43', '2022-11-03 00:00:00', 'jasmeet', 'Rich media,Interactive,API,', 172800, ''),
(68, 'APV-lord of the rings', 'Aprimeauto', 'DBM', '2022-11-01 17:22:43', '2022-11-10 00:00:00', 'jasmeet', 'Rich media,', 777600, ''),
(69, 'APV demo ', 'jasmeet', 'DBM', '2022-11-01 17:22:43', '2022-11-02 00:00:00', 'abc', 'Rich media,Interactive,', 86400, ''),
(70, '', '', '', '2022-11-01 17:22:43', '2022-11-03 00:00:00', '', '', 172800, ''),
(71, '', '', '', '2022-11-01 17:22:43', '2022-11-02 00:00:00', '', '', 134220, ''),
(72, '', '', '', '2022-11-01 17:22:43', '2022-11-02 01:19:00', '', '', 91140, ''),
(73, '', '', '', '2022-11-01 17:23:21', '2022-11-01 17:28:00', '', '', 99, ''),
(74, '', '', '', '2022-11-01 17:33:08', '2022-11-01 17:34:00', '', '', 52, ''),
(75, '', '', '', '2022-11-01 17:41:11', '2022-11-01 17:42:00', '', 'API,', 49, ''),
(76, '', '', '', '2022-11-01 17:51:11', '2022-11-01 17:53:00', '', 'Rich media,', 109, ''),
(77, '', '', '', '2022-11-01 18:03:37', '2022-11-05 18:03:00', '', '', 345563, ''),
(78, '', '', '', '2022-11-02 11:14:42', '2022-11-02 11:30:00', '', 'Rich media,', 918, ''),
(79, 'fcat none test', 'Aprimeauto', 'DBM', '2022-11-02 11:27:00', '2022-11-03 14:30:00', '', 'Rich media,', 97380, ''),
(80, '', '', '', '2022-11-02 13:22:43', '2022-11-02 13:25:00', '', '', 137, ''),
(81, '', '', '', '2022-11-02 15:45:22', '2022-11-02 18:50:00', '', 'richMedia,interactive,', 11078, ''),
(82, '', '', '', '2022-11-02 17:02:29', '2022-11-02 20:05:00', '', 'richMedia,interactive,', 10951, ' Rich media ,'),
(83, 'demo title', 'Aprimeauto', 'DBM', '2022-11-02 17:52:03', '2022-11-02 20:59:00', 'jasmeet', 'richMedia,interactive,', 11217, ' Rich media ,'),
(84, '', '', '', '2022-11-02 18:01:17', '2022-11-02 23:55:00', '', 'richMedia,interactive,', 21223, ' Carousel , swiper ,'),
(85, 'APV-lord of the rings', 'Aprimeauto', 'DBM', '2022-11-02 18:18:06', '2022-11-03 14:12:00', 'jasmeet', 'richMedia,interactive,', 71634, ' swiper ,'),
(86, '', '', '', '2022-11-03 11:22:28', '2022-11-03 16:07:00', '', 'richMedia,search,swiper,timer,', 17072, ''),
(87, '', '', '', '2022-11-03 11:27:34', '2022-11-05 16:23:00', '', 'dynamic,feed+dynamic,flip,geo,interactive,other,redo,richMedia,', 190526, ' Swipe With Feed , Time of the day - dynamic content , All Feed Based , All Reco Based ,'),
(88, '', '', '', '2022-11-03 11:47:02', '2022-11-03 15:43:00', '', 'carousel,richMedia,video,flip,other,', 14158, ''),
(89, '', '', '', '2022-11-03 12:03:51', '2022-11-06 15:31:00', '', 'swiper,carousel,richMedia,video,flip,animation,dynamic,search,api,interactive,feed,other,timer,geo,redo,feed+dynamic,', 271629, ' Card flip without feed , Static Slider , Vertical Auto Scroll , Time of the day - dynamic time only , Carousel flip , sensex/Nifty ,'),
(90, '', '', '', '2022-11-03 12:26:22', '2022-11-03 17:26:00', '', '', 17978, ''),
(91, '', '', '', '2022-11-03 12:32:28', '2022-11-03 17:32:00', '', 'swiper,carousel,richMedia,', 17972, ''),
(92, '', '', '', '2022-11-03 12:36:25', '2022-11-03 17:41:00', '', 'swiper,carousel,richMedia,video,flip,animation,dynamic,search,api,interactive,feed,other,timer,geo,redo,feed+dynamic,', 18275, ''),
(93, '', '', '', '2022-11-03 13:43:10', '2022-11-04 13:43:00', '', '', 86390, ''),
(94, '', '', '', '2022-11-03 13:43:23', '2022-11-05 13:43:00', '', 'swiper,', 172777, ''),
(95, '', '', '', '2022-11-03 16:52:50', '2022-11-04 00:00:00', '', 'swiper,dynamic,search,', 25630, ' Time of the day - dynamic time only , Dynamic city ,'),
(96, 'tanishq pujo', 'tanishq', 'DBM', '2022-11-03 16:58:19', '2022-11-05 17:00:00', '', 'swiper,richMedia,video,flip,geo,', 172901, ' Swiper without feed , Video Creatives , Canvas Flip , Card flip without feed ,'),
(97, '', '', '', '2022-11-03 17:02:31', '2022-11-30 17:01:00', '', 'swiper,carousel,richMedia,video,flip,animation,dynamic,search,api,interactive,feed,other,timer,geo,redo,feed+dynamic,', 2332709, ' Canvas Flip , Card flip without feed , Time of the day - dynamic time only , Dynamic city , Feed Based Creative , Swipe With Feed , Time of the day - dynamic content , All Feed Based , Moment Marketing + Geo Location ,'),
(98, '', '', '', '2022-11-03 17:05:58', '2022-11-04 17:05:00', '', 'swiper,carousel,richMedia,', 86342, ' Swiper without feed , Vertical Slider , Rich Media , Countdown , Static Slider , Carousel flip , 360 Degree carousel ,'),
(99, '', '', '', '2022-11-03 17:16:53', '2022-11-04 17:16:00', '', 'carousel,richMedia,video,animation,', 86347, ' Vertical Slider , Rich Media , Countdown , Video Creatives , Static Slider , Vertical Auto Scroll , Carousel flip , CTA flip , 360 Degree carousel ,'),
(100, '', '', '', '2022-11-03 17:31:37', '2022-11-07 17:29:00', '', 'swiper,carousel,richMedia,timer,video,flip,animation,dynamic,search,api,interactive,feed,other,geo,redo,feed+dynamic,', 345443, ' Swiper without feed , Vertical Slider , Rich Media , Countdown , Video Creatives , Canvas Flip , Card flip without feed , Static Slider , Vertical Auto Scroll , Time of the day - dynamic time only , Search based , Carousel flip , CTA flip , sensex/Nifty , Dynamic city , Dropdown , Feed Based Creative , New innovations , 360 Degree carousel , Swipe With Feed , Moment Marketing (Sports API) , Conditional Countdown Timer , Time of the day - dynamic content , Weather , Geo Location , Crypto , Mutual Funds , All Feed Based , All Reco Based , Video Moment Marketing , Moment Marketing + Geo Location , Moment Marketing + Dynamic Products ,'),
(101, '', '', '', '2022-11-03 17:45:09', '2022-11-05 17:29:00', '', 'swiper,carousel,richMedia,timer,video,flip,animation,dynamic,search,api,interactive,feed,other,geo,redo,feed+dynamic,', 171832, ''),
(102, 'demo title', 'Aprimeauto', 'DBM', '2022-11-09 15:06:30', '2022-11-10 16:06:00', 'jasmeet', 'richMedia,', 89970, ' Rich Media ,'),
(103, 'demo title', '', '', '2022-11-10 11:42:18', '2022-11-10 18:15:00', '', 'swiper,richMedia,', 23562, ' Swiper without feed , Rich Media ,'),
(104, 'demo title', 'Aprimeauto', 'DBM', '2022-11-10 12:59:19', '2022-11-10 17:59:00', '', 'timer,', 17981, ' Countdown ,'),
(105, 'demo title', 'Aprimeauto', 'DBM', '2022-11-10 13:26:28', '2022-11-11 17:26:00', '', 'swiper,', 100772, ' Swiper without feed ,'),
(106, 'demo title', '', '', '2022-11-10 18:24:48', '2022-11-18 21:24:00', '', '', 701952, ''),
(107, 'TEST 134', '', '', '2022-11-10 18:33:41', '2022-12-01 18:33:00', '', 'carousel,', 1814359, ' Vertical Slider , Static Slider , Carousel flip , 360 Degree carousel ,'),
(108, 'APV-lord of the rings', 'Aprimeauto', 'DBM', '2022-11-10 18:48:46', '2022-11-11 20:48:00', 'jasmeet', 'richMedia,', 93554, ' Rich Media ,'),
(109, 'title-2', 'Aprimeauto', 'DBM', '2022-11-10 20:15:33', '2022-12-01 20:15:00', '', 'richMedia,', 1814367, ' Rich Media ,'),
(110, 'APV-lord of the rings', '', '', '2022-11-10 20:17:43', '2022-11-12 20:17:00', '', 'swiper,carousel,richMedia,', 172757, ' Swiper without feed , Vertical Slider , Rich Media , Static Slider , Carousel flip , 360 Degree carousel ,'),
(111, 'APV-lord of the rings', 'aprimeauto', '', '2022-11-10 20:20:09', '2022-11-12 20:20:00', '', 'richMedia,', 172791, ' Rich Media ,'),
(112, 'MPL', 'mpl', 'HC', '2022-11-11 10:29:12', '2022-11-25 10:29:00', '', 'carousel,', 1209588, ' Carousel flip ,'),
(113, 'test 122', 'tanishq', 'HC', '2022-11-11 10:57:20', '2022-11-18 10:57:00', '', 'flip,', 604780, ' Canvas Flip ,'),
(114, 'demo title', '', '', '2022-11-11 11:48:24', '2022-11-12 11:48:00', '', 'flip,', 86376, ' CanvasFlip ,'),
(115, 'APV-lord of the rings', '', '', '2022-11-11 11:49:41', '2022-11-26 11:49:00', '', 'flip,', 1295959, ' CanvasFlip ,'),
(116, '', '', '', '2022-11-11 11:51:04', '2022-11-12 11:50:00', '', 'swiper,carousel,richMedia,', 86336, ''),
(117, 'demo title', 'amazon prime video', 'DBM', '2022-11-11 11:52:59', '2022-11-15 11:52:00', '', 'richMedia,', 345541, ' Rich Media ,'),
(118, 'demo title', 'amazon prime video', 'DBM', '2022-11-11 11:53:51', '2022-11-15 11:52:00', '', 'swiper,carousel,richMedia,video,', 345489, ''),
(119, 'demo title', 'amazon prime video', 'DBM', '2022-11-11 11:55:08', '2022-11-15 11:52:00', '', 'swiper,carousel,richMedia,video,', 345412, ' Rich Media , Carousel flip , 360 Degree carousel ,'),
(120, 'MPL', 'tanishq', '', '2022-11-11 14:05:06', '2022-11-19 14:05:00', '', 'richMedia,', 691194, ' Rich_Media,'),
(121, 'MPL', 'tanishq', '', '2022-11-11 14:09:14', '2022-11-19 14:05:00', '', 'richMedia,', 690946, 'RichMedia,'),
(122, 'APV-lord of the rings', 'aprimeauto', 'DBM', '2022-11-11 14:29:10', '2022-11-19 14:29:00', '', 'richMedia,', 691190, ' RichMedia ,'),
(123, 'test 123', 'tanishq', 'DBM', '2022-11-11 14:36:44', '2022-11-26 14:30:00', '', 'swiper,carousel,timer,video,', 1295596, 'Swiper without feed,'),
(124, 'demo title', 'Aprimeauto', 'DBM', '2022-11-11 14:51:10', '2022-11-18 14:51:00', '', 'richMedia,', 604790, 'Rich Media,'),
(125, 'fcat none test', 'tanishq', 'DBM', '2022-11-11 14:54:05', '2022-11-26 14:53:00', 'jasmeet', 'timer,', 1295935, 'Countdown,'),
(126, 'MPL', 'mpl', '', '2022-11-11 14:56:27', '2022-11-25 14:56:00', '', 'swiper,', 1209573, 'Swiper without feed,'),
(127, 'demo title', 'Aprimeauto', '', '2022-11-11 14:57:51', '2022-11-19 14:57:00', '', 'swiper,', 691149, 'Swiper without feed,'),
(128, 'demo title', 'Aprimeauto', '', '2022-11-11 14:59:05', '2022-11-19 14:57:00', '', 'swiper,richMedia,video,', 691075, ' Rich Media , Video Creatives , Video Moment Marketing ,'),
(129, 'APV-lord of the rings', 'mpl', '', '2022-11-11 15:14:36', '2022-11-12 15:14:00', '', 'swiper,carousel,richMedia,timer,video,', 86364, ' Rich Media ,'),
(130, '', '', '', '2022-11-11 15:22:50', '2022-11-19 15:21:00', '', 'swiper,api,feed,', 691090, ' Swipe With Feed ,');

-- --------------------------------------------------------

--
-- Table structure for table `veena_team`
--

CREATE TABLE `veena_team` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `task` varchar(255) NOT NULL,
  `time` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `veena_team`
--

INSERT INTO `veena_team` (`id`, `name`, `task`, `time`) VALUES
(1, 'Hari', '', 16200),
(2, 'Siddhi', 'APV-lord of the rings', 16200),
(3, 'Amar', '', 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `veena_team`
--
ALTER TABLE `veena_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
