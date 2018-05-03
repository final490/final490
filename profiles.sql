-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 03, 2018 at 02:16 AM
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
(1, '2018-01-30', 'Kristina Clark', 56, 'Female', '1.jpg', '<span class=\"likebtn-wrapper\" data-theme=\"nero\" data-white_label=\"true\" data-identifier=\"item_1\"></span>\r\n<script>(function(d,e,s){if(d.getElementById(\"likebtn_wjs\"))return;a=d.createElement(e);m=d.getElementsByTagName(e)[0];a.async=1;a.id=\"likebtn_wjs\";a.src=s;m.parentNode.insertBefore(a, m)})(document,\"script\",\"//w.likebtn.com/js/w/widget.js\");</script>'),
(3, '2018-02-03', 'Andrew Patrick', 69, 'Male', '', ''),
(4, '2018-02-06', 'Louise Daniel', 51, 'Female', '', ''),
(5, '2018-02-04', 'Dennis Hanson', 50, 'Male', '', ''),
(6, '2018-02-02', 'Clara Kelly', 52, 'Female', '', ''),
(14, '2018-03-22', 'Fei Huang', 65, 'Male', '', ''),
(20, '2018-03-29', 'Mike Wong', 60, 'Male', '', ''),
(21, '2018-04-23', 'Nevil Parmar', 65, 'Male', '', ''),
(99, '2018-04-23', 'img', 99, 'male', '99.jpg', '<span class=\"likebtn-wrapper\" data-theme=\"nero\" data-white_label=\"true\" data-identifier=\"item_1\"></span>\r\n<script>(function(d,e,s){if(d.getElementById(\"likebtn_wjs\"))return;a=d.createElement(e);m=d.getElementsByTagName(e)[0];a.async=1;a.id=\"likebtn_wjs\";a.src=s;m.parentNode.insertBefore(a, m)})(document,\"script\",\"//w.likebtn.com/js/w/widget.js\");</script>'),
(101, '2018-04-30', 'soon', 0, 'Female', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
