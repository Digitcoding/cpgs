-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2022 at 05:11 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employeeleavedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(55) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `fullname`, `email`, `updationDate`) VALUES
(1, 'admin', 'd00f5d5217896fb7fd601412cb890830', 'x', 'admin@mail.com', '2023-02-09 15:15:46'),
(2, 'admim1', '5f4dcc3b5aa765d61d8327deb882cf99', 'y', 'its@mail.com', '2023-02-09 15:15:50'),
(3, 'admin2', '5f4dcc3b5aa765d61d8327deb882cf99', 'z', 'green@mail.com', '2023-02-09 15:15:54');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(1, 'Education', 'RTI', 'RTI160', '2023-03-01 07:16:25'),
(2, 'Transport', 'RM', 'RM807', '2023-03-01 07:19:37'),
(3, 'visas', 'CR', 'CR640', '2023-03-02 21:28:56'),
(4, 'Agriculture', 'SM', 'SM9696', '2023-03-03 08:27:52'),
(5, 'Science', 'MK', 'MK369', '2023-03-03 10:53:52'),
(6, 'Sports', 'FI', 'FI123', '2021-03-03 10:54:27'),
(7, 'Jobs', 'SS', 'SS469', '2021-03-03 10:55:24'),
(8, 'Electricity', 'RS', 'RS666', '2021-03-03 16:39:03');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `id` int(11) NOT NULL,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(200) NOT NULL,
  `Country` varchar(150) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Status` int(1) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `EmpId`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`) VALUES
(1, 'ASTR001245', 'Param', 'H', 'param@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'FeMale', '2001-01-17', 'Post', '49 Arron Smith Drive', 'Tenkasi', 'IN', '7854785477', 1, '2020-11-10 11:29:59'),
(2, 'ASTR001369', 'Anjana', 'Devi', 'anju@mail.com', 'f925916e2754e5e03f75dd58a5733251', 'FeMale', '2002-02-02', 'Banking', '15 Kincheloe Road', 'Kadayam', 'IN', '8587944255', 1, '2020-11-10 13:40:02');

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves`
--

CREATE TABLE `tblleaves` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `empid`) VALUES
(1, 'Post', 'Karaikudi', 'Tamil Nadu', 'Test Test Demo Test Test Demo Test Test Demo', '2023-11-19 13:11:21', 'A demo Admin Remarks for Testing!', '2023-12-02 23:26:27 ', 2, 1, 1),
(2, 'Banking', 'Tenkasi', 'Tamil Nadu', 'Test Test Demo Test Test Demo Test Test Demo Test Test Demo', '2023-11-20 11:14:14', 'A demo Admin Remarks for Testing!', '2023-12-02 23:24:39 ', 1, 1, 1),
(3, 'Insurance', 'Tirunelveli', 'Tamil Nadu', 'This is a demo description for testing purpose', '2023-12-02 18:26:01', 'All good make your time and hope you\'ll be fine and get back to work asap! Best Regards, Admin.', '2023-03-03 11:19:29 ', 1, 1, 2);
-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `CreationDate`) VALUES
(1, 'Post', 'Non-delivery or delayed or wrong delivery of ordinary mail articles, delayed payment', '2023-11-01 12:07:56'),
(2, 'DOT', 'Telecommunication queries', '2023-11-06 13:16:09'),
(3, 'Banking', 'The reply is not received from the bank within a period of one month after the bank concerned has received one's complaint', '2023-11-06 13:16:38'),
(5, 'Insurance', 'The proper reply is not received', '2023-03-03 10:46:31'),
(6, 'School Education', 'Grievance regarding non-transparent or unfair evaluation process.', '2023-03-03 10:47:48'),
(7, 'Road Transport & Highways', 'Grievance Regarding not proper roads', '2023-03-03 10:48:37'),
(8, 'Health', 'It falls corporate support in promoting workers', '2023-03-03 10:50:17'),
(9, 'External Affairs', 'It lacks responsible for building and maintaining relationships with influential individuals and organisations for the public benefit.', '2023-03-03 10:51:26'),
(10, 'Petroleum  ', 'Not stable the cost', '2023-03-03 13:18:26')
(11, 'Natural Gas', 'Not stable the cost', '2023-03-03 13:19:06'),
(12, 'Family Welfare', 'It falls corporate support in promoting workers', '2023-03-03 13:19:48'),
(13, 'Others', 'To manage some private matters', '2023-03-03 13:21:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblleaves`
--
ALTER TABLE `tblleaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblleaves`
--
ALTER TABLE `tblleaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
