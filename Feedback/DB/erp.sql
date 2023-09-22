-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2023 at 02:14 PM
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
-- Database: `erp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'anuj.lpu1@gmail.com', 'Test@1234', '2016-04-04 15:01:45', '2016-04-17');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) DEFAULT NULL,
  `course_sn` varchar(255) DEFAULT NULL,
  `course_fn` varchar(255) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(1, 'B10992', 'B.Tech', 'Bachelor  of Technology', '2020-07-04 14:01:42'),
(2, 'BCOM1453', 'B.Com', 'Bachelor Of commerce ', '2020-07-04 14:01:42'),
(3, 'BSC12', 'BSC', 'Bachelor  of Science', '2020-07-04 14:01:42'),
(4, 'BC36356', 'BCA', 'Bachelor Of Computer Application', '2020-07-04 14:01:42'),
(5, 'MCA565', 'MCA', 'Master of Computer Application', '2020-07-04 14:01:42'),
(6, 'MBA75', 'MBA', 'Master of Business Administration', '2020-07-04 14:01:42'),
(7, 'BE765', 'BE', 'Bachelor of Engineering', '2020-07-04 14:01:42');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Role` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Role`, `username`, `password`) VALUES
('Administrator', 'admin', 'admin'),
('Secretary', 'sec', 'sec'),
('Principal', 'pri', 'pri'),
('Vice-Principal', 'vp', 'vp'),
('HOD', 'hod', 'hod'),
('Office Staff', 'off', 'off'),
('Assistant Professor', 'ass', 'ass'),
('HR', 'hr', 'hr');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `qid` int(11) NOT NULL,
  `qno` int(11) NOT NULL,
  `question` text NOT NULL,
  `ans1` text NOT NULL,
  `ans2` text NOT NULL,
  `ans3` text NOT NULL,
  `ans4` text NOT NULL,
  `correct_answer` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qid`, `qno`, `question`, `ans1`, `ans2`, `ans3`, `ans4`, `correct_answer`) VALUES
(9, 5, 'Rate the distribution of the contact hours among the course components (Lecture-Tutorial-Practical)?', 'best', 'better', 'good', 'poor', ''),
(8, 3, 'Rate the relevance of the courses that you have studied in relation to the competencies expected out of the course?', 'best', 'better', 'good', 'poor', ''),
(7, 2, 'Rate the sequence of the units in each course?', 'best', 'better', 'good', 'poor', ''),
(6, 1, 'Rate the sequence of the courses in each semester?', 'best', 'better', 'good', 'poor', ''),
(5, 4, 'Rate the relevance of the units in Syllabus relevant to the course?', 'best', 'better', 'good', 'poor', ''),
(10, 6, 'Rate the method of allocation of the credits to the courses?', 'best', 'better', 'good', 'poor', ''),
(11, 7, 'Rate the offering of the electives in terms of their relevance to the specialization streams?', 'best', 'better', 'good', 'poor', ''),
(12, 8, 'Rate the electives offered in relation to the technological developments?', 'best', 'better', 'good', 'poor', ''),
(17, 13, 'Rate the balancing of the theory and practical courses in each semester?', 'best', 'better', 'good', 'poor', ''),
(16, 12, 'Rate the guest lectures, workshops and industry visits organized, relevance to the curriculum?', 'best', 'better', 'good', 'poor', ''),
(15, 11, 'Rate the courses in terms of self learning or teacher directed learning by, considering the design of the courses?', 'best', 'better', 'good', 'poor', ''),
(14, 10, 'Rate the size of syllabus in terms of students learning ability?', 'best', 'better', 'good', 'poor', ''),
(13, 9, 'Rate the standard of the text Books and reference books of each course?', 'best', 'better', 'good', 'poor', ''),
(18, 14, 'Rate the evaluation scheme designed for each course?', 'best', 'better', 'good', 'poor', ''),
(19, 15, 'Rate the outcomes stated for each course and attainment of outcomes?', 'best', 'better', 'good', 'poor', ''),
(20, 16, 'Rate the skills and competencies derived from the courses?', 'best', 'better', 'good', 'poor', ''),
(21, 17, 'Rate the composition of the courses in terms of basic sciences, engineering sciences, humanities, discipline core, discipline elective, open elective, and project.?', 'best', 'better', 'good', 'poor', ''),
(22, 18, 'Rate the courses having lab components which give scope to experimental learning?', 'best', 'better', 'good', 'poor', ''),
(23, 19, 'Rate the domain used for designing the experiments for the lab components?', 'best', 'better', 'good', 'poor', ''),
(24, 20, 'Rate the standard of experiments designed in lab courses in solving the real life applications?', 'best', 'better', 'good', 'poor', '');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` int(11) DEFAULT NULL,
  `seater` int(11) DEFAULT NULL,
  `feespm` int(11) DEFAULT NULL,
  `foodstatus` int(11) DEFAULT NULL,
  `stayfrom` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `course` varchar(500) DEFAULT NULL,
  `regno` int(11) DEFAULT NULL,
  `firstName` varchar(500) DEFAULT NULL,
  `middleName` varchar(500) DEFAULT NULL,
  `lastName` varchar(500) DEFAULT NULL,
  `gender` varchar(250) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `emailid` varchar(500) DEFAULT NULL,
  `egycontactno` bigint(11) DEFAULT NULL,
  `guardianName` varchar(500) DEFAULT NULL,
  `guardianRelation` varchar(500) DEFAULT NULL,
  `guardianContactno` bigint(11) DEFAULT NULL,
  `corresAddress` varchar(500) DEFAULT NULL,
  `corresCIty` varchar(500) DEFAULT NULL,
  `corresState` varchar(500) DEFAULT NULL,
  `corresPincode` int(11) DEFAULT NULL,
  `pmntAddress` varchar(500) DEFAULT NULL,
  `pmntCity` varchar(500) DEFAULT NULL,
  `pmnatetState` varchar(500) DEFAULT NULL,
  `pmntPincode` int(11) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(2, 100, 5, 8000, 1, '2020-08-01', 6, 'Bachelor  of Technology', 10806121, 'Anuj', '', 'kumar', 'male', 1234567890, 'ak@gmail.com', 1236547890, 'ABC', 'XYZ', 98756320000, 'ABC 12345 XYZ Street', 'New Delhi', 'Delhi (NCT)', 110001, 'ABC 12345 XYZ Street', 'New Delhi', 'Delhi (NCT)', 110001, '2020-07-20 09:28:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `seater` int(11) DEFAULT NULL,
  `room_no` int(11) DEFAULT NULL,
  `fees` int(11) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(1, 5, 100, 8000, '2020-04-11 17:15:43'),
(2, 2, 201, 6000, '2020-04-11 20:00:47'),
(3, 2, 200, 6000, '2020-04-11 20:00:58'),
(4, 3, 112, 4000, '2020-04-11 20:01:07'),
(5, 5, 132, 2000, '2020-04-11 20:01:15');

-- --------------------------------------------------------

--
-- Table structure for table `sas_attendance`
--

CREATE TABLE `sas_attendance` (
  `attendance_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `status` enum('present','absent','late','half_day') NOT NULL,
  `attendance_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sas_attendance`
