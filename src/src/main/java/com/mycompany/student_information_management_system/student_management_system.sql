-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2025 at 09:20 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `admin_id` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `phoneNumber` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`admin_id`, `password`, `Email`, `phoneNumber`) VALUES
('AD001', 'naveesha', 'benjimin123@gmail.com', '0766151125'),
('AD002', 'naveesha1', 'ford123@gmail.com', '0724211797'),
('AD003', 'naveesha', 'heshan123@gmail.com', '0795234756');

-- --------------------------------------------------------

--
-- Table structure for table `courserequirementstable`
--

CREATE TABLE `courserequirementstable` (
  `courseRequirementID` int(100) NOT NULL,
  `courseID` varchar(100) NOT NULL,
  `courseRequirements` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courserequirementstable`
--

INSERT INTO `courserequirementstable` (`courseRequirementID`, `courseID`, `courseRequirements`) VALUES
(2, 'DCSD241F', 'NIBM Computer Design Certificate need(NIBM option)'),
(3, 'DCSD241F', 'Alevel 3 subject needed passed atleast S Pass'),
(6, 'CODSE242F', 'Alevel all subject need to be passsed at S ');

-- --------------------------------------------------------

--
-- Table structure for table `coursesdetails_table`
--

CREATE TABLE `coursesdetails_table` (
  `courseID` varchar(100) NOT NULL,
  `course_Name` varchar(150) NOT NULL,
  `category` varchar(100) NOT NULL,
  `years` int(11) NOT NULL,
  `months` int(11) NOT NULL,
  `course_Fee` int(11) NOT NULL,
  `location` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coursesdetails_table`
--

INSERT INTO `coursesdetails_table` (`courseID`, `course_Name`, `category`, `years`, `months`, `course_Fee`, `location`) VALUES
('CODCSD241', 'Computer Design', 'Information Technology (IT)', 1, 0, 300000, 'Colombo'),
('CODNE241F', 'Network Engineering', 'Information Technology (IT)', 1, 0, 400000, 'Colombo'),
('CODSE241F', 'Software Engineering', 'Information Technology (IT)', 1, 0, 300000, 'Colombo'),
('CODSE242F', 'Software Engineering', 'Information Technology (IT)', 1, 0, 350000, 'Colombo');

-- --------------------------------------------------------

--
-- Table structure for table `lecprofessionalexperience_table`
--

CREATE TABLE `lecprofessionalexperience_table` (
  `lecProfessionalExperienceID` int(100) NOT NULL,
  `EmployeeID` varchar(100) NOT NULL,
  `LecProfessionalExperienceType` varchar(100) NOT NULL,
  `noOfYears` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lecprofessionalexperience_table`
--

INSERT INTO `lecprofessionalexperience_table` (`lecProfessionalExperienceID`, `EmployeeID`, `LecProfessionalExperienceType`, `noOfYears`) VALUES
(1, 'lec001', 'Teaching', 1),
(2, 'lec001', 'Industry', 10);

-- --------------------------------------------------------

--
-- Table structure for table `lecqualification_table`
--

CREATE TABLE `lecqualification_table` (
  `LecQualificationID` int(100) NOT NULL,
  `lecture_ID` varchar(100) NOT NULL,
  `acadamic_Qualification` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lecqualification_table`
--

INSERT INTO `lecqualification_table` (`LecQualificationID`, `lecture_ID`, `acadamic_Qualification`) VALUES
(1, 'lec001', 'Bcs.Computer Science');

-- --------------------------------------------------------

--
-- Table structure for table `lecture_table`
--

CREATE TABLE `lecture_table` (
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `PhoneNumber` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `teachingCourse` varchar(150) NOT NULL,
  `CourseModule` varchar(150) NOT NULL,
  `EmployeeIDNumber` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lecture_table`
--

INSERT INTO `lecture_table` (`FirstName`, `LastName`, `Email`, `PhoneNumber`, `Address`, `teachingCourse`, `CourseModule`, `EmployeeIDNumber`, `password`) VALUES
('vihaga', 'nimsara', 'vihaganimsara123@gmail.com', '07661511225', 'Colombo', 'CODNE241F', 'DL&CA', 'lec001', 'naveesha');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `phoneNumber` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `programOfStudy` varchar(100) NOT NULL,
  `studentID` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`firstName`, `lastName`, `Email`, `phoneNumber`, `Address`, `programOfStudy`, `studentID`, `password`) VALUES
('naveesha', 'nethsara', 'naveeshanethsara58@gmail.com', '0766151125', '48/1,ganegama Rd,Aluthgama', 'DSE', 'CODSE241F-010', 'naveesha');

-- --------------------------------------------------------

--
-- Table structure for table `studenteducationdetails`
--

CREATE TABLE `studenteducationdetails` (
  `studentEducationDetailsID` int(100) NOT NULL,
  `studentID` varchar(100) NOT NULL,
  `studentEducationDetails` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studenteducationdetails`
--

INSERT INTO `studenteducationdetails` (`studentEducationDetailsID`, `studentID`, `studentEducationDetails`) VALUES
(4, 'CODSE241F-100', 'olvel passed'),
(5, 'CODSE241F-100', 'Alevel passed'),
(6, 'CODSE241F-053', 'Olevel passed'),
(7, 'CODSE241F-053', 'NIBM Certificate in Software Engineering Succesfully completed.'),
(8, 'CODSE241F-053', 'Japan speaking course successfuly completed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `courserequirementstable`
--
ALTER TABLE `courserequirementstable`
  ADD UNIQUE KEY `courseRequirementID` (`courseRequirementID`);

--
-- Indexes for table `coursesdetails_table`
--
ALTER TABLE `coursesdetails_table`
  ADD PRIMARY KEY (`courseID`);

--
-- Indexes for table `lecprofessionalexperience_table`
--
ALTER TABLE `lecprofessionalexperience_table`
  ADD PRIMARY KEY (`lecProfessionalExperienceID`);

--
-- Indexes for table `lecqualification_table`
--
ALTER TABLE `lecqualification_table`
  ADD PRIMARY KEY (`LecQualificationID`);

--
-- Indexes for table `lecture_table`
--
ALTER TABLE `lecture_table`
  ADD PRIMARY KEY (`EmployeeIDNumber`);

--
-- Indexes for table `studenteducationdetails`
--
ALTER TABLE `studenteducationdetails`
  ADD PRIMARY KEY (`studentEducationDetailsID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courserequirementstable`
--
ALTER TABLE `courserequirementstable`
  MODIFY `courseRequirementID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lecprofessionalexperience_table`
--
ALTER TABLE `lecprofessionalexperience_table`
  MODIFY `lecProfessionalExperienceID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lecqualification_table`
--
ALTER TABLE `lecqualification_table`
  MODIFY `LecQualificationID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `studenteducationdetails`
--
ALTER TABLE `studenteducationdetails`
  MODIFY `studentEducationDetailsID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
