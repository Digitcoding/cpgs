-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2023 at 04:33 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
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
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `fullname`, `email`, `updationDate`) VALUES
(4, 'param', 'eca07335a33c5aeb5e1bc7c98b4b9d80', 'Parameswari', 'param@gmail.com', '2023-03-21 15:53:57'),
(5, 'admin', 'd00f5d5217896fb7fd601412cb890830', 'Parameswari', 'aishari1701@gmail.com', '2023-03-26 13:08:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(1, 'Post', 'PT', 'PT160', '2020-11-01 07:16:25'),
(2, 'Banking', 'BG', 'BG807', '2020-11-01 07:19:37'),
(3, 'Health', 'HTH', 'OP640', '2020-12-02 21:28:56'),
(4, 'Family Welfare', 'FW', 'FW9696', '2021-03-03 08:27:52'),
(5, 'DOT', 'DOT', 'DOT369', '2021-03-03 10:53:52'),
(6, 'Finance', 'FI', 'FI123', '2021-03-03 10:54:27'),
(7, 'School Education', 'SS', 'SS469', '2021-03-03 10:55:24'),
(8, 'Petroleum & Natural Gas', 'PN', 'PN666', '2021-03-03 16:39:03'),
(9, 'External Affairs', 'EA', 'EA123', '2023-01-15 13:13:00');

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
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `EmpId`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`) VALUES
(5, 'ASTR001439', 'Danny', 'Wood', 'danny@mail.com', 'b7bee6b36bd35b773132d4e3a74c2bb5', 'Male', '1986-03-12', 'Research', '11 Rardin Drive', 'San Francisco', 'US', '4587777744', 1, '2021-03-04 17:14:48'),
(8, 'ASTR012447', 'AnjanaDevi', 'M', 'williams@mail.com', 'e45be0660a2b9e21127888ba47ad245f', 'Female', '2023-03-22', 'Finance', '3/41', 'Tenkasi', 'India', '8979796892', 1, '2022-02-10 15:52:32'),
(9, '', '09994223299', 'sf', 'williams@mail.com', '', 'Male', '', 'Finance', '3/41', 'Tenkasi', 'India', '68685857', 0, '2023-03-26 16:27:55'),
(10, '', '09994223299', 'sf', 'williams@mail.com', '', 'Male', '', 'Finance', '3/41', 'Tenkasi', 'India', '68685857', 0, '2023-03-26 16:28:42'),
(11, '', '09994223299', 'sf', 'williams@mail.com', '123', 'Male', '', 'Finance', '3/41', 'Tenkasi', 'India', '68685857', 0, '2023-03-26 16:29:07'),
(12, 'as', 'Hariharan', 'A', 'hari@gmail.com', 'a9bcf1e4d7b95a22e2975c812d938889', 'Male', '', 'Health', '3/41', 'Tenkasi', 'India', '9994223299', 0, '2023-03-26 16:49:22'),
(13, '13', 'Kalavathy', 'Hariharan', 'kala@gmail.com', '19dd1947a95454ccaf223a731c32db0c', 'Female', '2023-03-16', 'School Education', '3/41', 'Tenkasi', 'India', '9994223299', 0, '2023-03-26 17:56:23'),
(14, '', 'Annamalai', 'Hariharan', 'anna@gmail.com', 'annamalai', 'Male', '2023-03-16', 'Family Welfare', '3/41', 'Tenkasi', 'India', '9994223299', 0, '2023-03-26 18:06:35'),
(15, '', 'AnjanaDevi', 'M', 'anju@gmail.com', 'anju', 'Female', '2001-06-06', 'Family Welfare', '3/41', 'Tenkasi', 'India', '9994223299', 0, '2023-03-26 23:48:37'),
(16, '', 'PARAMESWARI', 'Hariharan', 'aishari1701@gmail.com', 'anju', 'Female', '2021-01-17', 'Finance', '3/41', 'Tenkasi', 'India', '9994223299', 0, '2023-03-28 03:09:21'),
(17, '', 'Parameswari', 'Hariharan', 'param@gmail.com', 'param', 'Female', '2001-01-17', 'External Affairs', '3/41,Krishanan Kovil Street, Neduvayal', 'Tenkasi', 'India', '8967858775', 0, '2023-03-31 16:22:22'),
(18, '', 'Dayana', 'Daya', 'dayana@gmail.com', 'dayana', 'Female', '2023-04-15', 'Finance', 'Theni', 'jsdkf', 'India', '8967858587', 0, '2023-04-01 02:19:34'),
(19, '', 'xx', 's', 'aishari1701@gmail.com', '123', 'Male', '', '', '3/41', 'Tenkasi', 'India', '3434243', 0, '2023-04-01 14:52:56'),
(20, '', 'PARAMESWARI', 'H', 'param@gmail.com', '123param', 'Female', '2023-04-12', '', '3/41', 'Tenkasi', 'India', '9687578876', 0, '2023-04-02 14:05:47'),
(21, '', 'PARAMESWARI', 'H', 'param@gmail.com', '123', 'Female', '2023-04-27', 'Petroleum & Natural Gas', '3/41', 'Tenkasi', 'India', '8787678989', 0, '2023-04-02 14:11:49'),
(22, '', 'PARAMESWARI', 'H', 'param@mail.com', '123', 'Female', '2023-04-06', 'Finance', '3/41', 'Tenkasi', 'India', '28639823', 0, '2023-04-02 14:16:07'),
(23, '', 'Kalavathy', 'H', 'kalahari@gmail.com', '789', 'Female', '2023-04-13', 'Health', '3/41', 'Tenkasi', 'India', '876857868', 0, '2023-04-02 14:26:51');

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
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `empid`) VALUES
(36, 'DOT', 'TAMIL NADU', 'Shencottai', 'jsk', '2023-01-15 15:37:32', NULL, NULL, 0, 1, 8),
(37, 'School Education', 'TAMIL NADU', 'Shencottai', 'jsj', '2023-01-15 15:38:09', NULL, NULL, 0, 1, 8),
(38, 'External Affairs', 'Karnataka', 'Bangalore', '893', '2023-01-16 04:08:17', 'ddd', '2023-03-05 9:45:02 ', 2, 1, 8),
(42, 'Petroleum ', 'delhi', 'newdelhi', '', '2023-03-05 02:43:55', 'Take action immediately', '2023-03-05 8:17:23 ', 1, 1, 8),
(43, 'Banking', 'Hariyana', 'Delhi', '', '2023-03-05 09:51:03', 'Take action', '2023-03-05 15:25:51 ', 1, 1, 8),
(44, 'Banking', 'Hariyana', 'dd', '', '2023-03-05 09:51:36', 'no', '2023-03-05 15:26:04 ', 2, 1, 8),
(45, 'School Education', 'Hariyana', 'Delhi', 'jks', '2023-03-05 15:32:39', 'kk', '2023-03-05 21:03:52 ', 1, 1, 8),
(46, '', 'Hariyana', 'india', '', '2023-03-05 15:32:52', NULL, NULL, 0, 1, 8),
(47, 'External Affairs', 'TIRUVANDRUM', 'KERALA', '', '2023-03-20 15:08:36', NULL, NULL, 0, 1, 8),
(48, 'Post', 'SDFA', 'SSSS', 'KAJLKJLA', '2023-03-20 15:08:57', NULL, NULL, 0, 1, 8),
(50, 'Health and Family Welfare', 'Bangalore', 'Karnadaka', 'sdfs', '2023-03-26 09:38:59', NULL, NULL, 0, 1, 8),
(51, 'Road Transport and High ways', 'TAMIL NADU', 'Bangalore', '', '2023-03-26 17:58:27', 'Take your consideration', '2023-03-26 23:31:54 ', 1, 1, 13),
(52, 'Road Transport and High ways', 'TAMIL NADU', 'TENKASI', '', '2023-03-27 15:22:26', 'Unnecessary', '2023-03-27 20:54:26 ', 2, 1, 15),
(53, 'Transport and Infrastructure', 'Tamilnadu', 'Kadayam', 'Cost of operating airlines is very high and so freight cost is very high as compared to sea transport.', '2023-03-31 04:53:49', 'Take action', '2023-03-31 10:25:54 ', 1, 1, 15),
(54, 'Banking', 'Tamilnadu', 'Kadayam', '', '2023-03-31 04:54:46', 'Take action immediately', '2023-03-31 10:37:08 ', 1, 1, 15),
(55, 'Transport and Infrastructure', 'Tamilnadu', 'Tirunelveli', 'Cost of operating airlines is very high and so freight cost is very high as compared to sea transport.', '2023-03-31 05:04:10', 'Not necessary', '2023-03-31 10:38:07 ', 2, 1, 15),
(56, 'Transport and Infrastructure', 'Kerala', 'Koolam', 'jsdkfksl', '2023-03-31 06:44:12', 'Take action immediately', '2023-03-31 12:15:31 ', 1, 1, 15),
(57, 'Sports and Culture', 'Tamilnadu', 'Tenkasi', 'sda', '2023-03-31 16:23:03', 'asdf', '2023-03-31 21:53:31 ', 1, 1, 17),
(58, 'Agriculture and Environment', 'SDFA', 'TIRUNELVELI', '', '2023-04-01 14:54:03', 's', '2023-04-01 20:24:26 ', 1, 1, 19),
(59, 'Insurance', 'TAMIL NADU', 'Chennai', 'sdfa', '2023-04-02 14:12:39', NULL, NULL, 0, 0, 21);

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `CreationDate`) VALUES
(14, 'Post', 'Post issue', '2023-01-15 13:23:15'),
(15, 'Banking', 'Transaction issue', '2023-01-15 14:27:36'),
(16, 'Health and Family Welfare', 'It falls corporate support in promoting workers', '2023-01-15 14:28:46'),
(17, 'DOT', 'Telecommunication queries', '2023-01-15 14:29:04'),
(18, 'Insurance', 'The proper reply is not received', '2023-01-15 14:29:21'),
(19, 'School Education', 'Grievance regarding non-transparent or unfair evaluation process', '2023-01-15 14:29:41'),
(20, 'Road Transport and High ways', 'Grievance Regarding not proper roads', '2023-01-15 14:30:22'),
(21, 'External Affairs', 'It lacks responsible for building and maintaining relationships with influential individuals', '2023-01-15 14:30:42'),
(22, 'Petroleum ', 'cost issue', '2023-01-15 14:31:30'),
(23, 'Natural Gas', 'Improper Cost', '2023-01-15 14:31:50'),
(24, 'Education', 'Education', '2023-03-27 16:27:05'),
(25, 'Transport and Infrastructure', 'TI', '2023-03-27 16:27:47'),
(26, 'Visas and Passports', 'VP', '2023-03-27 16:28:49'),
(27, 'Agriculture and Environment', 'AE', '2023-03-27 16:29:17'),
(28, 'Science and Communication', 'SC', '2023-03-27 16:29:35'),
(29, 'Sports and Culture', 'SC', '2023-03-27 16:29:50'),
(30, 'Jobs and Learning', 'JL', '2023-03-27 16:30:12'),
(31, 'Health and wellness', 'HW', '2023-03-27 16:30:30'),
(32, 'Electricity and Local Services', 'ELS', '2023-03-27 16:30:54'),
(33, 'Money and Taxes', 'MN', '2023-03-27 16:32:00'),
(34, 'Justice,Law', 'JL', '2023-03-27 16:32:14'),
(35, 'Travel and Tourism', 'TT', '2023-03-27 16:32:31'),
(36, 'Business', 'BS', '2023-03-27 16:32:47'),
(37, 'Birth,Death', 'BD', '2023-03-27 16:33:03'),
(38, 'Marriage and Childcare', 'MCC', '2023-03-27 16:33:18'),
(39, 'Pension and Benefits', 'PB', '2023-03-27 16:33:35');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblleaves`
--
ALTER TABLE `tblleaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
