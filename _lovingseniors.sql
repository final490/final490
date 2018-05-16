-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 16, 2018 at 08:44 PM
-- Server version: 5.6.38
-- PHP Version: 7.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `_lovingseniors`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(4) NOT NULL,
  `eventDate` date NOT NULL,
  `eventTitle` varchar(50) NOT NULL,
  `eventLocation` varchar(50) NOT NULL,
  `eventType` varchar(15) NOT NULL,
  `eventDescription` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `eventDate`, `eventTitle`, `eventLocation`, `eventType`, `eventDescription`) VALUES
(1, '2018-04-05', 'Full Metal Jacket', '234 W 42nd St, New York, NY 10036', 'Moive', 'Movie Fun Night!!!\r\n	'),
(2, '2018-04-02', 'Magic Birthday', '2655 Richmond Ave, Staten Island, NY 10314', 'Birthday Party', 'Birthday party of all 65.\r\n	'),
(3, '2018-04-01', 'Cherry Blossom Season in Brooklyn Botanic Garden', '990 Washington Ave, Brooklyn, NY 11225', 'Festival', 'Why fly to Japan to look at the beauty of the cherry blossom if you can experience the same in Brooklyn, New York in April? In the popular Brooklyn Botanic Garden you can expect a yearly bloom of cherry blossoms. From April 1st to the end of the month is the official time of the Cherry Blossom exhibit at the Brooklyn Botanic Garden.\r\n	'),
(4, '2018-04-12', 'test', 'test', 'Other Events', '	Enter your description here...\r\n	'),
(5, '2018-04-19', 'Shopping', '1C', 'Other Events', '	Enter your description here...\r\n	');

-- --------------------------------------------------------

--
-- Table structure for table `event_signup`
--

CREATE TABLE `event_signup` (
  `id` int(11) NOT NULL,
  `eventID` int(255) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_signup`
--

INSERT INTO `event_signup` (`id`, `eventID`, `name`) VALUES
(1, 1, 'Fei Huang'),
(2, 1, 'Nevil Parmar'),
(3, 2, 'Fei Huang'),
(4, 3, 'Fei Huang'),
(6, 1, 'Kristina Clark'),
(7, 1, 'Andrew Patrick'),
(8, 1, 'Louise Daniel'),
(9, 1, 'Dennis Hanson'),
(10, 1, 'Clara Kelly'),
(13, 1, 'Happy name2');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `registrationDate` date NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` char(6) NOT NULL,
  `img` varchar(255) NOT NULL,
  `rate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `registrationDate`, `name`, `age`, `gender`, `img`, `rate`) VALUES
(1, '2018-01-30', 'Ms.Gold Digger', 66, 'Female', '1.jpg', '<span class=\"likebtn-wrapper\" data-theme=\"nero\" data-white_label=\"true\" data-identifier=\"item_1\"></span>\r\n<script>(function(d,e,s){if(d.getElementById(\"likebtn_wjs\"))return;a=d.createElement(e);m=d.getElementsByTagName(e)[0];a.async=1;a.id=\"likebtn_wjs\";a.src=s;m.parentNode.insertBefore(a, m)})(document,\"script\",\"//w.likebtn.com/js/w/widget.js\");</script>'),
(3, '2018-02-03', 'Andrew Patrick', 69, 'Male', '', ''),
(4, '2018-02-06', 'Louise Daniel', 71, 'Female', '', ''),
(5, '2018-02-04', 'Dennis Hanson', 68, 'Male', '', ''),
(6, '2018-02-02', 'Clara Kelly', 72, 'Female', '', ''),
(14, '2018-03-22', 'Fei Huang', 65, 'Male', '', ''),
(20, '2018-03-29', 'Mike Wong', 67, 'Male', '', ''),
(21, '2018-04-23', 'Nevil Parmar', 65, 'Male', '', ''),
(99, '2018-04-23', 'Mr. 99 Cents', 99, 'male', '99.jpg', '<span class=\"likebtn-wrapper\" data-theme=\"nero\" data-white_label=\"true\" data-identifier=\"item_1\"></span>\r\n<script>(function(d,e,s){if(d.getElementById(\"likebtn_wjs\"))return;a=d.createElement(e);m=d.getElementsByTagName(e)[0];a.async=1;a.id=\"likebtn_wjs\";a.src=s;m.parentNode.insertBefore(a, m)})(document,\"script\",\"//w.likebtn.com/js/w/widget.js\");</script>'),
(103, '2018-05-03', 'Happy Name2', 66, 'Male', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `user_id` int(11) NOT NULL,
  `profiles_id` smallint(5) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `type` enum('user','admin') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`user_id`, `profiles_id`, `email`, `pass`, `type`) VALUES
(14, 14, 'feihuang@gmail.com', 'feihuang123', 'user'),
(101, 0, 'nevilparmar@gmail.com', '711', 'user'),
(99, 99, 'admin@gmail.com', 'admin123', 'admin'),
(102, 0, 'sd@gmail.com', '12345', 'user'),
(103, 0, 'yingjinliu@hotmail.com', '123', 'user'),
(104, 0, 'asdf@gmail.com', 'abc123', 'user'),
(105, 0, 'test@gmail.com', 'test123', 'user'),
(106, 0, 'final@gmail.com', 'final', 'user'),
(107, 0, 'final490@gmail.com', '123456', 'user'),
(108, 0, 'peterxsharp@gmail.com', 'abc123', 'user'),
(109, 0, 'justin@gmail.com', 'justin', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `event_signup`
--
ALTER TABLE `event_signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `profiles_id` (`profiles_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `event_signup`
--
ALTER TABLE `event_signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