--

INSERT INTO `sas_attendance` (`attendance_id`, `student_id`, `class_id`, `status`, `attendance_date`) VALUES
(2, 2, 33, 'absent', '2020/03/15'),
(3, 5, 38, 'present', '2020/04/06'),
(4, 2, 33, 'present', '2020/04/07'),
(5, 2, 33, 'present', '2020/04/14'),
(6, 2, 33, 'present', '2020/04/23'),
(7, 2, 33, 'absent', '2020/05/10'),
(8, 4, 35, 'present', '2020/07/01'),
(9, 3, 34, 'present', '2020/07/09'),
(10, 2, 33, 'late', '2020/07/09'),
(11, 3, 34, 'present', '2020/07/30'),
(12, 3, 34, 'present', '2020/08/13'),
(13, 2, 33, 'present', '2020/08/15'),
(14, 2, 33, 'half_day', '2020/08/29'),
(15, 2, 33, 'present', '2020/08/31'),
(16, 2, 33, 'present', '2020/09/08'),
(17, 3, 34, 'present', '2020/09/08'),
(18, 2, 33, 'present', '2020/09/13'),
(19, 2, 33, 'present', '2020/09/21'),
(20, 3, 34, 'absent', '2020/09/21'),
(21, 4, 35, 'present', '2020/09/23'),
(22, 5, 38, 'absent', '2020/09/23'),
(23, 2, 33, 'absent', '2020/09/24'),
(24, 3, 34, 'present', '2020/09/24'),
(25, 3, 34, 'present', '2020/09/25'),
(26, 2, 33, 'present', '2020/09/28'),
(27, 3, 34, 'present', '2020/09/28'),
(28, 4, 35, 'present', '2020/09/28'),
(29, 5, 38, 'present', '2020/09/28'),
(30, 3, 34, 'present', '2020/09/29'),
(31, 2, 33, 'half_day', '2020/09/29'),
(32, 4, 35, 'present', '2020/09/30'),
(33, 2, 33, 'present', '2020/10/02'),
(34, 2, 33, 'present', '2020/10/05'),
(35, 2, 33, 'half_day', '2020/10/10'),
(36, 5, 38, 'late', '2020/10/10'),
(37, 5, 38, 'present', '2020/10/16'),
(38, 4, 35, 'present', '2020/10/20'),
(39, 2, 33, 'present', '2020/10/24'),
(40, 2, 33, 'absent', '2020/10/27'),
(41, 2, 33, 'absent', '2020/11/03'),
(42, 4, 35, 'late', '2020/11/11'),
(43, 2, 33, 'late', '2020/11/14'),
(44, 3, 34, 'absent', '2020/11/18'),
(45, 2, 33, 'present', '2020/11/19'),
(46, 3, 34, 'present', '2020/11/21'),
(47, 2, 33, 'present', '2020/11/21'),
(48, 5, 38, 'present', '2020/11/21'),
(49, 2, 33, 'present', '2020/11/22'),
(50, 2, 33, 'absent', '2020/11/25'),
(51, 2, 33, 'present', '2020/11/27'),
(52, 5, 38, 'present', '2020/11/27'),
(53, 2, 33, 'present', '2020/11/28'),
(54, 3, 34, 'present', '2020/11/28'),
(55, 2, 33, 'present', '2020/11/30'),
(56, 2, 33, 'half_day', '2020/12/01'),
(57, 3, 34, 'half_day', '2020/12/03'),
(58, 2, 33, 'present', '2020/12/07'),
(59, 2, 33, 'absent', '2020/12/13'),
(60, 2, 0, 'half_day', '2020/12/15'),
(61, 2, 33, 'present', '2020/12/16'),
(62, 3, 34, 'present', '2020/12/16'),
(63, 3, 34, 'late', '2020/12/17'),
(64, 2, 33, 'present', '2020/12/17'),
(65, 2, 33, 'present', '2020/12/21'),
(66, 3, 34, 'late', '2020/12/21'),
(67, 3, 34, 'present', '2020/12/23'),
(68, 3, 34, 'present', '2020/12/27'),
(69, 2, 33, 'present', '2020/12/29'),
(70, 2, 33, 'absent', '2021/01/01'),
(71, 3, 34, 'half_day', '2021/01/08'),
(72, 4, 35, 'present', '2021/01/08'),
(73, 2, 33, 'present', '2021/01/16'),
(74, 4, 35, 'absent', '2021/01/16'),
(75, 2, 33, 'absent', '2021/01/17'),
(76, 2, 33, 'present', '2021/01/19'),
(77, 2, 33, 'present', '2021/01/21'),
(78, 2, 33, 'half_day', '2021/01/22'),
(79, 2, 33, 'present', '2021/01/26'),
(80, 2, 33, 'present', '2021/02/01'),
(81, 3, 34, 'present', '2021/02/01'),
(82, 2, 33, 'present', '2021/02/05'),
(83, 5, 38, 'absent', '2021/02/05'),
(84, 2, 33, 'present', '2021/02/06'),
(85, 2, 33, 'present', '2021/02/08'),
(86, 5, 38, 'absent', '2021/02/10'),
(87, 4, 35, 'present', '2021/02/12'),
(88, 2, 33, 'present', '2021/02/14'),
(89, 2, 33, 'present', '2021/02/15'),
(90, 2, 33, 'late', '2021/02/16'),
(91, 2, 33, 'absent', '2021/02/17'),
(92, 2, 33, 'present', '2021/02/18'),
(93, 4, 35, 'present', '2021/02/18'),
(94, 4, 35, 'present', '2021/02/20'),
(95, 2, 33, 'present', '2021/02/20'),
(96, 3, 34, 'absent', '2021/02/20'),
(97, 2, 33, 'present', '2021/02/21'),
(98, 3, 34, 'present', '2021/02/22'),
(99, 2, 33, 'present', '2021/02/22'),
(100, 2, 33, 'present', '2021/02/23'),
(101, 2, 33, 'present', '2021/02/25'),
(102, 3, 34, 'absent', '2021/02/27'),
(103, 5, 38, 'half_day', '2021/02/27'),
(104, 2, 33, 'present', '2021/02/28'),
(105, 3, 34, 'present', '2021/02/28'),
(106, 2, 33, 'present', '2021/03/02'),
(107, 4, 35, 'absent', '2021/03/08'),
(108, 5, 38, 'absent', '2021/03/08'),
(109, 5, 38, 'absent', '2021/03/14'),
(110, 2, 33, 'present', '2021/03/14'),
(111, 2, 33, 'present', '2021/03/15'),
(112, 2, 33, 'absent', '2021/03/16'),
(113, 2, 33, 'absent', '2021/03/20'),
(114, 2, 34, 'late', '2021/03/20'),
(115, 4, 35, 'half_day', '2021/03/20'),
(116, 2, 33, 'absent', '2021/03/21'),
(117, 2, 33, 'present', '2021/03/23'),
(118, 2, 33, 'present', '2021/03/24'),
(119, 3, 34, 'late', '2021/03/24'),
(120, 5, 38, 'present', '2021/03/24'),
(121, 4, 35, 'half_day', '2021/03/24'),
(122, 2, 33, 'present', '2021/03/25'),
(123, 2, 33, 'present', '2021/03/26'),
(124, 3, 34, 'present', '2021/03/26'),
(125, 4, 35, 'late', '2021/03/26'),
(126, 2, 33, 'present', '2021/03/27'),
(127, 3, 34, 'absent', '2021/04/05'),
(128, 2, 33, 'present', '2021/04/06'),
(129, 5, 34, 'present', '2021/04/06'),
(130, 4, 35, 'present', '2021/04/08'),
(131, 5, 38, 'present', '2021/04/09'),
(132, 2, 33, 'present', '2021/04/11'),
(133, 4, 35, 'half_day', '2021/04/11'),
(134, 2, 33, 'present', '2021/04/12'),
(135, 3, 34, 'present', '2021/04/12'),
(136, 3, 34, 'present', '2021/04/13'),
(137, 5, 38, 'present', '2021/04/15'),
(138, 2, 33, 'present', '2021/04/16'),
(139, 2, 33, 'present', '2021/04/17'),
(140, 2, 33, 'present', '2021/04/19'),
(141, 5, 38, 'present', '2021/04/19'),
(142, 2, 33, 'present', '2021/04/20'),
(143, 2, 33, 'late', '2021/04/21'),
(144, 5, 38, 'present', '2021/04/21'),
(145, 2, 33, 'present', '2021/04/24'),
(146, 3, 34, 'absent', '2021/04/24'),
(147, 2, 33, 'present', '2021/04/25'),
(148, 2, 33, 'present', '2021/04/26'),
(149, 2, 34, 'late', '2021/04/26'),
(150, 3, 34, 'half_day', '2021/04/27'),
(151, 4, 35, 'absent', '2021/04/27'),
(152, 5, 38, 'present', '2021/04/28'),
(153, 4, 35, 'present', '2021/04/28'),
(154, 4, 35, 'late', '2021/05/01'),
(155, 2, 33, 'present', '2021/05/01'),
(156, 3, 34, 'absent', '2021/05/01'),
(157, 2, 33, 'present', '2021/05/03'),
(158, 2, 33, 'present', '2021/05/05'),
(159, 3, 34, 'present', '2021/05/06'),
(160, 2, 33, 'present', '2021/05/07'),
(161, 5, 38, 'present', '2021/05/07'),
(162, 3, 34, 'absent', '2021/05/07'),
(163, 3, 34, 'absent', '2021/05/10'),
(164, 2, 33, 'present', '2021/05/10'),
(165, 4, 35, 'present', '2021/05/10'),
(166, 5, 38, 'present', '2021/05/10'),
(167, 2, 33, 'present', '2021/05/16'),
(168, 2, 33, 'absent', '2021/05/20'),
(169, 2, 33, 'present', '2021/05/22'),
(170, 3, 34, 'present', '2021/05/24'),
(171, 2, 33, 'present', '2021/05/24'),
(172, 2, 33, 'present', '2021/05/25'),
(173, 3, 34, 'present', '2021/05/29'),
(174, 5, 38, 'absent', '2021/05/29'),
(175, 3, 34, 'present', '2021/06/01'),
(176, 2, 33, 'present', '2021/06/02'),
(177, 4, 33, 'present', '2021/06/03'),
(178, 3, 34, 'half_day', '2021/06/03'),
(179, 5, 38, 'present', '2021/06/03'),
(180, 4, 35, 'late', '2021/06/03'),
(181, 3, 34, 'present', '2021/06/04'),
(182, 3, 34, 'absent', '2021/06/07'),
(183, 3, 34, 'present', '2021/06/08'),
(184, 2, 33, 'present', '2021/06/10'),
(185, 2, 33, 'present', '2021/06/15'),
(186, 3, 34, 'present', '2021/06/15'),
(187, 5, 38, 'half_day', '2021/06/15'),
(188, 2, 33, 'present', '2021/06/16'),
(189, 4, 35, 'present', '2021/06/16'),
(190, 5, 38, 'present', '2021/06/19'),
(191, 2, 33, 'present', '2021/06/19'),
(192, 2, 33, 'present', '2021/06/20'),
(193, 5, 38, 'absent', '2021/06/20'),
(194, 2, 33, 'present', '2021/06/22'),
(195, 3, 34, 'present', '2021/06/22'),
(196, 2, 33, 'present', '2021/06/25'),
(197, 3, 34, 'absent', '2021/06/26'),
(198, 2, 33, 'late', '2021/06/27'),
(199, 4, 35, 'present', '2021/06/27'),
(200, 5, 38, 'present', '2021/06/27'),
(201, 3, 34, 'present', '2021/06/27'),
(202, 3, 34, 'present', '2021/06/29'),
(203, 2, 33, 'present', '2021/06/29'),
(204, 2, 33, 'present', '2021/06/30'),
(205, 2, 33, 'present', '2021/07/01'),
(206, 3, 34, 'present', '2021/07/01'),
(207, 2, 33, 'present', '2021/07/02'),
(208, 5, 38, 'present', '2021/07/03'),
(209, 4, 35, 'present', '2021/07/03'),
(210, 2, 33, 'absent', '2021/07/03'),
(211, 3, 34, 'half_day', '2021/07/03'),
(212, 2, 33, 'present', '2021/07/04'),
(213, 2, 33, 'absent', '2021/07/05'),
(214, 3, 34, 'late', '2021/07/05'),
(215, 4, 35, 'present', '2021/07/05'),
(216, 2, 33, 'present', '2021/07/08'),
(217, 2, 33, 'absent', '2021/07/09'),
(218, 2, 33, 'absent', '2021/07/14'),
(219, 3, 34, 'absent', '2021/07/14'),
(220, 2, 33, 'absent', '2021/07/22'),
(221, 2, 33, 'present', '2021/07/27'),
(222, 4, 35, 'present', '2021/07/27'),
(223, 3, 34, 'absent', '2021/07/28'),
(224, 3, 34, 'present', '2021/07/30'),
(225, 2, 33, 'present', '2021/07/30'),
(226, 2, 33, 'present', '2021/08/01'),
(227, 3, 34, 'absent', '2021/08/01'),
(228, 5, 38, 'half_day', '2021/08/01'),
(229, 2, 33, 'present', '2021/08/02'),
(230, 2, 33, 'present', '2021/08/03'),
(231, 5, 38, 'present', '2021/08/04'),
(232, 2, 33, 'absent', '2021/08/05'),
(233, 3, 34, 'absent', '2021/08/09'),
(234, 3, 34, 'half_day', '2021/08/14'),
(235, 2, 33, 'present', '2021/08/15'),
(236, 2, 33, 'present', '2021/08/17'),
(237, 2, 33, 'present', '2021/08/18'),
(238, 4, 35, 'present', '2021/08/19'),
(239, 2, 33, 'present', '2021/08/21'),
(240, 3, 34, 'present', '2021/08/21'),
(241, 2, 33, 'present', '2021/08/22'),
(242, 5, 38, 'half_day', '2021/08/22'),
(243, 3, 34, 'present', '2021/08/22'),
(244, 2, 33, 'present', '2021/08/23'),
(245, 2, 33, 'half_day', '2021/08/24'),
(246, 2, 33, 'present', '2021/08/28'),
(247, 4, 35, 'absent', '2021/08/30'),
(248, 2, 33, 'present', '2021/08/31'),
(249, 4, 35, 'present', '2021/08/31'),
(250, 2, 33, 'half_day', '2021/09/01'),
(251, 3, 34, 'absent', '2021/09/01'),
(252, 2, 33, 'present', '2021/09/02'),
(253, 2, 33, 'present', '2021/09/03'),
(254, 3, 34, 'absent', '2021/09/03'),
(255, 2, 33, 'present', '2021/09/04'),
(256, 2, 33, 'present', '2021/09/05'),
(257, 2, 33, 'absent', '2021/09/06'),
(258, 2, 33, 'absent', '2021/09/14'),
(259, 4, 35, 'present', '2021/09/16'),
(260, 3, 34, 'present', '2021/09/17'),
(261, 5, 38, 'present', '2021/09/17'),
(262, 2, 33, 'late', '2021/09/19'),
(263, 4, 35, 'absent', '2021/09/19'),
(264, 2, 33, 'present', '2021/09/21'),
(265, 2, 33, 'absent', '2021/09/24'),
(266, 4, 35, 'present', '2021/09/26'),
(267, 3, 34, 'present', '2021/09/28'),
(268, 2, 33, 'present', '2021/09/29'),
(269, 3, 34, 'present', '2021/09/29'),
(270, 2, 33, 'present', '2021/09/30'),
(271, 4, 35, 'present', '2021/09/30'),
(272, 5, 38, 'late', '2021/09/30'),
(273, 2, 33, 'half_day', '2021/10/03'),
(274, 3, 34, 'present', '2021/10/03'),
(275, 5, 38, 'late', '2021/10/03'),
(276, 2, 33, 'half_day', '2021/10/04'),
(277, 5, 38, 'present', '2021/10/07'),
(278, 3, 34, 'half_day', '2021/10/11'),
(279, 2, 33, 'present', '2021/10/15'),
(280, 5, 38, 'half_day', '2021/10/16'),
(281, 2, 33, 'present', '2021/10/18'),
(282, 3, 34, 'present', '2021/10/18'),
(283, 2, 33, 'present', '2021/10/19'),
(284, 2, 33, 'late', '2021/10/20'),
(285, 3, 34, 'present', '2021/10/20'),
(286, 4, 35, 'half_day', '2021/10/21'),
(287, 5, 38, 'late', '2021/10/21'),
(288, 2, 33, 'present', '2021/10/21'),
(289, 2, 33, 'present', '2021/10/22'),
(290, 3, 34, 'half_day', '2021/10/22'),
(291, 2, 33, 'late', '2021/10/27'),
(292, 3, 34, 'present', '2021/10/27'),
(293, 2, 33, 'absent', '2021/10/28'),
(294, 5, 38, 'present', '2021/10/28'),
(295, 2, 33, 'present', '2021/10/29'),
(296, 2, 33, 'present', '2021/10/30'),
(297, 2, 33, 'present', '2021/11/02'),
(298, 3, 34, 'absent', '2021/11/02'),
(299, 4, 35, 'late', '2021/11/02'),
(300, 5, 38, 'present', '2021/11/02'),
(301, 3, 34, 'half_day', '2021/11/03'),
(302, 2, 33, 'present', '2021/11/04'),
(303, 5, 38, 'absent', '2021/11/04'),
(304, 2, 33, 'late', '2021/11/05'),
(305, 4, 35, 'present', '2021/11/07'),
(306, 3, 34, 'absent', '2021/11/09'),
(307, 2, 33, 'half_day', '2021/11/09'),
(308, 8, 35, 'absent', '2021/11/14'),
(309, 4, 35, 'present', '2021/11/14'),
(310, 2, 35, 'present', '2021/11/14');

