-- phpMyAdmin SQL Dump
-- version 4.0.10.15
-- http://www.phpmyadmin.net
--
-- Host: studentdb-maria.gl.umbc.edu
-- Generation Time: Apr 19, 2016 at 03:47 PM
-- Server version: 10.0.24-MariaDB-wsrep
-- PHP Version: 5.4.44

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bnat1`
--

-- --------------------------------------------------------

--
-- Table structure for table `Applicant_Info`
--

CREATE TABLE IF NOT EXISTS `Applicant_Info` (
  `name` varchar(60) NOT NULL,
  `title` varchar(15) DEFAULT NULL,
  `department` varchar(30) NOT NULL,
  `collegeDivision` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(60) NOT NULL,
  `deptHeadName` varchar(60) NOT NULL,
  `deptHeadEmail` varchar(60) NOT NULL,
  `company` varchar(60) NOT NULL,
  `model` varchar(50) NOT NULL,
  `yearsOld` tinyint(3) unsigned NOT NULL,
  `basicSpecs` varchar(256) NOT NULL,
  `laptopDesktop` varchar(20) NOT NULL,
  `replacementReason` varchar(256) NOT NULL,
  `replaceWith` int(20) NOT NULL,
  `contactName` varchar(60) NOT NULL,
  `contactTitle` varchar(15) DEFAULT NULL,
  `contactDept` varchar(50) NOT NULL,
  `contactCollegeDiv` int(50) NOT NULL,
  `contactPhone` varchar(20) NOT NULL,
  `contactEmail` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Classes`
--

