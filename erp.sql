-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2023 at 06:37 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `erp`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumni_questions`
--

CREATE TABLE `alumni_questions` (
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
-- Dumping data for table `alumni_questions`
--

INSERT INTO `alumni_questions` (`qid`, `qno`, `question`, `ans1`, `ans2`, `ans3`, `ans4`, `correct_answer`) VALUES
(5, 1, 'Rate relevance of the courses in the program?', 'Best', 'Better', 'Good', 'Poor', ''),
(6, 2, 'Rate the sequence of the courses in  the programs?', 'Best', 'Better', 'Good', 'Poor', ''),
(7, 3, 'Rate the skills and competencies derived from the courses?', 'Best', 'Better', 'Good', 'Poor', ''),
(8, 4, 'Rate the sequence of the topics in the units?', 'Best', 'Better', 'Good', 'Poor', ''),
(9, 5, 'Rate the offering of the courses in relation to the specialization streams?', 'Best', 'Better', 'Good', 'Poor', ''),
(10, 6, 'Rate the offering of the electives in relation to the technological developments?', 'Best', 'Better', 'Good', 'Poor', ''),
(11, 7, 'Rate the courses in the programs, which are skills oriented suits to the Industry requirements ?', 'Best', 'Better', 'Good', 'Poor', ''),
(12, 8, 'Rate the domain used for designing the experiments in terms of the suitability of the tools used?', 'Best', 'Better', 'Good', 'Poor', ''),
(13, 9, 'Rate the standard of experiments designed in lab courses in solving the real life applications?', 'Best', 'Better', 'Good', 'Poor', ''),
(14, 10, 'Rate the courses that you have learnt in curriculum which  directly helps in your current Job?', 'Best', 'Better', 'Good', 'Poor', '');

-- --------------------------------------------------------

--
-- Table structure for table `class_result`
--

CREATE TABLE `class_result` (
  `class_result_id` int(11) NOT NULL,
  `roll_no` varchar(30) NOT NULL,
  `course_code` varchar(30) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `semester` varchar(11) NOT NULL,
  `total_marks` varchar(11) NOT NULL,
  `obtain_marks` varchar(11) NOT NULL,
  `result_date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_result`
--

INSERT INTO `class_result` (`class_result_id`, `roll_no`, `course_code`, `subject_code`, `semester`, `total_marks`, `obtain_marks`, `result_date`) VALUES
(1, 'MCS-S19-1', 'MCS', 'OOP', '2', '100', '98', '10-03-20'),
(2, '25', 'MCS', 'OOP', '2', '100', '93', '10-03-20'),
(3, '27', 'MCS', 'OOP', '2', '100', '92', '10-03-20'),
(4, '29', 'MCS', 'OOP', '2', '100', '98', '10-03-20'),
(5, '31', 'MCS', 'OOP', '2', '100', '96', '10-03-20'),
(6, '33', 'MCS', 'OOP', '2', '100', '97', '10-03-20'),
(7, '34', 'MCS', 'OOP', '2', '100', '94', '10-03-20'),
(8, '35', 'MCS', 'OOP', '2', '100', '91', '10-03-20'),
(9, '36', 'MCS', 'OOP', '2', '100', '90', '10-03-20'),
(10, 'MCS-S19-1', 'MCS', 'DBMS', '2', '100', '98', '10-03-20'),
(11, '25', 'MIT', 'ITP', '2', '100', '98', '10-03-20'),
(12, '27', 'MIT', 'ITP', '2', '100', '98', '10-03-20'),
(13, '29', 'MIT', 'ITP', '2', '100', '98', '10-03-20'),
(14, '31', 'MIT', 'ITP', '2', '100', '98', '10-03-20'),
(15, '33', 'MIT', 'ITP', '2', '100', '98', '10-03-20'),
(16, 'MCS-S19-1', 'MCS', 'SE', '2', '100', '64', '10-03-20'),
(17, '35', 'MIT', 'ITP', '2', '100', '98', '10-03-20'),
(18, '36', 'MIT', 'ITP', '2', '100', '98', '10-03-20'),
(28, 'MCS-S19-1', 'MCS', 'DLD', '2', '100', '76', '29-03-20'),
(35, '', '', '', '', '', '', '29-03-20'),
(36, '', '', '', '', '', '', '29-03-20'),
(37, 'MCS-S19-1', 'MCS', 'SE', '2', '100', '80', '30-03-20'),
(38, '', '', '', '', '', '', '30-03-20'),
(39, '', '', '', '', '', '', '30-03-20'),
(40, '', '', '', '', '', '', '30-03-20'),
(41, '', '', '', '', '', '', '30-03-20'),
(42, '', '', '', '', '', '', '30-03-20'),
(43, '', '', '', '', '', '', '30-03-20'),
(44, '', '', '', '', '', '', '30-03-20'),
(45, '', '', '', '', '', '', '30-03-20'),
(46, 'MCS-S19-1', 'MCS', 'SE', '2', '100', '80', '30-03-20'),
(47, '', '', '', '', '', '', '30-03-20'),
(48, '', '', '', '', '', '', '30-03-20'),
(49, '', '', '', '', '', '', '30-03-20'),
(50, '', '', '', '', '', '', '30-03-20'),
(51, '', '', '', '', '', '', '30-03-20'),
(52, '', '', '', '', '', '', '30-03-20'),
(53, '', '', '', '', '', '', '30-03-20'),
(54, '', '', '', '', '', '', '30-03-20');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_code` varchar(10) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `semester_or_year` varchar(10) NOT NULL,
  `no_of_year` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_code`, `course_name`, `semester_or_year`, `no_of_year`) VALUES
('AHL', 'Allied Health Science', 'Semester', 4),
('B.Arch', 'Bachular in Architecture', 'Semester', 5),
('B.Fashion', 'Bachular in Fashion and Design', 'Semester', 4),
('BBA', 'Bachular in Business Administration', 'Semester', 2),
('BSAI', 'Bachular in Artificial Inteligence', 'Semester', 2),
('BSEE', 'Bachular in Electrical Engineering', 'Semester', 4),
('M.Arch', 'Masters in Architecture', 'Semester', 2),
('M.Com', 'Master in Commerce', 'Semester', 2),
('MCS', 'Master in Computer Science', 'Semester', 2),
('MIT', 'Master in Information Technology', 'Semester', 2);

-- --------------------------------------------------------

--
-- Table structure for table `course_subjects`
--

CREATE TABLE `course_subjects` (
  `subject_code` varchar(10) NOT NULL,
  `subject_name` varchar(50) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `credit_hours` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_subjects`