-- --------------------------------------------------------

--
-- Table structure for table `sas_classes`
--

CREATE TABLE `sas_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(40) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sas_classes`
--

INSERT INTO `sas_classes` (`id`, `name`, `teacher_id`) VALUES
(33, 'First', 1),
(34, 'Second', 1),
(35, 'Third', 1),
(38, 'Fourth', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sas_students`
--

CREATE TABLE `sas_students` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(40) NOT NULL,
  `gender` varchar(40) NOT NULL,
  `dob` date NOT NULL,
  `photo` varchar(40) DEFAULT NULL,
  `mobile` int(10) UNSIGNED NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `current_address` varchar(40) DEFAULT NULL,
  `permanent_address` varchar(40) DEFAULT NULL,
  `father_name` varchar(255) NOT NULL,
  `father_mobile` int(10) UNSIGNED NOT NULL,
  `father_occupation` varchar(255) NOT NULL,
  `mother_name` varchar(255) NOT NULL,
  `mother_mobile` int(10) UNSIGNED NOT NULL,
  `admission_no` int(11) NOT NULL,
  `roll_no` int(11) NOT NULL,
  `stream` int(10) UNSIGNED DEFAULT NULL,
  `admission_date` datetime NOT NULL,
  `academic_year` int(10) UNSIGNED NOT NULL,
  `class` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sas_students`
--

INSERT INTO `sas_students` (`id`, `name`, `gender`, `dob`, `photo`, `mobile`, `email`, `current_address`, `permanent_address`, `father_name`, `father_mobile`, `father_occupation`, `mother_name`, `mother_mobile`, `admission_no`, `roll_no`, `stream`, `admission_date`, `academic_year`, `class`) VALUES
(2, 'Jhon', 'male', '2001-11-13', '1582017489image12.jpg', 1234567890, 'Jhon@gmail.com', '133, A Block, New Street, London, UK', '133, A Block, New Street, London, UK', 'David', 1234567890, 'Farmer', 'Rose', 1234567890, 123456789, 1, NULL, '2020-03-15 00:00:00', 2020, 35),
(3, 'Smith', 'male', '2002-03-03', '1582091940bg.jpg', 4294967295, 'test@gmail.com', 'test blk tst tst tst', NULL, 'test', 0, '', 'testing', 0, 2, 2, NULL, '2020-03-15 00:00:00', 2020, 34),
(4, 'Foster', 'Male', '2003-03-10', NULL, 0, NULL, NULL, NULL, '', 0, '', '', 0, 0, 3, NULL, '2020-03-15 00:00:00', 2020, 35),
(5, 'Damein', 'Male', '2001-03-03', NULL, 0, NULL, NULL, NULL, '', 0, '', '', 0, 0, 4, NULL, '2020-03-15 00:00:00', 2020, 38),
(8, 'Andy', 'male', '2021-11-14', NULL, 1234567890, 'asd@phpzag.com', 'dsdgsd', 'dsdgsd', 'dfsdf', 0, '', 'sdfsdf', 0, 0, 464634, NULL, '0000-00-00 00:00:00', 2022, 35);

-- --------------------------------------------------------

--
-- Table structure for table `sas_user`
--

CREATE TABLE `sas_user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gender` enum('male','female') CHARACTER SET utf8 NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `status` enum('active','pending','deleted','') NOT NULL DEFAULT 'pending',
  `role` enum('administrator','teacher','student') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sas_user`
--

INSERT INTO `sas_user` (`id`, `first_name`, `last_name`, `email`, `password`, `gender`, `mobile`, `status`, `role`) VALUES
(1, 'Kane', 'William', 'kw@coderszine.com', '123', 'male', '41242142', 'active', 'teacher'),
(2, 'Jhony', 'Rhodes', 'jhonty@coderszine.com', '123', 'male', '41242142', 'active', 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Andaman and Nicobar Island (UT)'),
(2, 'Andhra Pradesh'),
(3, 'Arunachal Pradesh'),
(4, 'Assam'),
(5, 'Bihar'),
(6, 'Chandigarh (UT)'),
(7, 'Chhattisgarh'),
(8, 'Dadra and Nagar Haveli (UT)'),
(9, 'Daman and Diu (UT)'),
(10, 'Delhi (NCT)'),
(11, 'Goa'),
(12, 'Gujarat'),
(13, 'Haryana'),
(14, 'Himachal Pradesh'),
(15, 'Jammu and Kashmir'),
(16, 'Jharkhand'),
(17, 'Karnataka'),
(18, 'Kerala'),
(19, 'Lakshadweep (UT)'),
(20, 'Madhya Pradesh'),
(21, 'Maharashtra'),
(22, 'Manipur'),
(23, 'Meghalaya'),
(24, 'Mizoram'),
(25, 'Nagaland'),
(26, 'Odisha'),
(27, 'Puducherry (UT)'),
(28, 'Punjab'),
(29, 'Rajastha'),
(30, 'Sikkim'),
(31, 'Tamil Nadu'),
(32, 'Telangana'),
(33, 'Tripura'),
(34, 'Uttarakhand'),
(35, 'Uttar Pradesh'),
(36, 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `subject_allocation`
--

CREATE TABLE `subject_allocation` (
  `Department` varchar(255) DEFAULT NULL,
  `Regulation` varchar(255) DEFAULT NULL,
  `Academic_Year` varchar(255) DEFAULT NULL,
  `Semester` varchar(255) DEFAULT NULL,
  `Course_Code` varchar(255) DEFAULT NULL,
  `Course_Short` varchar(255) DEFAULT NULL,
  `Course_Category` varchar(255) DEFAULT NULL,
  `Staff_Id` varchar(255) DEFAULT NULL,
  `Staff_Name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_admin`
--

CREATE TABLE `t_admin` (
  `ad_id` varchar(10) NOT NULL,
  `ad_name` varchar(50) NOT NULL,
  `ad_pswd` varchar(50) NOT NULL,
  `ad_eml` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_admin`
--

INSERT INTO `t_admin` (`ad_id`, `ad_name`, `ad_pswd`, `ad_eml`) VALUES
('AD00000001', 'admin', 'admin', 'admin@gmail.com'),
('AD00002', 'Dilraj', 'QCoxFrwx', 'dilrajkaur18@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `t_status`
--

CREATE TABLE `t_status` (
  `s_id` varchar(50) NOT NULL,
  `s_stat` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_status`
--

INSERT INTO `t_status` (`s_id`, `s_stat`) VALUES
('CUTM00008', 'Applied');

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE `t_user` (
  `s_detid` varchar(15) NOT NULL,
  `s_id` varchar(15) NOT NULL,
  `s_phn1` int(10) NOT NULL,
  `s_phn2` int(10) NOT NULL,
  `f_name` varchar(45) NOT NULL,
  `f_occ` varchar(45) NOT NULL,
  `f_phn` int(10) NOT NULL,
  `m_name` varchar(45) NOT NULL,
  `m_occ` varchar(45) NOT NULL,
  `m_phn` int(10) NOT NULL,
  `s_iop` int(10) NOT NULL,
  `s_sex` varchar(6) NOT NULL,
  `s_cadr` varchar(50) NOT NULL,
  `s_cst` varchar(20) NOT NULL,
  `s_cpin` int(6) NOT NULL,
  `s_cmob` int(10) NOT NULL,
  `s_padr` varchar(50) NOT NULL,
  `s_pst` varchar(20) NOT NULL,
  `s_ppin` int(6) NOT NULL,
  `s_pmob` int(10) NOT NULL,
  `s_ruc` varchar(10) NOT NULL,
  `s_natn` varchar(10) NOT NULL,
  `s_relg` varchar(10) DEFAULT NULL,
  `s_catg` varchar(3) NOT NULL,
  `s_mainsxam` varchar(20) NOT NULL,
  `s_mainsrank` varchar(10) NOT NULL,
  `s_mainsroll` varchar(20) NOT NULL,
  `s_mainsbrnch` varchar(45) NOT NULL,
  `s_branch` varchar(60) NOT NULL,
  `s_college` varchar(6) NOT NULL,
  `s_center` varchar(20) NOT NULL,
  `s_crtype` varchar(10) NOT NULL,
  `s_pcm` varchar(10) NOT NULL,
  `s_tenbrd` varchar(7) NOT NULL,
  `s_tenyop` varchar(4) NOT NULL,
  `s_tentotmark` varchar(4) NOT NULL,
  `s_tenmarkob` varchar(4) NOT NULL,
  `s_tendiv` varchar(4) NOT NULL,
  `s_tenprcmark` varchar(4) NOT NULL,
  `s_twlbrd` varchar(7) NOT NULL,
  `s_twlyop` varchar(4) NOT NULL,
  `s_twltotmark` varchar(4) NOT NULL,
  `s_twlmarkob` varchar(4) NOT NULL,
  `s_twldiv` varchar(4) NOT NULL,
  `s_twlprcmark` varchar(4) NOT NULL,
  `s_moi` varchar(8) NOT NULL,
  `s_pay` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`s_detid`, `s_id`, `s_phn1`, `s_phn2`, `f_name`, `f_occ`, `f_phn`, `m_name`, `m_occ`, `m_phn`, `s_iop`, `s_sex`, `s_cadr`, `s_cst`, `s_cpin`, `s_cmob`, `s_padr`, `s_pst`, `s_ppin`, `s_pmob`, `s_ruc`, `s_natn`, `s_relg`, `s_catg`, `s_mainsxam`, `s_mainsrank`, `s_mainsroll`, `s_mainsbrnch`, `s_branch`, `s_college`, `s_center`, `s_crtype`, `s_pcm`, `s_tenbrd`, `s_tenyop`, `s_tentotmark`, `s_tenmarkob`, `s_tendiv`, `s_tenprcmark`, `s_twlbrd`, `s_twlyop`, `s_twltotmark`, `s_twlmarkob`, `s_twldiv`, `s_twlprcmark`, `s_moi`, `s_pay`) VALUES
('DE00000003', 'CUTM00003', 1234567890, 1234567890, 'Madhusudan Mahato', 'Employee', 1234567890, 'Sheela Mahato', 'Housemaker', 1234567890, 400000, 'Female', 'Jamshedpur', 'Jharkhand', 831004, 1234567890, 'Jamshedpur', 'Jharkhand', 831004, 1234567890, 'City', 'Indian', 'Sikh', 'GEN', 'JEE MAIN', '723', '71', 'Jamshedpur', 'COMPUTER SCIENCE AND ENG', 'CIT', 'Bhubaneshwar', 'Regular', '80', 'ICSE', '2011', '100', '80', '1', '80', '     Ot', '2014', '100', '66', '1', '79', 'English', 'Self'),
('DE00000004', 'CUTM00008', 2147483647, 2147483647, 'Rakesh Saigal', 'Journalist', 2147483647, 'Nisha Saigal', 'Homemaker', 2147483647, 200000, 'Female', 'Near Meera Hotel', 'Odisha', 768028, 2147483647, 'Near Meera Hotel', 'Odisha', 768028, 2147483647, 'City', 'Indian', 'Hindu', 'GEN', 'OJEE', '177', '3456278', 'Bhubaneshwar', 'ELECTRICAL AND ELECTRONICS ENG', 'CIT', 'Bhubaneshwar', 'Regular', '89', 'CBSE', '2011', '500', '483', '1', '89', 'chse', '2013', '600', '512', '1', '75', 'English', 'Loan');

-- --------------------------------------------------------

--
-- Table structure for table `t_userdoc`
--

CREATE TABLE `t_userdoc` (
  `s_id` varchar(10) NOT NULL,
  `s_pic` varchar(200) NOT NULL,
  `s_tenmarkpic` varchar(200) NOT NULL,
  `s_tencerpic` varchar(200) NOT NULL,
  `s_twdmarkpic` varchar(200) NOT NULL,
  `s_twdcerpic` varchar(200) NOT NULL,
  `s_idprfpic` varchar(200) NOT NULL,
  `s_sigpic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_userdoc`
--

INSERT INTO `t_userdoc` (`s_id`, `s_pic`, `s_tenmarkpic`, `s_tencerpic`, `s_twdmarkpic`, `s_twdcerpic`, `s_idprfpic`, `s_sigpic`) VALUES
('CUTM00003', 'B612-2015-04-06-14-19-16.jpg', '4th Sem TT_CSE.pdf', '4th Sem TT_CSE.pdf', '4th Sem TT_CSE.pdf', '4th Sem TT_CSE.pdf', '4th Sem TT_CSE.pdf', 'Signature.png'),
('CUTM00008', 'IMG_20150301_235958.JPG', '4th Sem TT_CSE.pdf', '4th Sem TT_CSE.pdf', '4th Sem TT_CSE.pdf', '4th Sem TT_CSE.pdf', '4th Sem TT_CSE.pdf', 'Signature.png');

-- --------------------------------------------------------

--
-- Table structure for table `t_usermark`
--

CREATE TABLE `t_usermark` (
  `s_id` varchar(50) NOT NULL,
  `s_omr` varchar(50) NOT NULL,
  `s_mark` int(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_usermark`
--

INSERT INTO `t_usermark` (`s_id`, `s_omr`, `s_mark`) VALUES
('CUTM00003', '123', 345);

-- --------------------------------------------------------

--
-- Table structure for table `t_user_data`
--

CREATE TABLE `t_user_data` (
  `s_id` varchar(10) NOT NULL,
  `s_pwd` varchar(15) NOT NULL,
  `s_dob` date DEFAULT NULL,
  `s_name` varchar(45) NOT NULL,
  `s_email` varchar(45) NOT NULL,
  `s_mob` varchar(10) DEFAULT NULL,
  `s_signupdate` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_user_data`
--

INSERT INTO `t_user_data` (`s_id`, `s_pwd`, `s_dob`, `s_name`, `s_email`, `s_mob`, `s_signupdate`) VALUES
('CUTM00003', 'QBAfi0Wy', '2015-09-08', 'Archana Kumari', 'archanajsr2310@gmail.com', '1234567890', '2015-09-30 14:43:31.000000'),
('CUTM00004', 'MNexGlM2', '2015-10-14', 'Arti', 'artijha15@gmail.com', '1234567890', '2015-10-01 11:30:33.000000'),
('CUTM00006', 'DBwdVb88', '2015-10-05', 'Arti', 'artijha16@gmail.com', '1234567890', '2015-10-07 15:27:32.000000'),
('CUTM00007', 'CmjAQZGw', '2015-10-19', 'Dilraj', 'dilrajkaur18@gmail.com', '1234567890', '2015-10-08 14:39:52.000000'),
('CUTM00008', 'X3PXhxEV', '2015-10-15', 'Ankita Saigal', 'ankitabargarh@gmail.com', '6884280078', '2015-10-08 19:15:11.000000'),
('CUTM00009', 'qcowa7pC', '2015-10-20', 'Ansh', 'anshsinha0309@gmail.com', '1234567890', '2015-10-08 20:25:35.000000'),
('CUTM00010', '0pzGI4Bf', '2015-10-07', 'Sweety', 'abc@gmai.com', '1234567890', '2015-10-09 23:01:06.000000'),
('CUTM00011', 'NC3Ro5KU', '2015-10-06', 'abc', '130301csl062@cutm.ac.in', '1234567890', '2015-10-10 13:48:10.000000'),
('CUTM00012', '0f61EBYx', '2000-03-01', 'shan sun', 'ss@gmail.com', '9876543210', '2023-03-14 09:23:09.000000'),
('CUTM00013', 'LYQvUpZy', '2000-03-01', 'RAM', 'ram@gmail.com', '123456789', '2023-03-14 11:18:01.000000');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `file_id` int(11) NOT NULL,
  `file_name` varchar(225) NOT NULL,
  `file_description` text NOT NULL,
  `file_type` varchar(225) NOT NULL,
  `file_uploader` varchar(225) NOT NULL,
  `file_uploaded_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `file_uploaded_to` varchar(225) NOT NULL,
  `file` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL DEFAULT 'not approved yet'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`file_id`, `file_name`, `file_description`, `file_type`, `file_uploader`, `file_uploaded_on`, `file_uploaded_to`, `file`, `status`) VALUES
(57, 'demo previer', 'demo', 'pdf', 'user', '2017-07-18 23:38:23', 'Computer Science', '578090.pdf', 'approved'),
(56, 'teacher3 demo', 'demo', 'txt', 'teacher2', '2017-07-18 23:38:16', 'Mechanical', '565834.txt', 'approved'),
(55, 'teacher title', 'demo desc', 'zip', 'teacher', '2017-07-22 00:32:02', 'Mechanical', '898387.zip', 'approved'),
(58, 'phpp demo', 'ppph demo', 'pdf', 'anirban', '2017-07-20 09:22:41', 'Computer Science', '69321.pdf', 'not approved yet'),
(54, 'user title', 'user desc', 'zip', 'student', '2017-07-18 23:38:28', 'Computer Science', '848114.zip', 'approved'),
(53, 'demo title ..', 'demo desc...', 'zip', 'user2', '2017-07-18 23:24:36', 'Electrical', '305047.zip', 'not approved yet'),
(52, 'demo title', 'demo desc......', 'pdf', 'user1', '2017-07-22 00:32:22', 'Electrical', '845248.pdf', 'approved'),
(51, 'demo 3', 'demo 3 desc....', 'pdf', 'user3', '2017-07-22 00:32:15', 'Computer Science', '437056.pdf', 'approved'),
(50, 'demo2', 'demo desc 2...', 'ppt', 'user3', '2017-07-22 00:32:36', 'Computer Science', '800920.ppt', 'approved'),
(49, 'demo title', 'demo description', 'docx', 'user3', '2017-07-18 23:38:13', 'Computer Science', '502238.docx', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(6, 3, '10806121', 0x3a3a31, '', '', '2020-07-20 09:26:45'),
(0, 3, 'test@gmail.com', 0x3a3a31, '', '', '2023-03-09 11:26:10'),
(0, 3, 'test@gmail.com', 0x3a3a31, '', '', '2023-03-14 05:53:40'),
(0, 3, 'test@gmail.com', 0x3a3a31, '', '', '2023-03-14 08:15:08'),
(0, 3, 'test@gmail.com', 0x3a3a31, '', '', '2023-03-14 09:52:21'),
(0, 3, 'test@gmail.com', 0x3a3a31, '', '', '2023-03-14 09:53:31'),
(0, 3, 'test@gmail.com', 0x3a3a31, '', '', '2023-03-14 11:47:53');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `contactNo` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) DEFAULT NULL,
  `passUdateDate` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(3, '10806121', 'Anuj', '', 'kumar', 'male', 1234567890, 'test@gmail.com', 'Test@123', '2020-07-20 09:26:18', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(225) NOT NULL,
  `played_on` varchar(225) NOT NULL,
  `score` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `played_on`, `score`) VALUES
(78, 'hemant@vv.com', '2017-07-31 06:52:45', 0),
(68, 'admin@gmail.com', '2017-07-31 05:01:43', 0),
(77, 'root@gmail.com', '2017-07-31 06:52:09', 1),
(70, 'anirban@gmail.com', '2017-07-31 05:58:32', 3),
(76, 'john@gmail.com', '2017-07-31 06:51:41', 1),
(72, 'local@gmail.com', '2017-07-31 06:01:27', 3),
(75, 'dfgh@fgg.nn', '2017-07-31 06:43:01', 0),
(74, 'vishal@gmail.com', '2017-07-31 06:35:35', 6),
(79, 'rupesh@dffd.cvvc', '2017-07-31 06:53:37', 5),
(80, 'hello@gmail.com', '2017-07-31 06:58:18', 5),
(0, 'jhonty@coderszine.com', '2023-03-09 12:10:11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_note`
--

CREATE TABLE `users_note` (
  `id` int(11) NOT NULL,
  `username` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `about` varchar(300) NOT NULL DEFAULT 'N/A',
  `role` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `token` varchar(225) NOT NULL,
  `gender` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `course` varchar(225) NOT NULL,
  `image` varchar(225) NOT NULL DEFAULT 'profile.jpg',
  `joindate` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_note`
--

INSERT INTO `users_note` (`id`, `username`, `name`, `about`, `role`, `email`, `token`, `gender`, `password`, `course`, `image`, `joindate`) VALUES
(24, 'user', 'user1', 'N/A', 'teacher', 'user@ndndn.cbbc', '', 'Male', '123', 'Computer Science', '107095.jpg', 'July 19, 2017'),
(23, 'teacher2', 'teacher2', 'N/A', 'teacher', 'teacher2hdh@n.fncn', '', 'Male', '$2y$10$rCjs9AHzUSVmITcRJJosgeUxJA5gJ7dZfY16ij/1xf9bzxmFAZzMq', 'Mechanical', '895979.jpg', 'July 19, 2017'),
(22, 'teacher', 'teacher', 'N/A', 'teacher', 'teacher@bfbf.nncn', '', 'Male', '$2y$10$jAk4uQiBQ6b03EVZ0/9i1ucWdNFcVV1dXYj4X2f8uZ4Xd81hBkauG', 'Mechanical', '839669.jpg', 'July 19, 2017'),
(12, 'root', 'admin root', 'N/A', 'admin', 'root@gmail.com', '', 'N/A', '$2y$10$UExd.f8vQXogrZELXF8KGulQJKUn32p8x4B5SVQ7V/D6.mrSAkAjW', 'Computer Science', 'profile.jpg', '2000-01-01'),
(21, 'student', 'student4', 'N/A', 'teacher', 'user4@gmai.com', '', 'Female', '$2y$10$8NTdzG/HXZq5d23o9IqteOY3vWZg75hC99tkuU60/ivcqiQ1sho6.', 'Computer Science', 'profile.jpg', 'July 19, 2017'),
(18, 'user1', 'User 1', 'N/A', 'teacher', 'user1@gmail.com', '', 'Male', '$2y$10$LS76ATZ/jRN/M/pDAyfJmOkNI1MpF08T8NzjNcK.MZKpbjkeMKdMC', 'Electrical', '180812.jpg', 'July 19, 2017'),
(19, 'user2', 'user2', 'i am user', 'student', 'user2@gmail.com', '', 'Female', '$2y$10$OCazXxzd6FM.V2afvmapqOGxVj8Gac3zN.2tlmuO1v1Y3103dqhti', 'Electrical', 'profile.jpg', 'July 19, 2017'),
(20, 'user3', 'user3', 'N/A', 'teacher', 'user3@gmail.com', '', 'Male', '$2y$10$DEKxq9z1r8sWPSzj2XL7LOlT.cUWZv1EbTGZlrXO2VkiBbIuRfoBu', 'Computer Science', 'profile.jpg', 'July 19, 2017'),
(26, 'user6', 'user6', 'N/A', 'teacher', 'user6@gmail.com', '', 'Male', '$2y$10$8OKm1GXZtf4vWTafLHgmjeFls3SvCTWiyXJVhnPr4XOYLeXGOPybW', 'Computer Science', '382911.jpg', 'July 22, 2017'),
(25, 'anirban', 'Anirban', 'N/A', 'teacher', 'anirban.root@gmail.com', 'fbab3eec077a38d565e9c93442178b7d', 'Male', '$2y$10$h4i29DiU8zeLT7EOMLka3uTTCtAxtU.DAExBhywJF3SIRwpHq4wuG', 'Computer Science', '441172.jpg', 'July 20, 2017'),
(27, 'user9', 'hfg gghh', 'N/A', 'teacher', 'ffhhgh@jjdj.vjjv', '', 'Male', '$2y$10$Z1hwjfIGjC8/Zv0NFy/BDO0W.A6K4ZAWLPrW8.himo7YAi0sC7Kjy', 'Computer Science', 'profile.jpg', 'July 22, 2017');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_admin`
--
ALTER TABLE `t_admin`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `t_status`
--
ALTER TABLE `t_status`
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`s_detid`),
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `t_userdoc`
--
ALTER TABLE `t_userdoc`
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `t_usermark`
--
ALTER TABLE `t_usermark`
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `t_user_data`
--
ALTER TABLE `t_user_data`
  ADD PRIMARY KEY (`s_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
