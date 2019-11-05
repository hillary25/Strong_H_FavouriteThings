-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 05, 2019 at 12:59 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_favourite_things`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_card`
--

CREATE TABLE `tbl_card` (
  `ID` int(11) NOT NULL,
  `Title` varchar(30) NOT NULL,
  `Category` varchar(30) NOT NULL,
  `Image` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_card`
--

INSERT INTO `tbl_card` (`ID`, `Title`, `Category`, `Image`) VALUES
(1, 'Muskoka', 'Travelling', 'muskoka.jpg'),
(2, 'Charcuterie', 'Eating', 'charcuterie.jpg'),
(3, 'Running', 'Activity', 'running.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_info`
--

CREATE TABLE `tbl_info` (
  `ID` int(11) NOT NULL,
  `favID` int(11) DEFAULT NULL,
  `Title` varchar(30) NOT NULL,
  `Category` varchar(30) NOT NULL,
  `Description` text NOT NULL,
  `Season` varchar(30) NOT NULL,
  `Reason` varchar(30) NOT NULL,
  `Image` varchar(30) NOT NULL,
  `Fact` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_info`
--

INSERT INTO `tbl_info` (`ID`, `favID`, `Title`, `Category`, `Description`, `Season`, `Reason`, `Image`, `Fact`) VALUES
(1, 1, 'Muskoka', 'Travelling', 'My first favourite thing is my cottage on Muskoka Lake. It is about a 3 hour drive from my house. We have lots of family up there to hang out with.', 'Summer', 'Swimming', 'muskoka.jpg', 'We bought the first cottage in 1998 - the year I was born! Since then we have renovated.'),
(2, 2, 'Charcuterie', 'Eating', 'My second favourite thing is charcuterie boards. A plate full of cheese and meats is heaven! I love to make them during the Christmas season.', 'Winter', 'Brie Cheese', 'charcuterie.jpg', 'I handmade a charcuterie board out of wood from my grandpa\'s farm.'),
(3, 3, 'Running', 'Activity', 'In the past few years I have recently taken up running. I ran a 10k Lululemon run this past spring. Running is great for exercise.', 'Spring', 'Outdoors', 'running.jpg', 'I ran this past 10k in an hour and 6 minutes. This was faster than the previous time.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_card`
--
ALTER TABLE `tbl_card`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_info`
--
ALTER TABLE `tbl_info`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_card`
--
ALTER TABLE `tbl_card`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_info`
--
ALTER TABLE `tbl_info`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
