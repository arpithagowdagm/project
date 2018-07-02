-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2018 at 04:59 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mtimetable`
--

-- --------------------------------------------------------

--
-- Table structure for table `civil_4`
--

CREATE TABLE `civil_4` (
  `hour` varchar(20) DEFAULT NULL,
  `mon` varchar(20) DEFAULT NULL,
  `tue` varchar(20) DEFAULT NULL,
  `wed` varchar(20) DEFAULT NULL,
  `thur` varchar(20) DEFAULT NULL,
  `fri` varchar(20) DEFAULT NULL,
  `sat` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `civil_4`
--

INSERT INTO `civil_4` (`hour`, `mon`, `tue`, `wed`, `thur`, `fri`, `sat`) VALUES
('1st hour', 'C_402', 'EM_404', 'CPP_401', 'BIO_405', 'OS_403', 'java_400'),
('2st hour', 'CPP_401', 'java_400', 'OS_403', 'BIO_405', 'EM_404', 'C_402'),
('3st hour', 'java_400', 'OS_403', 'EM_404', 'C_402', 'BIO_405', 'CPP_401'),
('4st hour', 'B', 'R', 'E', 'A', 'K', ''),
('5st hour', 'BIO_405', 'CPP_401', 'EM_404', 'java_400', 'C_402', 'OS_403'),
('6st hour', 'BIO_405', 'EM_404', 'java_400', 'C_402', 'OS_403', 'CPP_401'),
('7st hour', 'EM_404', 'OS_403', 'CPP_401', 'C_402', 'BIO_405', 'java_400');

-- --------------------------------------------------------

--
-- Table structure for table `cse_1`
--

CREATE TABLE `cse_1` (
  `hour` varchar(20) DEFAULT NULL,
  `mon` varchar(20) DEFAULT NULL,
  `tue` varchar(20) DEFAULT NULL,
  `wed` varchar(20) DEFAULT NULL,
  `thur` varchar(20) DEFAULT NULL,
  `fri` varchar(20) DEFAULT NULL,
  `sat` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `fname` varchar(30) NOT NULL,
  `fid` int(15) NOT NULL,
  `fpassword` varchar(50) NOT NULL,
  `branch` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`fname`, `fid`, `fpassword`, `branch`) VALUES
('arpitha', 123, 'arpitha', 'ISE'),
('ARPITHA', 400, '1234', 'CSE'),
('SAROJA', 401, '12345', 'CSE'),
('NANDITHA', 402, '54321', 'CSE'),
('JEEVITHA', 403, '543', 'CSE'),
('hemanth', 405, '123', 'CSE'),
('Veena', 789, 'Veena', 'EC'),
('rachana', 4567, 'rachana', 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `hod`
--

CREATE TABLE `hod` (
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hod`
--

INSERT INTO `hod` (`username`, `password`) VALUES
('cavery', 'cavery');

-- --------------------------------------------------------

--
-- Table structure for table `ma`
--

CREATE TABLE `ma` (
  `sname` varchar(20) DEFAULT NULL,
  `scode` varchar(11) NOT NULL,
  `branch` varchar(30) DEFAULT NULL,
  `sem` int(11) DEFAULT NULL,
  `facid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ma`
--

INSERT INTO `ma` (`sname`, `scode`, `branch`, `sem`, `facid`) VALUES
('DS', '12IS34', 'CS', 6, 4567),
('JAVA', '12IS45', 'ISE', 2, 123),
('english', '12isd', 'MEC', 1, 789);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `branch` varchar(20) DEFAULT NULL,
  `sem` int(11) DEFAULT NULL,
  `teacher` int(11) DEFAULT NULL,
  `subject` varchar(20) DEFAULT NULL,
  `subcode` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`branch`, `sem`, `teacher`, `subject`, `subcode`) VALUES
('CSE', 1, 404, 'EM', '12CSE49'),
('CSE', 1, 400, 'java', '12CSE45'),
('CSE', 1, 402, 'C', '12CSE47'),
('CSE', 1, 403, 'OS', '12CSE48'),
('CSE', 1, 405, 'BIO', '12CSE50'),
('CSE', 1, 401, 'CPP', '12CSE46');

-- --------------------------------------------------------

--
-- Table structure for table `stu`
--

CREATE TABLE `stu` (
  `sname` varchar(20) DEFAULT NULL,
  `usn` varchar(20) NOT NULL,
  `sbranch` varchar(20) DEFAULT NULL,
  `sem` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stu`
--

INSERT INTO `stu` (`sname`, `usn`, `sbranch`, `sem`) VALUES
('', '', 'CSE', 1),
('Hemanth', '123456', 'IS', 3),
('ABC', '1RV16434', 'ISE', 4),
('veena', '1SJB1234', 'CIVIL', 5),
('aa', 'a12', 'CSE', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub`
--

CREATE TABLE `sub` (
  `sname` varchar(20) DEFAULT NULL,
  `scode` varchar(11) NOT NULL,
  `branch` varchar(30) DEFAULT NULL,
  `sem` int(11) DEFAULT NULL,
  `facid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub`
--

INSERT INTO `sub` (`sname`, `scode`, `branch`, `sem`, `facid`) VALUES
('DS', '12IS34', 'CS', 6, 4567),
('JAVA', '12IS45', 'ISE', 2, 123),
('english', '12isd', 'MEC', 1, 789);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `stu`
--
ALTER TABLE `stu`
  ADD PRIMARY KEY (`usn`);

--
-- Indexes for table `sub`
--
ALTER TABLE `sub`
  ADD PRIMARY KEY (`scode`),
  ADD KEY `facid` (`facid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sub`
--
ALTER TABLE `sub`
  ADD CONSTRAINT `sub_ibfk_1` FOREIGN KEY (`facid`) REFERENCES `faculty` (`fid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
