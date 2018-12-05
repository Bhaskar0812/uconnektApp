-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 17, 2018 at 06:19 PM
-- Server version: 10.0.36-MariaDB-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `conneckt_uconnekt`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '1:Active,:0:Deactive',
  `crd` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `image`, `status`, `crd`, `upd`) VALUES
(1, 'Uconnekt Admin', 'admin@connektus.com.au', '$2y$10$I5mqH1YOiZA.aUffzwYin.fiG9Xmba6qXX2KR7fg//oLUEfJ1Lizu', '2e3471159a869359d134c6c5b6b8b980.JPG', '1', '2017-09-27 11:44:10', '2018-09-29 15:03:22');

-- --------------------------------------------------------

--
-- Table structure for table `contactUs`
--

CREATE TABLE `contactUs` (
  `contactUsId` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `email` varchar(250) NOT NULL,
  `message` text NOT NULL,
  `rating` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 for open, 0 for closed',
  `type` varchar(100) NOT NULL,
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactUs`
--

INSERT INTO `contactUs` (`contactUsId`, `name`, `subject`, `email`, `message`, `rating`, `status`, `type`, `crd`, `upd`) VALUES
(1, 'Dennis Mehmet', 'Testing android feedback', 'dmehmet@connektus.com.au', 'Testing android feedback', '5.0', 1, '', '2018-10-07 02:18:42', '2018-10-07 02:18:42');

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `favouriteId` int(11) NOT NULL,
  `favourite_for` int(11) NOT NULL,
  `favourite_by` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_on` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`favouriteId`, `favourite_for`, `favourite_by`, `status`, `created_on`) VALUES
(99, 148, 203, 1, '2018-10-14 04:10:14'),
(102, 148, 151, 1, '2018-10-16 09:07:05');

-- --------------------------------------------------------

--
-- Table structure for table `interviews`
--