--

INSERT INTO `course_subjects` (`subject_code`, `subject_name`, `course_code`, `semester`, `credit_hours`) VALUES
('CSPD', 'Communication Skills and Personality Development', 'MCS', 1, 3),
('DBMS', 'Database Management System', 'MCS', 2, 4),
('DLD', 'Data Logic and Design', 'MCS', 2, 3),
('Ds', 'Discrete Structure', 'MCS', 1, 3),
('I2C', 'Introduction to Computer Science', 'MCS', 1, 4),
('ITP', 'IT Project Management System', 'MIT', 2, 3),
('MBAD', 'Mobile Application Development', 'MIT', 2, 4),
('OOP', 'Object Oriented Programming', 'MCS', 2, 4),
('PF', 'Programming Fundamental', 'BSAI', 1, 4),
('SE', 'Software Engineering', 'MCS', 2, 3),
('WEB', 'Web Development', 'MCS', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `employers_questions`
--

CREATE TABLE `employers_questions` (
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
-- Dumping data for table `employers_questions`
--

INSERT INTO `employers_questions` (`qid`, `qno`, `question`, `ans1`, `ans2`, `ans3`, `ans4`, `correct_answer`) VALUES
(5, 1, 'Rate relevance of the courses in the program?', 'Best', 'Better', 'Good', 'Poor', ''),
(6, 2, 'Rate the sufficiency of the courses in the program, related to the industry requirements?', 'Best', 'Better', 'Good', 'Poor', ''),
(7, 3, 'Rate the competencies in relation to the course content?', 'Best', 'Better', 'Good', 'Poor', ''),
(8, 4, 'Rate the relevance of the topics in the courses to solve the Industrial problems?', 'Best', 'Better', 'Good', 'Poor', ''),
(9, 5, 'Rate the offering of the major courses in relation to the specialization streams?', 'Best', 'Better', 'Good', 'Poor', ''),
(10, 6, 'Rate the offering of the electives in relation to the technological developments?', 'Best', 'Better', 'Good', 'Poor', ''),
(11, 7, 'Rate the courses which are skills-oriented cater to the Industry needs?', 'Best', 'Better', 'Good', 'Poor', ''),
(12, 8, 'Rate the applicability of the domains and the tools used for designing the experiments in terms of existing practices in the Industry?', 'Best', 'Better', 'Good', 'Poor', ''),
(13, 9, 'Rate the hands-on training in labs and workshops embedded in the syllabus, enhances industry readiness?', 'Best', 'Better', 'Good', 'Poor', ''),
(14, 10, 'Rate the standard of experiments designed in lab courses in solving the real life applications?', 'Best', 'Better', 'Good', 'Poor', '');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_questions`
--

CREATE TABLE `faculty_questions` (
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
-- Dumping data for table `faculty_questions`
--

INSERT INTO `faculty_questions` (`qid`, `qno`, `question`, `ans1`, `ans2`, `ans3`, `ans4`, `correct_answer`) VALUES
(5, 1, 'Rate the clarity and appropriateness of the learning objectives of all topics in each course?', 'Best', 'Better', 'Good', 'Poor', ''),
(6, 2, 'Rate the structure of curriculum and syllabus in relation to skill and competencies ?', 'Best', 'Better', 'Good', 'Poor', ''),
(7, 3, 'Rate the standard of the text books and reference books of each course?', 'Best', 'Better', 'Good', 'Poor', ''),
(8, 4, 'Rate the effectiveness of system followed for the design and development of curriculum.?', 'Best', 'Better', 'Good', 'Poor', ''),
(9, 5, 'Rate the continual process of updating  curriculum time to time.?', 'Best', 'Better', 'Good', 'Poor', ''),
(10, 6, 'Rate the distribution of the contact hours among the course components (Lecture-Tutorial-Practical)?', 'Best', 'Better', 'Good', 'Poor', ''),
(11, 7, 'Rate the balancing of the theory and practical courses in curriculum.?', 'Best', 'Better', 'Good', 'Poor', ''),
(12, 8, 'Rate the electives offered in relation to the technological developments?', 'Best', 'Better', 'Good', 'Poor', '');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Role` varchar(10) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Role`, `user_id`, `Password`) VALUES
('Admin', 'admin', 'admin123'),
('Staff', 'staff', 'staff123'),
('Student', 'stud', 'stud123');
('Parent', 'parent', 'p123');

-- --------------------------------------------------------
--- i have changed the above table----- --------------------

CREATE TABLE `login` (
  `Role` varchar(10) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `account` varchar(10) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


SELECT * FROM teacher_info WHERE teacher_id = '5';

INSERT INTO `login` (`Role`, `user_id`, `Password`, `account`) VALUES
('Admin', 'admin', 'admin123', 'Activate'),
('Staff', 'staff', 'staff123', 'Activate'),
('Student', 'stud', 'stud123', 'Activate'),
('Parent', 'par', 'par123', 'Activate');

----------------     --------------------   -----------------------
-
-- Table structure for table `mytable`
--

CREATE TABLE `mytable` (
  `id` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `course_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mytable`
--

INSERT INTO `mytable` (`id`, `name`, `course_code`) VALUES
('B.Fashion-S19-1', 'husnain', 'B.Fashion'),
('B.Fashion-S19-2', 'razarai663@gmail.com', 'B.Fashion'),
('MCS-S19-1', 'Muhammad Husnain Raza', 'MCS'),
('MCS-S19-2', 'razarai663@gmail.com', 'MCS'),
('MIT-S19-1', 'Muhammad Husnain Raza', 'MIT');

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
(5, 1, 'Rate the sequence of the courses in each semester?', 'Best', 'Better', 'Good', 'Poor', ''),
(6, 2, 'Rate the sequence of the units in each course?', 'Best', 'Better', 'Good', 'Poor', ''),
(7, 3, 'Rate the relevance of the courses that you have studied in relation to the competencies expected out of the course?', 'Best', 'Better', 'Good', 'Poor', ''),
(8, 4, 'Rate the relevance of the units in Syllabus relevant to the course?', 'Best', 'Better', 'Good', 'Poor', ''),
(9, 5, 'Rate the distribution of the contact hours among the course components (Lecture-Tutorial-Practical)?', 'Best', 'Better', 'Good', 'Poor', ''),
(10, 6, 'Rate the method of allocation of the credits to the courses?', 'Best', 'Better', 'Good', 'Poor', ''),
(11, 7, 'Rate the offering of the electives in terms of their relevance to the specialization streams?', 'Best', 'Better', 'Good', 'Poor', ''),
(12, 8, 'Rate the electives offered in relation to the technological developments?', 'Best', 'Better', 'Good', 'Poor', ''),
(13, 9, 'Rate the standard of the text Books and reference books of each course?', 'Best', 'Better', 'Good', 'Poor', ''),
(14, 10, 'Rate the size of syllabus in terms of students learning ability?', 'Best', 'Better', 'Good', 'Poor', ''),
(15, 11, 'Rate the courses in terms of self learning or teacher directed learning by, considering the design of the courses?', 'Best', 'Better', 'Good', 'Poor', ''),
(16, 12, 'Rate the guest lectures, workshops and industry visits organized, relevance to the curriculum?', 'Best', 'Better', 'Good', 'Poor', ''),
(17, 13, 'Rate the balancing of the theory and practical courses in each semester?', 'Best', 'Better', 'Good', 'Poor', ''),
(18, 14, 'Rate the evaluation scheme designed for each course?', 'Best', 'Better', 'Good', 'Poor', ''),
(19, 15, 'Rate the outcomes stated for each course and attainment of outcomes?', 'Best', 'Better', 'Good', 'Poor', ''),
(20, 16, 'Rate the skills and competencies derived from the courses?', 'Best', 'Better', 'Good', 'Poor', ''),
(21, 17, 'Rate the composition of the courses in terms of basic sciences, engineering sciences, humanities, discipline core, discipline elective, open elective, and project?', 'Best', 'Better', 'Good', 'Poor', ''),
(22, 18, 'Rate the courses having lab components which give scope to experimental learning?', 'Best', 'Better', 'Good', 'Poor', ''),
(23, 19, 'Rate the domain used for designing the experiments for the lab components?', 'Best', 'Better', 'Good', 'Poor', ''),
(24, 20, 'Rate the standard of experiments designed in lab courses in solving the real life applications?', 'Best', 'Better', 'Good', 'Poor', '');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` int(11) NOT NULL,
  `session` varchar(30) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`session_id`, `session`, `created_date`) VALUES
(1, 'S19', '2020-03-12 01:50:44');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance`
--

CREATE TABLE `student_attendance` (
  `attendance_id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `attendance` int(11) NOT NULL,
  `attendance_date` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_attendance`
--

INSERT INTO `student_attendance` (`attendance_id`, `course_code`, `subject_code`, `semester`, `student_id`, `attendance`, `attendance_date`) VALUES
(1, 'MCS', 'DBMS', 2, 'MCS-S19-1', 1, '15-03-20'),
(2, 'MCS', 'DBMS', 2, 'MCS-S19-1', 1, '15-03-20'),
(3, 'MCS', 'DBMS', 2, 'MCS-S19-1', 1, '15-03-20'),
(4, 'MCS', 'DBMS', 2, 'MCS-S19-1', 0, '15-03-20'),
(5, 'MCS', 'DLD', 2, 'MCS-S19-1', 1, '15-03-20'),
(6, 'MCS', 'OOP', 2, 'MCS-S19-1', 1, '15-03-20'),
(7, 'MCS', 'SE', 2, 'MCS-S19-1', 0, '15-03-20'),
(8, 'MCS', 'WEB', 2, 'MCS-S19-1', 1, '15-03-20');

-- --------------------------------------------------------

--
-- Table structure for table `student_courses`
--

CREATE TABLE `student_courses` (
  `student_course_id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `roll_no` varchar(10) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `session` varchar(10) NOT NULL,
  `assign_date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_courses`
--

INSERT INTO `student_courses` (`student_course_id`, `course_code`, `semester`, `roll_no`, `subject_code`, `session`, `assign_date`) VALUES
(1, 'MCS', 2, 'MCS-S19-1', 'OOP', 'S19', '15-03-20'),
(2, 'MCS', 2, 'MCS-S19-1', 'DBMS', 'S19', '15-03-20'),
(3, 'MCS', 2, 'MCS-S19-1', 'DLD', 'S19', '15-03-20'),
(4, 'MCS', 2, 'MCS-S19-1', 'SE', 'S19', '15-03-20'),
(5, 'MCS', 2, 'MCS-S19-1', 'WEB', 'S19', '15-03-20');

-- --------------------------------------------------------

--
-- Table structure for table `student_fee`
--

CREATE TABLE `student_fee` (
  `fee_voucher` int(11) NOT NULL,
  `roll_no` varchar(30) NOT NULL,
  `amount` int(11) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_fee`
--

INSERT INTO `student_fee` (`fee_voucher`, `roll_no`, `amount`, `posting_date`, `status`) VALUES
(1, 'MCS-S19-1', 23455, '2020-03-29 16:54:36', 'Paid'),
(2, 'MCS-S19-1', 20093, '2020-03-30 18:05:39', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `roll_no` varchar(20) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `father_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile_no` varchar(11) NOT NULL,
  `course_code` varchar(11) NOT NULL,
  `session` varchar(10) NOT NULL,
  `profile_image` varchar(100) NOT NULL,
  `prospectus_issued` varchar(10) NOT NULL,
  `prospectus_amount` varchar(10) NOT NULL,
  `form_b` varchar(20) NOT NULL,
  `applicant_status` varchar(20) NOT NULL,
  `application_status` varchar(20) NOT NULL,
  `cnic` varchar(15) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `other_phone` varchar(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `permanent_address` varchar(150) NOT NULL,
  `current_address` varchar(150) NOT NULL,
  `place_of_birth` varchar(150) NOT NULL,
  `matric_complition_date` varchar(10) NOT NULL,
  `matric_awarded_date` varchar(10) NOT NULL,
  `matric_certificate` varchar(100) NOT NULL,
  `fa_complition_date` varchar(10) NOT NULL,
  `fa_awarded_date` varchar(10) NOT NULL,
  `fa_certificate` varchar(100) NOT NULL,
  `ba_complition_date` varchar(10) NOT NULL,
  `ba_awarded_date` varchar(10) NOT NULL,
  `ba_certificate` varchar(100) NOT NULL,
  `semester` int(11) NOT NULL,
  `total_marks` int(11) NOT NULL,
  `obtain_marks` int(11) NOT NULL,
  `state` varchar(20) NOT NULL,
  `admission_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_attendance`
--

CREATE TABLE `teacher_attendance` (
  `attendance_id` int(11) NOT NULL,
  `teacher_id` varchar(30) NOT NULL,
  `attendance` int(11) NOT NULL,
  `attendance_date` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_attendance`
--

INSERT INTO `teacher_attendance` (`attendance_id`, `teacher_id`, `attendance`, `attendance_date`) VALUES
(1, '3', 1, '09-03-20'),
(2, '3', 1, '10-03-20'),
(3, '3', 1, '11-04-20'),
(4, '3', 1, '30-03-20'),
(5, '2', 0, '30-03-20');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_courses`
--

CREATE TABLE `teacher_courses` (
  `teacher_courses_id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `teacher_id` varchar(10) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `assign_date` varchar(10) NOT NULL,
  `total_classes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_courses`
--

INSERT INTO `teacher_courses` (`teacher_courses_id`, `course_code`, `semester`, `teacher_id`, `subject_code`, `assign_date`, `total_classes`) VALUES
(1, 'MCS', 2, '3', 'OOP', '27-03-20', 30),
(2, 'MCS', 2, '1', 'DBMS', '27-03-20', 30),
(3, 'MCS', 2, '3', 'DLD', '27-03-20', 30),
(4, 'MCS', 2, '1', 'SE', '27-03-20', 30),
(5, 'MCS', 2, '3', 'WEB', '27-03-20', 30);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_info`
--

CREATE TABLE `teacher_info` (
  `teacher_id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `father_name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_no` varchar(11) NOT NULL,
  `profile_image` blob NOT NULL,
  `teacher_status` varchar(10) NOT NULL,
  `application_status` varchar(10) NOT NULL,
  `cnic` varchar(15) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `other_phone` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `permanent_address` varchar(100) NOT NULL,
  `current_address` varchar(100) NOT NULL,
  `place_of_birth` varchar(50) NOT NULL,
  `matric_complition_date` varchar(10) NOT NULL,
  `matric_awarded_date` varchar(10) NOT NULL,
  `matric_certificate` varchar(100) NOT NULL,
  `fa_complition_date` varchar(10) NOT NULL,
  `fa_awarded_date` varchar(10) NOT NULL,
  `fa_certificate` varchar(100) NOT NULL,
  `ba_complition_date` varchar(10) NOT NULL,
  `ba_awarded_date` varchar(10) NOT NULL,
  `ba_certificate` varchar(100) NOT NULL,
  `ma_complition_date` varchar(10) NOT NULL,
  `ma_awarded_date` varchar(100) NOT NULL,
  `ma_certificate` varchar(101) NOT NULL,
  `last_qualification` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `hire_date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_info`
--

INSERT INTO `teacher_info` (`teacher_id`, `first_name`, `middle_name`, `last_name`, `father_name`, `email`, `phone_no`, `profile_image`, `teacher_status`, `application_status`, `cnic`, `dob`, `other_phone`, `gender`, `permanent_address`, `current_address`, `place_of_birth`, `matric_complition_date`, `matric_awarded_date`, `matric_certificate`, `fa_complition_date`, `fa_awarded_date`, `fa_certificate`, `ba_complition_date`, `ba_awarded_date`, `ba_certificate`, `ma_complition_date`, `ma_awarded_date`, `ma_certificate`, `last_qualification`, `state`, `hire_date`) VALUES
(2, 'Teacher', '1', '1', '', 'staff1@gmail.com', '9807367624', 'images.png', 'Permanent', 'Yes', '8793', '1987-01-17', 0, 'Male', 'abc', 'def', 'ghij', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '18-06-21');

-- --------------------------------------------------------
INSERT INTO `teacher_info` (`teacher_id`, `first_name`, `middle_name`, `last_name`, `father_name`, `email`, `phone_no`, `profile_image`, `teacher_status`, `application_status`, `cnic`, `dob`, `other_phone`, `gender`, `permanent_address`, `current_address`, `place_of_birth`, `matric_complition_date`, `matric_awarded_date`, `matric_certificate`, `fa_complition_date`, `fa_awarded_date`, `fa_certificate`, `ba_complition_date`, `ba_awarded_date`, `ba_certificate`, `ma_complition_date`, `ma_awarded_date`, `ma_certificate`, `last_qualification`, `state`, `hire_date`) VALUES
(1, 'Suresh', 'Kumar', 'Reddy', 'Ramesh Reddy', 'suresh.reddy@example.com', '9876543210', '', 'Active', 'Approved', '1234567890123', '1985-09-15', 9876543210, 'Male', '12A, Park Road, Hyderabad', '34B, Lake View, Hyderabad', 'Hyderabad', '2000-06-30', '2001-07-15', 'Matric_Certificate.pdf', '2005-06-30', '2006-07-15', 'FA_Certificate.pdf', '2008-06-30', '2009-07-15', 'BA_Certificate.pdf', '2012-06-30', '2013-07-15', 'MA_Certificate.pdf', 'Master\'s Degree', 'Telangana', '2015-02-15'),
(2, 'Deepa', 'Lakshmi', 'Nair', 'Rajan Nair', 'deepa.nair@example.com', '9876543211', '', 'Active', 'Pending', '2345678901234', '1989-07-22', 9876543211, 'Female', '45C, Beach Road, Kochi', '78D, Palm Avenue, Kochi', 'Kochi', '2005-05-30', '2006-06-15', 'Matric_Certificate.pdf', '2009-05-30', '2010-06-15', 'FA_Certificate.pdf', '2012-05-30', '2013-06-15', 'BA_Certificate.pdf', '2016-05-30', '2017-06-15', 'MA_Certificate.pdf', 'Master\'s Degree', 'Kerala', '2020-01-10'),
(3, 'Rajesh', 'Krishnan', 'Menon', 'Gopal Menon', 'rajesh.menon@example.com', '8765432109', '', 'Active', 'Approved', '3456789012345', '1987-12-18', 8765432109, 'Male', '56E, MG Road, Chennai', '89F, Lake View, Chennai', 'Chennai', '2004-05-30', '2005-06-15', 'Matric_Certificate.pdf', '2008-05-30', '2009-06-15', 'FA_Certificate.pdf', '2011-05-30', '2012-06-15', 'BA_Certificate.pdf', '2015-05-30', '2016-06-15', 'MA_Certificate.pdf', 'Master\'s Degree', 'Tamil Nadu', '2019-03-20'),
(4, 'Divya', 'Rajendran', 'Nambiar', 'Suresh Nambiar', 'divya.nambiar@example.com', '9876543222', '', 'Active', 'Approved', '4567890123456', '1990-02-08', 9876543222, 'Female', '67G, Beach Road, Trivandrum', '90H, Palm Avenue, Trivandrum', 'Trivandrum', '2006-06-30', '2007-07-15', 'Matric_Certificate.pdf', '2010-06-30', '2011-07-15', 'FA_Certificate.pdf', '2013-06-30', '2014-07-15', 'BA_Certificate.pdf', '2017-06-30', '2018-07-15', 'MA_Certificate.pdf', 'Master\'s Degree', 'Kerala', '2022-05-05'),
(5, 'Karthik', 'Ganesh', 'Iyer', 'Srinivas Iyer', 'karthik.iyer@example.com', '8765432111', '', 'Active', 'Pending', '5678901234567', '1986-04-30', 8765432111, 'Male', '78I, MG Road, Bangalore', '12J, Lake View, Bangalore', 'Bangalore', '2002-04-30', '2003-05-15', 'Matric_Certificate.pdf', '2007-04-30', '2008-05-15', 'FA_Certificate.pdf', '2010-04-30', '2011-05-15', 'BA_Certificate.pdf', '2014-04-30', '2015-05-15', 'MA_Certificate.pdf', 'Master\'s Degree', 'Karnataka', '2018-09-10'),
(6, 'Meenakshi', 'Radhakrishnan', 'Menon', 'Rajesh Menon', 'meenakshi.menon@example.com', '9876543233', '', 'Active', 'Approved', '6789012345678', '1988-10-14', 9876543233, 'Female', '89K, Lake Road, Coimbatore', '23L, Palm View, Coimbatore', 'Coimbatore', '2004-09-30', '2005-10-15', 'Matric_Certificate.pdf', '2008-09-30', '2009-10-15', 'FA_Certificate.pdf', '2011-09-30', '2012-10-15', 'BA_Certificate.pdf', '2015-09-30', '2016-10-15', 'MA_Certificate.pdf', 'Master\'s Degree', 'Tamil Nadu', '2017-11-25'),
(7, 'Sundar', 'Rajagopal', 'Menon', 'Ramesh Menon', 'sundar.menon@example.com', '8765432122', '', 'Active', 'Approved', '7890123456789', '1989-11-28', 8765432122, 'Male', '34M, Beach Road, Kochi', '67N, Palm Avenue, Kochi', 'Kochi', '2005-06-30', '2006-07-15', 'Matric_Certificate.pdf', '2009-06-30', '2010-07-15', 'FA_Certificate.pdf', '2012-06-30', '2013-07-15', 'BA_Certificate.pdf', '2016-06-30', '2017-07-15', 'MA_Certificate.pdf', 'Master\'s Degree', 'Kerala', '2021-04-15'),
(8, 'Lalitha', 'Krishnamurthy', 'Iyengar', 'Ganesh Iyengar', 'lalitha.iyengar@example.com', '9876543244', '', 'Active', 'Pending', '8901234567890', '1987-03-22', 9876543244, 'Female', '12O, MG Road, Chennai', '45P, Lake View, Chennai', 'Chennai', '2003-05-30', '2004-06-15', 'Matric_Certificate.pdf', '2007-05-30', '2008-06-15', 'FA_Certificate.pdf', '2010-05-30', '2011-06-15', 'BA_Certificate.pdf', '2014-05-30', '2015-06-15', 'MA_Certificate.pdf', 'Master\'s Degree', 'Tamil Nadu', '2019-08-20'),
(9, 'Vijay', 'Kumar', 'Menon', 'Prakash Menon', 'vijay.menon@example.com', '8765432133', '', 'Active', 'Approved', '9012345678901', '1991-08-05', 8765432133, 'Male', '56Q, Beach Road, Trivandrum', '78R, Palm Avenue, Trivandrum', 'Trivandrum', '2007-06-30', '2008-07-15', 'Matric_Certificate.pdf', '2011-06-30', '2012-07-15', 'FA_Certificate.pdf', '2014-06-30', '2015-07-15', 'BA_Certificate.pdf', '2018-06-30', '2019-07-15', 'MA_Certificate.pdf', 'Master\'s Degree', 'Kerala', '2023-02-28'),
(10, 'Sarala', 'Rajagopal', 'Nair', 'Gopal Nair', 'sarala.nair@example.com', '9876543255', '', 'Active', 'Pending', '1234567890123', '1986-07-10', 9876543255, 'Female', '67S, Beach Road, Bangalore', '90T, Lake View, Bangalore', 'Bangalore', '2002-07-10', '2003-08-15', 'Matric_Certificate.pdf', '2006-07-10', '2007-08-15', 'FA_Certificate.pdf', '2009-07-10', '2010-08-15', 'BA_Certificate.pdf', '2013-07-10', '2014-08-15', 'MA_Certificate.pdf', 'Master\'s Degree', 'Karnataka', '2017-11-05'),
(11, 'Sanjay', 'Gupta', 'Krishnan', 'Rajesh Krishnan', 'sanjay.gupta@example.com', '8765432144', '', 'Active', 'Approved', '2345678901234', '1992-04-25', 8765432144, 'Male', '12U, Park Road, Hyderabad', '34V, Lake View, Hyderabad', 'Hyderabad', '2008-05-30', '2009-06-15', 'Matric_Certificate.pdf', '2012-05-30', '2013-06-15', 'FA_Certificate.pdf', '2015-05-30', '2016-06-15', 'BA_Certificate.pdf', '2019-05-30', '2020-06-15', 'MA_Certificate.pdf', 'Master\'s Degree', 'Telangana', '2022-03-15'),
(12, 'Latha', 'Ravindran', 'Menon', 'Suresh Menon', 'latha.menon@example.com', '9876543266', '', 'Active', 'Pending', '3456789012345', '1988-12-15', 9876543266, 'Female', '56W, MG Road, Chennai', '89X, Lake View, Chennai', 'Chennai', '2004-06-30', '2005-07-15', 'Matric_Certificate.pdf', '2008-06-30', '2009-07-15', 'FA_Certificate.pdf', '2011-06-30', '2012-07-15', 'BA_Certificate.pdf', '2015-06-30', '2016-07-15', 'MA_Certificate.pdf', 'Master\'s Degree', 'Tamil Nadu', '2019-09-10'),
(13, 'Ramesh', 'Sridharan', 'Iyer', 'Srinivasan Iyer', 'ramesh.iyer@example.com', '8765432155', '', 'Active', 'Approved', '4567890123456', '1987-02-20', 8765432155, 'Male', '67Y, Beach Road, Kochi', '90Z, Palm Avenue, Kochi', 'Kochi', '2003-04-30', '2004-05-15', 'Matric_Certificate.pdf', '2007-04-30', '2008-05-15', 'FA_Certificate.pdf', '2010-04-30', '2011-05-15', 'BA_Certificate.pdf', '2013-04-30', '2014-05-15', 'MA_Certificate.pdf', 'Master\'s Degree', 'Kerala', '2018-10-05'),
(14, 'Arun', 'Rajendran', 'Menon', 'Gopal Menon', 'arun.menon@example.com', '9876543277', '', 'Active', 'Approved', '5678901234567', '1989-09-12', 9876543277, 'Male', '78AA, Beach Road, Trivandrum', '90BB, Palm Avenue, Trivandrum', 'Trivandrum', '2005-08-30', '2006-09-15', 'Matric_Certificate.pdf', '2009-08-30', '2010-09-15', 'FA_Certificate.pdf', '2012-08-30', '2013-09-15', 'BA_Certificate.pdf', '2016-08-30', '2017-09-15', 'MA_Certificate.pdf', 'Master\'s Degree', 'Kerala', '2021-05-20'),
(15, 'Anita', 'Kumar', 'Nair', 'Prakash Nair', 'anita.nair@example.com', '8765432166', '', 'Active', 'Pending', '8901234567890', '1991-06-08', 8765432166, 'Female', '12CC, MG Road, Bangalore', '34DD, Lake View, Bangalore', 'Bangalore', '2007-07-30', '2008-08-15', 'Matric_Certificate.pdf', '2011-07-30', '2012-08-15', 'FA_Certificate.pdf', '2014-07-30', '2015-08-15', 'BA_Certificate.pdf', '2018-07-30', '2019-08-15', 'MA_Certificate.pdf', 'Master\'s Degree', 'Karnataka', '2022-04-15'),
(16, 'Radha', 'Ganesh', 'Menon', 'Rajan Menon', 'radha.menon@example.com', '9876543288', '', 'Active', 'Approved', '1234567890123', '1986-01-05', 9876543288, 'Female', '56EE, Beach Road, Chennai', '78FF, Lake View, Chennai', 'Chennai', '2002-08-30', '2003-09-15', 'Matric_Certificate.pdf', '2006-08-30', '2007-09-15', 'FA_Certificate.pdf', '2009-08-30', '2010-09-15', 'BA_Certificate.pdf', '2012-08-30', '2013-09-15', 'MA_Certificate.pdf', 'Master\'s Degree', 'Tamil Nadu', '2017-10-25'),
(17, 'Vikram', 'Rajagopal', 'Iyengar', 'Ganesh Iyengar', 'vikram.iyengar@example.com', '8765432177', '', 'Active', 'Approved', '2345678901234', '1990-03-18', 8765432177, 'Male', '67GG, Beach Road, Kochi', '90HH, Palm Avenue, Kochi', 'Kochi', '2006-09-30', '2007-10-15', 'Matric_Certificate.pdf', '2010-09-30', '2011-10-15', 'FA_Certificate.pdf', '2013-09-30', '2014-10-15', 'BA_Certificate.pdf', '2017-09-30', '2018-10-15', 'MA_Certificate.pdf', 'Master\'s Degree', 'Kerala', '2021-08-20'),
(18, 'Deepak', 'Krishnan', 'Menon', 'Rajesh Menon', 'deepak.menon@example.com', '9876543299', '', 'Active', 'Pending', '3456789012345', '1988-11-15', 9876543299, 'Male', '78II, Beach Road, Trivandrum', '90JJ, Palm Avenue, Trivandrum', 'Trivandrum', '2004-11-30', '2005-12-15', 'Matric_Certificate.pdf', '2008-11-30', '2009-12-15', 'FA_Certificate.pdf', '2011-11-30', '2012-12-15', 'BA_Certificate.pdf', '2015-11-30', '2016-12-15', 'MA_Certificate.pdf', 'Master\'s Degree', 'Kerala', '2020-06-05'),
(19, 'Rahul', 'Ravindran', 'Nair', 'Suresh Nair', 'rahul.nair@example.com', '8765432100', '', 'Active', 'Pending', '4567890123456', '1992-07-28', 8765432100, 'Male', '12KK, MG Road, Bangalore', '34LL, Lake View, Bangalore', 'Bangalore', '2008-10-30', '2009-11-15', 'Matric_Certificate.pdf', '2012-10-30', '2013-11-15', 'FA_Certificate.pdf', '2015-10-30', '2016-11-15', 'BA_Certificate.pdf', '2019-10-30', '2020-11-15', 'MA_Certificate.pdf', 'Master\'s Degree', 'Karnataka', '2023-01-28'),
(20, 'Sushma', 'Ganesh', 'Menon', 'Rajan Menon', 'sushma.menon@example.com', '9876543210', '', 'Active', 'Approved', '5678901234567', '1987-05-15', 9876543210, 'Female', '56MM, Beach Road, Chennai', '78NN, Lake View, Chennai', 'Chennai', '2003-09-30', '2004-10-15', 'Matric_Certificate.pdf', '2007-09-30', '2008-10-15', 'FA_Certificate.pdf', '2010-09-30', '2011-10-15', 'BA_Certificate.pdf', '2013-09-30', '2014-10-15', 'MA_Certificate.pdf', 'Master\'s Degree', 'Tamil Nadu', '2018-11-25');
---------------------------------------------------------

--
-- Table structure for table `teacher_salary_allowances`
--

CREATE TABLE `teacher_salary_allowances` (
  `teacher_id` int(11) NOT NULL,
  `basic_salary` int(11) NOT NULL,
  `medical_allowance` int(11) NOT NULL,
  `hr_allowance` int(11) NOT NULL,
  `scale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_salary_allowances`
--

INSERT INTO `teacher_salary_allowances` (`teacher_id`, `basic_salary`, `medical_allowance`, `hr_allowance`, `scale`) VALUES
(1, 40000, 5, 10, 15),
(2, 55000, 7, 15, 18),
(3, 43000, 5, 8, 14);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_salary_report`
--

CREATE TABLE `teacher_salary_report` (
  `salary_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `status` varchar(11) NOT NULL,
  `paid_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_salary_report`
--

INSERT INTO `teacher_salary_report` (`salary_id`, `teacher_id`, `total_amount`, `status`, `paid_date`) VALUES
(1, 1, 46000, 'Paid', '2020-03-27 16:58:57'),
(2, 2, 67100, 'Paid', '2020-03-27 17:20:13'),
(3, 3, 48590, 'Paid', '2020-03-27 17:25:58'),
(4, 1, 46000, 'Paid', '2020-03-27 18:03:39'),
(5, 3, 48590, 'Paid', '2020-03-28 13:56:59'),
(6, 2, 67100, 'Paid', '2020-03-28 14:00:46'),
(7, 2, 67100, 'Paid', '2020-03-28 14:02:06'),
(8, 2, 67100, 'Paid', '2020-03-28 14:02:46'),
(9, 2, 67100, 'Paid', '2020-03-28 14:03:59'),
(10, 2, 67100, 'Paid', '2020-03-28 14:05:54'),
(11, 2, 67100, 'Paid', '2020-03-28 14:08:17'),
(12, 2, 67100, 'Paid', '2020-03-28 14:09:22'),
(13, 2, 67100, 'Paid', '2020-03-28 14:10:44'),
(14, 2, 67100, 'Paid', '2020-03-28 14:11:26'),
(15, 2, 67100, 'Paid', '2020-03-28 14:12:25'),
(16, 2, 67100, 'Paid', '2020-03-28 14:13:32'),
(17, 2, 67100, 'Paid', '2020-03-28 14:14:03'),
(18, 2, 67100, 'Paid', '2020-03-28 14:14:39'),
(19, 2, 67100, 'Paid', '2020-03-28 14:15:09'),
(20, 2, 67100, 'Paid', '2020-03-28 14:15:22'),
(21, 2, 67100, 'Paid', '2020-03-28 14:15:36'),
(22, 2, 67100, 'Paid', '2020-03-28 14:15:45'),
(23, 2, 67100, 'Paid', '2020-03-28 14:15:59'),
(24, 2, 67100, 'Paid', '2020-03-28 14:17:42'),
(25, 2, 67100, 'Paid', '2020-03-28 14:18:11'),
(26, 3, 48590, 'Paid', '2020-03-28 14:18:22'),
(27, 3, 48590, 'Paid', '2020-03-28 14:18:40'),
(28, 3, 48590, 'Paid', '2020-03-28 16:18:28'),
(29, 3, 48590, 'Paid', '2020-03-28 16:19:47'),
(30, 3, 48590, 'Paid', '2020-03-30 18:07:11');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `timing_from` varchar(10) NOT NULL,
  `timing_to` varchar(10) NOT NULL,
  `day` varchar(20) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `room_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`id`, `course_code`, `semester`, `timing_from`, `timing_to`, `day`, `subject_code`, `room_no`) VALUES
(1, 'MCS', 2, '18:00', '21:00', '1', 'OOP', 21),
(2, 'MCS', 2, '18:00', '21:00', '2', 'DBMS', 21),
(3, 'MCS', 2, '18:00', '21:00', '3', 'DLD', 7),
(4, 'MCS', 2, '18:00', '21:00', '4', 'SE', 21),
(5, 'MCS', 2, '18:00', '21:00', '5', 'WEB', 21),
(6, 'MIT', 2, '18:00', '21:00', '4', 'MBAD', 12);

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
(0, 'ss@gmail.com', '2023-03-24 22:33:52', 0);

-- --------------------------------------------------------

--
-- Table structure for table `weekdays`
--

CREATE TABLE `weekdays` (
  `day_id` int(11) NOT NULL,
  `day_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weekdays`
--

INSERT INTO `weekdays` (`day_id`, `day_name`) VALUES
(1, 'Monday'),
(2, 'Tuesday'),
(3, 'Wednesday'),
(4, 'Thursday'),
(5, 'Friday'),
(6, 'Saturday'),
(7, 'Sunday');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class_result`
--
ALTER TABLE `class_result`
  ADD PRIMARY KEY (`class_result_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_code`);

--
-- Indexes for table `course_subjects`
--
ALTER TABLE `course_subjects`
  ADD PRIMARY KEY (`subject_code`);

--
-- Indexes for table `mytable`
--
ALTER TABLE `mytable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `student_courses`
--
ALTER TABLE `student_courses`
  ADD PRIMARY KEY (`student_course_id`),
  ADD KEY `course_code` (`course_code`);

--
-- Indexes for table `student_fee`
--
ALTER TABLE `student_fee`
  ADD PRIMARY KEY (`fee_voucher`),
  ADD KEY `roll_no` (`roll_no`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`roll_no`);

--
-- Indexes for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `teacher_courses`
--
ALTER TABLE `teacher_courses`
  ADD PRIMARY KEY (`teacher_courses_id`);

--
-- Indexes for table `teacher_info`
--
ALTER TABLE `teacher_info`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_salary_allowances`
--
ALTER TABLE `teacher_salary_allowances`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_salary_report`
--
ALTER TABLE `teacher_salary_report`
  ADD PRIMARY KEY (`salary_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weekdays`
--
ALTER TABLE `weekdays`
  ADD PRIMARY KEY (`day_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class_result`
--
ALTER TABLE `class_result`
  MODIFY `class_result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_attendance`
--
ALTER TABLE `student_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student_courses`
--
ALTER TABLE `student_courses`
  MODIFY `student_course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_fee`
--
ALTER TABLE `student_fee`
  MODIFY `fee_voucher` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teacher_courses`
--
ALTER TABLE `teacher_courses`
  MODIFY `teacher_courses_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teacher_info`
--
ALTER TABLE `teacher_info`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teacher_salary_report`
--
ALTER TABLE `teacher_salary_report`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `weekdays`
--
ALTER TABLE `weekdays`
  MODIFY `day_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `teacher_salary_report`
--
ALTER TABLE `teacher_salary_report`
  ADD CONSTRAINT `teacher_salary_report_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher_salary_allowances` (`teacher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