CREATE TABLE IF NOT EXISTS `Classes` (
  `id` int(6) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `level` int(3) DEFAULT NULL,
  `Category` varchar(20) NOT NULL,
  `credits` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Classes`
--

INSERT INTO `Classes` (`id`, `name`, `level`, `Category`, `credits`) VALUES
(51115, 'GES 120 - Environmental Science and Conservation', NULL, 'Additional Science', 3),
(51363, 'GES 111 - Principles of Geology', NULL, 'Additional Science', 3),
(52103, 'GES 110 - Physical Geography', NULL, 'Additional Science', 3),
(52466, 'BIOL 100 - Concepts of Biology OR BIOL 141 - Foundations of Biology: Cells, Energy, and Organisms', NULL, 'Required Science', 4),
(52468, 'BIOL 100L - Concepts of Experimental Biology', NULL, 'Science With Lab', 2),
(52484, 'BIOL 251 - Human Anatomy and Physiology I', NULL, 'Additional Science', 3),
(52485, 'BIOL 251L - Human Anatomy and Physiology I Laboratory', NULL, 'Science With Lab', 1),
(52486, 'BIOL 252 - Human Anatomy and Physiology II', NULL, 'Additional Science', 3),
(52487, 'BIOL 252L - Human Anatomy and Physiology II Laboratory.', NULL, 'Science With Lab', 1),
(52488, 'BIOL 275 - Microbiology', NULL, 'Additional Science', 3),
(52489, 'BIOL 275L - Microbiology Laboratory', NULL, 'Science With Lab', NULL),
(52493, 'BIOL 301 - Ecology and Evolution OR BIOL 142 - Foundations of Biology: Ecology and Evolution', NULL, 'Required Science', 4),
(52494, 'BIOL 302 - Molecular and General Genetics', NULL, 'Additional Science', 4),
(52495, 'BIOL 302L - Molecular and General Genetics Laboratory', NULL, 'Science With Lab', 2),
(52496, 'BIOL 303 - Cell Biology', NULL, 'Additional Science', 4),
(52498, 'BIOL 303L - Cell Biology Laboratory', NULL, 'Science With Lab', 2),
(52499, 'BIOL 304 - Plant Biology', NULL, 'Additional Science', 3),
(52500, 'BIOL 304L - Plant Biology Laboratory', NULL, 'Science With Lab', 2),
(52501, 'BIOL 305 - Comparative Animal Physiology', NULL, 'Additional Science', 3),
(52502, 'BIOL 305L - Physiology Laboratory', NULL, 'Science With Lab', 2),
(52671, 'CHEM 101 - Principles of Chemistry I', NULL, 'Required Science', 4),
(52673, 'CHEM 102 - Principles of Chemistry II', NULL, 'Required Science', 4),
(52675, 'CHEM 102L - Introductory Chemistry Lab I', NULL, 'Science With Lab', 2),
(52879, 'CMSC 201 - Computer Science I for Majors', 200, 'Required CMSC', NULL),
(52881, 'CMSC 202 - Computer Science II for Majors', 200, 'Required CMSC', NULL),
(52883, 'CMSC 203 - Discrete Structures', 200, 'Required CMSC', NULL),
(52907, 'CMSC 304 - Social and Ethical Issues in Information Technology', 200, 'Required CMSC', NULL),
(52911, 'CMSC 313 - Computer Organization and Assembly Language Programming', 300, 'Required CMSC', NULL),
(52913, 'CMSC 331 - Principles of Programming Language', 300, 'Required CMSC', NULL),
(52914, 'CMSC 341 - Data Structures', 300, 'Required CMSC', NULL),
(52922, 'CMSC 411 - Computer Architecture', 400, 'Required CMSC', NULL),
(52928, 'CMSC 421 - Principles of Operating Systems', 400, 'Required CMSC', NULL),
(52931, 'CMSC 426 - Principles of Computer Security', 400, 'CMSC Elective', NULL),
(52932, 'CMSC 427 - Wearable Computing', 400, 'CMSC Tech Elec', NULL),
(52933, 'CMSC 431 - Compiler Design Principles', 400, 'CMSC Elective', NULL),
(52934, 'CMSC 432 - Object-Oriented Programming Languages and Systems', 400, 'CMSC Tech Elec', NULL),
(52935, 'CMSC 433 - Scripting Languages', 400, 'CMSC Tech Elec', NULL),
(52936, 'CMSC 435 - Computer Graphics', 400, 'CMSC Elective', NULL),
(52937, 'CMSC 436 - Data Visualization', 400, 'CMSC Tech Elec', NULL),
(52938, 'CMSC 437 - Graphical User Interface Programming', 400, 'CMSC Tech Elec', NULL),
(52940, 'CMSC 441 - Design and Analysis of Algorithms', 400, 'Required CMSC', NULL),
(52941, 'CMSC 442 - Information and Coding Theory', 400, 'CMSC Tech Elec', NULL),
(52943, 'CMSC 444 - Information Assurance', 400, 'CMSC Tech Elec', NULL),
(52944, 'CMSC 448 - Software Engineering II', 400, 'CMSC Elective', NULL),
(52945, 'CMSC 446 - Introduction to Design Patterns', 400, 'CMSC Tech Elec', NULL),
(52947, 'CMSC 451 - Automata Theory and Formal Languages', 400, 'CMSC Elective', NULL),
(52948, 'CMSC 452 - Logic for Computer Science', 400, 'CMSC Tech Elec', NULL),
(52949, 'CMSC 453 - Applied Combinatorics and Graph Theory', 400, 'CMSC Tech Elec', NULL),
(52951, 'CMSC 455 - Numerical Computations', 400, 'CMSC Elective', NULL),
(52952, 'CMSC 456 - Symbolic Computation', 400, 'CMSC Elective', NULL),
(52954, 'CMSC 461 - Database Management Systems', 400, 'CMSC Elective', NULL),
(52955, 'CMSC 456 - Introduction to Electronic Commerce', 400, 'CMSC Tech Elec', NULL),
(52956, 'CMSC 466 - Electronic Commerce Technology', 400, 'CMSC Tech Elec', NULL),
(52958, 'CMSC 471 - Introduction to Artificial Intelligence', 400, 'CMSC Elective', NULL),
(52960, 'CMSC 473 - Introduction to Natural Language Processing', 400, 'CMSC Tech Elec', NULL),
(52962, 'CMSC 475 - Introduction to Neural Networks', 400, 'CMSC Tech Elec', NULL),
(52963, 'CMSC 476 - Information Retrieval', 400, 'CMSC Tech Elec', NULL),
(52964, 'CMSC 477 - Agent Architectures and Multi-Agent Systems', 400, 'CMSC Tech Elec', NULL),
(52965, 'CMSC 478 - Introduction to Machine Learning', 400, 'CMSC Tech Elec', NULL),
(52966, 'CMSC 479 - Introduction to Robotics', 400, 'CMSC Tech Elec', NULL),
(52968, 'CMSC 481 - Computer Networks', 400, 'CMSC Elective', NULL),
(52970, 'CMSC 483 - Parallel and Distributed Processing', 400, 'CMSC Elective', NULL),
(52971, 'CMSC 484 - Java Server Technologies', 400, 'CMSC Tech Elec', NULL),
(52972, 'CMSC 486 - Mobile Telephony Communications', 400, 'CMSC Tech Elec', NULL),
(52973, 'CMSC 487 - Introduction to Network Security', 400, 'CMSC Tech Elec', NULL),
(52975, 'CMSC 491 - Special Topics in Computer Science', 400, 'CMSC Tech Elec', NULL),
(52976, 'CMSC 493 - Capstone Games Group Project', 400, 'CMSC Tech Elec', NULL),
(55203, 'MATH 150 - Precalculus Mathematics', NULL, 'Required Math', NULL),
(55205, 'MATH 151 - Calculus and Analytic Geometry ', NULL, 'Required Math', NULL),
(55208, 'MATH 152 - Calculus and Analytic Geometry II', NULL, 'Required Math', NULL),
(55216, 'MATH 221 - Introduction to Linear Algebra', NULL, 'Required Math', NULL),
(55218, 'MATH 225 - Introduction to Differential Equations', NULL, 'Additional Math', NULL),
(55219, 'MATH 251 - Multivariable Calculus', NULL, 'Additional Math', NULL),
(55224, 'MATH 301 - Introduction to Mathematical Analysis I', NULL, 'Additional Math', NULL),
(55253, 'MATH 430 - Matrix Analysis', NULL, 'Tech Math Elective', NULL),
(55255, 'MATH 441 - Introduction to Numerical Analysis', NULL, 'Tech Math Elective', NULL),
(55256, 'MATH 452 - Introduction to Stochastic Processes', NULL, 'Tech Math Elective', NULL),
(55265, 'MATH 475 - Combinatorics and Graph Theory', NULL, 'Tech Math Elective', NULL),
(55269, 'MATH 481 - Mathematical Modeling', NULL, 'Tech Math Elective', NULL),
(56129, 'PHYS 121 - Introductory Physics I', NULL, 'Required Science', 4),
(56131, 'PHYS 122 - Introductory Physics II', NULL, 'Required Science', 4),
(56132, 'PHYS 122L - Introductory Physics Laboratory', NULL, 'Science With Lab', 3),
(56138, 'PHYS 224 - Vibrations and Waves', NULL, 'Additional Science', 3),
(56141, 'PHYS 304 - Fundamentals of Astronomy and Astrophysics', NULL, 'Additional Science', 3),
(57054, 'STAT 355 - Introduction to Probability and Statistics for Scientists and Engineers', NULL, 'Required Stat', NULL),
(100191, 'CMSC 457 - Quantum Computation', 400, 'CMSC Tech Elec', NULL),
(101927, 'CMSC 447 - Software Engineering I', 400, 'Required CMSC', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ClassPrereqs`
--

CREATE TABLE IF NOT EXISTS `ClassPrereqs` (
  `classId` int(6) NOT NULL DEFAULT '0',
  `prereqClassId` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`classId`,`prereqClassId`),
  KEY `prereqClassId` (`prereqClassId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ClassPrereqs`
--

INSERT INTO `ClassPrereqs` (`classId`, `prereqClassId`) VALUES
(52468, 52466),
(52484, 52466),
(52484, 52673),
(52485, 52675),
(52486, 52484),
(52487, 52485),
(52488, 52466),
(52489, 52488),
(52493, 52466),
(52494, 52466),
(52494, 52673),
(52494, 55203),
(52495, 52494),
(52495, 52914),
(52496, 52494),
(52496, 52673),
(52496, 55203),
(52498, 52494),
(52498, 52496),
(52499, 52496),
(52500, 52498),
(52500, 52499),
(52501, 52496),
(52501, 56131),
(52502, 52501),
(52671, 55203),
(52673, 52671),
(52675, 52671),
(52675, 52673),
(52879, 55203),
(52881, 52879),
(52883, 55205),
(52907, 52881),
(52911, 52881),
(52911, 52883),
(52913, 52881),
(52913, 52883),
(52914, 52881),
(52914, 52883),
(52922, 52911),
(52928, 52911),
(52928, 52914),
(52931, 52928),
(52933, 52911),
(52933, 52913),
(52933, 52914),
(52934, 52913),
(52934, 52914),
(52935, 52913),
(52936, 52911),
(52936, 52914),
(52936, 55216),
(52937, 52914),
(52938, 52914),
(52938, 55216),
(52940, 52914),
(52940, 55208),
(52940, 57054),
(52941, 52883),
(52941, 55216),
(52943, 52928),
(52943, 52968),
(52944, 101927),
(52945, 52913),
(52947, 52881),
(52947, 52883),
(52948, 52913),
(52949, 52914),
(52949, 55208),
(52949, 55216),
(52951, 52914),
(52951, 55208),
(52951, 55216),
(52952, 52914),
(52952, 55208),
(52952, 55216),
(52954, 52914),
(52955, 52954),
(52955, 52968),
(52956, 52954),
(52956, 52968),
(52958, 52914),
(52960, 52913),
(52962, 52914),
(52963, 52914),
(52964, 52958),
(52965, 52958),
(52966, 52958),
(52968, 52914),
(52970, 52928),
(52971, 52881),
(52972, 52911),
(52972, 55208),
(52973, 52928),
(52973, 52968),
(52976, 52936),
(52976, 52958),
(55205, 55203),
(55208, 55205),
(55216, 55205),
(55218, 55208),
(55219, 55208),
(55224, 55208),
(55253, 55219),
(55253, 55224),
(55255, 52879),
(55255, 55218),
(55255, 55219),
(55255, 55224),
(55256, 57054),
(55265, 55224),
(55269, 55216),
(55269, 55218),
(55269, 55219),
(56129, 55205),
(56131, 56129),
(56132, 56131),
(56138, 56131),
(56141, 56131),
(57054, 55208),
(100191, 52883),
(100191, 55216),
(101927, 52914);

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
--

CREATE TABLE IF NOT EXISTS `Customer` (
  `CustomerNum` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerName` varchar(64) NOT NULL,
  `Street` varchar(64) NOT NULL,
  `City` varchar(32) NOT NULL,
  `State` char(2) NOT NULL,
  `Zip` char(10) NOT NULL,
  `Balance` decimal(13,2) NOT NULL,
  `CreditLimit` decimal(13,2) NOT NULL,
  `RepNum` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`CustomerNum`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `Customer`
--

INSERT INTO `Customer` (`CustomerNum`, `CustomerName`, `Street`, `City`, `State`, `Zip`, `Balance`, `CreditLimit`, `RepNum`) VALUES
(1, 'Al''s Appliance and Sport', '2837 Greenway', 'Fillmore', 'FL', '33336', 6550.00, 7500.00, 20),
(2, 'Brookings Direct', '3827 Devon', 'Grove', 'FL', '33321', 431.50, 10000.00, 35),
(4, 'The Everything Shop', '1828 Raven', 'Crystal', 'FL', '33503', 5285.25, 5000.00, 35),
(5, 'Bargains Galore', '3829 Central', 'Grove', 'FL', '33321', 3412.00, 10000.00, 65),
(6, 'Kline''s', '838 RidgeLand', 'Fillmore', 'FL', '33336', 12762.00, 15000.00, 20),
(7, 'Johnson''s Department Store', '372 Oxford', 'Sheldon', 'FL', '3353', 2106.00, 10000.00, 65);

-- --------------------------------------------------------

--
-- Table structure for table `HasTaken`
--

CREATE TABLE IF NOT EXISTS `HasTaken` (
  `studentEmail` varchar(60) NOT NULL DEFAULT '',
  `classId` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`studentEmail`,`classId`),
  KEY `classId` (`classId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `HasTaken`
--

INSERT INTO `HasTaken` (`studentEmail`, `classId`) VALUES
('apagano1@umbc.edu', 51363),
('apagano1@umbc.edu', 52103),
('apagano1@umbc.edu', 52485),
('apagano1@umbc.edu', 52879),
('apagano1@umbc.edu', 52881),
('apagano1@umbc.edu', 55203),
('apagano1@umbc.edu', 55205),
('apagano1@umbc.edu', 55208),
('apagano1@umbc.edu', 56129),
('apagano1@umbc.edu', 56131),
('apagano1@umbc.edu', 57054),
('asd@fsd.com', 52879),
('asd@fsd.com', 52881),
('asd@fsd.com', 52883),
('asd@fsd.com', 52907),
('asd@fsd.com', 52911),
('asd@fsd.com', 52913),
('asd@fsd.com', 52914),
('asd@fsd.com', 52922),
('asd@fsd.com', 52928),
('asd@fsd.com', 52940),
('asd@fsd.com', 101927),
('asd@ssdff.com', 52485),
('asd@ssdff.com', 52671),
('asd@ssdff.com', 52935),
('asd@ssdff.com', 55203),
('asd@ssdff.com', 55253),
('asda@asdasdsfds.com', 55203),
('asdf@sdhosdhiofd.om', 55203),
('asdfasdfsadih@asasdff.com', 52883),
('first@umbc.edu', 52914),
('first@umbc.edu', 52922),
('first@umbc.edu', 52928),
('first@umbc.edu', 52940),
('first@umbc.edu', 52970),
('first@umbc.edu', 101927),
('samleung95@gmail.com', 55203),
('samleung95@gmail.com', 55205),
('samleung95@gmail.com', 55208),
('samleung95@gmail.com', 55216);

-- --------------------------------------------------------

--
-- Table structure for table `LevelPrereqs`
--

CREATE TABLE IF NOT EXISTS `LevelPrereqs` (
  `classId` int(6) NOT NULL DEFAULT '0',
  `levelPrereq` int(3) NOT NULL,
  `numClasses` tinyint(4) NOT NULL,
  PRIMARY KEY (`classId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `LevelPrereqs`
--

INSERT INTO `LevelPrereqs` (`classId`, `levelPrereq`, `numClasses`) VALUES
(101927, 400, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Questions`
--

CREATE TABLE IF NOT EXISTS `Questions` (
  `count` int(11) unsigned NOT NULL,
  `question` text NOT NULL,
  `type` char(2) NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text,
  `option4` text,
  `option5` text,
  `answer` text NOT NULL,
  PRIMARY KEY (`count`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Questions`
--

INSERT INTO `Questions` (`count`, `question`, `type`, `option1`, `option2`, `option3`, `option4`, `option5`, `answer`) VALUES
(1, 'Austin is going to fail 433.', 'TF', 'True', 'False', NULL, NULL, NULL, 'False'),
(2, 'What can Austin do to improve his grade?', 'MC', 'Study ', 'Attend class', 'Do the quizes', 'Suck up to Lupoli', 'All of the above', 'All of the above'),
(4, '4', 'MC', '4', 'ikj', 'j', 'oi', 'oi', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `StudentInfo`
--

CREATE TABLE IF NOT EXISTS `StudentInfo` (
  `fName` varchar(40) NOT NULL,
  `lName` varchar(40) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `StudentInfo`
--

INSERT INTO `StudentInfo` (`fName`, `lName`, `email`, `phone`) VALUES
('asd', 'asd', 'aaa@aaa.com', '240-222-3333'),
('ergsfdg', 'sdgdfsg', 'adsfasdfasdffad@sdafasf.com', '211-121-1234'),
('Austin', 'Pagano', 'apagano1@umbc.edu', '4435186332'),
('asdf', 'asd', 'asd@fsd.com', '9999999999'),
('asdf', 'sdfd', 'asd@ssdff.com', '211-121-1234'),
('fdsf', 'asdasd', 'asda@asdasdsfds.com', '211-121-1234'),
('asd', 'asdasd', 'asda@sfds.com', '2222222222'),
('asd', 'asd', 'asdf@sdhosdhiofd.om', '240-222-3333'),
('sadfdsa', 'asdfdsaf', 'asdfasdfsadih@asasdff.com', '211-121-1234'),
('sad', 'asd', 'asdfasdfsadih@asdf.com', '222-222-2222'),
('Nat', 'Baylon', 'bnat1@umbc.edu', '301-379-9389'),
('first', 'last', 'first@umbc.edu', '123-456-7890'),
('sdfsdf', 'sdafsdaf', 'safdadfjhjk@asdfsdfadsf.com', '323-123-1234'),
('sadf', 'e', 'samleung95@gmail.com', '301-222-2222'),
('sadf', 'sdaf', 'sdfasadfasdf@uss.com', '323-123-1234');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ClassPrereqs`
--
ALTER TABLE `ClassPrereqs`
  ADD CONSTRAINT `ClassPrereqs_ibfk_1` FOREIGN KEY (`classId`) REFERENCES `Classes` (`id`),
  ADD CONSTRAINT `ClassPrereqs_ibfk_2` FOREIGN KEY (`prereqClassId`) REFERENCES `Classes` (`id`);

--
-- Constraints for table `HasTaken`
--
ALTER TABLE `HasTaken`
  ADD CONSTRAINT `HasTaken_ibfk_2` FOREIGN KEY (`classId`) REFERENCES `Classes` (`id`),
  ADD CONSTRAINT `HasTaken_ibfk_3` FOREIGN KEY (`studentEmail`) REFERENCES `StudentInfo` (`email`);

--
-- Constraints for table `LevelPrereqs`
--
ALTER TABLE `LevelPrereqs`
  ADD CONSTRAINT `LevelPrereqs_ibfk_1` FOREIGN KEY (`classId`) REFERENCES `Classes` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
