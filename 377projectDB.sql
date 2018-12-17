-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 17, 2018 at 07:06 PM
-- Server version: 10.2.10-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `Course`
--

CREATE TABLE `Course` (
  `CourseID` int(11) NOT NULL,
  `CourseName` varchar(45) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Credits` int(11) NOT NULL,
  `gradRequire` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Course`
--

INSERT INTO `Course` (`CourseID`, `CourseName`, `Description`, `Credits`, `gradRequire`) VALUES
(1, 'INST126', 'Introduction to Programming for Information Science', 3, 0),
(2, 'INST311', '\r\nInformation Organization ', 3, 0),
(3, 'INST314', '\r\nStatistics for Information Science', 3, 0),
(1, 'INST126', 'Introduction to Programming for Information Science', 3, 0),
(2, 'INST311', '\r\nInformation Organization ', 3, 0),
(3, 'INST314', '\r\nStatistics for Information Science', 3, 0),
(4, 'INST201 ', '\r\nIntroduction to Information Science', 3, 0),
(5, 'INST326', 'Object-Oriented Programming for Information Science', 3, 0),
(6, 'INST327', 'Database Design and Modeling', 3, 0),
(7, 'INST335', 'Teams and Organizations', 3, 0),
(8, 'INST346', 'Technologies Infrastructure and Architecture', 3, 0),
(9, 'INST352', 'Information User Needs and Assessment', 3, 0),
(10, 'INST354', '\r\nDecision-Making for Information Science', 3, 0),
(11, 'INST362', 'User-Centered Design', 3, 0),
(12, 'INST377', 'Dynamic Web Applications', 3, 0),
(13, 'INST414', '\r\nData Science Techniques', 3, 0),
(14, 'INST447', 'Data Sources and Manipulation', 3, 0),
(15, 'INST462', '\r\nIntroduction to Data Visualization', 3, 0),
(16, 'INST490', 'Integrated Capstone for Information Science', 3, 0),
(17, 'INST201', 'Introduction to Information Science (Heroes and Villains)', 3, 1);


-- --------------------------------------------------------

--
-- Table structure for table `Login`
--

CREATE TABLE `Login` (
  `LoginID` int(11) NOT NULL,
  `UserName` varchar(55) NOT NULL,
  `Password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Login`
--

INSERT INTO `Login` (`LoginID`, `UserName`, `Password`) VALUES
(1, 'khansen3', 13467),
(2, 'cchiang', 76892),
(3, 'fyu', 64538),
(4, 'agurukar', 23904),
(5, 'kway', 92615),
(6, 'mguy', 13444),
(7, 'toliver', 32451),
(8, 'rywu1', 10933),
(9, 'jmog2', 34564),
(10, 'dyeager', 19875),
(11, 'mgiroux2', 63954),
(12, 'mwilk1', 90312),
(13, 'mmacklin', 24168),
(14, 'mnelson', 43526),
(15, 'eeliott', 25600),
(16, 'twesker', 32786),
(17, 'asmith', 55421),
(18, 'croberts', 07561),
(19, 'mtorrence', 32469),
(20, 'hmarcus', 87764);

-- --------------------------------------------------------

--
-- Table structure for table `Professor`
--

CREATE TABLE `Professor` (
  `ProfID` int(11) NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `Rating` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Professor`
--

INSERT INTO `Professor` (`ProfID`, `FirstName`, `LastName`, `Rating`) VALUES
(1, 'Pamela', 'Duffy', 7),
(2, 'Katy', 'Lawley', 8),
(3, 'Ryan', 'O\'Grady', 5),
(4, 'Kelly', 'Hoffman', 6),
(5, 'Joyce', 'Garczynski', 7),
(6, 'Eric', 'Hung', 8),
(7, 'Jordan', 'Sly', 6),
(8, 'Katrina', 'Fenlon', 6),
(9, 'Hernisa', 'Kacorri', 7),
(10, 'Shawn', 'Janzen', 5),
(11, 'Joshua ', 'Westgard', 6),
(12, 'Aric', 'Bills', 7),
(13, 'Jennifer', 'Golbeck', 4),
(14, 'Tammie', 'Nelson', 5),
(15, 'Timothy', 'Richards', 6),
(16, 'Vedat', 'Diker', 8),
(17, 'Melissa', 'Lizmi', 7),
(18, 'Tamara', 'Clegg', 9),
(19, 'Donal', 'Hedienblad', 8),
(20, 'Eric', 'Newburger', 7);

-- --------------------------------------------------------

--
-- Table structure for table `Section`
--

CREATE TABLE `Section` (
  `SectionID` int(11) NOT NULL,
  `StartTime` time NOT NULL,
  `EndTime` time NOT NULL,
  `BuildingName` varchar(55) NOT NULL,
  `RoomNum` int(11) NOT NULL,
  `SectionNum` int(11) NOT NULL,
  `Days` varchar(5) NOT NULL,
  `SectionSeats` int(11) NOT NULL,
  `profFirstName` text NOT NULL,
  `profLastName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Section`
--

INSERT INTO `Section` (`SectionID`, `StartTime`, `EndTime`, `BuildingName`, `RoomNum`, `SectionNum`, `Days`, `SectionSeats`, `profFirstName`, `profLastName`) VALUES
(1, '09:30:00', '10:45:00', 'CSI', 1121, 101, 'TuTh', 45, 'Pamela', 'Duffy'),
(2, '11:00:00', '12:15:00', 'IRB', 1116, 102, 'TuTH', 81, 'Katy', 'Lawley'),
(3, '14:00:00', '15:15:00', 'JMZ', 220, 104, 'TuTh', 54, 'Hernisa', 'Kacorri'),
(4, '13:00:00', '13:50:00', 'SQH', 1117, 101, 'MWF', 45, 'Joshua', 'Westgard'),
(5, '11:00:00', '11:50:00', 'HBK', 115, 102, 'MWF', 45, 'Kelly', 'Hoffman'),
(6, '10:00:00', '10:50:00', 'HBK', 115, 102, 'MWF', 45, 'Timothy', 'Richards'),
(7, '14:00:00', '15:15:00', 'ARC', 1103, 101, 'TuTh', 45, 'Phillip', 'Piety'),
(8, '17:00:00', '18:15:00', 'SYM', 200, 102, 'TuTh', 45, 'Christopher', 'Ajiri'),
(9, '11:00:00', '12:15:00', 'ARC', 1103, 101, 'TuTh', 45, 'Wayne', 'Lutters'),
(10, '14:00:00', '15:15:00', 'TYD', 2109, 102, 'TuTh', 50, 'Brian', 'Kim'),
(11, '15:00:00', '15:50:00', 'SPH', 1301, 102, 'MWF', 45, 'Tamara', 'Clegg'),
(12, '15:30:00', '16:45:00', 'TYD', 1118, 101, 'TuTh', 50, 'Donal', 'Heidenblad'),
(13, '17:30:00', '18:45:00', 'LEF', 2166, 101, 'TuTh', 75, 'William', 'Bower'),
(14, '09:30:00', '10:45:00', 'TBA', 0, 102, 'TuTh', 50, 'Eric', 'Newburger'),
(15, '15:30:00', '16:45:00', 'PLS', 1130, 9193, 'TuTh', 50, 'Mary', 'Kendig'),
(16, '14:00:00', '15:15:00', 'ARC', 1101, 103, 'TuTh', 45, 'Pamela', 'Duffy'),
(17, '09:30:00', '10:45:00', 'CSI', 1122, 104, 'TuTh', 45, 'Katrina', 'Fenlon'),
(18, '15:30:00', '16:45:00', 'ESJ', 1202, 105, 'TuTh', 117, 'Shawn', 'Janzen'),
(19, '12:30:00', '13:45:00', 'KEB', 1200, 102, 'TuTh', 45, 'Aric', 'Bills'),
(20, '017:00:00', '18:15:00', 'ATL', 2428, 101, 'MWF', 45, 'Vedat', 'Diker');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Login`
--
ALTER TABLE `Login`
  ADD PRIMARY KEY (`LoginID`);

--
-- Indexes for table `Section`
--
ALTER TABLE `Section`
  ADD PRIMARY KEY (`SectionID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