CREATE TABLE `interviews` (
  `interviewId` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `type` varchar(250) NOT NULL,
  `interviewer_name` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `latitude` varchar(250) NOT NULL,
  `longitude` varchar(250) NOT NULL,
  `date` varchar(250) NOT NULL,
  `time` varchar(250) NOT NULL,
  `is_delete` int(11) NOT NULL DEFAULT '0' COMMENT '0 for non delte 1 for delete',
  `interview_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 for request sent: 1 for accept: 2 for declined',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interviews`
--

INSERT INTO `interviews` (`interviewId`, `request_id`, `type`, `interviewer_name`, `location`, `latitude`, `longitude`, `date`, `time`, `is_delete`, `interview_status`, `created_on`, `upd`) VALUES
(76, 48, 'Employer', 'John Doe', '320 Bourke St, Melbourne VIC 3004, Australia', '-37.814232499999996', '144.9632447', '2018-10-15', '10:30 AM', 0, 1, '2018-10-14 02:58:08', '2018-10-14 02:59:16');

-- --------------------------------------------------------

--
-- Table structure for table `interview_request`
--

CREATE TABLE `interview_request` (
  `requestId` int(11) NOT NULL,
  `interview_id` int(11) NOT NULL,
  `type` varchar(250) NOT NULL,
  `interviewer_name` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `latitude` varchar(250) NOT NULL,
  `longitude` varchar(250) NOT NULL,
  `date` varchar(250) NOT NULL,
  `time` varchar(250) NOT NULL,
  `stauts` tinyint(4) NOT NULL DEFAULT '1',
  `created_on` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `job_titles`
--

CREATE TABLE `job_titles` (
  `jobTitleId` int(11) NOT NULL,
  `jobTitleName` varchar(255) NOT NULL,
  `userType` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_titles`
--

INSERT INTO `job_titles` (`jobTitleId`, `jobTitleName`, `userType`, `status`, `crd`, `upd`) VALUES
(86, 'NET Developer', 'both', 1, '2018-08-26 02:35:20', '2018-08-28 08:15:20'),
(87, 'Aboriginal Health Worker', 'both', 1, '2018-08-26 02:35:34', '2018-08-28 08:15:20'),
(88, 'Accommodation Supervisor', 'both', 1, '2018-08-26 02:35:43', '2018-08-28 08:15:20'),
(89, 'Account Director', 'both', 1, '2018-08-26 02:35:51', '2018-08-28 08:15:20'),
(90, 'Account Executive', 'both', 1, '2018-08-26 02:35:59', '2018-08-28 08:15:20'),
(91, 'Account Manager', 'both', 1, '2018-08-26 02:36:08', '2018-08-28 08:15:20'),
(92, 'Accountant', 'both', 1, '2018-08-26 02:36:18', '2018-08-28 08:15:20'),
(93, 'Accounts Administrator', 'both', 1, '2018-08-26 02:36:47', '2018-08-28 08:15:20'),
(94, 'Accounts Assistant', 'both', 1, '2018-08-26 02:36:56', '2018-08-28 08:15:20'),
(95, 'Accounts Clerk', 'both', 1, '2018-08-26 02:37:04', '2018-08-28 08:15:20'),
(96, 'Accounts Payable Officer', 'both', 1, '2018-08-26 02:37:16', '2018-08-28 08:15:20'),
(97, 'Accounts Receivable Officer', 'both', 1, '2018-08-26 02:37:25', '2018-08-28 08:15:20'),
(98, 'Accounts Receivable Team Leader', 'both', 1, '2018-08-26 02:37:33', '2018-08-28 08:15:20'),
(99, 'Activities Officer', 'both', 1, '2018-08-26 02:37:42', '2018-08-28 08:15:20'),
(100, 'Actor', 'both', 1, '2018-08-26 02:37:50', '2018-08-28 08:15:20'),
(101, 'Actuarial Analyst', 'both', 1, '2018-08-26 02:37:58', '2018-08-28 08:15:20'),
(102, 'Administration And Production Assistant', 'both', 1, '2018-08-26 02:38:15', '2018-08-28 08:15:20'),
(103, 'Administration Assistant', 'both', 1, '2018-08-26 02:38:40', '2018-08-28 08:15:20'),
(104, 'Administration Officer', 'both', 1, '2018-08-26 02:38:48', '2018-08-28 08:15:20'),
(105, 'Administration Support Officer', 'both', 1, '2018-08-26 02:39:18', '2018-08-28 08:15:20'),
(106, 'Adobe Campaign Developer', 'both', 1, '2018-08-26 02:39:26', '2018-08-28 08:15:20'),
(107, 'Advertising Coordinator', 'both', 1, '2018-08-26 02:39:34', '2018-08-28 08:15:20'),
(108, 'Advertising Manager', 'both', 1, '2018-08-26 02:40:00', '2018-08-28 08:15:20'),
(109, 'Aged Care Worker', 'both', 1, '2018-08-26 02:40:09', '2018-08-28 08:15:20'),
(110, 'Agile Business Analyst', 'both', 1, '2018-08-26 02:40:18', '2018-08-28 08:15:20'),
(111, 'Agricultural Scientist', 'both', 1, '2018-08-26 02:40:26', '2018-08-28 08:15:20'),
(112, 'Air Conditioning And Heater Technician', 'both', 1, '2018-08-26 02:40:38', '2018-08-28 08:15:20'),
(113, 'Aluminium Fabricator', 'both', 1, '2018-08-26 02:40:46', '2018-08-28 08:15:20'),
(114, 'Analytical Chemist', 'both', 1, '2018-08-26 02:40:54', '2018-08-28 08:15:20'),
(115, 'Analytical Scientist', 'both', 1, '2018-08-26 02:41:01', '2018-08-28 08:15:20'),
(116, 'Application Analyst', 'both', 1, '2018-08-26 02:41:09', '2018-08-28 08:15:20'),
(117, 'Application Developer', 'both', 1, '2018-08-26 02:42:10', '2018-08-28 08:15:20'),
(118, 'Application Specialist', 'both', 1, '2018-08-26 02:42:17', '2018-08-28 08:15:20'),
(119, 'Application Support Officer', 'both', 1, '2018-08-26 02:42:25', '2018-08-28 08:15:20'),
(120, 'Apprentice Baker', 'both', 1, '2018-08-26 02:42:35', '2018-08-28 08:15:20'),
(121, 'Apprentice Electrician', 'both', 1, '2018-08-26 02:42:43', '2018-08-28 08:15:20'),
(122, 'Archaeologist Advisor', 'both', 1, '2018-08-26 02:43:43', '2018-08-28 08:15:20'),
(123, 'Asbestos Laboratory Analyst', 'both', 1, '2018-08-26 02:43:51', '2018-08-28 08:15:20'),
(124, 'Assembler', 'both', 1, '2018-08-26 02:43:59', '2018-08-28 08:15:20'),
(125, 'Assistant Account Executive', 'both', 1, '2018-08-26 02:44:07', '2018-08-28 08:15:20'),
(126, 'Assistant Director', 'both', 1, '2018-08-26 02:44:14', '2018-08-28 08:15:20'),
(127, 'Assistant Insurance Broker', 'both', 1, '2018-08-26 02:44:22', '2018-08-28 08:15:20'),
(128, 'Assistant Manager', 'both', 1, '2018-08-26 02:44:29', '2018-08-28 08:15:20'),
(129, 'Assistant Property Manager', 'both', 1, '2018-08-26 02:44:36', '2018-08-28 08:15:20'),
(130, 'Assistant Store Manager', 'both', 1, '2018-08-26 02:44:44', '2018-08-28 08:15:20'),
(131, 'Assistant Strata Manager', 'both', 1, '2018-08-26 02:44:52', '2018-08-28 08:15:20'),
(132, 'Associate Account Manager', 'both', 1, '2018-08-26 02:44:59', '2018-08-28 08:15:20'),
(133, 'Associate Consultant', 'both', 1, '2018-08-26 02:45:13', '2018-08-28 08:15:20'),
(134, 'Associate Director', 'both', 1, '2018-08-26 02:45:21', '2018-08-28 08:15:20'),
(135, 'Associate Marketing And Communications Manager', 'both', 1, '2018-08-26 02:45:36', '2018-08-28 08:15:20'),
(136, 'Auditor', 'both', 1, '2018-08-26 02:45:46', '2018-08-28 08:15:20'),
(137, 'External Auditor', 'both', 1, '2018-08-26 02:46:12', '2018-08-28 08:15:20'),
(138, 'Senior External Auditor', 'both', 1, '2018-08-26 02:46:20', '2018-08-28 08:15:20'),
(139, 'Auto Electrician', 'both', 1, '2018-08-26 02:46:33', '2018-08-28 08:15:20'),
(140, 'Automation Test Analyst', 'both', 1, '2018-08-26 02:46:40', '2018-08-28 08:15:20'),
(141, 'Automotive Technician', 'both', 1, '2018-08-26 02:46:47', '2018-08-28 08:15:20'),
(142, 'Back End Developer', 'both', 1, '2018-08-26 02:46:54', '2018-08-28 08:15:20'),
(143, 'Baker', 'both', 1, '2018-08-26 02:47:01', '2018-08-28 08:15:20'),
(144, 'Bank Teller', 'both', 1, '2018-08-26 02:47:07', '2018-08-28 08:15:20'),
(145, 'Banking And Finance Lawyer', 'both', 1, '2018-08-26 02:47:20', '2018-08-28 08:15:20'),
(146, 'Barista', 'both', 1, '2018-08-26 02:47:28', '2018-08-28 08:15:20'),
(147, 'Beauty Therapist', 'both', 1, '2018-08-26 02:47:35', '2018-08-28 08:15:20'),
(148, 'Beverage Technologist', 'both', 1, '2018-08-26 02:47:43', '2018-08-28 08:15:20'),
(149, 'Billing Officer', 'both', 1, '2018-08-26 02:47:52', '2018-08-28 08:15:20'),
(150, 'Senior Billing Officer', 'both', 1, '2018-08-26 02:48:02', '2018-08-28 08:15:20'),
(151, 'Boilmaker', 'both', 1, '2018-08-26 02:48:11', '2018-08-28 08:15:20'),
(152, 'Bookkeeper', 'both', 1, '2018-08-26 02:48:18', '2018-08-28 08:15:20'),
(153, 'Botanist', 'both', 1, '2018-08-26 02:48:27', '2018-08-28 08:15:20'),
(154, 'Boutique Manager', 'both', 1, '2018-08-26 02:48:34', '2018-08-28 08:15:20'),
(155, 'Branch Performance Officer', 'both', 1, '2018-08-26 02:48:40', '2018-08-28 08:15:20'),
(156, 'Brand Activator', 'both', 1, '2018-08-26 02:48:47', '2018-08-28 08:15:20'),
(157, 'Brand Communications Coordinator', 'both', 1, '2018-08-26 02:48:54', '2018-08-28 08:15:20'),
(158, 'Brand Manager', 'both', 1, '2018-08-26 02:49:02', '2018-08-28 08:15:20'),
(159, 'Building Attendant', 'both', 1, '2018-08-26 02:49:09', '2018-08-28 08:15:20'),
(160, 'Building Manager', 'both', 1, '2018-08-26 02:49:17', '2018-08-28 08:15:20'),
(161, 'Bus Driver', 'both', 1, '2018-08-26 02:49:24', '2018-08-28 08:15:20'),
(162, 'Business Analyst', 'both', 1, '2018-08-26 02:49:32', '2018-08-28 08:15:20'),
(163, 'Business Consultant', 'both', 1, '2018-08-26 02:49:40', '2018-08-28 08:15:20'),
(164, 'Business Development Consultant', 'both', 1, '2018-08-26 02:49:47', '2018-08-28 08:15:20'),
(165, 'Business Development Manager', 'both', 1, '2018-08-26 02:49:54', '2018-08-28 08:15:20'),
(166, 'Business Intelligence Analyst', 'both', 1, '2018-08-26 02:50:01', '2018-08-28 08:15:20'),
(167, 'Business Manager', 'both', 1, '2018-08-26 02:50:09', '2018-08-28 08:15:20'),
(168, 'Business Performance Analyst', 'both', 1, '2018-08-26 02:50:17', '2018-08-28 08:15:20'),
(169, 'Business Practice Lead', 'both', 1, '2018-08-26 02:50:24', '2018-08-28 08:15:20'),
(170, 'Business Sales Consultant', 'both', 1, '2018-08-26 02:50:32', '2018-08-28 08:15:20'),
(171, 'Business Support Manager', 'both', 1, '2018-08-26 02:50:41', '2018-08-28 08:15:20'),
(172, 'Business Systems Support Officer', 'both', 1, '2018-08-26 02:50:48', '2018-08-28 08:15:20'),
(173, 'Butcher', 'both', 1, '2018-08-26 02:50:55', '2018-08-28 08:15:20'),
(174, 'Cabinetmaker', 'both', 1, '2018-08-26 02:51:06', '2018-08-28 08:15:20'),
(175, 'Cafe Manager', 'both', 1, '2018-08-26 02:51:18', '2018-08-28 08:15:20'),
(176, 'Calibration Laboratory Technician', 'both', 1, '2018-08-26 02:51:26', '2018-08-28 08:15:20'),
(177, 'Campaign Analyst', 'both', 1, '2018-08-26 02:51:34', '2018-08-28 08:15:20'),
(178, 'Campaign Manager', 'both', 1, '2018-08-26 02:51:42', '2018-08-28 08:15:20'),
(179, 'Car Detailer', 'both', 1, '2018-08-26 02:51:50', '2018-08-28 08:15:20'),
(180, 'Car Wash Service Attendant', 'both', 1, '2018-08-26 02:51:57', '2018-08-28 08:15:20'),
(181, 'Care And Recovery Coordinator', 'both', 1, '2018-08-26 02:52:14', '2018-08-28 08:15:20'),
(182, 'Carton Sorter', 'both', 1, '2018-08-26 02:52:21', '2018-08-28 08:15:20'),
(183, 'Case Manager', 'both', 1, '2018-08-26 02:52:28', '2018-08-28 08:15:20'),
(184, 'Cashier', 'both', 1, '2018-08-26 02:52:36', '2018-08-28 08:15:20'),
(185, 'Category Manager', 'both', 1, '2018-08-26 02:52:44', '2018-08-28 08:15:20'),
(186, 'Catering Assistant', 'both', 1, '2018-08-26 02:52:52', '2018-08-28 08:15:20'),
(187, 'Centre Manager', 'both', 1, '2018-08-26 03:05:43', '2018-08-28 08:15:20'),
(188, 'Change Analyst', 'both', 1, '2018-08-26 03:05:51', '2018-08-28 08:15:20'),
(189, 'Change Manager', 'both', 1, '2018-08-26 03:05:59', '2018-08-28 08:15:20'),
(190, 'Channel Marketing Coordinator', 'both', 1, '2018-08-26 03:06:08', '2018-08-28 08:15:20'),
(191, 'Chartered Accountant', 'both', 1, '2018-08-26 03:06:17', '2018-08-28 08:15:20'),
(192, 'Chef', 'both', 1, '2018-08-26 03:06:25', '2018-08-28 08:15:20'),
(193, 'Chief Executive Officer', 'both', 1, '2018-08-26 03:06:38', '2018-08-28 08:15:20'),
(194, 'Chief Financial Officer', 'both', 1, '2018-08-26 03:06:47', '2018-08-28 08:15:20'),
(195, 'Chief Marketing Officer', 'both', 1, '2018-08-26 03:07:04', '2018-08-28 08:15:20'),
(196, 'Chief Of Staff', 'both', 1, '2018-08-26 03:07:11', '2018-08-28 08:15:20'),
(197, 'Chief Operating Officer', 'both', 1, '2018-08-26 03:07:18', '2018-08-28 08:15:20'),
(198, 'Child Care Assistance', 'both', 1, '2018-08-26 03:07:32', '2018-08-28 08:15:20'),
(199, 'Child Care Worker', 'both', 1, '2018-08-26 03:07:39', '2018-08-28 08:15:20'),
(200, 'Childcare Trainee', 'both', 1, '2018-08-26 03:07:46', '2018-08-28 08:15:20'),
(201, 'Chipper Operator', 'both', 1, '2018-08-26 03:07:53', '2018-08-28 08:15:20'),
(202, 'Civil Engineer', 'both', 1, '2018-08-26 03:07:59', '2018-08-28 08:15:20'),
(203, 'Civil Lawyer', 'both', 1, '2018-08-26 03:08:06', '2018-08-28 08:15:20'),
(204, 'Civil Supervisor', 'both', 1, '2018-08-26 03:08:14', '2018-08-28 08:15:20'),
(205, 'Claims Advisor', 'both', 1, '2018-08-26 03:08:22', '2018-08-28 08:15:20'),
(206, 'Claims Consultant', 'both', 1, '2018-08-26 03:08:30', '2018-08-28 08:15:20'),
(207, 'Claims Lawyer', 'both', 1, '2018-08-26 03:08:37', '2018-08-28 08:15:20'),
(208, 'Cleaner', 'both', 1, '2018-08-26 03:08:45', '2018-08-28 08:15:20'),
(209, 'Client Manager', 'both', 1, '2018-08-26 03:08:54', '2018-08-28 08:15:20'),
(210, 'Client Relationship Manager', 'both', 1, '2018-08-26 03:09:04', '2018-08-28 08:15:20'),
(211, 'Client Support', 'both', 1, '2018-08-26 03:09:14', '2018-08-28 08:15:20'),
(212, 'Clinical Assistant', 'both', 1, '2018-08-26 03:09:22', '2018-08-28 08:15:20'),
(213, 'Clinical Nurse', 'both', 1, '2018-08-26 03:09:30', '2018-08-28 08:15:20'),
(214, 'Clinical Perfusionist', 'both', 1, '2018-08-26 03:09:49', '2018-08-28 08:15:20'),
(215, 'Clinical Technical Officer', 'both', 1, '2018-08-26 03:09:56', '2018-08-28 08:15:20'),
(216, 'Cloud Engineer', 'both', 1, '2018-08-26 03:10:03', '2018-08-28 08:15:20'),
(217, 'Cloud Finance And Support Operations Specialist', 'both', 1, '2018-08-26 03:10:12', '2018-08-28 08:15:20'),
(218, 'Cloud Specialist', 'both', 1, '2018-08-26 03:10:19', '2018-08-28 08:15:20'),
(219, 'Club Manager', 'both', 1, '2018-08-26 03:10:26', '2018-08-28 08:15:20'),
(220, 'Commercial Director', 'both', 1, '2018-08-26 03:10:33', '2018-08-28 08:15:20'),
(221, 'Commercial Litigation Associate', 'both', 1, '2018-08-26 03:10:39', '2018-08-28 08:15:20'),
(222, 'Commercial Litigation Lawyer', 'both', 1, '2018-08-26 03:10:48', '2018-08-28 08:15:20'),
(223, 'Commercial Manager', 'both', 1, '2018-08-26 03:10:57', '2018-08-28 08:15:20'),
(224, 'Commercial Officer', 'both', 1, '2018-08-26 03:11:04', '2018-08-28 08:15:20'),
(225, 'Commercial Sales Consultant', 'both', 1, '2018-08-26 03:11:12', '2018-08-28 08:15:20'),
(226, 'Commis Chef', 'both', 1, '2018-08-26 03:11:19', '2018-08-28 08:15:20'),
(227, 'Communications Coordinator', 'both', 1, '2018-08-26 03:11:26', '2018-08-28 08:15:20'),
(228, 'Communications Officer', 'both', 1, '2018-08-26 03:11:46', '2018-08-28 08:15:20'),
(229, 'Complaint Analyst', 'both', 1, '2018-08-26 03:11:53', '2018-08-28 08:15:20'),
(230, 'Compliance Manager', 'both', 1, '2018-08-26 03:12:00', '2018-08-28 08:15:20'),
(231, 'Construction Director', 'both', 1, '2018-08-26 03:12:08', '2018-08-28 08:15:20'),
(232, 'Construction Engineer', 'both', 1, '2018-08-26 03:12:19', '2018-08-28 08:15:20'),
(233, 'Construction Lawyer', 'both', 1, '2018-08-26 03:12:26', '2018-08-28 08:15:20'),
(234, 'Construction Manager', 'both', 1, '2018-08-26 03:12:33', '2018-08-28 08:15:20'),
(235, 'Construction Superintendent', 'both', 1, '2018-08-26 03:12:41', '2018-08-28 08:15:20'),
(236, 'SaaS CRM Consultant', 'both', 1, '2018-08-26 03:13:05', '2018-08-28 08:15:20'),
(237, 'Container Unloader', 'both', 1, '2018-08-26 03:13:12', '2018-08-28 08:15:20'),
(238, 'Content Designer', 'both', 1, '2018-08-26 03:13:19', '2018-08-28 08:15:20'),
(239, 'Content Manager', 'both', 1, '2018-08-26 03:13:27', '2018-08-28 08:15:20'),
(240, 'Content Marketing Assistant', 'both', 1, '2018-08-26 03:13:36', '2018-08-28 08:15:20'),
(241, 'Control Analyst', 'both', 1, '2018-08-26 03:13:44', '2018-08-28 08:15:20'),
(242, 'Control Systems Engineer', 'both', 1, '2018-08-26 03:13:52', '2018-08-28 08:15:20'),
(243, 'Conveyancer', 'both', 1, '2018-08-26 03:29:55', '2018-08-28 08:15:20'),
(244, 'Conveyancing Paralegal', 'both', 1, '2018-08-26 03:30:03', '2018-08-28 08:15:20'),
(245, 'Conveyancing Secretary', 'both', 1, '2018-08-26 03:30:11', '2018-08-28 08:15:20'),
(246, 'Cook', 'both', 1, '2018-08-26 03:30:19', '2018-08-28 08:15:20'),
(247, 'Corporate Affairs Advisor', 'both', 1, '2018-08-26 03:30:27', '2018-08-28 08:15:20'),
(248, 'Corporate Associate', 'both', 1, '2018-08-26 03:30:34', '2018-08-28 08:15:20'),
(249, 'Corporate Security Officer', 'both', 1, '2018-08-26 03:30:41', '2018-08-28 08:15:20'),
(250, 'Corporate Solicitor', 'both', 1, '2018-08-26 03:30:49', '2018-08-28 08:15:20'),
(251, 'Cost Controller', 'both', 1, '2018-08-26 03:30:57', '2018-08-28 08:15:20'),
(252, 'Counter Sales Assistant', 'both', 1, '2018-08-26 03:31:06', '2018-08-28 08:15:20'),
(253, 'Couple And Family Counsellor', 'both', 1, '2018-08-26 03:31:33', '2018-08-28 08:15:20'),
(254, 'Courier Driver', 'both', 1, '2018-08-26 03:31:43', '2018-08-28 08:15:20'),
(255, 'Crane Operator', 'both', 1, '2018-08-26 03:31:51', '2018-08-28 08:15:20'),
(256, 'Crane Technician', 'both', 1, '2018-08-26 03:32:00', '2018-08-28 08:15:20'),
(257, 'Creative Manager', 'both', 1, '2018-08-26 03:32:09', '2018-08-28 08:15:20'),
(258, 'Credit Controller', 'both', 1, '2018-08-26 03:32:16', '2018-08-28 08:15:20'),
(259, 'Credit Manager', 'both', 1, '2018-08-26 03:32:24', '2018-08-28 08:15:20'),
(260, 'Credit Risk Analyst', 'both', 1, '2018-08-26 03:32:32', '2018-08-28 08:15:20'),
(261, 'Credit Team Leader', 'both', 1, '2018-08-26 03:32:39', '2018-08-28 08:15:20'),
(262, 'Criminal Lawyer', 'both', 1, '2018-08-26 03:32:48', '2018-08-28 08:15:20'),
(263, 'CRM Executive', 'both', 1, '2018-08-26 03:33:11', '2018-08-28 08:15:20'),
(264, 'Curriculum Administrator', 'both', 1, '2018-08-26 03:33:18', '2018-08-28 08:15:20'),
(265, 'Customer Relations Officer', 'both', 1, '2018-08-26 03:33:25', '2018-08-28 08:15:20'),
(266, 'Customer Service And Collections Officer', 'both', 1, '2018-08-26 03:34:03', '2018-08-28 08:15:20'),
(267, 'Collections Officer', 'both', 1, '2018-08-26 03:34:14', '2018-08-28 08:15:20'),
(268, 'Senior Collections Officer', 'both', 1, '2018-08-26 03:34:27', '2018-08-28 08:15:20'),
(269, 'Customer Service Advisor', 'both', 1, '2018-08-26 03:34:43', '2018-08-28 08:15:20'),
(270, 'Customer Service Assistant', 'both', 1, '2018-08-26 03:34:54', '2018-08-28 08:15:20'),
(271, 'Customer Service Consultant', 'both', 1, '2018-08-26 03:35:01', '2018-08-28 08:15:20'),
(272, 'Customer Service Manager', 'both', 1, '2018-08-26 03:35:11', '2018-08-28 08:15:20'),
(273, 'Customer Service Officer', 'both', 1, '2018-08-26 03:35:21', '2018-08-28 08:15:20'),
(274, 'Senior Customer Service Officer', 'both', 1, '2018-08-26 03:35:33', '2018-08-28 08:15:20'),
(275, 'Customer Service Representative', 'both', 1, '2018-08-26 03:35:43', '2018-08-28 08:15:20'),
(276, 'Inbound Customer Service Representative', 'both', 1, '2018-08-26 03:36:05', '2018-08-28 08:15:20'),
(277, 'Outbound Customer Service Representative', 'both', 1, '2018-08-26 03:36:22', '2018-08-28 08:15:20'),
(278, 'Customer Service Team Leader', 'both', 1, '2018-08-26 03:36:31', '2018-08-28 08:15:20'),
(279, 'Customer Success Manager', 'both', 1, '2018-08-26 03:36:45', '2018-08-28 08:15:20'),
(280, 'Data Analyst', 'both', 1, '2018-08-26 03:36:52', '2018-08-28 08:15:20'),
(281, 'Data Governance Lead', 'both', 1, '2018-08-26 03:36:59', '2018-08-28 08:15:20'),
(282, 'Data Scientist', 'both', 1, '2018-08-26 03:37:07', '2018-08-28 08:15:20'),
(283, 'Data Visualisation Analyst', 'both', 1, '2018-08-26 03:37:14', '2018-08-28 08:15:20'),
(284, 'Database Analyst', 'both', 1, '2018-08-26 03:37:21', '2018-08-28 08:15:20'),
(285, 'Delivery Driver', 'both', 1, '2018-08-26 03:37:28', '2018-08-28 08:15:20'),
(286, 'Delivery Lead', 'both', 1, '2018-08-26 03:37:37', '2018-08-28 08:15:20'),
(287, 'Dental Assistant', 'both', 1, '2018-08-26 03:37:45', '2018-08-28 08:15:20'),
(288, 'Design Engineer', 'both', 1, '2018-08-26 03:37:52', '2018-08-28 08:15:20'),
(289, 'Design Illustrator Expert', 'both', 1, '2018-08-26 03:38:00', '2018-08-28 08:15:20'),
(290, 'Design Manager', 'both', 1, '2018-08-26 03:38:11', '2018-08-28 08:15:20'),
(291, 'Desktop Support Engineer', 'both', 1, '2018-08-26 03:38:41', '2018-08-28 08:15:20'),
(292, 'Developer', 'both', 1, '2018-08-26 03:38:49', '2018-08-28 08:15:20'),
(293, 'Development Assessment Officer', 'both', 1, '2018-08-26 03:38:56', '2018-08-28 08:15:20'),
(294, 'Development Engineer', 'both', 1, '2018-08-26 03:39:18', '2018-08-28 08:15:20'),
(295, 'Development Manager', 'both', 1, '2018-08-26 03:39:25', '2018-08-28 08:15:20'),
(296, 'Dialler Administrator', 'both', 1, '2018-08-26 03:39:31', '2018-08-28 08:15:20'),
(297, 'Diesel Fitter', 'both', 1, '2018-08-26 03:39:40', '2018-08-28 08:15:20'),
(298, 'Diesel Mechanic', 'both', 1, '2018-08-26 03:39:48', '2018-08-28 08:15:20'),
(299, 'Digital Analytics Developer', 'both', 1, '2018-08-26 03:39:56', '2018-08-28 08:15:20'),
(300, 'Digital Content Manager', 'both', 1, '2018-08-26 03:40:03', '2018-08-28 08:15:20'),
(301, 'Digital Designer', 'both', 1, '2018-08-26 03:40:11', '2018-08-28 08:15:20'),
(302, 'Digital Graphic Designer', 'both', 1, '2018-08-26 03:40:20', '2018-08-28 08:15:20'),
(303, 'Digital Marketing Assistant', 'both', 1, '2018-08-26 03:40:26', '2018-08-28 08:15:20'),
(304, 'Digital Marketing Coordinator', 'both', 1, '2018-08-26 03:40:33', '2018-08-28 08:15:20'),
(305, 'Digital Performance Coordinator', 'both', 1, '2018-08-26 03:40:42', '2018-08-28 08:15:20'),
(306, 'Director Of Operations', 'both', 1, '2018-08-26 03:40:49', '2018-08-28 08:15:20'),
(307, 'Finance Director', 'both', 1, '2018-08-26 03:50:02', '2018-08-28 08:15:20'),
(308, 'Dispatch Operator', 'both', 1, '2018-08-26 03:50:13', '2018-08-28 08:15:20'),
(309, 'Dispensary Technician', 'both', 1, '2018-08-26 03:50:21', '2018-08-28 08:15:20'),
(310, 'Dispute Resolution Case Manager', 'both', 1, '2018-08-26 03:51:07', '2018-08-28 08:15:20'),
(311, 'District Project Coordinator', 'both', 1, '2018-08-26 03:51:16', '2018-08-28 08:15:20'),
(312, 'Diversity Recruitment Specialist', 'both', 1, '2018-08-26 03:51:24', '2018-08-28 08:15:20'),
(313, 'Divisional Manager', 'both', 1, '2018-08-26 03:51:30', '2018-08-28 08:15:20'),
(314, 'Dozer Operator', 'both', 1, '2018-08-26 03:51:36', '2018-08-28 08:15:20'),
(315, 'Draftsperson', 'both', 1, '2018-08-26 03:51:45', '2018-08-28 08:15:20'),
(316, 'Drill Operator', 'both', 1, '2018-08-26 03:51:52', '2018-08-28 08:15:20'),
(317, 'Dump Truck Operator', 'both', 1, '2018-08-26 03:52:03', '2018-08-28 08:15:20'),
(318, 'Duty Manager Aquatics', 'both', 1, '2018-08-26 03:52:12', '2018-08-28 08:15:20'),
(319, 'Early Childhood Educator', 'both', 1, '2018-08-26 03:52:27', '2018-08-28 08:15:20'),
(320, 'Economics Analyst', 'both', 1, '2018-08-26 03:52:36', '2018-08-28 08:15:20'),
(321, 'Economics And Evaluation Analyst', 'both', 1, '2018-08-26 03:52:44', '2018-08-28 08:15:20'),
(322, 'E Learning Coordinator', 'both', 1, '2018-08-26 03:52:52', '2018-08-28 08:15:20'),
(323, 'Electrical Engineer', 'both', 1, '2018-08-26 03:53:00', '2018-08-28 08:15:20'),
(324, 'Electrical Services Officer', 'both', 1, '2018-08-26 03:53:07', '2018-08-28 08:15:20'),
(325, 'Electrical Trade Assistant', 'both', 1, '2018-08-26 03:53:14', '2018-08-28 08:15:20'),
(326, 'Electrical Tradesperson', 'both', 1, '2018-08-26 03:53:22', '2018-08-28 08:15:20'),
(327, 'Electrician', 'both', 1, '2018-08-26 03:53:31', '2018-08-28 08:15:20'),
(328, 'Emergency Response Advisor', 'both', 1, '2018-08-26 03:53:41', '2018-08-28 08:15:20'),
(329, 'Employment Lawyer', 'both', 1, '2018-08-26 03:53:50', '2018-08-28 08:15:20'),
(330, 'Employment Legal Assistant', 'both', 1, '2018-08-26 03:53:57', '2018-08-28 08:15:20'),
(331, 'Employment Relations Advisor', 'both', 1, '2018-08-26 03:54:07', '2018-08-28 08:15:20'),
(332, 'EMR Clinical Analyst', 'both', 1, '2018-08-26 03:54:15', '2018-08-28 08:15:20'),
(333, 'Engagement Assistant', 'both', 1, '2018-08-26 03:54:28', '2018-08-28 08:15:20'),
(334, 'Engineering Technical Officer', 'both', 1, '2018-08-26 03:54:37', '2018-08-28 08:15:20'),
(335, 'English Teacher', 'both', 1, '2018-08-26 03:54:45', '2018-08-28 08:15:20'),
(336, 'Enrolments Officer', 'both', 1, '2018-08-26 03:54:59', '2018-08-28 08:15:20'),
(337, 'Environment Engineer', 'both', 1, '2018-08-26 03:55:08', '2018-08-28 08:15:20'),
(338, 'Environment Officer', 'both', 1, '2018-08-26 03:55:31', '2018-08-28 08:15:20'),
(339, 'Environmental Consultant', 'both', 1, '2018-08-26 03:55:47', '2018-08-28 08:15:20'),
(340, 'Environmental Coordinator', 'both', 1, '2018-08-26 03:55:55', '2018-08-28 08:15:20'),
(341, 'Environmental Management Officer', 'both', 1, '2018-08-26 03:56:06', '2018-08-28 08:15:20'),
(342, 'ERP Software Consultant', 'both', 1, '2018-08-26 03:56:14', '2018-08-28 08:15:20'),
(343, 'Estates Lawyer', 'both', 1, '2018-08-26 03:56:25', '2018-08-28 08:15:20'),
(344, 'Estimator', 'both', 1, '2018-08-26 03:56:33', '2018-08-28 08:15:20'),
(345, 'Event Sales Coordinator', 'both', 1, '2018-08-26 03:56:40', '2018-08-28 08:15:20'),
(346, 'Events And Relationships Executive', 'both', 1, '2018-08-26 03:56:52', '2018-08-28 08:15:20'),
(347, 'Events Assistant', 'both', 1, '2018-08-26 03:57:00', '2018-08-28 08:15:20'),
(348, 'Events Coordinator', 'both', 1, '2018-08-26 03:57:08', '2018-08-28 08:15:20'),
(349, 'Events Manager', 'both', 1, '2018-08-26 03:57:15', '2018-08-28 08:15:20'),
(350, 'Executive Director', 'both', 1, '2018-08-26 03:57:22', '2018-08-28 08:15:20'),
(351, 'Exercise Physiologist', 'both', 1, '2018-08-26 03:57:31', '2018-08-28 08:15:20'),
(352, 'Experiential Learning Advisor', 'both', 1, '2018-08-26 03:57:39', '2018-08-28 08:15:20'),
(353, 'Senior Agile Business Analyst', 'both', 1, '2018-08-26 04:02:05', '2018-08-28 08:15:20'),
(354, 'Family Lawyer', 'both', 1, '2018-08-26 04:18:10', '2018-08-28 08:15:20'),
(355, 'Fibre Optic Hauler', 'both', 1, '2018-08-26 04:18:17', '2018-08-28 08:15:20'),
(356, 'Field Sales Representative', 'both', 1, '2018-08-26 04:18:26', '2018-08-28 08:15:20'),
(357, 'Field Service Engineer', 'both', 1, '2018-08-26 04:18:32', '2018-08-28 08:15:20'),
(358, 'Field Service Mechanic', 'both', 1, '2018-08-26 04:18:42', '2018-08-28 08:15:20'),
(359, 'Filed Engineer', 'both', 1, '2018-08-26 04:18:49', '2018-08-28 08:15:20'),
(360, 'Finance Analyst', 'both', 1, '2018-08-26 04:18:57', '2018-08-28 08:15:20'),
(361, 'Finance Business Analyst', 'both', 1, '2018-08-26 04:19:06', '2018-08-28 08:15:20'),
(362, 'Senior Finance Business Analyst', 'both', 1, '2018-08-26 04:19:16', '2018-08-28 08:15:20'),
(363, 'Finance Business Partner', 'both', 1, '2018-08-26 04:19:22', '2018-08-28 08:15:20'),
(364, 'Finance Manager', 'both', 1, '2018-08-26 04:19:29', '2018-08-28 08:15:20'),
(365, 'Finance Officer', 'both', 1, '2018-08-26 04:19:37', '2018-08-28 08:15:20'),
(366, 'Senior Finance Officer', 'both', 1, '2018-08-26 04:19:47', '2018-08-28 08:15:20'),
(367, 'Financial Accountant', 'both', 1, '2018-08-26 04:19:54', '2018-08-28 08:15:20'),
(368, 'Financial Controller', 'both', 1, '2018-08-26 04:20:06', '2018-08-28 08:15:20'),
(369, 'Fitness Equipment Installer', 'both', 1, '2018-08-26 04:20:12', '2018-08-28 08:15:20'),
(370, 'Fitness Instructor', 'both', 1, '2018-08-26 04:20:24', '2018-08-28 08:15:20'),
(371, 'Fitter', 'both', 1, '2018-08-26 04:20:31', '2018-08-28 08:15:20'),
(372, 'Florist', 'both', 1, '2018-08-26 04:20:38', '2018-08-28 08:15:20'),
(373, 'Food And Beverage Attendants', 'both', 1, '2018-08-26 04:20:45', '2018-08-28 08:15:20'),
(374, 'Food Technologist', 'both', 1, '2018-08-26 04:20:53', '2018-08-28 08:15:20'),
(375, 'Forklift Driver', 'both', 1, '2018-08-26 04:21:01', '2018-08-28 08:15:20'),
(376, 'Form Setter', 'both', 1, '2018-08-26 04:21:07', '2018-08-28 08:15:20'),
(377, 'Frac Operator', 'both', 1, '2018-08-26 04:21:19', '2018-08-28 08:15:20'),
(378, 'Freelance Writer', 'both', 1, '2018-08-26 04:21:27', '2018-08-28 08:15:20'),
(379, 'Front End Developer', 'both', 1, '2018-08-26 04:21:34', '2018-08-28 08:15:20'),
(380, 'Full Stack Developer', 'both', 1, '2018-08-26 04:21:41', '2018-08-28 08:15:20'),
(381, 'Functional Analyst', 'both', 1, '2018-08-26 04:21:47', '2018-08-28 08:15:20'),
(382, 'Senior Functional Analyst', 'both', 1, '2018-08-26 04:21:57', '2018-08-28 08:15:20'),
(383, 'Fundraising And Event Coordinator', 'both', 1, '2018-08-26 04:22:06', '2018-08-28 08:15:20'),
(384, 'Gaming Attendant', 'both', 1, '2018-08-26 04:22:13', '2018-08-28 08:15:20'),
(385, 'Gas Crew Leader', 'both', 1, '2018-08-26 04:22:22', '2018-08-28 08:15:20'),
(386, 'General Dentist', 'both', 1, '2018-08-26 04:22:29', '2018-08-28 08:15:20'),
(387, 'General Manager', 'both', 1, '2018-08-26 04:23:02', '2018-08-28 08:15:20'),
(388, 'General Manager Finance', 'both', 1, '2018-08-26 04:23:09', '2018-08-28 08:15:20'),
(389, 'General Manager People And Culture', 'both', 1, '2018-08-26 04:23:24', '2018-08-28 08:15:20'),
(390, 'General Practice Nurse', 'both', 1, '2018-08-26 06:08:44', '2018-08-28 08:15:20'),
(391, 'Geomatics Consultant', 'both', 1, '2018-08-26 06:08:57', '2018-08-28 08:15:20'),
(392, 'Geotechnical Engineer', 'both', 1, '2018-08-26 06:09:06', '2018-08-28 08:15:20'),
(393, 'Go To Market Manager', 'both', 1, '2018-08-26 06:09:18', '2018-08-28 08:15:20'),
(394, 'Government Lawyer', 'both', 1, '2018-08-26 06:09:28', '2018-08-28 08:15:20'),
(395, 'Graduate Accountant', 'both', 1, '2018-08-26 06:09:36', '2018-08-28 08:15:20'),
(396, 'Graduate Architect', 'both', 1, '2018-08-26 06:09:45', '2018-08-28 08:15:20'),
(397, 'Graduate Engineer', 'both', 1, '2018-08-26 06:09:53', '2018-08-28 08:15:20'),
(398, 'Graduate Recruiter', 'both', 1, '2018-08-26 06:10:02', '2018-08-28 08:15:20'),
(399, 'Grants Officer', 'both', 1, '2018-08-26 06:10:09', '2018-08-28 08:15:20'),
(400, 'Graphic Designer', 'both', 1, '2018-08-26 06:10:17', '2018-08-28 08:15:20'),
(401, 'Grounds Person', 'both', 1, '2018-08-26 06:10:30', '2018-08-28 08:15:20'),
(402, 'Group Account Director', 'both', 1, '2018-08-26 06:10:38', '2018-08-28 08:15:20'),
(403, 'Group Leader', 'both', 1, '2018-08-26 06:10:45', '2018-08-28 08:15:20'),
(404, 'Group Personal Trainer', 'both', 1, '2018-08-26 06:10:51', '2018-08-28 08:15:20'),
(405, 'Group Sales Manager', 'both', 1, '2018-08-26 06:10:58', '2018-08-28 08:15:20'),
(406, 'Group Training Instructor', 'both', 1, '2018-08-26 06:11:06', '2018-08-28 08:15:20'),
(407, 'Guest Service Agent', 'both', 1, '2018-08-26 06:11:13', '2018-08-28 08:15:20'),
(408, 'Gym Instructor', 'both', 1, '2018-08-26 06:11:22', '2018-08-28 08:15:20'),
(409, 'Gym Manager', 'both', 1, '2018-08-26 06:11:30', '2018-08-28 08:15:20'),
(410, 'Gymnastics Coach', 'both', 1, '2018-08-26 06:11:38', '2018-08-28 08:15:20'),
(411, 'Hairdresser', 'both', 1, '2018-08-26 06:11:45', '2018-08-28 08:15:20'),
(412, 'HD Fitter', 'both', 1, '2018-08-26 06:11:52', '2018-08-28 08:15:20'),
(413, 'Head Chef', 'both', 1, '2018-08-26 06:12:06', '2018-08-28 08:15:20'),
(414, 'Head Of Client Engagement', 'both', 1, '2018-08-26 06:12:13', '2018-08-28 08:15:20'),
(415, 'Head Of Design And User Experience', 'both', 1, '2018-08-26 06:12:21', '2018-08-28 08:15:20'),
(416, 'Head Of Legal Operations', 'both', 1, '2018-08-26 06:12:28', '2018-08-28 08:15:20'),
(417, 'Head Of Managed Services', 'both', 1, '2018-08-26 06:12:35', '2018-08-28 08:15:20'),
(418, 'Head Of Product', 'both', 1, '2018-08-26 06:12:42', '2018-08-28 08:15:20'),
(419, 'Health And Safety Manager', 'both', 1, '2018-08-26 06:12:57', '2018-08-28 08:15:20'),
(420, 'Health And Fitness Coordinator', 'both', 1, '2018-08-26 06:13:06', '2018-08-28 08:15:20'),
(421, 'Health And Safety Advisor', 'both', 1, '2018-08-26 06:13:14', '2018-08-28 08:15:20'),
(422, 'Heavy Duty Diesel Mechanic', 'both', 1, '2018-08-26 06:13:24', '2018-08-28 08:15:20'),
(423, 'Heavy Duty Mechanic', 'both', 1, '2018-08-26 06:13:32', '2018-08-28 08:15:20'),
(424, 'Heavy Duty Truck Operator', 'both', 1, '2018-08-26 06:13:46', '2018-08-28 08:15:20'),
(425, 'Help Desk Support Level One', 'both', 1, '2018-08-26 06:14:34', '2018-08-28 08:15:20'),
(426, 'Help Desk Support Level Two', 'both', 1, '2018-08-26 06:14:46', '2018-08-28 08:15:20'),
(427, 'High Reach Forklift Driver', 'both', 1, '2018-08-26 06:14:53', '2018-08-28 08:15:20'),
(428, 'High Voltage Electrician', 'both', 1, '2018-08-26 06:15:00', '2018-08-28 08:15:20'),
(429, 'Histology Territory Specialist', 'both', 1, '2018-08-26 06:15:07', '2018-08-28 08:15:20'),
(430, 'History Teacher', 'both', 1, '2018-08-26 06:15:15', '2018-08-28 08:15:20'),
(431, 'Housekeeper', 'both', 1, '2018-08-26 06:15:21', '2018-08-28 08:15:20'),
(432, 'HR Administrator', 'both', 1, '2018-08-26 06:15:31', '2018-08-28 08:15:20'),
(433, 'HR Advisor', 'both', 1, '2018-08-26 06:15:39', '2018-08-28 08:15:20'),
(434, 'HR Assistant', 'both', 1, '2018-08-26 06:15:46', '2018-08-28 08:15:20'),
(435, 'HR Business Partner', 'both', 1, '2018-08-26 06:15:54', '2018-08-28 08:15:20'),
(436, 'HR Consultant', 'both', 1, '2018-08-26 06:16:01', '2018-08-28 08:15:20'),
(437, 'HR Coordinator', 'both', 1, '2018-08-26 06:16:08', '2018-08-28 08:15:20'),
(438, 'HR Manager', 'both', 1, '2018-08-26 06:16:14', '2018-08-28 08:15:20'),
(439, 'HR Officer', 'both', 1, '2018-08-26 06:16:22', '2018-08-28 08:15:20'),
(440, 'HR Support Coordinator', 'both', 1, '2018-08-26 06:16:29', '2018-08-28 08:15:20'),
(441, 'ICT Business Analyst', 'both', 1, '2018-08-26 06:16:35', '2018-08-28 08:15:20'),
(442, 'Immigration Lawyer', 'both', 1, '2018-08-26 06:16:43', '2018-08-28 08:15:20'),
(443, 'Industrial Sales Representative', 'both', 1, '2018-08-26 06:16:51', '2018-08-28 08:15:20'),
(444, 'Injury Management Team Leader', 'both', 1, '2018-08-26 06:16:58', '2018-08-28 08:15:20'),
(445, 'Insights Manager', 'both', 1, '2018-08-26 06:17:04', '2018-08-28 08:15:20'),
(446, 'Insolvency Lawyer', 'both', 1, '2018-08-26 06:17:12', '2018-08-28 08:15:20'),
(447, 'Instruction Designer', 'both', 1, '2018-08-26 06:17:19', '2018-08-28 08:15:20'),
(448, 'Insurance Administration Manager', 'both', 1, '2018-08-26 06:17:26', '2018-08-28 08:15:20'),
(449, 'Insurance Broker', 'both', 1, '2018-08-26 06:17:33', '2018-08-28 08:15:20'),
(450, 'Insurance Case Manager', 'both', 1, '2018-08-26 06:17:40', '2018-08-28 08:15:20'),
(451, 'Integration Manager', 'both', 1, '2018-08-26 06:17:47', '2018-08-28 08:15:20'),
(452, 'Integration Support Officer', 'both', 1, '2018-08-26 06:18:04', '2018-08-28 08:15:20'),
(453, 'Interior Designer', 'both', 1, '2018-08-26 06:18:11', '2018-08-28 08:15:20'),
(454, 'Internal Audit Manager', 'both', 1, '2018-08-26 06:18:19', '2018-08-28 08:15:20'),
(455, 'Senior Internal Audit Manager', 'both', 1, '2018-08-26 06:18:31', '2018-08-28 08:15:20'),
(456, 'Internal Auditor', 'both', 1, '2018-08-26 06:18:38', '2018-08-28 08:15:20'),
(457, 'Senior Internal Auditor', 'both', 1, '2018-08-26 06:18:49', '2018-08-28 08:15:20'),
(458, 'Internal Insights Analyst', 'both', 1, '2018-08-26 06:18:56', '2018-08-28 08:15:20'),
(459, 'Internal Recruitment Consultant', 'both', 1, '2018-08-26 06:19:06', '2018-08-28 08:15:20'),
(460, 'Internal Sales Consultant', 'both', 1, '2018-08-26 06:19:13', '2018-08-28 08:15:20'),
(461, 'Inventory Analysis', 'both', 1, '2018-08-26 06:19:21', '2018-08-28 08:15:20'),
(462, 'Inventory Officer', 'both', 1, '2018-08-26 06:19:28', '2018-08-28 08:15:20'),
(463, 'Inventory Specialist', 'both', 1, '2018-08-26 06:19:37', '2018-08-28 08:15:20'),
(464, 'Investment Manager', 'both', 1, '2018-08-26 06:19:45', '2018-08-28 08:15:20'),
(465, 'Investment Review Analyst', 'both', 1, '2018-08-26 06:19:54', '2018-08-28 08:15:20'),
(466, 'IP Lawyer', 'both', 1, '2018-08-26 06:20:02', '2018-08-28 08:15:20'),
(467, 'IT Support', 'both', 1, '2018-08-26 06:20:09', '2018-08-28 08:15:20'),
(468, 'IT Support Engineer', 'both', 1, '2018-08-26 06:20:15', '2018-08-28 08:15:20'),
(469, 'IT Support Officer', 'both', 1, '2018-08-26 06:20:22', '2018-08-28 08:15:20'),
(470, 'Java Developer', 'both', 1, '2018-08-26 06:20:29', '2018-08-28 08:15:20'),
(471, 'Jumbo Operator', 'both', 1, '2018-08-26 06:20:36', '2018-08-28 08:15:20'),
(472, 'Junior Architect', 'both', 1, '2018-08-26 06:20:43', '2018-08-28 08:15:20'),
(473, 'Junior Assistant Account Executive', 'both', 1, '2018-08-26 06:20:50', '2018-08-28 08:15:20'),
(474, 'Junior Collections Officer', 'both', 1, '2018-08-26 06:21:01', '2018-08-28 08:15:20'),
(475, 'Junior Designer', 'both', 1, '2018-08-26 06:21:08', '2018-08-28 08:15:20'),
(476, 'Junior Developer', 'both', 1, '2018-08-26 06:21:15', '2018-08-28 08:15:20'),
(477, 'Junior Digital Producer', 'both', 1, '2018-08-26 06:21:23', '2018-08-28 08:15:20'),
(478, 'Junior Estimator', 'both', 1, '2018-08-26 06:21:29', '2018-08-28 08:15:20'),
(479, 'Junior Graphic Designer', 'both', 1, '2018-08-26 06:21:38', '2018-08-28 08:15:20'),
(480, 'Junior Interior Designer', 'both', 1, '2018-08-26 06:21:44', '2018-08-28 08:15:20'),
(481, 'Junior Legal Secretary', 'both', 1, '2018-08-26 06:21:51', '2018-08-28 08:15:20'),
(482, 'Junior Paralegal', 'both', 1, '2018-08-26 06:21:58', '2018-08-28 08:15:20'),
(483, 'Junior Personal Injuries Legal Assistant', 'both', 1, '2018-08-26 06:22:08', '2018-08-28 08:15:20'),
(484, 'Junior Project Manager', 'both', 1, '2018-08-26 06:22:15', '2018-08-28 08:15:20'),
(485, 'Junior Property Manager', 'both', 1, '2018-08-26 06:22:22', '2018-08-28 08:15:20'),
(486, 'Junior Recruitment Specialist', 'both', 1, '2018-08-26 06:22:29', '2018-08-28 08:15:20'),
(487, 'Junior Software Developer', 'both', 1, '2018-08-26 06:22:37', '2018-08-28 08:15:20'),
(488, 'Junior SQL Administrator', 'both', 1, '2018-08-26 06:22:44', '2018-08-28 08:15:20'),
(489, 'Laboratory Assistant', 'both', 1, '2018-08-26 06:22:51', '2018-08-28 08:15:20'),
(490, 'Laboratory Manager', 'both', 1, '2018-08-26 06:22:58', '2018-08-28 08:15:20'),
(491, 'Laboratory Technician', 'both', 1, '2018-08-26 06:31:08', '2018-08-28 08:15:20'),
(492, 'Labourer', 'both', 1, '2018-08-26 06:31:15', '2018-08-28 08:15:20'),
(493, 'Land Sales Assistant', 'both', 1, '2018-08-26 06:31:23', '2018-08-28 08:15:20'),
(494, 'Land Sales Manager', 'both', 1, '2018-08-26 06:31:31', '2018-08-28 08:15:20'),
(495, 'Landscaper', 'both', 1, '2018-08-26 06:31:38', '2018-08-28 08:15:20'),
(496, 'Language Lecturer', 'both', 1, '2018-08-26 06:31:46', '2018-08-28 08:15:20'),
(497, 'Laser Beauty Therapist', 'both', 1, '2018-08-26 06:31:54', '2018-08-28 08:15:20'),
(498, 'Law Clerk', 'both', 1, '2018-08-26 06:32:02', '2018-08-28 08:15:20'),
(499, 'Law Graduate', 'both', 1, '2018-08-26 06:32:18', '2018-08-28 08:15:20'),
(500, 'Lead Mechanical Engineer', 'both', 1, '2018-08-26 06:32:25', '2018-08-28 08:15:20'),
(501, 'Lead Scientist', 'both', 1, '2018-08-26 06:32:33', '2018-08-28 08:15:20'),
(502, 'Leading Hand Plumber', 'both', 1, '2018-08-26 06:32:41', '2018-08-28 08:15:20'),
(503, 'Learning And Development Specialist', 'both', 1, '2018-08-26 06:32:54', '2018-08-28 08:15:20'),
(504, 'Leasing Clerk', 'both', 1, '2018-08-26 06:33:02', '2018-08-28 08:15:20'),
(505, 'Leasing Consultant', 'both', 1, '2018-08-26 06:33:10', '2018-08-28 08:15:20'),
(506, 'Lecturer', 'both', 1, '2018-08-26 06:33:17', '2018-08-28 08:15:20'),
(507, 'Legal Administrator', 'both', 1, '2018-08-26 06:33:26', '2018-08-28 08:15:20'),
(508, 'Legal Assistant', 'both', 1, '2018-08-26 06:33:46', '2018-08-28 08:15:20'),
(509, 'Legal Coordinator', 'both', 1, '2018-08-26 06:33:53', '2018-08-28 08:15:20'),
(510, 'Legal Project Manager', 'both', 1, '2018-08-26 06:34:02', '2018-08-28 08:15:20'),
(511, 'Legal Receptionist', 'both', 1, '2018-08-26 06:34:08', '2018-08-28 08:15:20'),
(512, 'Legal Secretary', 'both', 1, '2018-08-26 06:34:16', '2018-08-28 08:15:20'),
(513, 'Lending Area Manager', 'both', 1, '2018-08-26 06:34:24', '2018-08-28 08:15:20'),
(514, 'Life Claims Assessor', 'both', 1, '2018-08-26 06:34:32', '2018-08-28 08:15:20'),
(515, 'Lifeguard', 'both', 1, '2018-08-26 06:34:54', '2018-08-28 08:15:20'),
(516, 'Local Law Officer', 'both', 1, '2018-08-26 06:35:01', '2018-08-28 08:15:20'),
(517, 'Lodgement Consultant', 'both', 1, '2018-08-26 06:35:09', '2018-08-28 08:15:20'),
(518, 'Logistics Coordinator', 'both', 1, '2018-08-26 06:35:16', '2018-08-28 08:15:20'),
(519, 'Logistics Manager', 'both', 1, '2018-08-26 09:38:15', '2018-08-28 08:15:20'),
(520, 'Loyalty Manager', 'both', 1, '2018-08-26 09:38:22', '2018-08-28 08:15:20'),
(521, 'Machine Operator', 'both', 1, '2018-08-26 09:38:29', '2018-08-28 08:15:20'),
(522, 'Machinist', 'both', 1, '2018-08-26 09:38:36', '2018-08-28 08:15:20'),
(523, 'Mail And Bindery Operator', 'both', 1, '2018-08-26 09:38:58', '2018-08-28 08:15:20'),
(524, 'Maintenance Manager', 'both', 1, '2018-08-26 09:39:06', '2018-08-28 08:15:20'),
(525, 'Maintenance Planner', 'both', 1, '2018-08-26 09:39:14', '2018-08-28 08:15:20'),
(526, 'Managing Director', 'both', 1, '2018-08-26 09:39:23', '2018-08-28 08:15:20'),
(527, 'Manufacturing Supervisor', 'both', 1, '2018-08-26 09:39:33', '2018-08-28 08:15:20'),
(528, 'Market Analyst', 'both', 1, '2018-08-26 09:40:02', '2018-08-28 08:15:20'),
(529, 'Market Researcher', 'both', 1, '2018-08-26 09:40:10', '2018-08-28 08:15:20'),
(530, 'Marketing And Sales Executive', 'both', 1, '2018-08-26 09:40:20', '2018-08-28 08:15:20'),
(531, 'Marketing Administrator', 'both', 1, '2018-08-26 09:40:28', '2018-08-28 08:15:20'),
(532, 'Marketing Assistant', 'both', 1, '2018-08-26 09:40:37', '2018-08-28 08:15:20'),
(533, 'Marketing Campaign Executive', 'both', 1, '2018-08-26 09:40:46', '2018-08-28 08:15:20'),
(534, 'Marketing Communications Coordinator', 'both', 1, '2018-08-26 09:40:53', '2018-08-28 08:15:20'),
(535, 'Marketing Communications Executive', 'both', 1, '2018-08-26 09:41:02', '2018-08-28 08:15:20'),
(536, 'Marketing Content Advisor', 'both', 1, '2018-08-26 09:41:11', '2018-08-28 08:15:20'),
(537, 'Marketing Coordinator', 'both', 1, '2018-08-26 09:41:20', '2018-08-28 08:15:20'),
(538, 'Marketing Director', 'both', 1, '2018-08-26 09:41:28', '2018-08-28 08:15:20'),
(539, 'Marketing Executive', 'both', 1, '2018-08-26 09:41:37', '2018-08-28 08:15:20'),
(540, 'Marketing Manager', 'both', 1, '2018-08-26 09:42:02', '2018-08-28 08:15:20'),
(541, 'Marketing Product Coordinator', 'both', 1, '2018-08-26 09:42:42', '2018-08-28 08:15:20'),
(542, 'MC Driver', 'both', 1, '2018-08-26 09:42:49', '2018-08-28 08:15:20'),
(543, 'Mechanical Fitter', 'both', 1, '2018-08-26 09:42:59', '2018-08-28 08:15:20'),
(544, 'Mechanical Services Officer', 'both', 1, '2018-08-26 09:43:09', '2018-08-28 08:15:20'),
(545, 'Mechanical Tradesperson', 'both', 1, '2018-08-26 09:43:16', '2018-08-28 08:15:20'),
(546, 'Media And Communications Officer', 'both', 1, '2018-08-26 09:43:27', '2018-08-28 08:15:20'),
(547, 'Media Communications Advisor', 'both', 1, '2018-08-26 09:43:34', '2018-08-28 08:15:20'),
(548, 'Medical Advisor', 'both', 1, '2018-08-26 09:43:44', '2018-08-28 08:15:20'),
(549, 'Medical Receptionist', 'both', 1, '2018-08-26 09:44:01', '2018-08-28 08:15:20'),
(550, 'Dental Receptionist', 'both', 1, '2018-08-26 09:44:17', '2018-08-28 08:15:20'),
(551, 'Medical Secretary', 'both', 1, '2018-08-26 09:44:25', '2018-08-28 08:15:20'),
(552, 'Member Benefits Representative', 'both', 1, '2018-08-26 09:44:33', '2018-08-28 08:15:20'),
(553, 'Member Service Officer', 'both', 1, '2018-08-26 09:44:40', '2018-08-28 08:15:20'),
(554, 'Membership Officer', 'both', 1, '2018-08-26 09:44:50', '2018-08-28 08:15:20'),
(555, 'Membership Sales Consultant', 'both', 1, '2018-08-26 09:44:58', '2018-08-28 08:15:20'),
(556, 'Merchandise Assistant', 'both', 1, '2018-08-26 09:45:05', '2018-08-28 08:15:20'),
(557, 'Merchandise Manager', 'both', 1, '2018-08-26 09:45:15', '2018-08-28 08:15:20'),
(558, 'Massage Therapist', 'both', 1, '2018-08-26 09:45:40', '2018-08-28 08:15:20'),
(559, 'Migration Administrative Assistance', 'both', 1, '2018-08-26 09:45:48', '2018-08-28 08:15:20'),
(560, 'Migration Administrator', 'both', 1, '2018-08-26 09:45:56', '2018-08-28 08:15:20'),
(561, 'IOS Developer', 'both', 1, '2018-08-26 09:46:05', '2018-08-28 08:15:20'),
(562, 'Model', 'both', 1, '2018-08-26 09:46:24', '2018-08-28 08:15:20'),
(563, 'Montessori Educator', 'both', 1, '2018-08-26 09:47:30', '2018-08-28 08:15:20'),
(564, 'Mortgage Broker', 'both', 1, '2018-08-26 09:47:41', '2018-08-28 08:15:20'),
(565, 'Motor Claims Consultant', 'both', 1, '2018-08-26 09:47:48', '2018-08-28 08:15:20'),
(566, 'MR Driver', 'both', 1, '2018-08-26 09:47:56', '2018-08-28 08:15:20'),
(567, 'Multi Skilled Operator', 'both', 1, '2018-08-26 09:48:03', '2018-08-28 08:15:20'),
(568, 'National Manager', 'both', 1, '2018-08-26 09:48:10', '2018-08-28 08:15:20'),
(569, 'National Sales Manager', 'both', 1, '2018-08-26 09:48:23', '2018-08-28 08:15:20'),
(570, 'Network Engineer', 'both', 1, '2018-08-26 09:48:31', '2018-08-28 08:15:20'),
(571, 'New Home Sales Advisor', 'both', 1, '2018-08-26 09:48:37', '2018-08-28 08:15:20'),
(572, 'Newman Driver', 'both', 1, '2018-08-26 09:48:45', '2018-08-28 08:15:20'),
(573, 'Nursing Assistant', 'both', 1, '2018-08-26 09:48:51', '2018-08-28 08:15:20'),
(574, 'Occupational Physician', 'both', 1, '2018-08-26 09:49:04', '2018-08-28 08:15:20'),
(575, 'Occupational Therapist', 'both', 1, '2018-08-26 09:49:11', '2018-08-28 08:15:20'),
(576, 'Office Assistant', 'both', 1, '2018-08-26 09:49:18', '2018-08-28 08:15:20'),
(577, 'Officer Manager', 'both', 1, '2018-08-26 09:49:25', '2018-08-28 08:15:20'),
(578, 'Oilfield Operator', 'both', 1, '2018-08-26 09:49:32', '2018-08-28 08:15:20'),
(579, 'Operations Coordinator', 'both', 1, '2018-08-26 09:49:39', '2018-08-28 08:15:20'),
(580, 'Operations Manager', 'both', 1, '2018-08-26 09:49:46', '2018-08-28 08:15:20'),
(581, 'Operations Support Officer', 'both', 1, '2018-08-26 09:49:55', '2018-08-28 08:15:20'),
(582, 'Painter Tradesperson', 'both', 1, '2018-08-26 09:50:05', '2018-08-28 08:15:20'),
(583, 'Paralegal', 'both', 1, '2018-08-26 09:50:12', '2018-08-28 08:15:20'),
(584, 'Parts Interpreter', 'both', 1, '2018-08-26 09:50:18', '2018-08-28 08:15:20'),
(585, 'Pastry Chef', 'both', 1, '2018-08-26 09:50:26', '2018-08-28 08:15:20'),
(586, 'Patent Attorney', 'both', 1, '2018-08-26 09:50:33', '2018-08-28 08:15:20'),
(587, 'Payroll Officer', 'both', 1, '2018-08-26 09:50:40', '2018-08-28 08:15:20'),
(588, 'People And Culture Officer', 'both', 1, '2018-08-26 09:50:56', '2018-08-28 08:15:20'),
(589, 'People Operations Manager', 'both', 1, '2018-08-26 09:51:05', '2018-08-28 08:15:20'),
(590, 'Personal Care Worker', 'both', 1, '2018-08-26 09:51:46', '2018-08-28 08:15:20'),
(591, 'Personal Injury Paralegal', 'both', 1, '2018-08-26 09:52:03', '2018-08-28 08:15:20'),
(592, 'Personal Trainer', 'both', 1, '2018-08-26 09:52:10', '2018-08-28 08:15:20'),
(593, 'Pest Control Technician', 'both', 1, '2018-08-26 09:52:18', '2018-08-28 08:15:20'),
(594, 'Pharmacy Assistance', 'both', 1, '2018-08-26 09:52:26', '2018-08-28 08:15:20'),
(595, 'Pharmacy Supervisor', 'both', 1, '2018-08-26 09:52:34', '2018-08-28 08:15:20'),
(596, 'Philanthropy Executive', 'both', 1, '2018-08-26 09:52:42', '2018-08-28 08:15:20'),
(597, 'Photographer', 'both', 1, '2018-08-26 09:52:55', '2018-08-28 08:15:20'),
(598, 'Physiotherapist', 'both', 1, '2018-08-26 09:53:02', '2018-08-28 08:15:20'),
(599, 'Picker And Packer', 'both', 1, '2018-08-26 09:53:12', '2018-08-28 08:15:20'),
(600, 'Planning And Environment Lawyer', 'both', 1, '2018-08-26 09:53:26', '2018-08-28 08:15:20'),
(601, 'Planning And Reporting Coordinator', 'both', 1, '2018-08-26 09:53:43', '2018-08-28 08:15:20'),
(602, 'Plant Mechanic', 'both', 1, '2018-08-26 09:53:54', '2018-08-28 08:15:20'),
(603, 'Plantation Forester', 'both', 1, '2018-08-26 09:54:02', '2018-08-28 08:15:20'),
(604, 'Plastic Fabricator', 'both', 1, '2018-08-26 09:54:17', '2018-08-28 08:15:20'),
(605, 'Plumbing Apprentice', 'both', 1, '2018-08-26 09:54:25', '2018-08-28 08:15:20'),
(607, 'Policy Officer', 'both', 1, '2018-08-26 09:54:46', '2018-08-28 08:15:20'),
(608, 'Senior Policy Officer', 'both', 1, '2018-08-26 09:54:55', '2018-08-28 08:15:20'),
(609, 'Pool And Spa Technician', 'both', 1, '2018-08-26 09:55:10', '2018-08-28 08:15:20'),
(610, 'Pool Service Technician', 'both', 1, '2018-08-26 09:55:18', '2018-08-28 08:15:20'),
(611, 'Portfolio Property Manager', 'both', 1, '2018-08-26 09:55:26', '2018-08-28 08:15:20'),
(612, 'Post Press Team Member', 'both', 1, '2018-08-26 09:55:37', '2018-08-28 08:15:20'),
(613, 'Power Station Operator', 'both', 1, '2018-08-26 09:55:47', '2018-08-28 08:15:20'),
(614, 'Practice Nurse', 'both', 1, '2018-08-26 09:55:54', '2018-08-28 08:15:20'),
(615, 'Pricing Specialist', 'both', 1, '2018-08-26 09:56:01', '2018-08-28 08:15:20'),
(616, 'Senior Pricing Specialist', 'both', 1, '2018-08-26 09:56:10', '2018-08-28 08:15:20'),
(617, 'Principal Planner', 'both', 1, '2018-08-26 09:56:18', '2018-08-28 08:15:20'),
(618, 'Principal Project Officer', 'both', 1, '2018-08-26 09:56:25', '2018-08-28 08:15:20'),
(619, 'Private Wealth Advisor', 'both', 1, '2018-08-26 09:56:35', '2018-08-28 08:15:20'),
(620, 'Process Engineer', 'both', 1, '2018-08-26 09:56:44', '2018-08-28 08:15:20'),
(621, 'Process Technician', 'both', 1, '2018-08-26 09:56:52', '2018-08-28 08:15:20'),
(622, 'Senior Process Engineer', 'both', 1, '2018-08-26 09:57:07', '2018-08-28 08:15:20'),
(623, 'Process Worker', 'both', 1, '2018-08-26 09:57:34', '2018-08-28 08:15:20'),
(624, 'Product Designer', 'both', 1, '2018-08-26 09:57:41', '2018-08-28 08:15:20'),
(625, 'Senior Product Designer', 'both', 1, '2018-08-26 09:57:52', '2018-08-28 08:15:20'),
(626, 'Product Development Draftsperson', 'both', 1, '2018-08-26 09:58:00', '2018-08-28 08:15:20'),
(627, 'Product Development Technologist', 'both', 1, '2018-08-26 09:58:09', '2018-08-28 08:15:20'),
(628, 'Product Engineer', 'both', 1, '2018-08-26 09:58:19', '2018-08-28 08:15:20'),
(629, 'Senior Product Engineer', 'both', 1, '2018-08-26 09:58:54', '2018-08-28 08:15:20'),
(630, 'Product Handler', 'both', 1, '2018-08-26 09:59:07', '2018-08-28 08:15:20'),
(631, 'Production Assistant', 'both', 1, '2018-08-26 09:59:13', '2018-08-28 08:15:20'),
(632, 'Production Engineer', 'both', 1, '2018-08-26 09:59:27', '2018-08-28 08:15:20'),
(633, 'Senior Production Engineer', 'both', 1, '2018-08-26 09:59:48', '2018-08-28 08:15:20'),
(634, 'Production Manager', 'both', 1, '2018-08-26 09:59:56', '2018-08-28 08:15:20'),
(635, 'Senior Production Manager', 'both', 1, '2018-08-26 10:00:06', '2018-08-28 08:15:20'),
(636, 'Production Operator', 'both', 1, '2018-08-26 10:00:13', '2018-08-28 08:15:20'),
(637, 'Senior Production Operator', 'both', 1, '2018-08-26 10:00:24', '2018-08-28 08:15:20'),
(638, 'Production Supervisor', 'both', 1, '2018-08-26 10:00:30', '2018-08-28 08:15:20'),
(639, 'Program Officer', 'both', 1, '2018-08-26 10:00:39', '2018-08-28 08:15:20'),
(640, 'Project Administrator', 'both', 1, '2018-08-26 10:00:45', '2018-08-28 08:15:20'),
(641, 'Project Content Officer', 'both', 1, '2018-08-26 10:00:52', '2018-08-28 08:15:20'),
(642, 'Project Coordinator', 'both', 1, '2018-08-26 10:00:59', '2018-08-28 08:15:20'),
(643, 'Project Development Assistant', 'both', 1, '2018-08-26 10:01:11', '2018-08-28 08:15:20'),
(644, 'Project Director', 'both', 1, '2018-08-26 10:01:18', '2018-08-28 08:15:20'),
(645, 'Project Engineer', 'both', 1, '2018-08-26 10:01:30', '2018-08-28 08:15:20'),
(646, 'Senior Project Engineer', 'both', 1, '2018-08-26 10:01:40', '2018-08-28 08:15:20'),
(647, 'Project Manager', 'both', 1, '2018-08-26 10:01:49', '2018-08-28 08:15:20'),
(648, 'Senior Project Manager', 'both', 1, '2018-08-26 10:02:00', '2018-08-28 08:15:20'),
(649, 'Project Officer', 'both', 1, '2018-08-26 10:02:08', '2018-08-28 08:15:20'),
(650, 'Senior Project Officer', 'both', 1, '2018-08-26 10:02:17', '2018-08-28 08:15:20'),
(651, 'Project Site Construction Manager', 'both', 1, '2018-08-26 10:02:55', '2018-08-28 08:15:20'),
(652, 'Property Administrator', 'both', 1, '2018-08-26 10:03:03', '2018-08-28 08:15:20'),
(653, 'Senior Property Administrator', 'both', 1, '2018-08-26 10:03:12', '2018-08-28 08:15:20'),
(654, 'Property Manager', 'both', 1, '2018-08-26 10:03:20', '2018-08-28 08:15:20'),
(655, 'Senior Property Manager', 'both', 1, '2018-08-26 10:03:33', '2018-08-28 08:15:20'),
(656, 'Property Manager Associate', 'both', 1, '2018-08-26 10:03:41', '2018-08-28 08:15:20'),
(657, 'Property Officer', 'both', 1, '2018-08-26 10:03:49', '2018-08-28 08:15:20'),
(658, 'Senior Property Officer', 'both', 1, '2018-08-26 10:03:58', '2018-08-28 08:15:20'),
(659, 'Public Relations Coordinator', 'both', 1, '2018-08-26 10:04:41', '2018-08-28 08:15:20'),
(660, 'Senior Public Relations Coordinator', 'both', 1, '2018-08-26 10:04:53', '2018-08-28 08:15:20'),
(661, 'Purchasing Officer', 'both', 1, '2018-08-26 10:04:59', '2018-08-28 08:15:20'),
(662, 'Senior Purchasing Officer', 'both', 1, '2018-08-26 10:05:11', '2018-08-28 08:15:20'),
(663, 'Quality Assurance Associate', 'both', 1, '2018-08-26 10:05:18', '2018-08-28 08:15:20'),
(664, 'Quality Assurance Coordinator', 'both', 1, '2018-08-26 10:05:28', '2018-08-28 08:15:20'),
(665, 'Quality Assurance Manager', 'both', 1, '2018-08-26 10:05:34', '2018-08-28 08:15:20');
INSERT INTO `job_titles` (`jobTitleId`, `jobTitleName`, `userType`, `status`, `crd`, `upd`) VALUES
(666, 'Quality Control Officer', 'both', 1, '2018-08-26 10:05:42', '2018-08-28 08:15:20'),
(667, 'Senior Quality Control Officer', 'both', 1, '2018-08-26 10:05:51', '2018-08-28 08:15:20'),
(668, 'Quantity Surveyor', 'both', 1, '2018-08-26 10:05:57', '2018-08-28 08:15:20'),
(669, 'Senior Quantity Surveyor', 'both', 1, '2018-08-26 10:06:07', '2018-08-28 08:15:20'),
(670, 'Radio Operator', 'both', 1, '2018-08-26 10:06:13', '2018-08-28 08:15:20'),
(671, 'Reach Forklift Driver', 'both', 1, '2018-08-26 10:06:20', '2018-08-28 08:15:20'),
(672, 'Real Estate Administrator', 'both', 1, '2018-08-26 10:06:28', '2018-08-28 08:15:20'),
(673, 'Real Estate Agent', 'both', 1, '2018-08-26 10:06:37', '2018-08-28 08:15:20'),
(674, 'Residential Real Estate Agent', 'both', 1, '2018-08-26 10:06:54', '2018-08-28 08:15:20'),
(675, 'Commercial Real Estate Agent', 'both', 1, '2018-08-26 10:07:14', '2018-08-28 08:15:20'),
(676, 'Real Estate Sales Assistant', 'both', 1, '2018-08-26 10:07:20', '2018-08-28 08:15:20'),
(677, 'Real Estate Sales Consultant', 'both', 1, '2018-08-26 10:07:27', '2018-08-28 08:15:20'),
(678, 'Receptionist', 'both', 1, '2018-08-26 10:07:34', '2018-08-28 08:15:20'),
(679, 'Recruitment Advisor', 'both', 1, '2018-08-26 10:07:41', '2018-08-28 08:15:20'),
(680, 'Recruitment Business Partner', 'both', 1, '2018-08-26 10:07:48', '2018-08-28 08:15:20'),
(681, 'Recruitment Consultant', 'both', 1, '2018-08-26 10:07:55', '2018-08-28 08:15:20'),
(682, 'Recruitment Coordinator', 'both', 1, '2018-08-26 10:08:03', '2018-08-28 08:15:20'),
(683, 'Recruitment Manager', 'both', 1, '2018-08-26 10:08:13', '2018-08-28 08:15:20'),
(684, 'Recruitment Resourcer', 'both', 1, '2018-08-26 10:08:20', '2018-08-28 08:15:20'),
(685, 'Refrigeration Technician', 'both', 1, '2018-08-26 10:08:37', '2018-08-28 08:15:20'),
(686, 'Regional Operations Manager', 'both', 1, '2018-08-26 10:08:46', '2018-08-28 08:15:20'),
(687, 'Registered Nurse', 'both', 1, '2018-08-26 10:09:09', '2018-08-28 08:15:20'),
(688, 'Registered Nurse Aged Care', 'both', 1, '2018-08-26 10:09:16', '2018-08-28 08:15:20'),
(689, 'Rehabilitation Specialist', 'both', 1, '2018-08-26 10:09:27', '2018-08-28 08:15:20'),
(690, 'Relations Manager', 'both', 1, '2018-08-26 10:09:34', '2018-08-28 08:15:20'),
(691, 'Relief Merchandiser', 'both', 1, '2018-08-26 10:09:41', '2018-08-28 08:15:20'),
(692, 'Removalist Driver', 'both', 1, '2018-08-26 10:09:49', '2018-08-28 08:15:20'),
(693, 'Rental Coordinator', 'both', 1, '2018-08-26 10:10:00', '2018-08-28 08:15:20'),
(694, 'Research Assistant', 'both', 1, '2018-08-26 10:10:09', '2018-08-28 08:15:20'),
(695, 'Reservations Agent', 'both', 1, '2018-08-26 10:10:27', '2018-08-28 08:15:20'),
(696, 'Residential Sales Consultant', 'both', 1, '2018-08-26 10:10:34', '2018-08-28 08:15:20'),
(697, 'Resource Recovery Officer', 'both', 1, '2018-08-26 10:10:42', '2018-08-28 08:15:20'),
(698, 'Resourcing Specialist', 'both', 1, '2018-08-26 10:10:53', '2018-08-28 08:15:20'),
(699, 'Retail Assistant', 'both', 1, '2018-08-26 10:11:03', '2018-08-28 08:15:20'),
(700, 'Retail Manager', 'both', 1, '2018-08-26 10:11:10', '2018-08-28 08:15:20'),
(701, 'Revenue Accountant', 'both', 1, '2018-08-26 10:11:17', '2018-08-28 08:15:20'),
(702, 'Revenue Manager', 'both', 1, '2018-08-26 10:11:29', '2018-08-28 08:15:20'),
(703, 'Risk Manager', 'both', 1, '2018-08-26 10:11:44', '2018-08-28 08:15:20'),
(704, 'Rollout Engineer', 'both', 1, '2018-08-26 10:11:50', '2018-08-28 08:15:20'),
(705, 'Roofing Apprentice', 'both', 1, '2018-08-26 10:11:58', '2018-08-28 08:15:20'),
(706, 'Safety Coordinator', 'both', 1, '2018-08-26 10:12:06', '2018-08-28 08:15:20'),
(707, 'Safety Manager', 'both', 1, '2018-08-26 10:12:13', '2018-08-28 08:15:20'),
(708, 'Sales And Marketing Officer', 'both', 1, '2018-08-26 10:12:23', '2018-08-28 08:15:20'),
(709, 'Sales And Marketing Systems Consultant', 'both', 1, '2018-08-26 10:12:32', '2018-08-28 08:15:20'),
(710, 'Sales Agent', 'both', 1, '2018-08-26 10:12:41', '2018-08-28 08:15:20'),
(711, 'Sales Assistant', 'both', 1, '2018-08-26 10:12:48', '2018-08-28 08:15:20'),
(712, 'Sales Associate', 'both', 1, '2018-08-26 10:12:55', '2018-08-28 08:15:20'),
(713, 'Sales Consultant', 'both', 1, '2018-08-26 10:13:02', '2018-08-28 08:15:20'),
(714, 'Sales Executive', 'both', 1, '2018-08-26 10:13:08', '2018-08-28 08:15:20'),
(715, 'Sales Manager', 'both', 1, '2018-08-26 10:13:14', '2018-08-28 08:15:20'),
(716, 'Car Sales Person', 'both', 1, '2018-08-26 10:13:21', '2018-08-28 08:15:20'),
(717, 'Sales Product Specialist', 'both', 1, '2018-08-26 10:14:01', '2018-08-28 08:15:20'),
(718, 'Salesforce Administrator', 'both', 1, '2018-08-26 10:14:12', '2018-08-28 08:15:20'),
(719, 'Salesforce Technical Lead', 'both', 1, '2018-08-26 10:14:18', '2018-08-28 08:15:20'),
(720, 'Sample Receipt Officer', 'both', 1, '2018-08-26 10:14:25', '2018-08-28 08:15:20'),
(721, 'Sample Registration Officer', 'both', 1, '2018-08-26 10:14:32', '2018-08-28 08:15:20'),
(722, 'Scaffolder', 'both', 1, '2018-08-26 10:14:39', '2018-08-28 08:15:20'),
(723, 'Search And Registration Assistant', 'both', 1, '2018-08-26 10:14:47', '2018-08-28 08:15:20'),
(724, 'Section Coordinator', 'both', 1, '2018-08-26 10:14:54', '2018-08-28 08:15:20'),
(725, 'Security Analyst', 'both', 1, '2018-08-26 10:15:01', '2018-08-28 08:15:20'),
(726, 'Security Officer', 'both', 1, '2018-08-26 10:15:07', '2018-08-28 08:15:20'),
(727, 'Security Risk Consultant', 'both', 1, '2018-08-26 10:15:14', '2018-08-28 08:15:20'),
(728, 'Security System Engineer', 'both', 1, '2018-08-26 10:15:22', '2018-08-28 08:15:20'),
(729, 'Semi Truck Driver', 'both', 1, '2018-08-26 10:15:28', '2018-08-28 08:15:20'),
(730, 'Senior Accountant', 'both', 1, '2018-08-26 10:15:36', '2018-08-28 08:15:20'),
(731, 'Senior Financial Accountant', 'both', 1, '2018-08-26 10:15:56', '2018-08-28 08:15:20'),
(732, 'Senior Actuarial Analyst', 'both', 1, '2018-08-26 10:16:03', '2018-08-28 08:15:20'),
(733, 'Senior Analytical Scientist', 'both', 1, '2018-08-26 10:16:10', '2018-08-28 08:15:20'),
(734, 'Senior Architect', 'both', 1, '2018-08-26 10:16:17', '2018-08-28 08:15:20'),
(735, 'Senior Asbestos Laboratory Analyst', 'both', 1, '2018-08-26 10:16:24', '2018-08-28 08:15:20'),
(736, 'Senior Assistant Accountant', 'both', 1, '2018-08-26 10:16:30', '2018-08-28 08:15:20'),
(737, 'Senior Automation Engineer', 'both', 1, '2018-08-26 10:16:37', '2018-08-28 08:15:20'),
(738, 'Senior Automation Test Analyst', 'both', 1, '2018-08-26 10:16:44', '2018-08-28 08:15:20'),
(739, 'Senior Business Analyst', 'both', 1, '2018-08-26 10:17:00', '2018-08-28 08:15:20'),
(740, 'Senior Business Development Manager', 'both', 1, '2018-08-26 10:17:07', '2018-08-28 08:15:20'),
(741, 'Senior Case Manager', 'both', 1, '2018-08-26 10:17:14', '2018-08-28 08:15:20'),
(742, 'Senior Change Analyst', 'both', 1, '2018-08-26 10:17:30', '2018-08-28 08:15:20'),
(743, 'Senior Commercial Analyst', 'both', 1, '2018-08-26 10:17:55', '2018-08-28 08:15:20'),
(744, 'Senior Compliance Consultant', 'both', 1, '2018-08-26 10:18:04', '2018-08-28 08:15:20'),
(745, 'Senior Construction Engineer', 'both', 1, '2018-08-26 10:18:11', '2018-08-28 08:15:20'),
(746, 'Senior Contract Administrator', 'both', 1, '2018-08-26 10:18:17', '2018-08-28 08:15:20'),
(747, 'Senior Contracts Administrator', 'both', 1, '2018-08-26 10:18:24', '2018-08-28 08:15:20'),
(748, 'Senior Control System Engineer', 'both', 1, '2018-08-26 10:18:30', '2018-08-28 08:15:20'),
(749, 'Senior Credit Controller', 'both', 1, '2018-08-26 10:20:02', '2018-08-28 08:15:20'),
(750, 'Senior Credit Officer', 'both', 1, '2018-08-26 10:20:13', '2018-08-28 08:15:20'),
(751, 'Senior Credit Risk Analyst', 'both', 1, '2018-08-26 10:20:20', '2018-08-28 08:15:20'),
(752, 'Senior Customer Relations Officer', 'both', 1, '2018-08-26 10:20:27', '2018-08-28 08:15:20'),
(753, 'Senior Data Analyst', 'both', 1, '2018-08-26 10:20:34', '2018-08-28 08:15:20'),
(754, 'Senior Database Analyst', 'both', 1, '2018-08-26 10:20:41', '2018-08-28 08:15:20'),
(755, 'Senior Design Manager', 'both', 1, '2018-08-26 10:20:48', '2018-08-28 08:15:20'),
(756, 'Senior Development Planner', 'both', 1, '2018-08-26 10:20:55', '2018-08-28 08:15:20'),
(757, 'Senior Digital Manager', 'both', 1, '2018-08-26 10:21:01', '2018-08-28 08:15:20'),
(758, 'Senior Draftsperson', 'both', 1, '2018-08-26 10:21:07', '2018-08-28 08:15:20'),
(759, 'Senior Economics Analyst', 'both', 1, '2018-08-26 10:21:14', '2018-08-28 08:15:20'),
(760, 'Senior Economics And Evaluation Analyst', 'both', 1, '2018-08-26 10:22:24', '2018-08-28 08:15:20'),
(761, 'Senior Educator', 'both', 1, '2018-08-26 10:22:31', '2018-08-28 08:15:20'),
(762, 'Senior Electrical Engineer', 'both', 1, '2018-08-26 10:22:37', '2018-08-28 08:15:20'),
(763, 'Senior Engineer', 'both', 1, '2018-08-26 10:22:46', '2018-08-28 08:15:20'),
(764, 'Desktop Engineer', 'both', 1, '2018-08-26 10:23:11', '2018-08-28 08:15:20'),
(765, 'Senior Desktop Engineer', 'both', 1, '2018-08-26 10:23:24', '2018-08-28 08:15:20'),
(766, 'Senior Estimator', 'both', 1, '2018-08-26 10:23:31', '2018-08-28 08:15:20'),
(767, 'Senior Events Coordinator', 'both', 1, '2018-08-26 10:23:36', '2018-08-28 08:15:20'),
(768, 'Senior Finance And Grants Officer', 'both', 1, '2018-08-26 10:23:42', '2018-08-28 08:15:20'),
(769, 'Senior Graphic Designer', 'both', 1, '2018-08-26 10:24:13', '2018-08-28 08:15:20'),
(770, 'Senior Hairdresser', 'both', 1, '2018-08-26 10:24:20', '2018-08-28 08:15:20'),
(771, 'Senior HR Advisor', 'both', 1, '2018-08-26 10:24:27', '2018-08-28 08:15:20'),
(772, 'Senior HR Business Partner', 'both', 1, '2018-08-26 10:24:34', '2018-08-28 08:15:20'),
(773, 'Senior HR Consultant', 'both', 1, '2018-08-26 10:24:41', '2018-08-28 08:15:20'),
(774, 'Senior Interior Designer', 'both', 1, '2018-08-26 10:24:47', '2018-08-28 08:15:20'),
(775, 'Senior Investment Review Analyst', 'both', 1, '2018-08-26 10:25:07', '2018-08-28 08:15:20'),
(776, 'Senior Learning And Development Specialist', 'both', 1, '2018-08-26 10:25:22', '2018-08-28 08:15:20'),
(777, 'Senior Legal Clerk', 'both', 1, '2018-08-26 10:25:49', '2018-08-28 08:15:20'),
(778, 'Senior Legal Coordinator', 'both', 1, '2018-08-26 10:25:56', '2018-08-28 08:15:20'),
(779, 'Senior Legal Secretary', 'both', 1, '2018-08-26 10:26:02', '2018-08-28 08:15:20'),
(781, 'Android Developer', 'both', 1, '2018-08-26 10:26:36', '2018-08-28 08:15:20'),
(783, 'Senior Payroll Officer', 'both', 1, '2018-08-26 10:26:51', '2018-08-28 08:15:20'),
(784, 'Senior Private Wealth Advisor', 'both', 1, '2018-08-26 10:26:59', '2018-08-28 08:15:20'),
(785, 'Senior Project Architect', 'both', 1, '2018-08-26 10:27:17', '2018-08-28 08:15:20'),
(786, 'Senior Project Director', 'both', 1, '2018-08-26 10:27:25', '2018-08-28 08:15:20'),
(787, 'Senior Recruitment Consultant', 'both', 1, '2018-08-26 10:28:01', '2018-08-28 08:15:20'),
(788, 'Senior Recruitment Manager', 'both', 1, '2018-08-26 10:28:07', '2018-08-28 08:15:20'),
(789, 'Senior Recruitment Specialist', 'both', 1, '2018-08-26 10:28:14', '2018-08-28 08:15:20'),
(790, 'Senior Sales Assistant', 'both', 1, '2018-08-26 10:28:21', '2018-08-28 08:15:20'),
(791, 'Senior Security Risk Consultant', 'both', 1, '2018-08-26 10:28:28', '2018-08-28 08:15:20'),
(792, 'Senior Software Developer', 'both', 1, '2018-08-26 10:28:35', '2018-08-28 08:15:20'),
(793, 'Senior Strategic Planner', 'both', 1, '2018-08-26 10:29:10', '2018-08-28 08:15:20'),
(794, 'Senior Structural Engineer', 'both', 1, '2018-08-26 10:29:17', '2018-08-28 08:15:20'),
(795, 'Senior System Engineer', 'both', 1, '2018-08-26 10:29:24', '2018-08-28 08:15:20'),
(796, 'Senior Tax Accountant', 'both', 1, '2018-08-26 10:29:31', '2018-08-28 08:15:20'),
(797, 'Senior Traffic Engineer', 'both', 1, '2018-08-26 10:29:38', '2018-08-28 08:15:20'),
(798, 'Senior UI Designer', 'both', 1, '2018-08-26 10:29:46', '2018-08-28 08:15:20'),
(799, 'Senior UX Designer', 'both', 1, '2018-08-26 10:29:55', '2018-08-28 08:15:20'),
(800, 'Senior UI And UX Designer', 'both', 1, '2018-08-26 10:30:10', '2018-08-28 08:15:20'),
(801, 'Sensory Technologist', 'both', 1, '2018-08-26 10:30:19', '2018-08-28 08:15:20'),
(802, 'Service Desk Analyst', 'both', 1, '2018-08-26 10:30:27', '2018-08-28 08:15:20'),
(803, 'Service Desk Support Analyst', 'both', 1, '2018-08-26 10:30:34', '2018-08-28 08:15:20'),
(804, 'Service Engineer', 'both', 1, '2018-08-26 10:31:00', '2018-08-28 08:15:20'),
(805, 'Senior Service Engineer', 'both', 1, '2018-08-26 10:31:10', '2018-08-28 08:15:20'),
(806, 'Sheet Metal Folder', 'both', 1, '2018-08-26 10:31:17', '2018-08-28 08:15:20'),
(807, 'Shipping Coordinator', 'both', 1, '2018-08-26 10:31:24', '2018-08-28 08:15:20'),
(808, 'Shipping Officer', 'both', 1, '2018-08-26 10:31:30', '2018-08-28 08:15:20'),
(809, 'Senior Shipping Officer', 'both', 1, '2018-08-26 10:31:39', '2018-08-28 08:15:20'),
(810, 'Showroom Coordinator', 'both', 1, '2018-08-26 10:31:47', '2018-08-28 08:15:20'),
(811, 'Sign Writer', 'both', 1, '2018-08-26 10:31:54', '2018-08-28 08:15:20'),
(812, 'Site Engineer', 'both', 1, '2018-08-26 10:32:00', '2018-08-28 08:15:20'),
(813, 'Site Foreman', 'both', 1, '2018-08-26 10:32:07', '2018-08-28 08:15:20'),
(814, 'Site Manager', 'both', 1, '2018-08-26 10:32:13', '2018-08-28 08:15:20'),
(815, 'Skype For Business Consultant', 'both', 1, '2018-08-26 10:32:19', '2018-08-28 08:15:20'),
(816, 'Social Media And Content Coordinator', 'both', 1, '2018-08-26 10:32:28', '2018-08-28 08:15:20'),
(817, 'Social Media Coordinator', 'both', 1, '2018-08-26 10:32:35', '2018-08-28 08:15:20'),
(818, 'Social Media Specialist', 'both', 1, '2018-08-26 10:32:42', '2018-08-28 08:15:20'),
(819, 'Software Developer', 'both', 1, '2018-08-26 10:47:40', '2018-08-28 08:15:20'),
(820, 'Software Engineer', 'both', 1, '2018-08-26 10:47:49', '2018-08-28 08:15:20'),
(821, 'Senior Software Engineer', 'both', 1, '2018-08-26 10:48:03', '2018-08-28 08:15:20'),
(822, 'Soil Technician', 'both', 1, '2018-08-26 10:48:11', '2018-08-28 08:15:20'),
(823, 'Solar Electrician', 'both', 1, '2018-08-26 10:48:18', '2018-08-28 08:15:20'),
(824, 'Solutions Consultant', 'both', 1, '2018-08-26 10:48:27', '2018-08-28 08:15:20'),
(825, 'Solutions Engineer', 'both', 1, '2018-08-26 10:48:34', '2018-08-28 08:15:20'),
(826, 'Spa Therapist', 'both', 1, '2018-08-26 10:48:41', '2018-08-28 08:15:20'),
(827, 'Specialist Lawyer', 'both', 1, '2018-08-26 10:48:47', '2018-08-28 08:15:20'),
(828, 'Specialist Work Management Planner', 'both', 1, '2018-08-26 10:48:55', '2018-08-28 08:15:20'),
(829, 'Sport Events Administrator', 'both', 1, '2018-08-26 10:49:02', '2018-08-28 08:15:20'),
(830, 'Sports Events Coordinator', 'both', 1, '2018-08-26 10:49:11', '2018-08-28 08:15:20'),
(831, 'Spray Painter', 'both', 1, '2018-08-26 10:49:18', '2018-08-28 08:15:20'),
(832, 'Spray Painter Assistant', 'both', 1, '2018-08-26 10:49:26', '2018-08-28 08:15:20'),
(833, 'Squad Coach', 'both', 1, '2018-08-26 10:49:33', '2018-08-28 08:15:20'),
(834, 'Staff Relations Officers', 'both', 1, '2018-08-26 10:49:40', '2018-08-28 08:15:20'),
(835, 'Stakeholder Engagement Officer', 'both', 1, '2018-08-26 10:49:47', '2018-08-28 08:15:20'),
(836, 'Senior Stakeholder Engagement Officer', 'both', 1, '2018-08-26 10:49:57', '2018-08-28 08:15:20'),
(837, 'State Manager', 'both', 1, '2018-08-26 10:50:09', '2018-08-28 08:15:20'),
(838, 'Stock Coordinator', 'both', 1, '2018-08-26 10:50:17', '2018-08-28 08:15:20'),
(839, 'Storage Facility Officer', 'both', 1, '2018-08-26 10:50:24', '2018-08-28 08:15:20'),
(840, 'Store Manager', 'both', 1, '2018-08-26 10:50:31', '2018-08-28 08:15:20'),
(841, 'Store Person', 'both', 1, '2018-08-26 11:23:06', '2018-08-28 08:15:20'),
(842, 'Strata Assistant', 'both', 1, '2018-08-26 11:23:13', '2018-08-28 08:15:20'),
(843, 'Strata Manager', 'both', 1, '2018-08-26 11:23:20', '2018-08-28 08:15:20'),
(844, 'Strata Underwriter', 'both', 1, '2018-08-26 11:23:27', '2018-08-28 08:15:20'),
(845, 'Strategic Planner', 'both', 1, '2018-08-26 11:23:34', '2018-08-28 08:15:20'),
(846, 'Strategic Risk Specialist', 'both', 1, '2018-08-26 11:23:40', '2018-08-28 08:15:20'),
(847, 'Strategy Analyst', 'both', 1, '2018-08-26 11:23:47', '2018-08-28 08:15:20'),
(848, 'Senior Strategy Analyst', 'both', 1, '2018-08-26 11:23:56', '2018-08-28 08:15:20'),
(849, 'Strategy Analytics Manager', 'both', 1, '2018-08-26 11:24:02', '2018-08-28 08:15:20'),
(850, 'Structural Engineer', 'both', 1, '2018-08-26 11:24:09', '2018-08-28 08:15:20'),
(851, 'Student Services Innovation Manager', 'both', 1, '2018-08-26 11:24:24', '2018-08-28 08:15:20'),
(852, 'Studio Coordinator', 'both', 1, '2018-08-26 11:24:31', '2018-08-28 08:15:20'),
(853, 'Studio Manager', 'both', 1, '2018-08-26 11:24:41', '2018-08-28 08:15:20'),
(854, 'Style Consultant', 'both', 1, '2018-08-26 11:24:48', '2018-08-28 08:15:20'),
(855, 'Subject Matter Expert', 'both', 1, '2018-08-26 11:24:55', '2018-08-28 08:15:20'),
(856, 'Superannuation Administrator', 'both', 1, '2018-08-26 11:25:09', '2018-08-28 08:15:20'),
(857, 'Supervisor Accountant', 'both', 1, '2018-08-26 11:25:15', '2018-08-28 08:15:20'),
(858, 'Supply Chain Officer', 'both', 1, '2018-08-26 11:25:21', '2018-08-28 08:15:20'),
(859, 'Senior Supply Chain Officer', 'both', 1, '2018-08-26 11:25:31', '2018-08-28 08:15:20'),
(860, 'Support Services Underwriter', 'both', 1, '2018-08-26 11:25:40', '2018-08-28 08:15:20'),
(861, 'Survey Assistance', 'both', 1, '2018-08-26 11:25:46', '2018-08-28 08:15:20'),
(862, 'Survey Consultant', 'both', 1, '2018-08-26 11:25:52', '2018-08-28 08:15:20'),
(863, 'Sustainability Lead', 'both', 1, '2018-08-26 11:26:00', '2018-08-28 08:15:20'),
(864, 'Swim Teacher', 'both', 1, '2018-08-26 11:26:06', '2018-08-28 08:15:20'),
(865, 'Swimming Instructor', 'both', 1, '2018-08-26 11:26:12', '2018-08-28 08:15:20'),
(866, 'Systems Engineer', 'both', 1, '2018-08-26 11:26:18', '2018-08-28 08:15:20'),
(867, 'Senior Systems Engineer', 'both', 1, '2018-08-26 11:26:27', '2018-08-28 08:15:20'),
(868, 'Talent Acquisition', 'both', 1, '2018-08-26 11:26:34', '2018-08-28 08:15:20'),
(869, 'Talent Acquisition Consultant', 'both', 1, '2018-08-26 11:26:40', '2018-08-28 08:15:20'),
(870, 'Talent Acquisition Manager', 'both', 1, '2018-08-26 11:26:47', '2018-08-28 08:15:20'),
(871, 'Talent Attraction Specialist', 'both', 1, '2018-08-26 11:26:59', '2018-08-28 08:15:20'),
(872, 'Tax Accountant', 'both', 1, '2018-08-26 11:27:05', '2018-08-28 08:15:20'),
(873, 'Teacher', 'both', 1, '2018-08-26 11:27:15', '2018-08-28 08:15:20'),
(874, 'Team Leader', 'both', 1, '2018-08-26 11:27:21', '2018-08-28 08:15:20'),
(875, 'Technical Computer Officer', 'both', 1, '2018-08-26 11:27:27', '2018-08-28 08:15:20'),
(876, 'Senior Technical Computer Officer', 'both', 1, '2018-08-26 11:27:39', '2018-08-28 08:15:20'),
(877, 'Technical Officer', 'both', 1, '2018-08-26 11:27:46', '2018-08-28 08:15:20'),
(878, 'Senior Technical Officer', 'both', 1, '2018-08-26 11:27:54', '2018-08-28 08:15:20'),
(879, 'Technical Project Officer', 'both', 1, '2018-08-26 11:28:00', '2018-08-28 08:15:20'),
(880, 'Senior Technical Project Officer', 'both', 1, '2018-08-26 11:28:08', '2018-08-28 08:15:20'),
(881, 'Technical Support Engineer', 'both', 1, '2018-08-26 11:28:14', '2018-08-28 08:15:20'),
(882, 'Senior Technical Support Engineer', 'both', 1, '2018-08-26 11:28:24', '2018-08-28 08:15:20'),
(883, 'Technical Support Officer', 'both', 1, '2018-08-26 11:28:42', '2018-08-28 08:15:20'),
(884, 'Senior Technical Support Officer', 'both', 1, '2018-08-26 11:28:53', '2018-08-28 08:15:20'),
(885, 'Technical Writer', 'both', 1, '2018-08-26 11:29:03', '2018-08-28 08:15:20'),
(886, 'Technology Experience Specialist', 'both', 1, '2018-08-26 11:29:08', '2018-08-28 08:15:20'),
(887, 'Telemarketer', 'both', 1, '2018-08-26 11:29:15', '2018-08-28 08:15:20'),
(888, 'Telesales Service Consultant', 'both', 1, '2018-08-26 11:29:21', '2018-08-28 08:15:20'),
(889, 'Tennis Coach', 'both', 1, '2018-08-26 11:29:27', '2018-08-28 08:15:20'),
(890, 'Territory Manager', 'both', 1, '2018-08-26 11:29:33', '2018-08-28 08:15:20'),
(891, 'Test Analyst', 'both', 1, '2018-08-26 11:29:40', '2018-08-28 08:15:20'),
(892, 'Senior Test Analyst', 'both', 1, '2018-08-26 11:29:51', '2018-08-28 08:15:20'),
(893, 'Town Planner', 'both', 1, '2018-08-26 11:29:57', '2018-08-28 08:15:20'),
(894, 'Trade Assistant', 'both', 1, '2018-08-26 11:30:03', '2018-08-28 08:15:20'),
(895, 'Trade Sales Consultant', 'both', 1, '2018-08-26 11:30:09', '2018-08-28 08:15:20'),
(896, 'Traffic Engineer', 'both', 1, '2018-08-26 11:30:15', '2018-08-28 08:15:20'),
(897, 'Trainee Claims Assessor', 'both', 1, '2018-08-26 11:30:20', '2018-08-28 08:15:20'),
(898, 'Trainee Mortgage Broker', 'both', 1, '2018-08-26 11:30:33', '2018-08-28 08:15:20'),
(899, 'Training Coordinator', 'both', 1, '2018-08-26 11:30:59', '2018-08-28 08:15:20'),
(900, 'Travel Consultant', 'both', 1, '2018-08-26 11:31:05', '2018-08-28 08:15:20'),
(901, 'Travel Sales Assistant', 'both', 1, '2018-08-26 11:31:10', '2018-08-28 08:15:20'),
(902, 'Travel Sales Consultant', 'both', 1, '2018-08-26 11:31:16', '2018-08-28 08:15:20'),
(903, 'Truck Driver', 'both', 1, '2018-08-26 11:31:30', '2018-08-28 08:15:20'),
(904, 'Tyre Fitter', 'both', 1, '2018-08-26 11:31:37', '2018-08-28 08:15:20'),
(905, 'Underwriter', 'both', 1, '2018-08-26 11:31:42', '2018-08-28 08:15:20'),
(906, 'UX Designer', 'both', 1, '2018-08-26 11:31:51', '2018-08-28 08:15:20'),
(907, 'UI Designer', 'both', 1, '2018-08-26 11:32:01', '2018-08-28 08:15:20'),
(908, 'UX And UI Designer', 'both', 1, '2018-08-26 11:32:19', '2018-08-28 08:15:20'),
(909, 'Venue Manager', 'both', 1, '2018-08-26 11:32:27', '2018-08-28 08:15:20'),
(910, 'Veterinary Laboratory Scientist', 'both', 1, '2018-08-26 11:32:33', '2018-08-28 08:15:20'),
(911, 'Viral Product Supervisor', 'both', 1, '2018-08-26 11:32:40', '2018-08-28 08:15:20'),
(912, 'Vitamin Specialist', 'both', 1, '2018-08-26 11:32:46', '2018-08-28 08:15:20'),
(913, 'Waiter', 'both', 1, '2018-08-26 11:33:11', '2018-08-28 08:15:20'),
(914, 'Warehouse Assistant', 'both', 1, '2018-08-26 11:33:20', '2018-08-28 08:15:20'),
(915, 'Warehouse Operator', 'both', 1, '2018-08-26 11:33:28', '2018-08-28 08:15:20'),
(916, 'Waitress', 'both', 1, '2018-08-26 11:33:52', '2018-08-28 08:15:20'),
(917, 'Warehouse Store Person', 'both', 1, '2018-08-26 11:34:04', '2018-08-28 08:15:20'),
(918, 'Wastewater Officer', 'both', 1, '2018-08-26 11:34:11', '2018-08-28 08:15:20'),
(919, 'Water Engineer', 'both', 1, '2018-08-26 11:34:16', '2018-08-28 08:15:20'),
(920, 'Water Regulation Officer', 'both', 1, '2018-08-26 11:34:24', '2018-08-28 08:15:20'),
(921, 'Waxing Specialist', 'both', 1, '2018-08-26 11:34:29', '2018-08-28 08:15:20'),
(922, 'Wayfinding Designer', 'both', 1, '2018-08-26 11:34:35', '2018-08-28 08:15:20'),
(923, 'Web Developer', 'both', 1, '2018-08-26 11:34:41', '2018-08-28 08:15:20'),
(924, 'Individual', 'both', 1, '2018-08-26 11:34:47', '2018-08-28 08:15:20'),
(925, 'Welder', 'both', 1, '2018-08-26 11:34:57', '2018-08-28 08:15:20'),
(926, 'Well Test Supervisor', 'both', 1, '2018-08-26 11:35:04', '2018-08-28 08:15:20'),
(927, 'Wireline Operator', 'both', 1, '2018-08-26 11:35:10', '2018-08-28 08:15:20'),
(928, 'Work Health And Safety Specialist', 'both', 1, '2018-08-26 11:35:20', '2018-08-28 08:15:20'),
(929, 'Work Management Planner', 'both', 1, '2018-08-26 11:35:28', '2018-08-28 08:15:20'),
(930, 'Workers Compensation Specialist', 'both', 1, '2018-08-26 11:35:41', '2018-08-28 08:15:20'),
(931, 'Workplace And Health Safety Consultant', 'both', 1, '2018-08-26 11:35:59', '2018-08-28 08:15:20'),
(932, 'Workshop Manager', 'both', 1, '2018-08-26 11:36:05', '2018-08-28 08:15:20'),
(933, 'Workshop Supervisor', 'both', 1, '2018-08-26 11:36:11', '2018-08-28 08:15:20'),
(934, 'SQL Developer', 'both', 1, '2018-08-26 11:44:24', '2018-08-28 08:15:20'),
(935, 'PHP Developer', 'both', 1, '2018-08-26 11:44:36', '2018-08-28 08:15:20'),
(936, 'HTML And CSS Developer', 'both', 1, '2018-08-26 11:45:55', '2018-08-28 08:15:20'),
(937, 'Desktop Developer', 'both', 1, '2018-08-26 11:46:27', '2018-08-28 08:15:20'),
(938, 'Mobile Developer', 'both', 1, '2018-08-26 11:46:37', '2018-08-28 08:15:20'),
(939, 'Game Developer', 'both', 1, '2018-08-26 11:47:54', '2018-08-28 08:15:20'),
(940, 'DevOps Developer', 'both', 1, '2018-08-26 11:48:11', '2018-08-28 08:15:20'),
(941, 'CRM Developer', 'both', 1, '2018-08-26 11:48:20', '2018-08-28 08:15:20'),
(942, 'Security Developer', 'both', 1, '2018-08-26 11:48:37', '2018-08-28 08:15:20'),
(943, 'API Developer', 'both', 1, '2018-08-26 11:49:12', '2018-08-28 08:15:20'),
(944, 'Sales Director', 'both', 1, '2018-08-27 02:00:06', '2018-08-28 08:15:20'),
(945, 'Engineering Manager', 'both', 1, '2018-08-27 02:00:20', '2018-08-28 08:15:20'),
(946, 'Contract Lawyer', 'both', 1, '2018-08-27 02:00:30', '2018-08-28 08:15:20'),
(947, 'Client Services Officer', 'both', 1, '2018-08-27 02:00:56', '2018-08-28 08:15:20'),
(948, 'Client Services Manager', 'both', 1, '2018-08-27 02:01:13', '2018-08-28 08:15:20'),
(949, 'Chief Information Officer', 'both', 1, '2018-08-27 02:02:14', '2018-08-28 08:15:20'),
(950, 'Credit Analyst', 'both', 1, '2018-08-27 03:16:34', '2018-08-28 08:15:20'),
(951, 'Senior Credit Analyst', 'both', 1, '2018-08-27 03:16:46', '2018-08-28 08:15:20'),
(952, 'Executive Assistant', 'both', 1, '2018-08-27 10:54:26', '2018-08-28 08:15:20'),
(953, 'Executive Assistant To CEO', 'both', 1, '2018-08-27 10:54:43', '2018-08-28 08:15:20'),
(954, 'Company Secretary', 'both', 1, '2018-08-27 10:55:07', '2018-08-28 08:15:20'),
(955, 'Public Relations Manager', 'both', 1, '2018-08-27 10:55:25', '2018-08-28 08:15:20'),
(956, 'Head Of People And Culture', 'both', 1, '2018-08-27 10:59:47', '2018-08-28 08:15:20'),
(957, 'Senior Legal Counsel', 'both', 1, '2018-08-27 11:00:17', '2018-08-28 08:15:20'),
(958, 'Product Manager', 'both', 1, '2018-08-27 11:00:53', '2018-08-28 08:15:20'),
(959, 'Senior Product Manager', 'both', 1, '2018-08-27 11:01:05', '2018-08-28 08:15:20'),
(960, 'Undergraduate Accountant', 'both', 1, '2018-08-27 11:02:23', '2018-08-28 08:15:20'),
(961, 'Team Member', 'both', 1, '2018-08-27 11:02:52', '2018-08-28 08:15:20'),
(962, 'Architectural Draftsman', 'both', 1, '2018-08-27 11:03:47', '2018-08-28 08:15:20'),
(963, 'Bartender', 'both', 1, '2018-08-27 11:04:03', '2018-08-28 08:15:20'),
(964, 'Communications Manager', 'both', 1, '2018-08-27 11:05:21', '2018-08-28 08:15:20'),
(965, 'Construction Estimator', 'both', 1, '2018-08-27 11:05:43', '2018-08-28 08:15:20'),
(966, 'Construction Foreman', 'both', 1, '2018-08-27 11:05:54', '2018-08-28 08:15:20'),
(967, 'Creative Director', 'both', 1, '2018-08-27 11:06:14', '2018-08-28 08:15:20'),
(968, 'Database Administrator', 'both', 1, '2018-08-27 11:06:30', '2018-08-28 08:15:20'),
(969, 'Dental Nurse', 'both', 1, '2018-08-27 11:06:54', '2018-08-28 08:15:20'),
(970, 'Disability Care Worker', 'both', 1, '2018-08-27 11:07:09', '2018-08-28 08:15:20'),
(971, 'Facilities Manager', 'both', 1, '2018-08-27 11:07:26', '2018-08-28 08:15:20'),
(972, 'Graduate Civil Engineer', 'both', 1, '2018-08-27 11:07:43', '2018-08-28 08:15:20'),
(973, 'Hotel Manager', 'both', 1, '2018-08-27 11:07:59', '2018-08-28 08:15:20'),
(974, 'Journalist', 'both', 1, '2018-08-27 11:08:29', '2018-08-28 08:15:20'),
(975, 'National Account Manager', 'both', 1, '2018-08-27 11:09:16', '2018-08-28 08:15:20'),
(976, 'Practice Manager', 'both', 1, '2018-08-27 11:09:40', '2018-08-28 08:15:20'),
(977, 'Procurement Manager', 'both', 1, '2018-08-27 11:09:50', '2018-08-28 08:15:20'),
(978, 'SAP Consultant', 'both', 1, '2018-08-27 11:10:18', '2018-08-28 08:15:20'),
(979, 'Warehouse Manager', 'both', 1, '2018-08-27 11:11:04', '2018-08-28 08:15:20'),
(980, 'Asset Finance Consultant', 'both', 1, '2018-08-28 03:33:36', '2018-08-28 08:15:20'),
(981, 'Recruitment Specialist', 'both', 1, '2018-09-17 01:08:28', '2018-09-17 01:08:28');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) NOT NULL,
  `notification_by` int(11) NOT NULL,
  `notification_for` int(11) NOT NULL,
  `notification_message` text NOT NULL,
  `notification_type` varchar(100) NOT NULL,
  `isViewed` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: not viewed, 1: viewed',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1:active, 0:Inactive',
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `notification_by`, `notification_for`, `notification_message`, `notification_type`, `isViewed`, `status`, `created_on`) VALUES
(1, 118, 117, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"118\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/bc7adba9bb241ce5387b474a97834dc3.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-02 14:02:28'),
(2, 118, 117, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"118\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/bc7adba9bb241ce5387b474a97834dc3.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-02 14:02:32'),
(3, 118, 117, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"118\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/bc7adba9bb241ce5387b474a97834dc3.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-02 14:02:49'),
(4, 117, 118, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"117\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/33283b70a48527f713e8e4b29f6551d0.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-02 14:04:53'),
(5, 117, 118, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"117\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/33283b70a48527f713e8e4b29f6551d0.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-02 14:05:59'),
(6, 117, 118, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"117\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/33283b70a48527f713e8e4b29f6551d0.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-02 14:07:40'),
(7, 117, 118, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"117\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/33283b70a48527f713e8e4b29f6551d0.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-02 14:08:29'),
(8, 117, 118, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"117\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/33283b70a48527f713e8e4b29f6551d0.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-02 14:08:53'),
(9, 117, 118, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"117\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/33283b70a48527f713e8e4b29f6551d0.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-02 14:09:24'),
(10, 117, 118, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"117\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/33283b70a48527f713e8e4b29f6551d0.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-02 14:10:29'),
(11, 125, 124, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"125\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/221286ecb6302ce7b5ccf9f9922cae4c.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-02 21:23:39'),
(12, 125, 124, '{\"title\":\"Added to favourites\",\"body\":\"[UNAME] added to favourites\",\"reference_id\":\"124\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/221286ecb6302ce7b5ccf9f9922cae4c.jpg\",\"type\":\"user_favourites\",\"click_action\":\"business\",\"sound\":\"default\"}', 'user_favourites', 0, 1, '2018-10-02 21:23:41'),
(13, 125, 124, '{\"title\":\"Recommended you\",\"body\":\"[UNAME] recommended you\",\"reference_id\":\"124\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/221286ecb6302ce7b5ccf9f9922cae4c.jpg\",\"type\":\"user_recommends\",\"click_action\":\"business\",\"sound\":\"default\"}', 'user_recommends', 0, 1, '2018-10-02 21:25:17'),
(14, 127, 126, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"127\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/654a88e6a9b567691811fcab99ca1629.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 05:52:40'),
(15, 126, 127, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"126\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/7e297915ea536688fcebadebfd33204c.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 06:35:59'),
(16, 126, 127, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"126\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/7e297915ea536688fcebadebfd33204c.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 06:44:04'),
(17, 126, 127, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"126\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/7e297915ea536688fcebadebfd33204c.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 06:50:31'),
(18, 126, 129, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"126\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/7e297915ea536688fcebadebfd33204c.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-03 08:21:05'),
(19, 126, 129, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"126\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/7e297915ea536688fcebadebfd33204c.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-03 08:21:18'),
(20, 126, 129, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"126\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/7e297915ea536688fcebadebfd33204c.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-03 08:21:35'),
(21, 126, 129, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"126\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/7e297915ea536688fcebadebfd33204c.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-03 08:21:47'),
(22, 126, 129, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"126\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/7e297915ea536688fcebadebfd33204c.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-03 08:22:12'),
(23, 126, 129, '{\"title\":\"Added to favourites\",\"body\":\"[UNAME] added to favourites\",\"reference_id\":\"129\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/7e297915ea536688fcebadebfd33204c.jpg\",\"type\":\"user_favourites\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'user_favourites', 1, 1, '2018-10-03 08:22:22'),
(24, 126, 129, '{\"title\":\"Recommended you\",\"body\":\"[UNAME] recommended you\",\"reference_id\":\"129\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/7e297915ea536688fcebadebfd33204c.jpg\",\"type\":\"user_recommends\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'user_recommends', 1, 1, '2018-10-03 08:22:32'),
(25, 126, 129, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"126\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/7e297915ea536688fcebadebfd33204c.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-03 08:22:40'),
(26, 126, 129, '{\"title\":\"Added to favourites\",\"body\":\"[UNAME] added to favourites\",\"reference_id\":\"129\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/7e297915ea536688fcebadebfd33204c.jpg\",\"type\":\"user_favourites\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'user_favourites', 1, 1, '2018-10-03 08:22:45'),
(27, 126, 129, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"126\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/7e297915ea536688fcebadebfd33204c.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-03 08:23:23'),
(28, 126, 129, '{\"title\":\"Added to favourites\",\"body\":\"[UNAME] added to favourites\",\"reference_id\":\"129\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/7e297915ea536688fcebadebfd33204c.jpg\",\"type\":\"user_favourites\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'user_favourites', 1, 1, '2018-10-03 08:23:39'),
(29, 129, 126, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"129\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/75a7cf7949c5b16ccd8e8fe0ab5a3a0f.jpeg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 08:23:45'),
(30, 126, 129, '{\"title\":\"Added to favourites\",\"body\":\"[UNAME] added to favourites\",\"reference_id\":\"129\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/7e297915ea536688fcebadebfd33204c.jpg\",\"type\":\"user_favourites\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'user_favourites', 1, 1, '2018-10-03 08:24:26'),
(31, 129, 126, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"129\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/75a7cf7949c5b16ccd8e8fe0ab5a3a0f.jpeg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 08:25:28'),
(32, 126, 129, '{\"title\":\"Added to favourites\",\"body\":\"[UNAME] added to favourites\",\"reference_id\":\"129\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/7e297915ea536688fcebadebfd33204c.jpg\",\"type\":\"user_favourites\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'user_favourites', 1, 1, '2018-10-03 08:25:45'),
(33, 126, 129, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"126\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/7e297915ea536688fcebadebfd33204c.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-03 08:27:17'),
(34, 126, 129, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"126\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/7e297915ea536688fcebadebfd33204c.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-03 08:34:09'),
(35, 117, 125, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"117\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/33283b70a48527f713e8e4b29f6551d0.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-03 08:59:56'),
(36, 117, 125, '{\"title\":\"Added to favourites\",\"body\":\"[UNAME] added to favourites\",\"reference_id\":\"125\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/33283b70a48527f713e8e4b29f6551d0.jpg\",\"type\":\"user_favourites\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'user_favourites', 1, 1, '2018-10-03 09:13:48'),
(37, 133, 129, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"133\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/60e898545b6db6327d069e3796a12cdd.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-03 09:34:41'),
(38, 133, 128, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"133\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/60e898545b6db6327d069e3796a12cdd.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 09:37:00'),
(39, 133, 129, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"133\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/60e898545b6db6327d069e3796a12cdd.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-03 09:37:13'),
(40, 133, 129, '{\"title\":\"Interview request.\",\"body\":\"[UNAME] Request for interview\",\"reference_id\":\"133\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/60e898545b6db6327d069e3796a12cdd.jpg\",\"type\":\"interview_request.\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'interview_request.', 0, 1, '2018-10-03 15:07:48'),
(41, 133, 128, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"133\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/60e898545b6db6327d069e3796a12cdd.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 09:42:29'),
(42, 133, 129, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"133\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/60e898545b6db6327d069e3796a12cdd.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-03 09:44:53'),
(43, 133, 129, '{\"title\":\"Added to favourites\",\"body\":\"[UNAME] added to favourites\",\"reference_id\":\"129\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/60e898545b6db6327d069e3796a12cdd.jpg\",\"type\":\"user_favourites\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'user_favourites', 0, 1, '2018-10-03 09:44:57'),
(44, 133, 129, '{\"title\":\"Recommended you\",\"body\":\"[UNAME] recommended you\",\"reference_id\":\"129\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/60e898545b6db6327d069e3796a12cdd.jpg\",\"type\":\"user_recommends\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'user_recommends', 1, 1, '2018-10-03 09:45:00'),
(45, 124, 125, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"124\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/949c3b5c2bfaa0132fa633f5d239bda0.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-03 09:45:19'),
(46, 133, 129, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"133\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/60e898545b6db6327d069e3796a12cdd.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-03 09:51:30'),
(47, 133, 129, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"133\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/60e898545b6db6327d069e3796a12cdd.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 09:54:14'),
(48, 129, 133, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"129\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/75a7cf7949c5b16ccd8e8fe0ab5a3a0f.jpeg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 09:54:20'),
(49, 133, 129, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"133\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/60e898545b6db6327d069e3796a12cdd.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 09:55:21'),
(50, 129, 129, '{\"title\":\"Action on request.\",\"body\":\"[UNAME] Action by reciever.\",\"reference_id\":\"129\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/75a7cf7949c5b16ccd8e8fe0ab5a3a0f.jpeg\",\"type\":\"Request_action.\",\"click_action\":\"business\",\"sound\":\"default\"}', 'Request_action.', 0, 1, '2018-10-03 15:30:44'),
(51, 133, 129, '{\"title\":\"Action on request.\",\"body\":\"[UNAME] Job offered\\/Not offered.\",\"reference_id\":\"133\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/60e898545b6db6327d069e3796a12cdd.jpg\",\"type\":\"Interview_offered_action.\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'Interview_offered_action.', 0, 1, '2018-10-03 15:31:05'),
(52, 133, 129, '{\"title\":\"Interview request.\",\"body\":\"[UNAME] Request for interview\",\"reference_id\":\"133\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/60e898545b6db6327d069e3796a12cdd.jpg\",\"type\":\"interview_request.\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'interview_request.', 0, 1, '2018-10-03 15:32:32'),
(53, 129, 129, '{\"title\":\"Action on request.\",\"body\":\"[UNAME] Action by reciever.\",\"reference_id\":\"129\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/75a7cf7949c5b16ccd8e8fe0ab5a3a0f.jpeg\",\"type\":\"Request_action.\",\"click_action\":\"business\",\"sound\":\"default\"}', 'Request_action.', 0, 1, '2018-10-03 15:32:53'),
(54, 133, 129, '{\"title\":\"Action on request.\",\"body\":\"[UNAME] Job offered\\/Not offered.\",\"reference_id\":\"133\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/60e898545b6db6327d069e3796a12cdd.jpg\",\"type\":\"Interview_offered_action.\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'Interview_offered_action.', 0, 1, '2018-10-03 15:33:05'),
(55, 136, 135, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"136\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/98994a716426685487c2f3fd2f0066f5.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 10:03:38'),
(56, 133, 129, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"133\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/60e898545b6db6327d069e3796a12cdd.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 10:04:18'),
(57, 137, 136, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"137\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/26f3505e89abc5dcb2e928f6eceed35d.jpeg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 11:07:54'),
(58, 136, 137, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"136\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/98994a716426685487c2f3fd2f0066f5.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 11:08:08'),
(59, 135, 125, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"135\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/80ccf20afbb5d6627c04722f36c8a872.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-03 11:10:31'),
(60, 125, 135, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"125\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/221286ecb6302ce7b5ccf9f9922cae4c.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 11:11:39'),
(61, 125, 135, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"125\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/221286ecb6302ce7b5ccf9f9922cae4c.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 11:20:07'),
(62, 135, 136, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"135\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/80ccf20afbb5d6627c04722f36c8a872.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 11:20:10'),
(63, 135, 125, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"135\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/80ccf20afbb5d6627c04722f36c8a872.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 11:20:17'),
(64, 125, 135, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"125\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/221286ecb6302ce7b5ccf9f9922cae4c.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 11:20:20'),
(65, 135, 125, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"135\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/80ccf20afbb5d6627c04722f36c8a872.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 11:20:21'),
(66, 125, 135, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"125\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/221286ecb6302ce7b5ccf9f9922cae4c.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 11:20:35'),
(67, 125, 134, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"125\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/221286ecb6302ce7b5ccf9f9922cae4c.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 11:21:05'),
(68, 125, 117, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"125\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/221286ecb6302ce7b5ccf9f9922cae4c.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 11:21:24'),
(69, 125, 135, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"125\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/221286ecb6302ce7b5ccf9f9922cae4c.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 11:25:43'),
(70, 125, 135, '{\"title\":\"Added to favourites\",\"body\":\"[UNAME] added to favourites\",\"reference_id\":\"135\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/221286ecb6302ce7b5ccf9f9922cae4c.jpg\",\"type\":\"user_favourites\",\"click_action\":\"business\",\"sound\":\"default\"}', 'user_favourites', 0, 1, '2018-10-03 11:25:44'),
(71, 138, 129, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"138\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/e08808dfae0dcf436c604b4a4e2e318e.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 13:08:11'),
(72, 138, 129, '{\"title\":\"Added to favourites\",\"body\":\"[UNAME] added to favourites\",\"reference_id\":\"129\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/e08808dfae0dcf436c604b4a4e2e318e.jpg\",\"type\":\"user_favourites\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'user_favourites', 0, 1, '2018-10-03 13:08:16'),
(73, 138, 129, '{\"title\":\"Recommended you\",\"body\":\"[UNAME] recommended you\",\"reference_id\":\"129\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/e08808dfae0dcf436c604b4a4e2e318e.jpg\",\"type\":\"user_recommends\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'user_recommends', 1, 1, '2018-10-03 13:08:18'),
(74, 138, 129, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"138\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/e08808dfae0dcf436c604b4a4e2e318e.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 13:09:23'),
(75, 138, 125, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"138\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/e08808dfae0dcf436c604b4a4e2e318e.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 13:11:28'),
(76, 138, 128, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"138\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/e08808dfae0dcf436c604b4a4e2e318e.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 13:12:06'),
(77, 117, 125, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"117\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/33283b70a48527f713e8e4b29f6551d0.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 13:15:06'),
(78, 138, 129, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"138\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/e08808dfae0dcf436c604b4a4e2e318e.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 13:15:11'),
(79, 138, 129, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"138\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/e08808dfae0dcf436c604b4a4e2e318e.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 13:15:26'),
(80, 138, 128, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"138\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/e08808dfae0dcf436c604b4a4e2e318e.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 13:23:49'),
(81, 129, 133, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"129\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/75a7cf7949c5b16ccd8e8fe0ab5a3a0f.jpeg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 13:25:44'),
(82, 129, 138, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"129\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/75a7cf7949c5b16ccd8e8fe0ab5a3a0f.jpeg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-03 13:25:50'),
(83, 129, 138, '{\"title\":\"Reviewed your profile\",\"body\":\"[UNAME] posted a review\",\"reference_id\":\"138\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/75a7cf7949c5b16ccd8e8fe0ab5a3a0f.jpeg\",\"type\":\"user_review\",\"click_action\":\"business\",\"sound\":\"default\"}', 'user_review', 1, 1, '2018-10-03 13:26:03'),
(84, 129, 138, '{\"title\":\"Recommended you\",\"body\":\"[UNAME] recommended you\",\"reference_id\":\"138\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/75a7cf7949c5b16ccd8e8fe0ab5a3a0f.jpeg\",\"type\":\"user_recommends\",\"click_action\":\"business\",\"sound\":\"default\"}', 'user_recommends', 1, 1, '2018-10-03 13:26:07'),
(85, 129, 138, '{\"title\":\"Added to favourites\",\"body\":\"[UNAME] added to favourites\",\"reference_id\":\"138\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/75a7cf7949c5b16ccd8e8fe0ab5a3a0f.jpeg\",\"type\":\"user_favourites\",\"click_action\":\"business\",\"sound\":\"default\"}', 'user_favourites', 1, 1, '2018-10-03 13:26:10'),
(86, 129, 138, '{\"title\":\"Reviewed your profile\",\"body\":\"[UNAME] posted a review\",\"reference_id\":\"138\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/75a7cf7949c5b16ccd8e8fe0ab5a3a0f.jpeg\",\"type\":\"user_review\",\"click_action\":\"business\",\"sound\":\"default\"}', 'user_review', 1, 1, '2018-10-03 13:33:18'),
(87, 129, 138, '{\"title\":\"Added to favourites\",\"body\":\"[UNAME] added to favourites\",\"reference_id\":\"138\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/75a7cf7949c5b16ccd8e8fe0ab5a3a0f.jpeg\",\"type\":\"user_favourites\",\"click_action\":\"business\",\"sound\":\"default\"}', 'user_favourites', 1, 1, '2018-10-03 13:33:23'),
(88, 129, 138, '{\"title\":\"Recommended you\",\"body\":\"[UNAME] recommended you\",\"reference_id\":\"138\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/75a7cf7949c5b16ccd8e8fe0ab5a3a0f.jpeg\",\"type\":\"user_recommends\",\"click_action\":\"business\",\"sound\":\"default\"}', 'user_recommends', 1, 1, '2018-10-03 13:33:25'),
(89, 129, 138, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"129\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/75a7cf7949c5b16ccd8e8fe0ab5a3a0f.jpeg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-03 13:36:47'),
(90, 129, 138, '{\"title\":\"Reviewed your profile\",\"body\":\"[UNAME] posted a review\",\"reference_id\":\"138\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"user_review\",\"click_action\":\"business\",\"sound\":\"default\"}', 'user_review', 1, 1, '2018-10-03 13:36:57'),
(91, 129, 138, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"129\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/75a7cf7949c5b16ccd8e8fe0ab5a3a0f.jpeg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-03 13:38:20'),
(92, 138, 129, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"138\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/e08808dfae0dcf436c604b4a4e2e318e.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 13:38:35'),
(93, 138, 129, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"138\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/e08808dfae0dcf436c604b4a4e2e318e.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 13:38:42'),
(94, 138, 129, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"138\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/e08808dfae0dcf436c604b4a4e2e318e.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 13:39:07'),
(95, 129, 138, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"129\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/75a7cf7949c5b16ccd8e8fe0ab5a3a0f.jpeg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-03 13:40:18'),
(96, 139, 138, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"139\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/ea0cc9af1738908c5b2ad652d97c95fe.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-03 13:55:33'),
(97, 138, 139, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"138\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/e08808dfae0dcf436c604b4a4e2e318e.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-03 13:55:36'),
(98, 138, 129, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"138\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/e08808dfae0dcf436c604b4a4e2e318e.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 13:56:03'),
(99, 138, 139, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"138\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/e08808dfae0dcf436c604b4a4e2e318e.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-03 13:56:09'),
(100, 138, 139, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"138\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/e08808dfae0dcf436c604b4a4e2e318e.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 13:58:32'),
(101, 138, 139, '{\"title\":\"Added to favourites\",\"body\":\"[UNAME] added to favourites\",\"reference_id\":\"139\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/e08808dfae0dcf436c604b4a4e2e318e.jpg\",\"type\":\"user_favourites\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'user_favourites', 1, 1, '2018-10-03 14:00:25'),
(102, 138, 139, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"138\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/e08808dfae0dcf436c604b4a4e2e318e.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-03 14:03:05'),
(103, 141, 129, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"141\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/03401149f172f3fdf4b0956aa62eff67.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-04 01:53:32'),
(104, 141, 129, '{\"title\":\"Added to favourites\",\"body\":\"[UNAME] added to favourites\",\"reference_id\":\"129\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/03401149f172f3fdf4b0956aa62eff67.jpg\",\"type\":\"user_favourites\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'user_favourites', 0, 1, '2018-10-04 01:53:37'),
(105, 141, 129, '{\"title\":\"Recommended you\",\"body\":\"[UNAME] recommended you\",\"reference_id\":\"129\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/03401149f172f3fdf4b0956aa62eff67.jpg\",\"type\":\"user_recommends\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'user_recommends', 0, 1, '2018-10-04 01:53:40'),
(106, 141, 139, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"141\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/03401149f172f3fdf4b0956aa62eff67.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-04 01:54:38'),
(107, 141, 129, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"141\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/03401149f172f3fdf4b0956aa62eff67.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-04 01:54:58'),
(108, 141, 129, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"141\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/03401149f172f3fdf4b0956aa62eff67.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-04 01:55:08'),
(109, 135, 125, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"135\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/80ccf20afbb5d6627c04722f36c8a872.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-04 05:11:20'),
(110, 138, 128, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"138\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/dc5f395302ba401e259158581d2efc5e.jpeg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-04 06:58:11'),
(111, 138, 140, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"138\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/dc5f395302ba401e259158581d2efc5e.jpeg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-04 09:05:31'),
(112, 138, 140, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"138\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/dc5f395302ba401e259158581d2efc5e.jpeg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-04 09:06:06'),
(113, 140, 138, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"140\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/3a362689105399b0e81f5c163bf8fb9b.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-04 13:17:30'),
(114, 140, 142, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"140\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/3a362689105399b0e81f5c163bf8fb9b.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-05 05:38:06'),
(115, 145, 144, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"145\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-05 13:46:09'),
(116, 144, 145, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"144\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-05 13:50:41'),
(117, 146, 145, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"146\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-05 14:53:18'),
(118, 147, 146, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"147\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-05 15:02:39'),
(119, 145, 144, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"145\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-06 09:22:38'),
(120, 145, 146, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"145\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-06 09:22:44'),
(121, 145, 146, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"145\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-06 09:23:07'),
(122, 149, 148, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"149\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/e79d40f645d14be7e61155916d1fdb6c.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-07 02:32:38'),
(123, 150, 152, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-08 06:01:08'),
(124, 150, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-08 06:01:30'),
(125, 153, 146, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"153\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-09 03:11:05'),
(126, 147, 148, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"147\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-10 05:18:11'),
(127, 147, 152, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"147\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-10 05:18:39'),
(128, 147, 152, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"147\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-10 05:19:00'),
(129, 148, 149, '{\"title\":\"Interview request.\",\"body\":\"[UNAME] Request for interview\",\"reference_id\":\"148\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f071d9fd5993b5a2b473332916d2ffcc.jpg\",\"type\":\"interview_request.\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'interview_request.', 0, 1, '2018-10-11 15:21:30'),
(130, 148, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"148\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f071d9fd5993b5a2b473332916d2ffcc.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-11 09:54:54'),
(131, 150, 144, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-11 15:26:10'),
(132, 150, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-12 03:56:40'),
(133, 150, 152, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-12 09:23:36'),
(134, 150, 174, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-13 05:57:47'),
(135, 150, 173, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-13 06:34:51'),
(136, 150, 173, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-13 06:45:27');
INSERT INTO `notifications` (`id`, `notification_by`, `notification_for`, `notification_message`, `notification_type`, `isViewed`, `status`, `created_on`) VALUES
(137, 150, 173, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-13 06:51:16'),
(138, 150, 173, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-13 06:52:04'),
(139, 150, 173, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-13 06:52:26'),
(140, 150, 173, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-13 07:10:38'),
(141, 150, 173, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-13 07:14:57'),
(142, 150, 152, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-13 07:24:07'),
(143, 152, 150, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"152\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/9790a03b97ded1087381afa1aae3541b.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-13 07:43:16'),
(144, 152, 150, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"152\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/9790a03b97ded1087381afa1aae3541b.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-13 07:44:56'),
(145, 152, 150, '{\"title\":\"Added to favourites\",\"body\":\"[UNAME] added to favourites\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/9790a03b97ded1087381afa1aae3541b.jpg\",\"type\":\"user_favourites\",\"click_action\":\"business\",\"sound\":\"default\"}', 'user_favourites', 0, 1, '2018-10-13 07:44:58'),
(146, 152, 150, '{\"title\":\"Recommended you\",\"body\":\"[UNAME] recommended you\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/9790a03b97ded1087381afa1aae3541b.jpg\",\"type\":\"user_recommends\",\"click_action\":\"business\",\"sound\":\"default\"}', 'user_recommends', 1, 1, '2018-10-13 07:45:01'),
(147, 152, 150, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"152\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/9790a03b97ded1087381afa1aae3541b.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-13 07:46:01'),
(148, 152, 150, '{\"title\":\"Reviewed your profile\",\"body\":\"[UNAME] posted a review\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"user_review\",\"click_action\":\"business\",\"sound\":\"default\"}', 'user_review', 1, 1, '2018-10-13 07:46:54'),
(149, 150, 174, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-13 08:41:05'),
(150, 150, 174, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-13 08:43:40'),
(151, 150, 170, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-13 08:45:44'),
(152, 148, 149, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"148\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f071d9fd5993b5a2b473332916d2ffcc.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-13 08:59:12'),
(153, 150, 173, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-13 09:02:03'),
(154, 150, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-13 09:17:40'),
(155, 150, 173, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-13 09:25:52'),
(156, 150, 152, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-13 09:27:06'),
(157, 150, 152, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-13 09:27:45'),
(158, 150, 170, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-13 09:28:40'),
(159, 150, 174, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-13 09:29:03'),
(160, 150, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-13 10:16:11'),
(161, 150, 175, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-13 10:19:06'),
(162, 150, 175, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-13 10:21:32'),
(163, 150, 174, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-13 10:28:56'),
(164, 150, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-13 10:34:56'),
(165, 150, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-13 10:39:15'),
(166, 150, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-13 10:40:38'),
(167, 150, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-13 10:49:11'),
(168, 150, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-13 11:31:44'),
(169, 195, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"195\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-13 12:21:34'),
(170, 173, 184, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"173\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/2a4cc87c76784f6bec3aba13566f9054.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-13 12:55:51'),
(171, 173, 184, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"173\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/2a4cc87c76784f6bec3aba13566f9054.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-13 12:55:52'),
(172, 173, 184, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"173\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/2a4cc87c76784f6bec3aba13566f9054.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-13 12:55:53'),
(173, 148, 173, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"148\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f071d9fd5993b5a2b473332916d2ffcc.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-14 03:37:10'),
(174, 203, 148, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"203\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-14 04:03:03'),
(175, 203, 200, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"203\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/8cc7cb4cfdd9a410e4a7037007933847.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-14 04:07:29'),
(176, 203, 148, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"203\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/8cc7cb4cfdd9a410e4a7037007933847.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-14 04:07:39'),
(177, 203, 148, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"203\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/8cc7cb4cfdd9a410e4a7037007933847.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-14 04:10:13'),
(178, 203, 148, '{\"title\":\"Added to favourites\",\"body\":\"[UNAME] added to favourites\",\"reference_id\":\"148\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/8cc7cb4cfdd9a410e4a7037007933847.jpg\",\"type\":\"user_favourites\",\"click_action\":\"business\",\"sound\":\"default\"}', 'user_favourites', 0, 1, '2018-10-14 04:10:14'),
(179, 203, 148, '{\"title\":\"Recommended you\",\"body\":\"[UNAME] recommended you\",\"reference_id\":\"148\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/8cc7cb4cfdd9a410e4a7037007933847.jpg\",\"type\":\"user_recommends\",\"click_action\":\"business\",\"sound\":\"default\"}', 'user_recommends', 0, 1, '2018-10-14 04:10:19'),
(180, 204, 203, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"204\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-14 04:17:06'),
(181, 204, 170, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"204\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/14375f472d423cc6b68a2c49136e5271.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-14 04:21:27'),
(182, 204, 175, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"204\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/14375f472d423cc6b68a2c49136e5271.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-14 04:23:01'),
(183, 148, 203, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"148\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f071d9fd5993b5a2b473332916d2ffcc.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-14 05:18:52'),
(184, 203, 148, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"203\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/8cc7cb4cfdd9a410e4a7037007933847.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-14 05:22:48'),
(185, 148, 203, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"148\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f071d9fd5993b5a2b473332916d2ffcc.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-14 05:24:51'),
(186, 148, 203, '{\"title\":\"Interview request.\",\"body\":\"[UNAME] Request for interview\",\"reference_id\":\"148\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f071d9fd5993b5a2b473332916d2ffcc.jpg\",\"type\":\"interview_request.\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'interview_request.', 0, 1, '2018-10-14 10:58:09'),
(187, 203, 148, '{\"title\":\"Action on request.\",\"body\":\"[UNAME] Action by reciever.\",\"reference_id\":\"203\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/8cc7cb4cfdd9a410e4a7037007933847.jpg\",\"type\":\"Request_action.\",\"click_action\":\"business\",\"sound\":\"default\"}', 'Request_action.', 0, 1, '2018-10-14 10:59:17'),
(188, 149, 204, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"149\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/e79d40f645d14be7e61155916d1fdb6c.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-14 05:29:46'),
(189, 149, 148, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"149\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/e79d40f645d14be7e61155916d1fdb6c.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-14 05:29:51'),
(190, 149, 148, '{\"title\":\"Reviewed your profile\",\"body\":\"[UNAME] posted a review\",\"reference_id\":\"148\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/e79d40f645d14be7e61155916d1fdb6c.jpg\",\"type\":\"user_review\",\"click_action\":\"business\",\"sound\":\"default\"}', 'user_review', 0, 1, '2018-10-14 05:30:36'),
(191, 148, 174, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"148\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f071d9fd5993b5a2b473332916d2ffcc.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-14 08:29:49'),
(192, 148, 149, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"148\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f071d9fd5993b5a2b473332916d2ffcc.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-14 10:07:40'),
(193, 148, 149, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"148\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f071d9fd5993b5a2b473332916d2ffcc.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-14 10:08:20'),
(194, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 06:03:16'),
(195, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 06:19:13'),
(196, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 06:25:05'),
(197, 206, 149, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 06:25:30'),
(198, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 06:35:21'),
(199, 150, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f6ceea90edff7fdd1b984e6ef3dd43a4.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 06:37:21'),
(200, 148, 207, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"148\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f071d9fd5993b5a2b473332916d2ffcc.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 09:29:32'),
(201, 175, 205, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 09:29:41'),
(202, 148, 149, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"148\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f071d9fd5993b5a2b473332916d2ffcc.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 09:30:21'),
(203, 175, 205, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 09:30:37'),
(204, 175, 205, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 09:31:12'),
(205, 175, 205, '{\"title\":\"Recommended you\",\"body\":\"[UNAME] recommended you\",\"reference_id\":\"205\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"user_recommends\",\"click_action\":\"business\",\"sound\":\"default\"}', 'user_recommends', 1, 1, '2018-10-15 09:32:18'),
(206, 148, 207, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"148\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f071d9fd5993b5a2b473332916d2ffcc.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 09:34:00'),
(207, 175, 204, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 09:34:36'),
(208, 175, 148, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 09:35:35'),
(209, 175, 148, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 09:40:24'),
(210, 175, 148, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 09:42:41'),
(211, 175, 148, '{\"title\":\"Recommended you\",\"body\":\"[UNAME] recommended you\",\"reference_id\":\"148\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"user_recommends\",\"click_action\":\"business\",\"sound\":\"default\"}', 'user_recommends', 0, 1, '2018-10-15 09:43:01'),
(212, 175, 192, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 09:43:37'),
(213, 175, 192, '{\"title\":\"Recommended you\",\"body\":\"[UNAME] recommended you\",\"reference_id\":\"192\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"user_recommends\",\"click_action\":\"business\",\"sound\":\"default\"}', 'user_recommends', 0, 1, '2018-10-15 09:43:43'),
(214, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 09:44:34'),
(215, 175, 205, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 09:45:54'),
(216, 175, 205, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 09:47:30'),
(217, 175, 205, '{\"title\":\"Recommended you\",\"body\":\"[UNAME] recommended you\",\"reference_id\":\"205\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"user_recommends\",\"click_action\":\"business\",\"sound\":\"default\"}', 'user_recommends', 1, 1, '2018-10-15 09:47:55'),
(218, 148, 207, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"148\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f071d9fd5993b5a2b473332916d2ffcc.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 09:52:05'),
(219, 148, 207, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"148\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f071d9fd5993b5a2b473332916d2ffcc.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 09:52:29'),
(220, 175, 205, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 09:52:30'),
(221, 148, 207, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"148\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f071d9fd5993b5a2b473332916d2ffcc.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 09:53:35'),
(222, 148, 175, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"148\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f071d9fd5993b5a2b473332916d2ffcc.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 09:53:56'),
(223, 148, 207, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"148\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f071d9fd5993b5a2b473332916d2ffcc.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 09:54:49'),
(224, 175, 205, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 09:55:01'),
(225, 175, 205, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 09:57:35'),
(226, 175, 205, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 09:58:10'),
(227, 175, 205, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 10:00:52'),
(228, 148, 149, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"148\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f071d9fd5993b5a2b473332916d2ffcc.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 10:01:48'),
(229, 148, 149, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"148\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f071d9fd5993b5a2b473332916d2ffcc.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 10:02:35'),
(230, 175, 205, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 10:03:28'),
(231, 175, 205, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 10:04:14'),
(232, 175, 205, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 10:05:59'),
(233, 175, 205, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 10:08:05'),
(234, 175, 205, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 10:13:04'),
(235, 175, 205, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 10:16:28'),
(236, 175, 205, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 10:18:44'),
(237, 175, 205, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 10:20:02'),
(238, 175, 205, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 10:21:26'),
(239, 175, 205, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 10:22:53'),
(240, 175, 205, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 10:26:26'),
(241, 175, 205, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 10:31:55'),
(242, 175, 205, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 10:33:04'),
(243, 175, 205, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 10:33:44'),
(244, 175, 205, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 10:45:25'),
(245, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 10:46:07'),
(246, 206, 149, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 11:03:07'),
(247, 206, 203, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 11:15:47'),
(248, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 11:24:50'),
(249, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 11:26:21'),
(250, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 11:27:39'),
(251, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 11:29:07'),
(252, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 11:31:51'),
(253, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 12:10:33'),
(254, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 12:31:23'),
(255, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 12:34:43'),
(256, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 12:36:50'),
(257, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 12:43:45'),
(258, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 12:47:24'),
(259, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 12:48:58'),
(260, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 12:50:52'),
(261, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 12:52:59'),
(262, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 12:54:31'),
(263, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 13:00:59'),
(264, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 13:03:27'),
(265, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 13:05:10'),
(266, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 13:05:44'),
(267, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 13:11:43'),
(268, 175, 205, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 13:15:12'),
(269, 175, 205, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 13:26:50'),
(270, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 13:32:43'),
(271, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 13:32:54'),
(272, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 13:34:20'),
(273, 175, 148, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 14:07:40'),
(274, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 14:10:37'),
(275, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 14:11:01');
INSERT INTO `notifications` (`id`, `notification_by`, `notification_for`, `notification_message`, `notification_type`, `isViewed`, `status`, `created_on`) VALUES
(276, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 14:11:29'),
(277, 206, 207, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 14:12:11'),
(278, 206, 207, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 14:13:14'),
(279, 206, 203, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 14:14:16'),
(280, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 14:16:06'),
(281, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 14:17:17'),
(282, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 14:18:25'),
(283, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 14:19:18'),
(284, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 14:30:46'),
(285, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 14:34:02'),
(286, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 14:35:57'),
(287, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 14:37:26'),
(288, 206, 207, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-15 14:38:55'),
(289, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 14:42:14'),
(290, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 14:45:19'),
(291, 206, 203, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-15 14:55:28'),
(292, 202, 175, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"202\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-16 06:10:56'),
(293, 209, 174, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"209\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/9263c7804307a5a85e0f0d948375df9a.jpeg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-16 06:14:35'),
(294, 209, 174, '{\"title\":\"Added to favourites\",\"body\":\"[UNAME] added to favourites\",\"reference_id\":\"174\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/9263c7804307a5a85e0f0d948375df9a.jpeg\",\"type\":\"user_favourites\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'user_favourites', 0, 1, '2018-10-16 06:15:42'),
(295, 209, 174, '{\"title\":\"Recommended you\",\"body\":\"[UNAME] recommended you\",\"reference_id\":\"174\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/9263c7804307a5a85e0f0d948375df9a.jpeg\",\"type\":\"user_recommends\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'user_recommends', 0, 1, '2018-10-16 06:15:44'),
(296, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-16 06:37:06'),
(297, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-16 06:42:20'),
(298, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-16 06:47:11'),
(299, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-16 06:50:37'),
(300, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-16 06:51:06'),
(301, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-16 06:55:33'),
(302, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-16 06:55:57'),
(303, 151, 206, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"151\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/77db8d793ded4dbc6f747b0a643cc43e.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-16 06:56:47'),
(304, 151, 202, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"151\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/77db8d793ded4dbc6f747b0a643cc43e.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-16 06:56:52'),
(305, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-16 06:58:05'),
(306, 206, 207, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-16 07:01:09'),
(307, 206, 207, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-16 07:01:36'),
(308, 206, 175, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-16 07:02:17'),
(309, 151, 206, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"151\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/77db8d793ded4dbc6f747b0a643cc43e.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-16 07:02:43'),
(310, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-16 07:11:48'),
(311, 206, 207, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-16 07:12:08'),
(312, 206, 151, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"206\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-16 07:15:14'),
(313, 149, 205, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"149\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/e79d40f645d14be7e61155916d1fdb6c.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-16 08:50:11'),
(314, 149, 205, '{\"title\":\"Recommended you\",\"body\":\"[UNAME] recommended you\",\"reference_id\":\"205\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/e79d40f645d14be7e61155916d1fdb6c.jpg\",\"type\":\"user_recommends\",\"click_action\":\"business\",\"sound\":\"default\"}', 'user_recommends', 0, 1, '2018-10-16 08:50:23'),
(315, 149, 205, '{\"title\":\"Added to favourites\",\"body\":\"[UNAME] added to favourites\",\"reference_id\":\"205\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/e79d40f645d14be7e61155916d1fdb6c.jpg\",\"type\":\"user_favourites\",\"click_action\":\"business\",\"sound\":\"default\"}', 'user_favourites', 0, 1, '2018-10-16 08:50:32'),
(316, 149, 205, '{\"title\":\"Reviewed your profile\",\"body\":\"[UNAME] posted a review\",\"reference_id\":\"205\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/e79d40f645d14be7e61155916d1fdb6c.jpg\",\"type\":\"user_review\",\"click_action\":\"business\",\"sound\":\"default\"}', 'user_review', 0, 1, '2018-10-16 08:50:59'),
(317, 205, 149, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"205\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/331a123aa8216054deb9e04f321b0b5f.jpeg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-16 08:51:32'),
(318, 151, 148, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"151\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/77db8d793ded4dbc6f747b0a643cc43e.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-16 08:59:15'),
(319, 205, 149, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"205\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/331a123aa8216054deb9e04f321b0b5f.jpeg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-16 09:04:08'),
(320, 151, 148, '{\"title\":\"Added to favourites\",\"body\":\"[UNAME] added to favourites\",\"reference_id\":\"148\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/77db8d793ded4dbc6f747b0a643cc43e.jpg\",\"type\":\"user_favourites\",\"click_action\":\"business\",\"sound\":\"default\"}', 'user_favourites', 0, 1, '2018-10-16 09:07:06'),
(321, 151, 148, '{\"title\":\"Recommended you\",\"body\":\"[UNAME] recommended you\",\"reference_id\":\"148\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/77db8d793ded4dbc6f747b0a643cc43e.jpg\",\"type\":\"user_recommends\",\"click_action\":\"business\",\"sound\":\"default\"}', 'user_recommends', 0, 1, '2018-10-16 09:07:08'),
(322, 148, 207, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"148\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f071d9fd5993b5a2b473332916d2ffcc.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-16 09:35:34'),
(323, 148, 207, '{\"title\":\"Added to favourites\",\"body\":\"[UNAME] added to favourites\",\"reference_id\":\"207\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f071d9fd5993b5a2b473332916d2ffcc.jpg\",\"type\":\"user_favourites\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'user_favourites', 0, 1, '2018-10-16 09:35:41'),
(324, 148, 207, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"148\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f071d9fd5993b5a2b473332916d2ffcc.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-16 10:50:59'),
(325, 180, 207, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"180\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/9bb366848fd8d3aee0c223523997a3e6.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-16 10:52:17'),
(326, 148, 207, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"148\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f071d9fd5993b5a2b473332916d2ffcc.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-16 11:16:24'),
(327, 148, 207, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"148\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f071d9fd5993b5a2b473332916d2ffcc.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-16 11:20:18'),
(328, 182, 207, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-16 12:12:27'),
(329, 246, 205, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"246\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-16 20:35:43'),
(330, 246, 148, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"246\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-16 20:37:03'),
(331, 246, 148, '{\"title\":\"Reviewed your profile\",\"body\":\"[UNAME] posted a review\",\"reference_id\":\"148\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"user_review\",\"click_action\":\"business\",\"sound\":\"default\"}', 'user_review', 0, 1, '2018-10-16 20:37:12'),
(332, 246, 205, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"246\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-16 20:37:16'),
(333, 246, 205, '{\"title\":\"Reviewed your profile\",\"body\":\"[UNAME] posted a review\",\"reference_id\":\"205\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"user_review\",\"click_action\":\"business\",\"sound\":\"default\"}', 'user_review', 0, 1, '2018-10-16 20:37:25'),
(334, 246, 244, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"246\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-16 20:37:37'),
(335, 246, 244, '{\"title\":\"Reviewed your profile\",\"body\":\"[UNAME] posted a review\",\"reference_id\":\"244\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"user_review\",\"click_action\":\"business\",\"sound\":\"default\"}', 'user_review', 0, 1, '2018-10-16 20:37:45'),
(336, 246, 245, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"246\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-16 20:37:48'),
(337, 246, 245, '{\"title\":\"Reviewed your profile\",\"body\":\"[UNAME] posted a review\",\"reference_id\":\"245\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"user_review\",\"click_action\":\"business\",\"sound\":\"default\"}', 'user_review', 0, 1, '2018-10-16 20:37:54'),
(338, 205, 246, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"205\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/331a123aa8216054deb9e04f321b0b5f.jpeg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-16 20:39:17'),
(339, 182, 173, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 05:05:59'),
(340, 182, 203, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-17 05:07:16'),
(341, 182, 173, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 05:08:18'),
(342, 182, 203, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-17 05:08:27'),
(343, 182, 173, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 05:08:39'),
(344, 182, 174, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 05:08:50'),
(345, 182, 174, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 05:09:02'),
(346, 182, 170, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 1, 1, '2018-10-17 05:09:14'),
(347, 182, 173, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 05:09:21'),
(348, 182, 174, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 05:19:38'),
(349, 243, 150, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"243\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 05:22:00'),
(350, 249, 200, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"249\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 05:34:52'),
(351, 249, 182, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"249\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 05:35:08'),
(352, 249, 150, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"249\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 05:37:02'),
(353, 150, 248, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/b2e4a2bb2129ad7f999b8e533a0edf1e.jpeg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 05:37:16'),
(354, 150, 249, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/b2e4a2bb2129ad7f999b8e533a0edf1e.jpeg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 05:37:53'),
(355, 200, 249, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"200\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/2d6d18fa9d85ccea79cf01115e2d0df7.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 05:38:54'),
(356, 182, 249, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 05:40:37'),
(357, 249, 150, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"249\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 06:29:18'),
(358, 182, 249, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 06:30:56'),
(359, 150, 173, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/b2e4a2bb2129ad7f999b8e533a0edf1e.jpeg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 06:51:56'),
(360, 150, 172, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/b2e4a2bb2129ad7f999b8e533a0edf1e.jpeg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 07:17:27'),
(361, 182, 173, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 08:42:50'),
(362, 182, 175, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 08:43:25'),
(363, 246, 245, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"246\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 08:57:58'),
(364, 246, 244, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"246\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 08:58:00'),
(365, 246, 205, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"246\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 08:58:03'),
(366, 246, 148, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"246\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 08:58:06'),
(367, 173, 182, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"173\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6f91a99b0059bc187b9364c2e3193473.jpeg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 09:16:39'),
(368, 182, 173, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 09:18:23'),
(369, 175, 182, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"175\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/6b2acc2e6815e279cc20aa901f54c3ee.jpg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 09:19:15'),
(370, 182, 175, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 09:19:19'),
(371, 182, 173, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 09:19:35'),
(372, 182, 175, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 09:19:44'),
(373, 182, 175, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 09:25:35'),
(374, 182, 173, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 09:25:43'),
(375, 182, 173, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 09:29:11'),
(376, 182, 175, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 09:29:43'),
(377, 182, 175, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 09:30:15'),
(378, 182, 173, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 09:30:32'),
(379, 182, 173, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 09:31:32'),
(380, 182, 175, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 09:31:57'),
(381, 182, 173, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 09:32:06'),
(382, 182, 175, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 09:33:01'),
(383, 182, 173, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 09:33:11'),
(384, 173, 182, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"173\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/c89e04c7adcb2c54e709ca5f5b4f2080.jpeg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 09:36:12'),
(385, 182, 173, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 09:37:01'),
(386, 150, 173, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/b2e4a2bb2129ad7f999b8e533a0edf1e.jpeg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 09:37:31'),
(387, 182, 175, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 09:38:07'),
(388, 182, 173, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 09:43:25'),
(389, 246, 245, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"246\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 10:00:32'),
(390, 148, 203, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"148\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f071d9fd5993b5a2b473332916d2ffcc.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 10:01:20'),
(391, 148, 246, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"148\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f071d9fd5993b5a2b473332916d2ffcc.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 10:01:34'),
(392, 182, 248, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 10:07:07'),
(393, 150, 173, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/b2e4a2bb2129ad7f999b8e533a0edf1e.jpeg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 10:07:41'),
(394, 150, 173, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/b2e4a2bb2129ad7f999b8e533a0edf1e.jpeg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 10:08:00'),
(395, 150, 172, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"150\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/b2e4a2bb2129ad7f999b8e533a0edf1e.jpeg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 10:08:52'),
(396, 223, 182, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"223\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/placeholder.png\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 10:13:31'),
(397, 182, 175, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 10:14:07'),
(398, 182, 223, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 10:14:40'),
(399, 182, 223, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 10:15:43'),
(400, 182, 173, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"182\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/f10d079f114945c7260702c575007708.jpg\",\"type\":\"profile_view\",\"click_action\":\"individual\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 10:15:55'),
(401, 223, 251, '{\"title\":\"Viewed your profile\",\"body\":\"[UNAME] viewed your profile\",\"reference_id\":\"223\",\"profile_image\":\"https:\\/\\/www.connektus.com.au\\/uploads\\/profile\\/thumb\\/ec094aa8847b0c1162855b50046823a9.jpeg\",\"type\":\"profile_view\",\"click_action\":\"business\",\"sound\":\"default\"}', 'profile_view', 0, 1, '2018-10-17 10:16:24');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `optionId` bigint(20) NOT NULL,
  `option_name` varchar(100) NOT NULL,
  `option_value` text NOT NULL,
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`optionId`, `option_name`, `option_value`, `crd`, `upd`) VALUES
(1, 'tc_page', 'ConnektUs_Terms_-_No_Subscription.pdf', '2018-06-13 11:18:39', '2018-10-16 09:23:38'),
(4, 'about_page', 'About_Us_app.pdf', '2018-06-13 13:20:04', '2018-08-24 11:04:56'),
(5, 'contact_type', 'Help_&_support_job_seeker.pdf', '2018-06-13 13:39:30', '2018-08-24 10:31:29'),
(6, 'pp_page', 'ConnektUs_Privacy2.pdf', '2018-08-13 08:54:47', '2018-10-16 09:23:25'),
(7, 'contact_type_employer', 'Help_&_support_employer.pdf', '2018-08-24 10:31:05', '2018-08-24 10:31:47'),
(8, 'verify_email', '1', '2018-10-03 05:57:53', '2018-10-13 12:00:34');

-- --------------------------------------------------------

--
-- Table structure for table `recommends`
--

CREATE TABLE `recommends` (
  `recommendId` int(11) NOT NULL,
  `recommend_for` int(11) NOT NULL,
  `recommend_by` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_on` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recommends`
--

INSERT INTO `recommends` (`recommendId`, `recommend_for`, `recommend_by`, `status`, `created_on`) VALUES
(77, 148, 203, 1, '2018-10-14 04:10:18'),
(80, 192, 175, 1, '2018-10-15 09:43:42'),
(84, 148, 151, 1, '2018-10-16 09:07:07');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `requestId` int(11) NOT NULL,
  `request_by` int(11) NOT NULL,
  `request_for` int(11) NOT NULL,
  `request_offer_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '2: not offer, 1: offered,0 for pending',
  `is_finished` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 for running: 1 for completed: 2 for deleted',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`requestId`, `request_by`, `request_for`, `request_offer_status`, `is_finished`, `created_on`, `upd`) VALUES
(48, 148, 203, 0, 0, '2018-10-14 05:28:08', '2018-10-14 05:28:08');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `reviewId` int(20) NOT NULL,
  `review_by` int(20) NOT NULL,
  `review_for` int(20) NOT NULL,
  `rating` float NOT NULL DEFAULT '0',
  `comments` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `is_anonymous` tinyint(4) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1: Active, 0: Inactive ',
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`reviewId`, `review_by`, `review_for`, `rating`, `comments`, `is_anonymous`, `status`, `created_on`) VALUES
(48, 246, 148, 5, 'Absolutely amazing', 0, 1, '2018-10-16 20:37:12'),
(49, 246, 205, 4, 'Great to deal with', 0, 1, '2018-10-16 20:37:24'),
(50, 246, 244, 5, 'Testing', 0, 1, '2018-10-16 20:37:44'),
(51, 246, 245, 4, 'Testing', 0, 1, '2018-10-16 20:37:53');

-- --------------------------------------------------------

--
-- Table structure for table `specializations`
--

CREATE TABLE `specializations` (
  `specializationId` int(11) NOT NULL,
  `specializationName` varchar(200) NOT NULL,
  `userType` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `specializations`
--

INSERT INTO `specializations` (`specializationId`, `specializationName`, `userType`, `status`, `crd`, `upd`) VALUES
(3, 'Sales', 'both', 1, '2018-04-20 12:46:54', '2018-08-29 06:29:00'),
(4, 'Banking And Financial Services', 'both', 1, '2018-04-20 12:47:14', '2018-08-29 06:41:36'),
(6, 'Accounting And Finance', 'business', 1, '2018-05-04 00:41:19', '2018-06-26 12:49:54'),
(8, 'Human Resources', 'business', 1, '2018-05-04 00:42:29', '2018-05-04 00:52:24'),
(11, 'Construction', 'both', 1, '2018-05-04 00:51:26', '2018-08-29 06:36:49'),
(13, 'Engineering And Manufacturing', 'business', 1, '2018-05-04 00:51:54', '2018-05-04 00:51:54'),
(14, 'Legal', 'both', 1, '2018-05-04 00:52:34', '2018-08-29 06:36:26'),
(15, 'Retail', 'both', 1, '2018-05-04 00:52:47', '2018-08-29 06:29:26'),
(16, 'Information Technology', 'business', 1, '2018-05-04 00:53:02', '2018-05-04 00:53:02'),
(17, 'Marketing And Digital', 'business', 1, '2018-05-04 00:53:53', '2018-05-04 00:55:03'),
(18, 'Trades And Labour', 'business', 1, '2018-05-04 00:55:24', '2018-05-04 00:55:24'),
(19, 'Executive', 'business', 1, '2018-05-04 00:56:42', '2018-05-04 00:56:42'),
(20, 'Warehouse And Logistics', 'business', 1, '2018-05-04 00:57:21', '2018-05-04 00:57:21'),
(21, 'Business Support', 'business', 1, '2018-05-04 00:57:36', '2018-05-04 00:57:36'),
(31, 'Mining And Resources', 'individual', 1, '2018-05-13 06:03:47', '2018-05-13 06:03:47'),
(32, 'Consulting And Strategy', 'individual', 1, '2018-05-13 06:04:28', '2018-05-13 06:04:28'),
(33, 'Trades And Services', 'individual', 1, '2018-05-13 06:04:43', '2018-05-13 06:04:43'),
(34, 'Science And Technology', 'individual', 1, '2018-05-13 06:05:00', '2018-05-13 06:05:00'),
(35, 'Engineering', 'individual', 1, '2018-05-13 06:05:12', '2018-05-13 06:05:12'),
(36, 'Human Resources And Recruitment', 'individual', 1, '2018-05-13 06:05:30', '2018-05-13 06:05:30'),
(37, 'Hospitality And Tourism', 'individual', 1, '2018-05-13 06:05:51', '2018-05-13 06:05:51'),
(38, 'Government And Defence', 'individual', 1, '2018-05-13 06:06:05', '2018-05-13 06:06:05'),
(39, 'Information And Communication Technology', 'individual', 1, '2018-05-13 06:06:25', '2018-05-13 06:06:25'),
(40, 'Transport And Logistics', 'individual', 1, '2018-05-13 06:07:09', '2018-05-13 06:07:09'),
(42, 'Healthcare And Medical', 'individual', 1, '2018-05-13 06:07:31', '2018-05-13 06:07:31'),
(43, 'Education And Training', 'individual', 1, '2018-05-13 06:07:43', '2018-05-13 06:07:43'),
(44, 'Administration And Office Support', 'individual', 1, '2018-05-13 06:08:04', '2018-05-13 06:08:04'),
(45, 'Marketing And Communication', 'individual', 1, '2018-05-13 06:08:19', '2018-05-13 06:08:19'),
(47, 'Insurance And Superannuation', 'individual', 1, '2018-05-13 06:09:30', '2018-05-13 06:09:30'),
(48, 'Sports And Recreation', 'individual', 1, '2018-05-13 06:09:41', '2018-05-13 06:09:41'),
(49, 'Advertising And Media', 'individual', 1, '2018-05-13 06:09:54', '2018-05-13 06:09:54'),
(50, 'Design And Architecture', 'individual', 1, '2018-05-13 06:10:09', '2018-05-13 06:10:09'),
(51, 'Accounting', 'business', 1, '2018-05-13 06:10:21', '2018-06-26 12:22:04'),
(55, 'Real Estate And Property', 'individual', 1, '2018-05-13 06:11:26', '2018-05-13 06:11:26'),
(56, 'Call Centre And Customer Service', 'individual', 1, '2018-05-13 06:11:41', '2018-05-28 07:32:20'),
(57, 'Business Development Assistant', 'both', 1, '2018-09-17 01:25:07', '2018-09-17 01:25:07');

-- --------------------------------------------------------

--
-- Table structure for table `strengths`
--

CREATE TABLE `strengths` (
  `strengthId` int(11) NOT NULL,
  `strengthName` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `strengths`
--

INSERT INTO `strengths` (`strengthId`, `strengthName`, `status`, `crd`, `upd`) VALUES
(4, 'Written And Verbal Communication', 1, '2018-04-20 12:46:41', '2018-09-17 02:54:41'),
(48, 'Positive Attitude', 1, '2018-09-17 02:33:10', '2018-09-17 02:33:10'),
(49, 'Optimistic', 1, '2018-09-17 02:33:31', '2018-09-17 02:33:31'),
(50, 'Adaptability And Flexibility', 1, '2018-09-17 02:33:58', '2018-09-17 02:55:54'),
(51, 'Accurate And Precise', 1, '2018-09-17 02:34:18', '2018-09-17 02:34:18'),
(52, 'Adventurous', 1, '2018-09-17 02:34:32', '2018-09-17 02:34:32'),
(53, 'Ambitious', 1, '2018-09-17 02:34:38', '2018-09-17 02:34:38'),
(54, 'Appreciative', 1, '2018-09-17 02:34:44', '2018-09-17 02:34:44'),
(55, 'Authentic', 1, '2018-09-17 02:34:49', '2018-09-17 02:34:49'),
(56, 'Caring', 1, '2018-09-17 02:34:59', '2018-09-17 02:34:59'),
(57, 'Compassionate', 1, '2018-09-17 02:35:04', '2018-09-17 02:35:04'),
(58, 'Confident', 1, '2018-09-17 02:35:11', '2018-09-17 02:35:11'),
(59, 'Considerate', 1, '2018-09-17 02:35:21', '2018-09-17 02:35:21'),
(60, 'Courageous ', 1, '2018-09-17 02:35:31', '2018-09-17 02:35:31'),
(61, 'Creative And Innovative', 1, '2018-09-17 02:35:48', '2018-09-17 02:35:48'),
(62, 'Dedicated', 1, '2018-09-17 02:35:57', '2018-09-17 02:35:57'),
(63, 'Determined', 1, '2018-09-17 02:36:08', '2018-09-17 02:36:08'),
(64, 'Empathetic', 1, '2018-09-17 02:36:13', '2018-09-17 02:36:13'),
(65, 'Energetic', 1, '2018-09-17 02:36:18', '2018-09-17 02:36:18'),
(66, 'Entertaining', 1, '2018-09-17 02:36:24', '2018-09-17 02:36:24'),
(67, 'Enthusiastic', 1, '2018-09-17 02:36:34', '2018-09-17 02:36:34'),
(69, 'Focused', 1, '2018-09-17 02:36:55', '2018-09-17 02:36:55'),
(70, 'Generous', 1, '2018-09-17 02:37:09', '2018-09-17 02:37:09'),
(71, 'Thankful', 1, '2018-09-17 02:37:51', '2018-09-17 02:37:51'),
(72, 'Willingness To Learn', 1, '2018-09-17 02:38:06', '2018-09-17 02:38:06'),
(73, 'Helpful', 1, '2018-09-17 02:38:18', '2018-09-17 02:38:18'),
(74, 'Honest And Fair', 1, '2018-09-17 02:38:28', '2018-09-17 02:38:28'),
(75, 'Independent', 1, '2018-09-17 02:38:46', '2018-09-17 02:38:46'),
(76, 'Inspire Others', 1, '2018-09-17 02:39:13', '2018-09-17 02:39:13'),
(77, 'Kindness', 1, '2018-09-17 02:39:21', '2018-09-17 02:39:21'),
(78, 'Knowledgeable', 1, '2018-09-17 02:39:26', '2018-09-17 02:39:26'),
(79, 'Logical', 1, '2018-09-17 02:39:48', '2018-09-17 02:39:48'),
(80, 'Motivated To Achieve', 1, '2018-09-17 02:40:19', '2018-09-17 02:40:19'),
(81, 'Observant', 1, '2018-09-17 02:40:26', '2018-09-17 02:40:26'),
(82, 'Open Minded', 1, '2018-09-17 02:40:34', '2018-09-17 02:40:34'),
(83, 'Patient', 1, '2018-09-17 02:40:42', '2018-09-17 02:40:42'),
(84, 'Resilient', 1, '2018-09-17 02:40:50', '2018-09-17 02:40:50'),
(85, 'Perseverance', 1, '2018-09-17 02:41:05', '2018-09-17 02:41:05'),
(86, 'Persistence', 1, '2018-09-17 02:41:10', '2018-09-17 02:41:10'),
(87, 'Problem Solving', 1, '2018-09-17 02:41:16', '2018-09-17 02:41:16'),
(88, 'Respectful', 1, '2018-09-17 02:41:25', '2018-09-17 02:47:36'),
(89, 'Responsibility', 1, '2018-09-17 02:41:30', '2018-09-17 02:41:30'),
(90, 'Strategic Thinking', 1, '2018-09-17 02:41:45', '2018-09-17 02:41:45'),
(91, 'Team Player', 1, '2018-09-17 02:41:55', '2018-09-17 02:41:55'),
(92, 'Thoughtful', 1, '2018-09-17 02:42:01', '2018-09-17 02:42:01'),
(93, 'Coaching And Mentoring', 1, '2018-09-17 02:42:18', '2018-09-17 02:42:18'),
(94, 'Developing Staff', 1, '2018-09-17 02:42:34', '2018-09-17 02:48:29'),
(95, 'Discovering Opportunities', 1, '2018-09-17 02:42:44', '2018-09-17 02:42:44'),
(96, 'Providing Feedback', 1, '2018-09-17 02:42:59', '2018-09-17 02:42:59'),
(97, 'People Leader', 1, '2018-09-17 02:43:14', '2018-09-17 02:43:14'),
(98, 'Task Orientated', 1, '2018-09-17 02:43:24', '2018-09-17 02:43:24'),
(99, 'Results Driven', 1, '2018-09-17 02:43:34', '2018-09-17 02:47:49'),
(100, 'Planning And Organising', 1, '2018-09-17 02:43:50', '2018-09-17 02:43:50'),
(101, 'Prioritizing ', 1, '2018-09-17 02:44:03', '2018-09-17 02:44:03'),
(102, 'Effective Communication', 1, '2018-09-17 02:44:24', '2018-09-17 02:44:24'),
(103, 'Training Staff', 1, '2018-09-17 02:44:47', '2018-09-17 02:48:42'),
(104, 'Meet Deadlines', 1, '2018-09-17 02:44:57', '2018-09-17 02:44:57'),
(106, 'Dependable', 1, '2018-09-17 02:45:47', '2018-09-17 02:45:47'),
(107, 'Solution Oriented', 1, '2018-09-17 02:46:31', '2018-09-17 02:46:31'),
(108, 'Attention To Detail', 1, '2018-09-17 02:46:52', '2018-09-17 02:46:52'),
(109, 'High Achiever', 1, '2018-09-17 02:47:23', '2018-09-17 02:47:23'),
(110, 'Decision Making', 1, '2018-09-17 02:47:59', '2018-09-17 02:47:59'),
(111, 'Mentoring Staff', 1, '2018-09-17 02:48:06', '2018-09-17 02:48:06'),
(112, 'Motivating Staff', 1, '2018-09-17 02:48:15', '2018-09-17 02:48:15'),
(113, 'Conflict Resolution', 1, '2018-09-17 02:48:52', '2018-09-17 02:48:52'),
(114, 'Autonomous', 1, '2018-09-17 02:49:22', '2018-09-17 02:49:22'),
(115, 'Charismatic', 1, '2018-09-17 02:49:31', '2018-09-17 02:49:31'),
(116, 'Cheerful', 1, '2018-09-17 02:49:37', '2018-09-17 02:49:37'),
(117, 'Devoted', 1, '2018-09-17 02:49:49', '2018-09-17 02:49:49'),
(118, 'Easygoing', 1, '2018-09-17 02:49:56', '2018-09-17 02:49:56'),
(120, 'Insightful', 1, '2018-09-17 02:50:31', '2018-09-17 02:50:31'),
(121, 'Intuitive', 1, '2018-09-17 02:50:38', '2018-09-17 02:50:38'),
(122, 'Persuasive', 1, '2018-09-17 02:50:49', '2018-09-17 02:50:49'),
(123, 'Resourceful', 1, '2018-09-17 02:50:58', '2018-09-17 02:50:58'),
(124, 'Trustworthy', 1, '2018-09-17 02:51:43', '2018-09-17 02:51:43'),
(125, 'Disciplined', 1, '2018-09-17 02:51:55', '2018-09-17 02:51:55'),
(126, 'Networking', 1, '2018-09-17 02:52:25', '2018-09-17 02:52:25'),
(127, 'Education', 1, '2018-09-17 02:52:33', '2018-09-17 02:52:33'),
(128, 'Collaboration', 1, '2018-09-17 02:52:43', '2018-09-17 02:52:43'),
(129, 'Artistic', 1, '2018-09-17 02:53:14', '2018-09-17 02:53:14'),
(130, 'Friendly', 1, '2018-09-17 02:53:28', '2018-09-17 02:53:28'),
(131, 'People Skills', 1, '2018-09-17 02:55:28', '2018-09-17 02:55:28'),
(132, 'Ability To Work Under Pressure', 1, '2018-09-17 02:56:09', '2018-09-17 02:56:09'),
(133, 'Leadership', 1, '2018-09-17 02:59:25', '2018-09-17 02:59:25');

-- --------------------------------------------------------

--
-- Table structure for table `usermeta`
--

CREATE TABLE `usermeta` (
  `metaID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `jobTitle_id` int(11) NOT NULL,
  `address` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `city` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `state` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `country` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `latitude` varchar(250) NOT NULL,
  `longitude` varchar(250) NOT NULL,
  `bio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `description` text NOT NULL,
  `company_logo` varchar(250) NOT NULL,
  `user_resume` varchar(250) NOT NULL,
  `user_cv` varchar(250) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usermeta`
--

INSERT INTO `usermeta` (`metaID`, `user_id`, `jobTitle_id`, `address`, `city`, `state`, `country`, `latitude`, `longitude`, `bio`, `description`, `company_logo`, `user_resume`, `user_cv`, `status`, `crd`, `upd`) VALUES
(92, 148, 193, '320 Bourke St, Melbourne VIC 3004, Australia', 'Melbourne', 'Victoria', 'Australia', '-37.814232499999996', '144.9632447', 'I+am+the+CEO+and+founder+of+ConnektUs.+My+passion+has+always+been+to+help+others.+Finding+the+right+business+for+you+that+aligns+to+your+values+and+personality+is+extremely+important.+Never+settle+for+less.', 'We+are+a+mobile+platform+that+simplifies+the+hiring+process+by+allowing+active+job+seekers+and+employers+to+conveniently+connekt.+Find+specific+candidates+at+your+finger+tips+that+suit+you+and+your+business+needs.+%0A%0AConnektUs+-+Hiring.+Made.+Simple', '1d70dcd48645d0e2bd127c99633a394a.jpg', '', '', 1, '2018-10-07 02:18:14', '2018-10-14 05:10:03'),
(94, 150, 95, 'Melbourne VIC, Australia', 'Melbourne', 'VIC', 'Australia', '-37.813628', '144.963058', 'How%20many%20hours%20in%20your%20life%20with%20your%20phone%20is%20it%20the%20best%20thing%20you%20to%20have', 'been%20on%20it%20so%20you%20are%20receiving%20your%20website%20rankings%20also', 'dc217974da29490a2e86b55ce43a2512.jpg', '', '', 1, '2018-10-08 05:34:19', '2018-10-17 05:36:49'),
(95, 151, 0, '502, 503 & 504 Krishna Tower Above ICICI Bank, Main Rd, Brajeshwari Extension, Pipliyahana, Indore, Madhya Pradesh 452016, India', 'Indore', 'Madhya Pradesh', 'India', '22.705138200000004', '75.9090618', 'Tested+this+one+for+you+can+you+help+to+see', '', '', '', '', 1, '2018-10-08 05:38:58', '2018-10-08 05:38:58'),
(100, 170, 0, 'Melbourne VIC, Australia', 'Melbourne', 'Victoria', 'Australia', '-37.8136276', '144.96305759999998', 'Rahul%40gmail.com', '', '', '', '', 1, '2018-10-12 14:37:19', '2018-10-12 14:37:19'),
(101, 173, 0, 'Melbourne VIC, Australia', '', '', 'Australia', '-37.8136276', '144.96305759999998', 'Test', '', '', '', '', 1, '2018-10-13 05:25:07', '2018-10-16 10:33:55'),
(102, 172, 0, 'Melbourne VIC, Australia', 'Melbourne', 'Victoria', 'Australia', '-37.8136276', '144.96305759999998', '3jjrjrnrjr+ke+rnrnrnbrjr+r', '', '', 'file125.pdf', '', 1, '2018-10-13 05:37:37', '2018-10-13 05:38:41'),
(103, 174, 0, 'Werribee VIC 3030, Australia', 'Werribee', 'Victoria', 'Australia', '-37.9', '144.664', 'Vijay+andvijay+the+British+rhrnr+the+Britishrhrnrrhrnrrhrnrrhrnrrhrnrrhrnroutis', '', '', '', '', 1, '2018-10-13 05:49:29', '2018-10-13 05:49:29'),
(104, 175, 0, 'Werribee VIC 3030, Australia', 'Werribee', 'Victoria', 'Australia', '-37.9', '144.664', 'Test', '', '', '', '', 1, '2018-10-13 06:27:17', '2018-10-13 06:30:27'),
(105, 180, 89, 'Australia', 'Ghan', 'Northern Territory', 'Australia', '-25.274397999999998', '133.775136', '6uy', '', '4256af66abc9cd10418f65b37a2aad29.jpg', '', '', 1, '2018-10-13 08:59:37', '2018-10-16 10:46:56'),
(106, 182, 89, 'Sydney NSW, Australia', 'Sydney', 'New South Wales', 'Australia', '-33.868819699999996', '151.2092955', 'Have', 'My+own+personal+experience+as+you+may+need+anything+to', 'd48e77f662e100ca779d5abc3501bb70.jpg', '', '', 1, '2018-10-13 09:31:34', '2018-10-13 09:53:14'),
(108, 192, 92, 'Victoria, Australia', 'Luckytown', 'Victoria', 'Australia', '-37.47130769999999', '144.7851531', 'Ehjeje+e+be+e', 'Ehjeje+the+jr+rbrnr', 'e105f1ee773b1592712ca562297e23f9.jpg', '', '', 1, '2018-10-13 11:42:56', '2018-10-13 11:42:56'),
(111, 200, 87, 'Melbourne VIC, Australia', 'Melbourne', 'Victoria', 'Australia', '-37.8136276', '144.96305759999998', 'Test', 'To+in+and+ke+the+hai+the+the+jr', '7211ed64da6bbfa1d32019b73f234116.jpg', '', '', 1, '2018-10-13 12:39:52', '2018-10-13 12:48:14'),
(114, 203, 0, 'South Melbourne VIC 3205, Australia', 'South Melbourne', 'Victoria', 'Australia', '-37.835', '144.95999999999998', '', '', '', '', '', 1, '2018-10-14 04:00:44', '2018-10-14 04:00:44'),
(115, 204, 197, 'Melbourne VIC, Australia', '', '', 'Australia', '-37.8136276', '144.96305759999998', 'Test.', 'Test.', '5811d43e5eb5ffdb87f6c468b0765dc0.jpg', '', '', 1, '2018-10-14 04:16:03', '2018-10-14 04:16:03'),
(116, 205, 89, 'Melbourne VIC, Australia', '', '', 'Australia', '-37.8136276', '144.96305759999998', 'Testing%20buff', 'This%20is%20test', '4fb3dc95baee1c8222ae6807e67600d1.jpg', '', '', 1, '2018-10-14 07:59:27', '2018-10-16 08:48:59'),
(126, 223, 0, 'Melbourne VIC, Australia', 'Melbourne', 'VIC', 'Australia', '-37.813628', '144.963058', 'test', '', '', '', '', 1, '2018-10-16 10:21:27', '2018-10-16 10:21:27'),
(129, 243, 0, 'Indore, Madhya Pradesh, India', 'Indore', 'Madhya Pradesh', 'India', '22.719569', '75.857726', 'Bob', '', '', '', '', 1, '2018-10-16 15:11:28', '2018-10-16 15:11:28'),
(130, 244, 715, '100 Collins St, Melbourne VIC 3000, Australia', 'Melbourne', 'Victoria', 'Australia', '-37.8143835', '144.9700766', 'Test', 'Test', '8605c11020a2e3d4c7577eba057efbb1.jpg', '', '', 1, '2018-10-16 20:21:41', '2018-10-16 20:22:14'),
(131, 245, 223, '340 La Trobe St, Melbourne VIC 3000, Australia', 'Melbourne', 'Victoria', 'Australia', '-37.810615', '144.959496', 'Test', 'Test', '7ae26bba8c6d8be984ebddadc6f1a05c.jpg', '', '', 1, '2018-10-16 20:25:42', '2018-10-16 20:26:16'),
(132, 246, 0, 'Melbourne VIC, Australia', '', '', 'Australia', '-37.8136276', '144.96305759999998', 'Test', '', '', '', '', 1, '2018-10-16 20:34:59', '2018-10-16 20:34:59'),
(133, 248, 0, 'Melbourne VIC, Australia', '', '', 'Australia', '-37.8136276', '144.96305759999998', 'Fhjfjfj+DJ+fjf+fjf+fjf+jf+fjff+fhf', '', '', '', '', 1, '2018-10-17 05:28:33', '2018-10-17 05:28:33'),
(134, 249, 0, 'Melbourne VIC, Australia', '', '', 'Australia', '-37.8136276', '144.96305759999998', 'Test', '', '', '', '', 1, '2018-10-17 05:32:03', '2018-10-17 05:32:03'),
(135, 251, 88, 'Werribee VIC 3030, Australia', 'Werribee', 'VIC', 'Australia', '-37.900000', '144.664000', 'test', 'testyuu', 'e512f8f55744641570db1113abdf9011.jpeg', '', '', 1, '2018-10-17 08:55:22', '2018-10-17 08:55:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `fullName` varchar(250) NOT NULL,
  `businessName` varchar(255) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL,
  `profileImage` varchar(250) NOT NULL,
  `userType` varchar(50) NOT NULL,
  `deviceType` tinyint(4) NOT NULL COMMENT '0:Android , 1:Ios',
  `deviceToken` varchar(250) NOT NULL,
  `isProfile` tinyint(4) NOT NULL DEFAULT '0',
  `isNotify` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0:not send, 1:send',
  `visit_counts` bigint(20) NOT NULL DEFAULT '0',
  `authToken` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `isActive` tinyint(4) NOT NULL DEFAULT '1',
  `isVerified` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 : not verified, 1 Verified',
  `verifiedLink` varchar(255) NOT NULL,
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `fullName`, `businessName`, `email`, `phone`, `password`, `profileImage`, `userType`, `deviceType`, `deviceToken`, `isProfile`, `isNotify`, `visit_counts`, `authToken`, `status`, `isActive`, `isVerified`, `verifiedLink`, `crd`, `upd`) VALUES
(148, 'John Doe', 'ConnektUs', 'dmehmet@connektus.com.au', '0409520106', '$2y$10$4PrMq4Q3vukJz5QKO19UGuA6PKydUY03omFc9e3y3zXY8wzzEX.bi', 'f071d9fd5993b5a2b473332916d2ffcc.jpg', 'business', 0, 'duXZPRyxASg:APA91bFpyYpLvPMX6JfB8L_DA0TZrDqm2h4Ci-p7zChIb9YifIbX5Geo2R7FffbjoNvT9MWhG6nAFrP5heFDeBKfZcqj9Lb0pakxlc212Efwkb8J2iRvFyWbktgXjbfrUThc8kAplVGZ', 1, 1, 14, 'dd85c3045968eccda375c5bf26ccb554481e0d51', 1, 1, 1, '', '2018-10-07 02:15:43', '2018-10-14 05:10:03'),
(150, 'Ashish', 'Lamb Zx', 'mindiii.ashish@gmail.com', '88871709795', '$2y$10$rvg9.nPgJ0xWdXjY..i7N.FQiBdKWfnPIyTAGk9MUgq9IY/JPVOpa', 'b2e4a2bb2129ad7f999b8e533a0edf1e.jpeg', 'business', 0, '', 1, 1, 6, '', 1, 1, 1, '', '2018-10-08 05:31:15', '2018-10-17 05:36:49'),
(151, 'HRK', '', 'm.indiiiashish@gmail.com', '9589544415', '$2y$10$0xUehTyscTe5FFQ3M.xXjeKaXeiTaWdUjNYc0HQfZgtdburJys48G', '77db8d793ded4dbc6f747b0a643cc43e.jpg', 'individual', 0, 'cA_bFdWL-3k:APA91bG4VKGVKq2oGBE16SjUyxi4qL1uUu66nuLIDurfhK-3iyjKP3OmUJBxUy2xUx8s2ZLqV-8wPPEBhv_42HMox-qFGCygOBAeFdfshlGQ02rK4jD5SCCcwmsqgT3MeqbTMRFyXILc', 1, 1, 64, '629eb00791a5e267b3d8addd8eeee1151f824111', 1, 1, 1, '', '2018-10-08 05:36:34', '2018-10-08 05:38:58'),
(170, 'jack sparrow', '', 'mind.iiiashish@gmail.com', '85223336666', '$2y$10$7Q1e5Di51UMLJNcN5sU52ezypANMOOlYDbCWiQFRRAlJQIUk6SlIy', 'f828050959fea93da5345cc90d364469.jpg', 'individual', 0, '', 1, 1, 4, '', 1, 1, 1, '', '2018-10-12 14:32:49', '2018-10-12 14:37:19'),
(172, 'anil mindiii', '', 'anilchourasiya.mindiii@gmail.com', '5878946533', '$2y$10$dcGNt.8F9HyXDLcrpYxy/eREF5z1rLlmaRSjdBmTxl7WT7JBehLrC', '7d2c66f5ade3fecceee23937830eaf11.jpg', 'individual', 0, 'fkkxfPtb3oM:APA91bHdqD2iueoSo27JR-oZYUoRgpBoGFoPKfNFF77rL2RwedvHP_94j_1TRLkQ0KJzlVqHDwR0eR1jd3YbByiTZIbHwukYyMMaS0GtO0aNx3-vdYZvgHWkZqPyuzYlUjwvpU5jackN', 1, 1, 2, '11473c8be04f9d6b65c0c902dd050111c015dc56', 1, 1, 1, '', '2018-10-13 05:08:21', '2018-10-13 05:38:41'),
(173, 'peter Charles', '', 'min.diiiashish@gmail.com', '8871709896', '$2y$10$slNFp.KXx3.5FtDn3sFQY.sVwqcGwOYU/QpKhqDNXS1T4xS0gVLD.', 'c89e04c7adcb2c54e709ca5f5b4f2080.jpeg', 'individual', 0, '', 1, 1, 30, '', 1, 1, 1, '', '2018-10-13 05:20:47', '2018-10-17 09:32:45'),
(174, 'Sharlock j', '', 'mindiiiash.ish@gmail.com', '85222222336', '$2y$10$YqPrn.xYxrYQkaBO6ERUBOWxUYeTza5sfWeq3TVH/1whjFfM3spl6', 'fa48d8629ad48dbdcea3d65675fa06bb.jpg', 'individual', 0, 'cb5i27yA3iA:APA91bGXT234TQaHAn2Hb4ik6X7N9Ehbgeg7B_VHkMHkvKWMswAFMujluAQDAFgZ2DYTa2o865ZMuvaK-m4VPJmbZRRzwxRO7fooi8YLjFO9KbtshrDbM_nreFL5C-iQ3xsY9036VUGB', 1, 1, 10, 'd3d078bae4c520cc54b58e9c66af249400b44746', 1, 1, 1, '', '2018-10-13 05:44:59', '2018-10-13 05:56:48'),
(175, 'imonk T', '', 'manish.mindiii@gmail.com', '852366666', '$2y$10$nAGd20G93zGchuyJFhWzhOxUClyPFM.f96Huvs5fegHgs96WBqLOm', '99996e3a86e04ba9ae4b5127bf56fe83.jpeg', 'individual', 0, '', 1, 1, 16, '', 1, 1, 1, '', '2018-10-13 06:23:10', '2018-10-17 09:25:18'),
(180, 'peter L', 'PatZ', 'manis.hmindiii@gmail.com', '888525633', '$2y$10$zqe9AhOKQNtdmaBlTk3k.Oiivqgs7ihUGkcu/dq/ft87TK.cuOD0i', '9bb366848fd8d3aee0c223523997a3e6.jpg', 'business', 0, '', 1, 1, 0, '', 1, 1, 1, '', '2018-10-13 08:57:38', '2018-10-16 10:46:56'),
(182, 'Dark', 'Ash', 'jerry.mindiii@gmail.com', '88523366', '$2y$10$bqNrrx.K9u2QOr8KUd7k1ucy.q7quhFJaJJKWypcSTO0V6d1LJ.a6', 'f10d079f114945c7260702c575007708.jpg', 'business', 0, 'cjH0pcuboVE:APA91bFEKY95hBeMujN65ed55JApF-qgaSmyEe69EhpFmTC0y6tA9q43eFSxw3e5X1e4PuoiZxJMHoLlS0HzgOi5IF966QADkS_hkAVzXJbGwvxrbnPU7y-mBMvwyuvEQmxVXOGzsKSK', 1, 1, 5, '7cacf3de94f7d00e00460a8470a0479ba10c6cb8', 1, 1, 1, '', '2018-10-13 09:11:23', '2018-10-17 09:24:55'),
(192, 'Pankaj', 'Mindiii', 'pankajswami@gmail.com', '89875466468', '$2y$10$K7Ak.kW/MABFSBSOdK0BDOqvZ.336OLmho5lmhxjAr2bFKgf.2wKW', 'e5639f3d3c7476461a37c07971f04232.jpg', 'business', 0, '', 1, 1, 1, '', 1, 1, 1, '1ba5701a4786909f92d9c358858afb44', '2018-10-13 11:41:32', '2018-10-13 11:42:56'),
(200, 'hrkian', 'aish', 'mindiiiashis.h@gmail.com', '88871788663', '$2y$10$rSRtBfZ277u2hPYS9RA8iuh4VVZfz5HnqJDcFX1QT3zpn6kNndOMq', '2d6d18fa9d85ccea79cf01115e2d0df7.jpg', 'business', 0, '', 1, 1, 2, '', 1, 1, 1, '', '2018-10-13 12:38:04', '2018-10-13 12:49:09'),
(203, 'Hyrije Mehmet', '', 'hyrije.mehmet@gmail.com', '0411269998', '$2y$10$Hbmati11hjeDfs3TiWBiMefB5kWbwqLw4mC/ZDN.8zW1/m7BnTrYS', '8cc7cb4cfdd9a410e4a7037007933847.jpg', 'individual', 0, 'cSXPd8lF_Sw:APA91bHe1kpNByeoM9Uv_AmTFZ5FawfX1nUxb6BT2v85DA_AJO1gTezVYbQ9Qdf6hWKA8P_D0_etxY0l1OIoIOHpVduQm8EOKzyUQT23xp8WmiRLMIjY-9yiqXaaRhpErpEdll7tLDF83-wdCLEM98NTHxrkuXx6ng', 1, 1, 9, '57aa1e307f125ab759b3f2ac30cf65ba77cba9df', 1, 1, 1, '', '2018-10-14 03:58:46', '2018-10-14 05:32:54'),
(204, 'Erin', 'business', 'e_pottenger@live.com.au', '0433003746', '$2y$10$/ohV7wH6pm8TZ8wNyw6fFe5nQJ6zG0g9sqwwrMVfOU457AYPKziAy', '14375f472d423cc6b68a2c49136e5271.jpg', 'business', 0, 'eoqzHcPlEWs:APA91bFXoRR78wobcZFo8NfsLemIbA8Y3mGnSdtq4pFackSQmEQR0KI0Sw043jBn7ODjeVIwYsr5akTyqIAcl46ZK_OwjhPO-AfShuKKDOx2s70zY2l2cWtzr1tlOuRuyxLdE0hk628U', 1, 1, 2, '38313c40284978700564a4c80699ebcbcce53400', 1, 1, 1, '', '2018-10-14 04:13:18', '2018-10-14 04:20:46'),
(205, 'Hayley Jade', 'RecruitUs', 'support@connektus.com.au', '0409520106', '$2y$10$tKOmuEFam.YkY2qh6fLjWOGgP3cQOeaqbcOWngn/AnTm0QPxGvb8O', '331a123aa8216054deb9e04f321b0b5f.jpeg', 'business', 0, '', 1, 1, 31, '', 1, 1, 1, '', '2018-10-14 07:58:06', '2018-10-16 08:48:59'),
(217, 'JacCrow', '', 'qamindi.ii@gmail.com', '586556576224', '$2y$10$eqJ4FVYhFv5bE06qxqgyl.iD07GAyCVNOhCNVlVnqV122BpGtk.6m', '', 'individual', 0, '', 0, 1, 0, '1f56f894ce8eb7217bd3659fbe74b1dd74422021', 1, 1, 0, 'd8026cee6f971d9e74c33a5331bda03d', '2018-10-16 07:32:17', '2018-10-16 07:32:17'),
(223, 'Adam J', '', 'qamind.iii@gmail.com', '24346543247352', '$2y$10$mqshH/p13/pF0NbsqHe9IenlitQ6IU0UoAC2mZjSid5qjexrMCMly', 'ec094aa8847b0c1162855b50046823a9.jpeg', 'individual', 0, 'cftj_SPUdxw:APA91bEBdKtnC3Ov8n-Osy635JarGS3Jk1mwcGn5TTMLjj8LG_brxYC6ETWpJpj4BlXl305octPrNe3rqsVyLnQqY-bsZ03CTcbjZ6zdhiqhoUdIw8Dj5WPBynFnFVVa8jbgNJUK5add', 1, 1, 2, '7b51dd4a6d863743a3038c7e338e5e25939e0755', 1, 1, 1, '', '2018-10-16 09:54:13', '2018-10-17 10:15:23'),
(240, 'ztudurs', '', 'jac.kdarko098@gmail.com', '4234234', '$2y$10$d6aEpYoZHxfb7dqQxwbCsePWUPLJvv15VGTx4mu5mBOJ7E5A2cI6.', '', 'individual', 1, 'c43tzVyTDqY:APA91bH7zsX7FBsI4Ho5_F5fWKl3KYzLqX1hYyTaW3vPylP-7f8vqybiIVdZ6jgBfqaoxY1pTHNU86EZoFuZjriizBjcbbx64Bbmh75k2AfMqFT95SmQh1ya1CpnWg8XM_NPcc8FNLde', 0, 1, 0, '24639eac0da2dad973df294b6e85de69985cbc84', 1, 1, 0, 'f6f731fb3f27edad011d8e71cfe7ae57', '2018-10-16 13:40:33', '2018-10-16 13:40:33'),
(243, 'Djyc', '', 'uconnektapp@gmail.com', '5624635', '$2y$10$38NTjBjQjlPirQhK8qW4YOf/3pISU/GiC9FYcPEBezota4rY6id52', '', 'individual', 1, 'ddsU4ac7oMU:APA91bFIRvrpovNQxIsvtj9ULgHezESoDGGpvfu0MxfXPjjFYOHAWssEGZcK0uJKveuNOkmcYs1woIcEPMpatmoeUOZgOUT3za0dHJyM2_3z7_9v6lIaT0pJ8upLG4wAETcyFc4bakN9', 1, 1, 0, '7be4589fc5372db311d8aaa65e7a2985ab30e3c0', 1, 1, 1, '', '2018-10-16 15:07:19', '2018-10-16 15:11:28'),
(244, 'Matt Thompson', 'Facebook', 'info@connektus.com.au', '0409520106', '$2y$10$ENpP.QCgoXR.2arYpbYGP.FzXf0JFqPDFxTGEoeDLF0Lv0BoZqPP2', '68a0b174d6d1e2876353b81e2661c091.jpg', 'business', 0, '', 1, 1, 2, '', 1, 1, 1, '', '2018-10-16 20:19:50', '2018-10-16 20:22:14'),
(245, 'Jessica Holmes', 'Google', 'short_ass_01@hotmail.com', '0409520106', '$2y$10$zcyemJ2egcHMVQRUHM6bKuO4VkB14z5zBM.NBxjK1fFL//qr5E/L6', 'd38800504c88c4ac8ea0981f0d328def.jpg', 'business', 0, '', 1, 1, 3, '', 1, 1, 1, '', '2018-10-16 20:23:21', '2018-10-16 20:26:16'),
(246, 'Denden', '', 'dennismehmet123@yahoo.com.au', '0409520106', '$2y$10$F4xYZEhxhrCKe00ybYyksOrUImLt/GZWd7CWicY7PvzNDCjTPru2C', '', 'individual', 0, '', 1, 1, 2, '', 1, 1, 1, '', '2018-10-16 20:28:57', '2018-10-16 20:34:59'),
(247, 'Kratika', '', 'kratika.mindiii@gmail.com', '84758963556', '$2y$10$JX35gp/ZOKgeGdeNiMWUd.IX5Tl7X6HvvQk6hetKY4EzmRyoWbwUS', '7401101efa3b3a4d96a1235d96e3d3e1.jpg', 'individual', 0, 'dWnZ_5FcxB0:APA91bFx9QyIVXJ4bdYENMWk0H7WArWyLshV10ARbum4n2ZBiLT17m24aL-9kD24_FGJf9_HzCPcSvApX1a5cIJ-Bhj3gXydFLpcvla_pltHYLDmxDfGQZUPqQXz0PXz3sVHEfN7cabT', 0, 1, 0, '201218f218571a975aee7267ad9055a74ff26ecd', 1, 1, 0, '69e36bbbed3918be88255e7c21157367', '2018-10-17 05:18:00', '2018-10-17 05:18:00'),
(248, 'Anil', '', 'achourasiya43@gmail.com', '84758963556', '$2y$10$j35920xfxlrVVUEhqfJGXumUw1ZgAb5dHO.1eB1Beu5EwJSCqjYV.', 'd561213796b3685c7077e662526872d3.jpg', 'individual', 0, 'dWnZ_5FcxB0:APA91bFx9QyIVXJ4bdYENMWk0H7WArWyLshV10ARbum4n2ZBiLT17m24aL-9kD24_FGJf9_HzCPcSvApX1a5cIJ-Bhj3gXydFLpcvla_pltHYLDmxDfGQZUPqQXz0PXz3sVHEfN7cabT', 1, 1, 2, 'f1084c73bd041e2f162d7d73102e29429c7dc7d7', 1, 1, 1, '', '2018-10-17 05:19:12', '2018-10-17 05:28:33'),
(249, 'Jack Darco', '', 'ashishharinkhede@yahoo.com', '5353535', '$2y$10$Cdvcnx7fyX3e2U.NREhNo.dXoQyeqjE0/NmXfOyJyJHW99J2ZJkrK', '', 'individual', 0, '', 1, 1, 4, '', 1, 1, 1, '', '2018-10-17 05:28:02', '2018-10-17 05:32:03'),
(251, 'Alan', 'alzz', 'u.testhrk@gmail.com', '763755732537', '$2y$10$4RGJ6TDIORmdVQYgFToIhexC1QWCLUhfVGzxLAFB9yiDT86zn4nNG', 'd10f6e1ab9f1cdb1c8a1121954c8a1f6.jpeg', 'business', 0, '', 1, 1, 1, '', 1, 1, 1, '', '2018-10-17 08:38:41', '2018-10-17 08:55:22'),
(252, 'giv', 'gkbv', 'iosvinod@gmail.com', '588985968', '$2y$10$fK.isRqVk84uqR0eYgIvfuWjNA3TI1Sakh422VTt6qbGqUPyTGI36', '', 'business', 0, 'ccscGfzBjXg:APA91bH4Z_0tFvc-uedcP9T8zMWNG_GYXQF-zuiWFJaPyIovOqAf-AY6eTd8zhZ7MIPeOQ_yId4X2guvtf6KoX97OaXfCGHWcyaU2m3yC_ey86L4BFtPAZMP2XpHBU3iUaGh7gdBvjGu', 0, 1, 0, 'eb1026479f1cfb8ea0969e89c06e4903ad19164f', 1, 1, 0, '182edad2e9b30609e3250d2c0f44ebf5', '2018-10-17 09:59:09', '2018-10-17 09:59:09');

-- --------------------------------------------------------

--
-- Table structure for table `user_job_profile`
--

CREATE TABLE `user_job_profile` (
  `experienceId` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `current_job_title` int(11) NOT NULL,
  `current_company` varchar(250) NOT NULL,
  `current_start_date` varchar(250) NOT NULL,
  `current_finish_date` varchar(250) NOT NULL,
  `current_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `next_availability` varchar(250) NOT NULL,
  `next_speciality` int(11) NOT NULL,
  `next_location` varchar(250) NOT NULL,
  `expectedSalaryFrom` varchar(100) NOT NULL,
  `expectedSalaryTo` varchar(100) NOT NULL,
  `employementType` varchar(100) NOT NULL,
  `totalExperience` int(11) NOT NULL,
  `currentExperience` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_job_profile`
--

INSERT INTO `user_job_profile` (`experienceId`, `user_id`, `current_job_title`, `current_company`, `current_start_date`, `current_finish_date`, `current_description`, `next_availability`, `next_speciality`, `next_location`, `expectedSalaryFrom`, `expectedSalaryTo`, `employementType`, `totalExperience`, `currentExperience`, `status`, `crd`, `upd`) VALUES
(48, 151, 100, 'Imonk', '08-10-2014', '', 'Timing', 'Immediate', 11, 'Jabalpur, Madhya Pradesh, India', '60000', '80000', 'Casual', 12, 4, 1, '2018-10-08 05:41:11', '2018-10-13 10:16:13'),
(50, 172, 92, 'new company', '13-10-2014', '', 'have+dbd+dbd+dbd+d+d+d+dbd+djdb', '9-12 weeks', 50, 'Victoria, Australia', '20000', '40000', 'Full time', 0, 0, 1, '2018-10-13 05:38:32', '2018-10-13 05:38:32'),
(51, 174, 781, 'Mindiii', '13-10-2016', '', 'vijay+the+British+rhrnr+the+British', 'Immediate', 56, 'Jabalpur, Madhya Pradesh, India', '120000', '150000', 'Full time', 13, 2, 1, '2018-10-13 05:51:11', '2018-10-13 08:41:08'),
(52, 173, 91, 'pTz', '01-06-2018', '', '', 'Immediate', 32, 'J.G.-36, Ring Rd, Japan Market, Begampura, Surat, Gujarat 395003, India', '100000', '120000', 'Casual', 10, 0, 1, '2018-10-13 06:21:25', '2018-10-16 10:37:05'),
(53, 175, 87, 'pk', '13-10-2016', '', 'test', 'Immediate', 11, 'Houston, TX, USA', '20000', '40000', 'Part time', 13, 2, 1, '2018-10-13 06:28:26', '2018-10-14 04:23:08'),
(56, 203, 589, 'connektUs testing', '08-03-2018', '', '', '1-4 weeks', 4, 'Camberwell VIC 3124, Australia', '80000', '100000', 'Full time', 0, 0, 1, '2018-10-14 04:02:50', '2018-10-16 11:34:07'),
(59, 246, 90, 'test incc', '17-10-2018', '', 'test', 'Immediate', 32, 'Melbourne VIC, Australia', '120000', '150000', 'Full time', 0, 0, 1, '2018-10-16 20:35:27', '2018-10-16 20:35:27'),
(60, 249, 89, 'Mindiii M', '17-10-2013', '', '', 'Immediate', 56, 'Indiana, USA', '200000', '99999999', 'Part time', 2, 0, 1, '2018-10-17 05:33:28', '2018-10-17 05:33:28'),
(61, 170, 87, 'bhjjj', '17-10-2018', '', '', 'Immediate', 4, 'Jabalpur, Madhya Pradesh, India', 'any', '', 'Part time', 0, 0, 1, '2018-10-17 06:54:39', '2018-10-17 07:14:23');

-- --------------------------------------------------------

--
-- Table structure for table `user_previous_role`
--

CREATE TABLE `user_previous_role` (
  `previousRoleId` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `previous_job_title_id` int(20) NOT NULL,
  `previousCompanyName` varchar(100) NOT NULL,
  `previousDescription` varchar(255) NOT NULL,
  `experience` int(11) NOT NULL,
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_previous_role`
--

INSERT INTO `user_previous_role` (`previousRoleId`, `user_id`, `previous_job_title_id`, `previousCompanyName`, `previousDescription`, `experience`, `crd`, `upd`) VALUES
(1, 144, 89, 'hhvsvs', 'vvsvhsvvagaggs', 2, '2018-10-05 13:51:48', '0000-00-00 00:00:00'),
(2, 144, 88, 'gvvs sseeff', 'ghshha', 0, '2018-10-05 13:52:30', '2018-10-05 13:52:30'),
(3, 146, 89, 'c22', 'Dsasdsdsd', 2, '2018-10-05 14:53:01', '0000-00-00 00:00:00'),
(4, 146, 96, 'c33', 'Sdfdfsdf.edd.sdfsdf.', 4, '2018-10-05 14:53:01', '0000-00-00 00:00:00'),
(5, 151, 92, 'I monk tech', 'test', 3, '2018-10-08 05:41:11', '0000-00-00 00:00:00'),
(6, 151, 92, 'Hrk', '', 3, '2018-10-08 05:41:11', '0000-00-00 00:00:00'),
(7, 151, 92, 'mindiii', '', 2, '2018-10-08 05:41:11', '0000-00-00 00:00:00'),
(8, 152, 100, 'mindiii', 'minding+for+you+are+doing', 2, '2018-10-08 05:54:15', '0000-00-00 00:00:00'),
(9, 152, 943, 'imonk', 'timing', 4, '2018-10-08 05:54:15', '0000-00-00 00:00:00'),
(10, 152, 327, 'MPEB', '', 2, '2018-10-08 05:54:15', '0000-00-00 00:00:00'),
(11, 174, 89, 'Infosys', '', 2, '2018-10-13 05:51:11', '0000-00-00 00:00:00'),
(12, 174, 90, 'tCs', '', 3, '2018-10-13 05:51:11', '0000-00-00 00:00:00'),
(13, 174, 100, 'Hrk', '', 6, '2018-10-13 05:51:11', '0000-00-00 00:00:00'),
(14, 173, 92, 'mindiii sys', '', 3, '2018-10-13 06:21:25', '0000-00-00 00:00:00'),
(15, 173, 89, 'Po', '', 6, '2018-10-13 06:21:25', '0000-00-00 00:00:00'),
(16, 173, 100, 'htk', '', 1, '2018-10-13 06:21:25', '0000-00-00 00:00:00'),
(17, 175, 91, 'mindii', '', 3, '2018-10-13 06:28:26', '0000-00-00 00:00:00'),
(18, 175, 90, 'jona', '', 4, '2018-10-13 06:28:26', '0000-00-00 00:00:00'),
(19, 175, 371, 'mindii', '', 4, '2018-10-13 06:28:26', '0000-00-00 00:00:00'),
(20, 207, 90, 'conneckting', 'testing', 3, '2018-10-15 09:25:21', '0000-00-00 00:00:00'),
(21, 207, 120, 'seek', 'testing', 2, '2018-10-15 09:50:21', '2018-10-15 09:50:21'),
(22, 207, 94, 'rea', 'test', 0, '2018-10-15 09:32:53', '2018-10-15 09:32:53'),
(23, 249, 92, 'mindiii j', '', 2, '2018-10-17 05:33:28', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_specialization_mapping`
--

CREATE TABLE `user_specialization_mapping` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `specialization_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_specialization_mapping`
--

INSERT INTO `user_specialization_mapping` (`id`, `user_id`, `specialization_id`, `status`, `crd`, `upd`) VALUES
(107, 148, 16, 1, '2018-10-07 02:18:14', '2018-10-14 05:08:26'),
(109, 150, 11, 1, '2018-10-08 05:34:19', '2018-10-08 05:34:19'),
(110, 151, 11, 1, '2018-10-08 05:38:58', '2018-10-08 05:38:58'),
(115, 170, 44, 1, '2018-10-12 14:37:19', '2018-10-12 14:37:19'),
(116, 173, 56, 1, '2018-10-13 05:25:07', '2018-10-13 05:25:07'),
(117, 172, 49, 1, '2018-10-13 05:37:37', '2018-10-13 05:37:37'),
(118, 174, 44, 1, '2018-10-13 05:49:29', '2018-10-13 05:49:29'),
(119, 175, 11, 1, '2018-10-13 06:27:17', '2018-10-13 06:27:17'),
(120, 180, 57, 1, '2018-10-13 08:59:37', '2018-10-13 08:59:37'),
(121, 182, 14, 1, '2018-10-13 09:31:34', '2018-10-13 09:53:14'),
(123, 192, 19, 1, '2018-10-13 11:42:56', '2018-10-13 11:42:56'),
(126, 200, 6, 1, '2018-10-13 12:39:52', '2018-10-13 12:39:52'),
(129, 203, 36, 1, '2018-10-14 04:00:44', '2018-10-14 05:32:54'),
(130, 204, 8, 1, '2018-10-14 04:16:03', '2018-10-14 04:16:03'),
(131, 205, 21, 1, '2018-10-14 07:59:27', '2018-10-14 07:59:27'),
(141, 223, 49, 1, '2018-10-16 10:21:27', '2018-10-16 10:21:27'),
(144, 243, 49, 1, '2018-10-16 15:11:28', '2018-10-16 15:11:28'),
(145, 244, 4, 1, '2018-10-16 20:21:41', '2018-10-16 20:21:41'),
(146, 245, 16, 1, '2018-10-16 20:25:42', '2018-10-16 20:25:42'),
(147, 246, 4, 1, '2018-10-16 20:34:59', '2018-10-16 20:34:59'),
(148, 248, 57, 1, '2018-10-17 05:28:33', '2018-10-17 05:28:33'),
(149, 249, 4, 1, '2018-10-17 05:32:03', '2018-10-17 05:32:03'),
(150, 251, 4, 1, '2018-10-17 08:55:22', '2018-10-17 08:55:22');

-- --------------------------------------------------------

--
-- Table structure for table `user_strength_mapping`
--

CREATE TABLE `user_strength_mapping` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `strength_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_strength_mapping`
--

INSERT INTO `user_strength_mapping` (`id`, `user_id`, `strength_id`, `status`, `crd`, `upd`) VALUES
(153, 151, 132, 1, '2018-10-08 05:38:58', '2018-10-08 05:38:58'),
(154, 151, 53, 1, '2018-10-08 05:38:58', '2018-10-08 05:38:58'),
(155, 151, 52, 1, '2018-10-08 05:38:58', '2018-10-08 05:38:58'),
(159, 170, 53, 1, '2018-10-12 14:37:19', '2018-10-12 14:37:19'),
(166, 172, 53, 1, '2018-10-13 05:37:37', '2018-10-13 05:37:37'),
(173, 174, 53, 1, '2018-10-13 05:56:52', '2018-10-13 05:56:52'),
(174, 174, 108, 1, '2018-10-13 05:56:52', '2018-10-13 05:56:52'),
(175, 174, 114, 1, '2018-10-13 05:56:52', '2018-10-13 05:56:52'),
(204, 203, 132, 1, '2018-10-14 05:32:54', '2018-10-14 05:32:54'),
(205, 203, 62, 1, '2018-10-14 05:32:54', '2018-10-14 05:32:54'),
(206, 203, 99, 1, '2018-10-14 05:32:54', '2018-10-14 05:32:54'),
(219, 243, 51, 1, '2018-10-16 15:11:28', '2018-10-16 15:11:28'),
(220, 246, 52, 1, '2018-10-16 20:34:59', '2018-10-16 20:34:59'),
(221, 248, 51, 1, '2018-10-17 05:28:33', '2018-10-17 05:28:33'),
(222, 249, 54, 1, '2018-10-17 05:32:03', '2018-10-17 05:32:03'),
(223, 175, 129, 1, '2018-10-17 09:25:19', '2018-10-17 09:25:19'),
(224, 175, 108, 1, '2018-10-17 09:25:19', '2018-10-17 09:25:19'),
(225, 175, 114, 1, '2018-10-17 09:25:19', '2018-10-17 09:25:19'),
(228, 173, 129, 1, '2018-10-17 09:32:45', '2018-10-17 09:32:45'),
(229, 223, 51, 1, '2018-10-17 10:15:24', '2018-10-17 10:15:24'),
(230, 223, 132, 1, '2018-10-17 10:15:24', '2018-10-17 10:15:24'),
(231, 223, 50, 1, '2018-10-17 10:15:24', '2018-10-17 10:15:24');

-- --------------------------------------------------------

--
-- Table structure for table `user_value_mapping`
--

CREATE TABLE `user_value_mapping` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_value_mapping`
--

INSERT INTO `user_value_mapping` (`id`, `user_id`, `value_id`, `status`, `crd`, `upd`) VALUES
(167, 151, 35, 1, '2018-10-08 05:38:58', '2018-10-08 05:38:58'),
(168, 151, 6, 1, '2018-10-08 05:38:58', '2018-10-08 05:38:58'),
(169, 151, 41, 1, '2018-10-08 05:38:58', '2018-10-08 05:38:58'),
(173, 170, 8, 1, '2018-10-12 14:37:19', '2018-10-12 14:37:19'),
(180, 172, 6, 1, '2018-10-13 05:37:37', '2018-10-13 05:37:37'),
(187, 174, 8, 1, '2018-10-13 05:56:52', '2018-10-13 05:56:52'),
(188, 174, 6, 1, '2018-10-13 05:56:52', '2018-10-13 05:56:52'),
(189, 174, 41, 1, '2018-10-13 05:56:52', '2018-10-13 05:56:52'),
(219, 203, 34, 1, '2018-10-14 05:32:54', '2018-10-14 05:32:54'),
(220, 203, 12, 1, '2018-10-14 05:32:54', '2018-10-14 05:32:54'),
(221, 203, 49, 1, '2018-10-14 05:32:54', '2018-10-14 05:32:54'),
(234, 243, 21, 1, '2018-10-16 15:11:28', '2018-10-16 15:11:28'),
(235, 246, 31, 1, '2018-10-16 20:34:59', '2018-10-16 20:34:59'),
(236, 248, 6, 1, '2018-10-17 05:28:33', '2018-10-17 05:28:33'),
(237, 249, 43, 1, '2018-10-17 05:32:03', '2018-10-17 05:32:03'),
(238, 175, 43, 1, '2018-10-17 09:25:19', '2018-10-17 09:25:19'),
(239, 175, 37, 1, '2018-10-17 09:25:19', '2018-10-17 09:25:19'),
(240, 175, 39, 1, '2018-10-17 09:25:19', '2018-10-17 09:25:19'),
(243, 173, 35, 1, '2018-10-17 09:32:45', '2018-10-17 09:32:45'),
(244, 223, 8, 1, '2018-10-17 10:15:24', '2018-10-17 10:15:24'),
(245, 223, 34, 1, '2018-10-17 10:15:24', '2018-10-17 10:15:24'),
(246, 223, 51, 1, '2018-10-17 10:15:24', '2018-10-17 10:15:24');

-- --------------------------------------------------------

--
-- Table structure for table `value`
--

CREATE TABLE `value` (
  `valueId` int(11) NOT NULL,
  `valueName` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `value`
--

INSERT INTO `value` (`valueId`, `valueName`, `status`, `crd`, `upd`) VALUES
(1, 'Honesty', 1, '2018-04-20 12:23:12', '2018-04-26 11:10:59'),
(3, 'Peace', 1, '2018-04-20 12:45:52', '2018-04-26 11:10:50'),
(4, 'Loyalty', 1, '2018-04-20 12:46:02', '2018-04-26 11:10:32'),
(6, 'Caring', 1, '2018-05-13 06:20:05', '2018-05-13 06:20:05'),
(7, 'Work Life Balance', 1, '2018-05-13 06:20:29', '2018-05-13 06:20:29'),
(8, 'Authentic', 1, '2018-05-13 06:20:37', '2018-06-21 05:57:21'),
(11, 'Fairness', 1, '2018-05-13 06:21:17', '2018-05-13 06:21:17'),
(12, 'Happiness', 1, '2018-05-13 06:21:25', '2018-05-13 06:21:25'),
(13, 'Growth', 1, '2018-05-13 06:21:32', '2018-05-13 06:21:32'),
(14, 'Fun', 1, '2018-05-13 06:21:44', '2018-05-13 06:21:44'),
(15, 'Humour', 1, '2018-05-13 06:21:53', '2018-05-13 06:21:53'),
(16, 'Kindness', 1, '2018-05-13 06:22:06', '2018-05-13 06:22:06'),
(17, 'Knowledge', 1, '2018-05-13 06:22:12', '2018-05-13 06:22:12'),
(18, 'Learning', 1, '2018-05-13 06:22:21', '2018-05-13 06:22:21'),
(19, 'Transparency', 1, '2018-05-13 06:22:47', '2018-05-13 06:22:47'),
(20, 'Recognition', 1, '2018-05-13 06:22:57', '2018-05-13 06:22:57'),
(21, 'Diversity', 1, '2018-05-13 06:23:11', '2018-05-13 06:23:11'),
(22, 'Equality', 1, '2018-05-13 06:23:20', '2018-05-13 06:23:20'),
(23, 'Respect', 1, '2018-05-13 06:23:28', '2018-05-13 06:23:28'),
(24, 'Integrity', 1, '2018-05-13 06:24:06', '2018-05-13 06:24:06'),
(25, 'Security', 1, '2018-05-13 06:24:20', '2018-05-13 06:24:20'),
(26, 'Responsibility', 1, '2018-05-13 06:24:30', '2018-05-13 06:24:30'),
(27, 'Opinions', 1, '2018-05-13 06:24:39', '2018-05-13 06:24:39'),
(28, 'Reputation', 1, '2018-05-13 06:24:48', '2018-05-13 06:24:48'),
(29, 'Friendships', 1, '2018-05-13 06:25:38', '2018-05-13 06:25:38'),
(30, 'Contribution', 1, '2018-05-13 06:25:47', '2018-05-13 06:25:47'),
(31, 'Authority', 1, '2018-05-13 06:25:58', '2018-06-21 05:57:14'),
(32, 'Acceptance', 1, '2018-05-13 06:31:44', '2018-06-26 09:41:45'),
(33, 'Openness', 1, '2018-05-13 06:33:18', '2018-05-13 06:33:18'),
(34, 'Ambition', 1, '2018-05-13 06:33:31', '2018-06-21 05:57:27'),
(35, 'Bravery', 1, '2018-05-13 06:33:38', '2018-05-13 06:33:38'),
(36, 'Resilience', 1, '2018-05-13 06:33:53', '2018-05-13 06:33:53'),
(37, 'Charity', 1, '2018-05-13 06:34:10', '2018-05-13 06:34:10'),
(39, 'Competence', 1, '2018-05-13 06:34:29', '2018-05-13 06:34:29'),
(41, 'Compassion', 1, '2018-06-13 05:28:00', '2018-06-13 05:28:00'),
(42, 'Curious', 1, '2018-06-21 05:53:50', '2018-06-21 05:53:50'),
(43, 'Career Opportunities', 1, '2018-09-17 03:21:51', '2018-09-17 03:21:51'),
(44, 'Development Opportunities', 1, '2018-09-17 03:22:15', '2018-09-17 03:22:15'),
(45, 'Environment And Culture', 1, '2018-09-17 03:22:27', '2018-09-17 03:22:27'),
(46, 'Social Activities And Events', 1, '2018-09-17 03:22:53', '2018-09-17 03:22:53'),
(47, 'Pay', 1, '2018-09-17 03:23:03', '2018-09-17 03:23:03'),
(48, 'Flexible Working Arrangements', 1, '2018-09-17 03:23:16', '2018-09-17 03:23:16'),
(49, 'Positive Influences', 1, '2018-09-17 03:23:40', '2018-09-17 03:23:40'),
(50, 'Equal Opportunity', 1, '2018-09-17 03:42:56', '2018-09-17 03:42:56'),
(51, 'Fair And Equal Treatment', 1, '2018-09-17 03:43:10', '2018-09-17 03:43:10'),
(52, 'Monetary Incentive', 1, '2018-09-17 03:43:33', '2018-09-17 03:43:33');

-- --------------------------------------------------------

--
-- Table structure for table `view`
--

CREATE TABLE `view` (
  `viewId` int(11) NOT NULL,
  `view_for` int(11) NOT NULL,
  `view_by` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0:Inactive , 1:Active',
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `view`
--

INSERT INTO `view` (`viewId`, `view_for`, `view_by`, `status`, `crd`, `upd`) VALUES
(228, 151, 150, 1, '2018-10-08 06:01:29', '2018-10-15 23:15:13'),
(232, 151, 148, 1, '2018-10-11 09:54:54', '2018-10-15 23:15:13'),
(234, 174, 150, 1, '2018-10-13 05:57:46', '2018-10-16 21:19:37'),
(235, 173, 150, 1, '2018-10-13 06:34:50', '2018-10-17 02:15:54'),
(237, 170, 150, 1, '2018-10-13 08:45:43', '2018-10-16 21:09:13'),
(239, 175, 150, 1, '2018-10-13 10:19:05', '2018-10-17 02:14:06'),
(242, 173, 148, 1, '2018-10-14 03:37:08', '2018-10-17 02:15:54'),
(243, 148, 203, 1, '2018-10-14 04:03:01', '2018-10-17 00:58:05'),
(244, 200, 203, 1, '2018-10-14 04:07:28', '2018-10-16 21:34:51'),
(245, 203, 204, 1, '2018-10-14 04:17:05', '2018-10-17 02:01:19'),
(246, 170, 204, 1, '2018-10-14 04:21:27', '2018-10-16 21:09:13'),
(247, 175, 204, 1, '2018-10-14 04:23:00', '2018-10-17 02:14:06'),
(248, 203, 148, 1, '2018-10-14 05:18:51', '2018-10-17 02:01:19'),
(250, 174, 148, 1, '2018-10-14 08:29:47', '2018-10-16 21:19:37'),
(254, 205, 175, 1, '2018-10-15 09:29:40', '2018-10-17 00:58:02'),
(255, 204, 175, 1, '2018-10-15 09:34:35', '2018-10-15 09:34:35'),
(256, 148, 175, 1, '2018-10-15 09:35:34', '2018-10-17 00:58:05'),
(257, 192, 175, 1, '2018-10-15 09:43:37', '2018-10-15 09:43:37'),
(258, 175, 148, 1, '2018-10-15 09:53:54', '2018-10-17 02:14:06'),
(268, 148, 151, 1, '2018-10-16 08:59:14', '2018-10-17 00:58:05'),
(271, 205, 246, 1, '2018-10-16 20:35:42', '2018-10-17 00:58:02'),
(272, 148, 246, 1, '2018-10-16 20:37:02', '2018-10-17 00:58:05'),
(273, 244, 246, 1, '2018-10-16 20:37:37', '2018-10-17 00:57:59'),
(274, 245, 246, 1, '2018-10-16 20:37:48', '2018-10-17 02:00:31'),
(275, 246, 205, 1, '2018-10-16 20:39:16', '2018-10-17 02:01:33'),
(276, 173, 182, 1, '2018-10-17 05:05:57', '2018-10-17 02:15:54'),
(277, 203, 182, 1, '2018-10-17 05:07:15', '2018-10-17 02:01:19'),
(278, 174, 182, 1, '2018-10-17 05:08:49', '2018-10-16 21:19:37'),
(279, 170, 182, 1, '2018-10-17 05:09:13', '2018-10-17 05:09:13'),
(280, 150, 243, 1, '2018-10-17 05:21:59', '2018-10-16 22:29:16'),
(281, 200, 249, 1, '2018-10-17 05:34:51', '2018-10-17 05:34:51'),
(282, 182, 249, 1, '2018-10-17 05:35:07', '2018-10-17 02:13:30'),
(283, 150, 249, 1, '2018-10-17 05:37:01', '2018-10-16 22:29:16'),
(284, 248, 150, 1, '2018-10-17 05:37:16', '2018-10-17 02:07:06'),
(285, 249, 150, 1, '2018-10-17 05:37:52', '2018-10-16 22:30:55'),
(286, 249, 200, 1, '2018-10-17 05:38:54', '2018-10-16 22:30:55'),
(287, 249, 182, 1, '2018-10-17 05:40:36', '2018-10-16 22:30:55'),
(288, 172, 150, 1, '2018-10-17 07:17:26', '2018-10-17 02:08:51'),
(289, 175, 182, 1, '2018-10-17 08:43:24', '2018-10-17 02:14:06'),
(290, 182, 173, 1, '2018-10-17 09:16:38', '2018-10-17 02:13:30'),
(291, 182, 175, 1, '2018-10-17 09:19:15', '2018-10-17 02:13:30'),
(292, 246, 148, 1, '2018-10-17 10:01:33', '2018-10-17 10:01:33'),
(293, 248, 182, 1, '2018-10-17 10:07:06', '2018-10-17 10:07:06'),
(294, 182, 223, 1, '2018-10-17 10:13:30', '2018-10-17 10:13:30'),
(295, 223, 182, 1, '2018-10-17 10:14:39', '2018-10-17 02:15:42'),
(296, 251, 223, 1, '2018-10-17 10:16:23', '2018-10-17 10:16:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `contactUs`
--
ALTER TABLE `contactUs`
  ADD PRIMARY KEY (`contactUsId`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`favouriteId`),
  ADD KEY `favourite_by` (`favourite_by`),
  ADD KEY `favourite_for` (`favourite_for`);

--
-- Indexes for table `interviews`
--
ALTER TABLE `interviews`
  ADD PRIMARY KEY (`interviewId`),
  ADD KEY `interview_id` (`request_id`);

--
-- Indexes for table `interview_request`
--
ALTER TABLE `interview_request`
  ADD PRIMARY KEY (`requestId`),
  ADD KEY `interview_id` (`interview_id`);

--
-- Indexes for table `job_titles`
--
ALTER TABLE `job_titles`
  ADD PRIMARY KEY (`jobTitleId`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_by` (`notification_by`),
  ADD KEY `notification_for` (`notification_for`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`optionId`);

--
-- Indexes for table `recommends`
--
ALTER TABLE `recommends`
  ADD PRIMARY KEY (`recommendId`),
  ADD KEY `recommend_by` (`recommend_by`),
  ADD KEY `recommend_for` (`recommend_for`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`requestId`),
  ADD KEY `ineterview_by` (`request_by`),
  ADD KEY `interview_for` (`request_for`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`reviewId`),
  ADD KEY `review_for` (`review_for`),
  ADD KEY `review_by` (`review_by`);

--
-- Indexes for table `specializations`
--
ALTER TABLE `specializations`
  ADD PRIMARY KEY (`specializationId`);

--
-- Indexes for table `strengths`
--
ALTER TABLE `strengths`
  ADD PRIMARY KEY (`strengthId`);

--
-- Indexes for table `usermeta`
--
ALTER TABLE `usermeta`
  ADD PRIMARY KEY (`metaID`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `user_job_profile`
--
ALTER TABLE `user_job_profile`
  ADD PRIMARY KEY (`experienceId`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `current_job_title` (`current_job_title`),
  ADD KEY `next_speciality` (`next_speciality`);

--
-- Indexes for table `user_previous_role`
--
ALTER TABLE `user_previous_role`
  ADD PRIMARY KEY (`previousRoleId`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `previous_job_title_id` (`previous_job_title_id`);

--
-- Indexes for table `user_specialization_mapping`
--
ALTER TABLE `user_specialization_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `specialization_id` (`specialization_id`);

--
-- Indexes for table `user_strength_mapping`
--
ALTER TABLE `user_strength_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `strength_id` (`strength_id`);

--
-- Indexes for table `user_value_mapping`
--
ALTER TABLE `user_value_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `value_id` (`value_id`);

--
-- Indexes for table `value`
--
ALTER TABLE `value`
  ADD PRIMARY KEY (`valueId`);

--
-- Indexes for table `view`
--
ALTER TABLE `view`
  ADD PRIMARY KEY (`viewId`),
  ADD KEY `view_by` (`view_by`),
  ADD KEY `view_for` (`view_for`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contactUs`
--
ALTER TABLE `contactUs`
  MODIFY `contactUsId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `favouriteId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `interviews`
--
ALTER TABLE `interviews`
  MODIFY `interviewId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `interview_request`
--
ALTER TABLE `interview_request`
  MODIFY `requestId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_titles`
--
ALTER TABLE `job_titles`
  MODIFY `jobTitleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=982;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=402;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `optionId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `recommends`
--
ALTER TABLE `recommends`
  MODIFY `recommendId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `requestId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `reviewId` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `specializations`
--
ALTER TABLE `specializations`
  MODIFY `specializationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `strengths`
--
ALTER TABLE `strengths`
  MODIFY `strengthId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `usermeta`
--
ALTER TABLE `usermeta`
  MODIFY `metaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `user_job_profile`
--
ALTER TABLE `user_job_profile`
  MODIFY `experienceId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `user_previous_role`
--
ALTER TABLE `user_previous_role`
  MODIFY `previousRoleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user_specialization_mapping`
--
ALTER TABLE `user_specialization_mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `user_strength_mapping`
--
ALTER TABLE `user_strength_mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `user_value_mapping`
--
ALTER TABLE `user_value_mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `value`
--
ALTER TABLE `value`
  MODIFY `valueId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `view`
--
ALTER TABLE `view`
  MODIFY `viewId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favourites`
--
ALTER TABLE `favourites`
  ADD CONSTRAINT `favourites_ibfk_1` FOREIGN KEY (`favourite_for`) REFERENCES `users` (`userId`) ON DELETE CASCADE,
  ADD CONSTRAINT `favourites_ibfk_2` FOREIGN KEY (`favourite_by`) REFERENCES `users` (`userId`) ON DELETE CASCADE;

--
-- Constraints for table `interviews`
--
ALTER TABLE `interviews`
  ADD CONSTRAINT `interviews_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `requests` (`requestId`) ON DELETE CASCADE;

--
-- Constraints for table `interview_request`
--
ALTER TABLE `interview_request`
  ADD CONSTRAINT `interview_request_ibfk_1` FOREIGN KEY (`interview_id`) REFERENCES `interview` (`interviewId`) ON DELETE CASCADE;

--
-- Constraints for table `recommends`
--
ALTER TABLE `recommends`
  ADD CONSTRAINT `recommends_ibfk_1` FOREIGN KEY (`recommend_for`) REFERENCES `users` (`userId`) ON DELETE CASCADE,
  ADD CONSTRAINT `recommends_ibfk_2` FOREIGN KEY (`recommend_by`) REFERENCES `users` (`userId`) ON DELETE CASCADE;

--
-- Constraints for table `requests`
--
ALTER TABLE `requests`
  ADD CONSTRAINT `requests_ibfk_1` FOREIGN KEY (`request_by`) REFERENCES `users` (`userId`) ON DELETE CASCADE,
  ADD CONSTRAINT `requests_ibfk_2` FOREIGN KEY (`request_for`) REFERENCES `users` (`userId`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`review_by`) REFERENCES `users` (`userId`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`review_for`) REFERENCES `users` (`userId`) ON DELETE CASCADE;

--
-- Constraints for table `usermeta`
--
ALTER TABLE `usermeta`
  ADD CONSTRAINT `usermeta_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`userId`) ON DELETE CASCADE;

--
-- Constraints for table `user_job_profile`
--
ALTER TABLE `user_job_profile`
  ADD CONSTRAINT `user_job_profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`userId`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_job_profile_ibfk_3` FOREIGN KEY (`current_job_title`) REFERENCES `job_titles` (`jobTitleId`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_job_profile_ibfk_4` FOREIGN KEY (`next_speciality`) REFERENCES `specializations` (`specializationId`) ON DELETE CASCADE;

--
-- Constraints for table `user_specialization_mapping`
--
ALTER TABLE `user_specialization_mapping`
  ADD CONSTRAINT `user_specialization_mapping_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`userId`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_specialization_mapping_ibfk_2` FOREIGN KEY (`specialization_id`) REFERENCES `specializations` (`specializationId`) ON DELETE CASCADE;

--
-- Constraints for table `user_strength_mapping`
--
ALTER TABLE `user_strength_mapping`
  ADD CONSTRAINT `user_strength_mapping_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`userId`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_strength_mapping_ibfk_2` FOREIGN KEY (`strength_id`) REFERENCES `strengths` (`strengthId`) ON DELETE CASCADE;

--
-- Constraints for table `user_value_mapping`
--
ALTER TABLE `user_value_mapping`
  ADD CONSTRAINT `user_value_mapping_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`userId`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_value_mapping_ibfk_2` FOREIGN KEY (`value_id`) REFERENCES `value` (`valueId`) ON DELETE CASCADE;

--
-- Constraints for table `view`
--
ALTER TABLE `view`
  ADD CONSTRAINT `view_ibfk_1` FOREIGN KEY (`view_by`) REFERENCES `users` (`userId`) ON DELETE CASCADE,
  ADD CONSTRAINT `view_ibfk_2` FOREIGN KEY (`view_for`) REFERENCES `users` (`userId`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
