-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 08, 2026 at 08:01 AM
-- Server version: 8.0.41
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hris_01`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_honors`
--

CREATE TABLE `academic_honors` (
  `id` bigint NOT NULL,
  `academic_honors_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` bigint NOT NULL,
  `brgy` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `landline` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lotno` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `municipality` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `village` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `employee_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` bigint NOT NULL,
  `district` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `eligibility` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `entrance_date` date DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `highest_educ_attainment` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `office_assignment` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `page_no` int NOT NULL,
  `plantilla_no` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `salary_grade` int NOT NULL,
  `signing_date` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status_of_appointment` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status_of_sepeparation` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `step_inc` int NOT NULL,
  `training` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `vice` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `employee_id` bigint DEFAULT NULL,
  `position_title_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `civil_service_eligibility`
--

CREATE TABLE `civil_service_eligibility` (
  `id` bigint NOT NULL,
  `attachment_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `eligibility` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `exam_day` int NOT NULL,
  `exam_month` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `exam_year` int NOT NULL,
  `license_no` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `license_release_date` date DEFAULT NULL,
  `license_validity_date` date DEFAULT NULL,
  `other_eligibility` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `place_of_exam` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rating` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `employee_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clearance`
--

CREATE TABLE `clearance` (
  `id` bigint NOT NULL,
  `address_to` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `effective_date` date DEFAULT NULL,
  `other_purpose` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `purpose` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `trans_date` date DEFAULT NULL,
  `employee_id` bigint DEFAULT NULL,
  `approved_by` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clearance`
--

INSERT INTO `clearance` (`id`, `address_to`, `effective_date`, `other_purpose`, `purpose`, `status`, `trans_date`, `employee_id`, `approved_by`) VALUES
(4, 'CITY GOVERNMENT OF MANILA', '2026-06-01', NULL, 'RESIGNATION', 'DISAPPROVED', '2026-05-24', 3, 'Ian S. Orozco');

-- --------------------------------------------------------

--
-- Table structure for table `clearance_approvers`
--

CREATE TABLE `clearance_approvers` (
  `id` bigint NOT NULL,
  `admin_persona` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `admin_personb` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `admin_personc` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `admin_positiona` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `admin_positionb` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `admin_positionc` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `finance_persona` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `finance_personb` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `finance_personc` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `finance_positiona` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `finance_positionb` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `finance_positionc` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `footer_person1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `footer_person2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `footer_position1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `footer_position2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `head_of_office` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `immediate_supervisor` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `library_persona` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `library_personb` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `library_positiona` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `library_positionb` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `professional_persona` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `professional_positiona` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `section4person` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `section4position` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `competency`
--

CREATE TABLE `competency` (
  `id` bigint NOT NULL,
  `compentency_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `position_title_id` bigint DEFAULT NULL,
  `position_title_competency` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `degree_course`
--

CREATE TABLE `degree_course` (
  `id` bigint NOT NULL,
  `abbreviation` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `degree_course_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_active` bit(1) NOT NULL,
  `is_law_degree` bit(1) NOT NULL,
  `degree_course` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `degree_course`
--

INSERT INTO `degree_course` (`id`, `abbreviation`, `degree_course_name`, `is_active`, `is_law_degree`, `degree_course`) VALUES
(1, NULL, 'NO DEGREE', b'1', b'0', NULL),
(2, NULL, 'AB PHILOSOPHY', b'1', b'0', NULL),
(3, NULL, 'LLB', b'1', b'0', NULL),
(4, NULL, 'LLM', b'1', b'0', NULL),
(5, NULL, 'SECRETARIAL', b'1', b'0', NULL),
(6, NULL, 'A.B. POL. SCIENCE', b'1', b'0', NULL),
(7, NULL, '92 units BS Commerce', b'1', b'0', NULL),
(8, NULL, 'AB POLITICAL SCIENCE', b'1', b'0', NULL),
(9, NULL, 'LLB LAW', b'1', b'0', NULL),
(10, NULL, 'BA ACCOUNTING', b'1', b'0', NULL),
(11, NULL, 'BACHELOR OF SCIENCE IN BUSINESS ADMINISTRATION - BANKING AND FINANCE', b'1', b'0', NULL),
(12, NULL, 'MASTERS IN GOVERNMENT MANAGEMENT', b'1', b'0', NULL),
(13, NULL, 'REFLEXOLOGY & MASSAGE THERAPY', b'1', b'0', NULL),
(14, NULL, 'GRADUATE OF MIDWIFERY', b'1', b'0', NULL),
(15, NULL, 'B.S IN ENTREPRENEURIAL MANAGEMENT', b'1', b'0', NULL),
(16, NULL, 'COMPUTER TECH', b'1', b'0', NULL),
(17, NULL, 'BSBA', b'1', b'0', NULL),
(18, NULL, 'BACHELOR IN SECONDARY EDUCATION MAJOR IN ENGLISH', b'1', b'0', NULL),
(19, NULL, 'COMPUTER SECRETARIAL', b'1', b'0', NULL),
(20, NULL, 'BACHELOR IN BUSINESS EDUCATION', b'1', b'0', NULL),
(21, NULL, 'BS SECRETARIAL ADMINISTRATION', b'1', b'0', NULL),
(22, NULL, 'Master in Government Management', b'1', b'0', NULL),
(23, NULL, 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', b'1', b'0', NULL),
(24, NULL, 'BACHELOR OF LAWS', b'1', b'0', NULL),
(25, NULL, 'MASTERS IN BUSINESS ADMINISTRATION', b'1', b'0', NULL),
(26, NULL, 'BFA - ADVERTISING/ PUBLIC ADMIN', b'1', b'0', NULL),
(27, NULL, 'COMPUTER PROGRAM', b'1', b'0', NULL),
(28, NULL, 'COMPUTER SCIENCE', b'1', b'0', NULL),
(29, NULL, 'MARINE ENGINEERING', b'1', b'0', NULL),
(30, NULL, 'BACHELOR OF SCIENCE IN NURSING', b'1', b'0', NULL),
(31, NULL, 'PROFESSIONAL TEACHING EDUCATION', b'1', b'0', NULL),
(32, NULL, 'MASTERS IN PUBLIC ADMINISTRATION', b'1', b'0', NULL),
(33, NULL, 'BACHELOR OF PHYSICAL EDUCATION', b'1', b'0', NULL),
(34, NULL, 'SECRETARIAL COURSE', b'1', b'0', NULL),
(35, NULL, 'BACHELOR OF SCIENCE  IN BUSINESS ADMINISTRATION MAJOR IN MARKETING', b'1', b'0', NULL),
(36, NULL, 'COMPUTER PROGRAMMING', b'1', b'0', NULL),
(37, NULL, 'High School Graduate', b'1', b'0', NULL),
(38, NULL, 'BACHELOR OF SCIENCE COMMERCE MANAGEMENT', b'1', b'0', NULL),
(39, NULL, 'Business Administration Major in Management', b'1', b'0', NULL),
(40, NULL, 'BACHELOR OF ARTS', b'1', b'0', NULL),
(41, NULL, 'BACHELOR OF ARTS - PHILOSOPHY', b'1', b'0', NULL),
(42, NULL, 'BACHELOR OF SCIENCE IN ELEC. ENGR', b'1', b'0', NULL),
(43, NULL, 'BACHELOR OF SCIENCE IN MARINE TRANSPORTATION', b'1', b'0', NULL),
(44, NULL, 'BS - Computer Science', b'1', b'0', NULL),
(45, NULL, 'BSBA - Management', b'1', b'0', NULL),
(46, NULL, 'MARINE COURSE', b'1', b'0', NULL),
(47, NULL, 'BSPA', b'1', b'0', NULL),
(48, NULL, '184 units AB Fine Arts', b'1', b'0', NULL),
(49, NULL, 'BACHELOR OF SCIENCE IN COMMERCE MAJORING IN ACCOUNTING', b'1', b'0', NULL),
(50, NULL, 'BS COMPUTER SCIENCE', b'1', b'0', NULL),
(51, NULL, 'BS RESPIRATORY THERAPY', b'1', b'0', NULL),
(52, NULL, 'ISO 9000', b'1', b'0', NULL),
(53, NULL, 'PUBLIC ADMINISTRATION', b'1', b'0', NULL),
(54, NULL, 'MASTERS IN MANAGEMENT MAJOR IN PUBLIC ADMINISTRATION', b'1', b'0', NULL),
(55, NULL, 'ECOMMERCE', b'1', b'0', NULL),
(56, NULL, 'BSC BANKING & FINANCE', b'1', b'0', NULL),
(57, NULL, 'BACHELOR OF SCIENCE IN INFORMATION TECHNOLOGY', b'1', b'0', NULL),
(58, NULL, '42 units BSIT', b'1', b'0', NULL),
(59, NULL, 'SIT - ELECTRONIC', b'1', b'0', NULL),
(60, NULL, 'BACHELOR IN PUBLIC ADMINISTRATION', b'1', b'0', NULL),
(61, NULL, 'COMPUTER APPLICATIONS', b'1', b'0', NULL),
(62, NULL, 'BUSINESS ADMINISTRATION MAJOR IN COMPUTER APPLICATION', b'1', b'0', NULL),
(63, NULL, 'BASIC BOOK KEEPING AND ACCOUNTING', b'1', b'0', NULL),
(64, NULL, 'BACHELOR OF ARTS MAJOR IN POLITICAL SCIENCE', b'1', b'0', NULL),
(65, NULL, 'BS MANUFACTURING ENGINEERING', b'1', b'0', NULL),
(66, NULL, 'Computer Technology', b'1', b'0', NULL),
(67, NULL, 'BACHELOR OF BUSINESS MANAGEMENT', b'1', b'0', NULL),
(68, NULL, 'JURIS DOCTOR', b'1', b'0', NULL),
(69, NULL, 'MASTER OF BUSINESS ADMINISTRATION', b'1', b'0', NULL),
(70, NULL, 'MASTERS PROGRAM IN INTERNATIONAL HEALTH', b'1', b'0', NULL),
(71, NULL, 'MASTER OF LAWS', b'1', b'0', NULL),
(72, NULL, 'Bachelor in Fine Arts', b'1', b'0', NULL),
(73, NULL, 'BACHELOR OF ARTS MAJOR IN COMMUNICATION ARTS', b'1', b'0', NULL),
(74, NULL, 'MASTER IN PUBLIC MANAGEMENT AND GOVERNANCE', b'1', b'0', NULL),
(75, NULL, 'B.S. PSYCHOLOGY', b'1', b'0', NULL),
(76, NULL, 'BS PSYCHOLOGY', b'1', b'0', NULL),
(77, NULL, 'BACHELOR IN BROADCAST COMMUNICAION', b'1', b'0', NULL),
(78, NULL, 'BACHELOR OF SCIENCE IN RADIOLOGIC TECHNOLOGY', b'1', b'0', NULL),
(79, NULL, 'JUNIOR SECRETARIAL COURSE', b'1', b'0', NULL),
(80, NULL, 'BACHELOR OF SCIENCE IN OFFICE ADMINISTRATION', b'1', b'0', NULL),
(81, NULL, 'BS MEDICAL TECHNOLOGY', b'1', b'0', NULL),
(82, NULL, 'MATERIAL IN PUBLIC ADMINISTRATION', b'1', b'0', NULL),
(83, NULL, 'B.S. C-ACCOUNTING', b'1', b'0', NULL),
(84, NULL, 'BACHELOR IN PUBLIC ADMIN', b'1', b'0', NULL),
(85, NULL, 'Associate in Computer Technology', b'1', b'0', NULL),
(86, NULL, 'BACHELOR  OF SCIENCE BANKING AND FINANCE', b'1', b'0', NULL),
(87, NULL, 'CAREGIVER', b'1', b'0', NULL),
(88, NULL, 'BSOA - OFFICE MANAGEMENT', b'1', b'0', NULL),
(89, NULL, 'SHIELDED METAL ARC WELDING NCII', b'1', b'0', NULL),
(90, NULL, 'BS IN COMPUTER SCIENCE', b'1', b'0', NULL),
(91, NULL, 'ELECTRONICS TECHNICIAN', b'1', b'0', NULL),
(92, NULL, 'ADULT COMPUTER LITERACY', b'1', b'0', NULL),
(93, NULL, 'BACHELOR OF SCIENCE IN BUSINESS ADMIN. MAJOR IN BANKING & FINANCE', b'1', b'0', NULL),
(94, NULL, 'BACHELOR OF SCIENCE IN COMMERCE', b'1', b'0', NULL),
(95, NULL, 'Master in Public Management & Governance', b'1', b'0', NULL),
(96, NULL, 'A.B POLITICAL SCIENCE', b'1', b'0', NULL),
(97, NULL, 'BACHELOR OF LAW', b'1', b'0', NULL),
(98, NULL, 'BACHELOR OF FINE ARTS', b'1', b'0', NULL),
(99, NULL, 'MASTER IN PUBLIC ADMINISTRATION', b'1', b'0', NULL),
(100, NULL, 'COMPUTER SYSTEM DESIGN AND PROGRAMMING', b'1', b'0', NULL),
(101, NULL, 'VOCATIONAL', b'1', b'0', NULL),
(102, NULL, 'B.S. COMPUTER SCIENCE', b'1', b'0', NULL),
(103, NULL, 'NUTRITION & FOOD TECHNOLOGY', b'1', b'0', NULL),
(104, NULL, 'INFORMATICS COLLEGE - MANILA', b'1', b'0', NULL),
(105, NULL, 'BACHELOR OF SCIENCE MAJOR IN MANAGEMENT ACCOUNTING', b'1', b'0', NULL),
(106, NULL, 'BACHELOR OF ARTS IN JOURNALISM', b'1', b'0', NULL),
(107, NULL, 'B.S.B.A MAJOR IN MANAGEMENT', b'1', b'0', NULL),
(108, NULL, 'REFRIGERATION & AIRCON TECHNICIAN', b'1', b'0', NULL),
(109, NULL, 'BACHELOR OF SCIENCE IN MEDICAL TECHNOLOGY', b'1', b'0', NULL),
(110, NULL, 'MASTERAL - PUBLIC ADMINISTRATION', b'1', b'0', NULL),
(111, NULL, 'PROFESSIONAL EDUCATION', b'1', b'0', NULL),
(112, NULL, 'BACHELOR OF SCIENCE IN BUSINESS ADMINISTRATION - MAJOR IN BANKING AND FINANCE', b'1', b'0', NULL),
(113, NULL, 'MASTER IN PUBLIC MANAGEMENT AND GOVERNANCE (MPMG)', b'1', b'0', NULL),
(114, NULL, 'BASIC STENOGRAPHY', b'1', b'0', NULL),
(115, NULL, 'BSC ACCOUNTING', b'1', b'0', NULL),
(116, NULL, 'BS Nursing', b'1', b'0', NULL),
(117, NULL, 'BASIC COMPUTER TRAINING', b'1', b'0', NULL),
(118, NULL, 'BACHELOR OF SCIENCE IN CIVIL ENGINEERING', b'1', b'0', NULL),
(119, NULL, 'MASTERAL IN CUSTOMS ADMINISTRATION', b'1', b'0', NULL),
(120, NULL, 'SMAW NC II', b'1', b'0', NULL),
(121, NULL, 'BSC - ACCTG', b'1', b'0', NULL),
(122, NULL, 'BS ACCOUNTING', b'1', b'0', NULL),
(123, NULL, 'B.S CRIMINOLOGY', b'1', b'0', NULL),
(124, NULL, 'MASTER OF SCIENCE IN CRIMINAL JUSTICE W/ SPECIALIZATION IN CRIMINOLOGY', b'1', b'0', NULL),
(125, NULL, '2 YEAR ASSOCIATE DEGREE IN NETWORKING AND TELECOMMUNICATION TECHNOLOGY', b'1', b'0', NULL),
(126, NULL, 'COMPUTER SCIENCE IN INDUSTRIAL TECHNOLOGY', b'1', b'0', NULL),
(127, NULL, 'BACHELOR OF EDUCATION WITH SPECIALIZATION IN PRE - SCHOOL', b'1', b'0', NULL),
(128, NULL, 'BACHELOR OF SCIENCE IN TOURISM MANAGEMENT', b'1', b'0', NULL),
(129, NULL, 'NATIONAL CERTIFICATE ON DRESS MAKING', b'1', b'0', NULL),
(130, NULL, 'AB MASS COMMUNICATION', b'1', b'0', NULL),
(131, NULL, 'BSBA  MAJOR IN LEGAL MANAGEMENT', b'1', b'0', NULL),
(132, NULL, 'BSBA MAJOR IN ACCOUNTANCY', b'1', b'0', NULL),
(133, NULL, 'BACHELOR IN OFFICE ADMINISTRATION', b'1', b'0', NULL),
(134, NULL, 'MASTERS IN PUBLIC MANAGEMENT AND GOVERNANCE', b'1', b'0', NULL),
(135, NULL, 'BACHELOR OF SCIENCE IN COMMERCE MAJOR IN BANKING AND FINANCE', b'1', b'0', NULL),
(136, NULL, 'BASIC COMPUTER', b'1', b'0', NULL),
(137, NULL, 'BS MATH', b'1', b'0', NULL),
(138, NULL, 'MAT MATH', b'1', b'0', NULL),
(139, NULL, 'DOCTORATE IN EDUCATION MANAGEMENT', b'1', b'0', NULL),
(140, NULL, 'BS MATHEMATICS MINOR IN COMPUTER SCIENCE', b'1', b'0', NULL),
(141, NULL, 'MASTER OF SCIENCE IN MATHEMATICS', b'1', b'0', NULL),
(142, NULL, 'BASIC PROGRAMMING & WIN. 98', b'1', b'0', NULL),
(143, NULL, 'BACHELOR OF SCIENCE IN BUSINESS ADMINISTRATION', b'1', b'0', NULL),
(144, NULL, 'BACHELOR OF PUBLIC ADMINISTRATION', b'1', b'0', NULL),
(145, NULL, 'B.S MARINE ENGINEERING', b'1', b'0', NULL),
(146, NULL, 'BS CHEMICAL ENGINEERING', b'1', b'0', NULL),
(147, NULL, 'GENERAL SECRETARIAL', b'1', b'0', NULL),
(148, NULL, 'B.S IN BUSINESS EDUCATION', b'1', b'0', NULL),
(149, NULL, 'BS PUBLIC ADMINISTRATION', b'1', b'0', NULL),
(150, NULL, 'BASIC AND ADVANCE COMPUTER LITERACY', b'1', b'0', NULL),
(151, NULL, 'BACHELOR OF SCIENCE IN CUSTOMS ADMINISTRATION', b'1', b'0', NULL),
(152, NULL, 'DATA ENCODER, COMPUTER MAINTENANCE', b'1', b'0', NULL),
(153, NULL, 'B.S CUSTOMS ADMINISTRATION', b'1', b'0', NULL),
(154, NULL, 'NO DEGREE/COURSE', b'1', b'0', NULL),
(155, NULL, 'ACCESS 2003', b'1', b'0', NULL),
(156, NULL, 'AUTOCAD 2007', b'1', b'0', NULL),
(157, NULL, 'BS C.E.', b'1', b'0', NULL),
(158, NULL, '36 units Master in Government Management', b'1', b'0', NULL),
(159, NULL, 'BSBA - BANGKING AND FINANCE', b'1', b'0', NULL),
(160, NULL, 'VOCATIONAL-GENERAL CLERICAL', b'1', b'0', NULL),
(161, NULL, 'ENTREPRENEURAL MANAGEMENT', b'1', b'0', NULL),
(162, NULL, 'BACHELOR IN LIBRARY & INFORMATION SCIENCE', b'1', b'0', NULL),
(163, NULL, 'BACHELOR OF SCIENCE MAJOR IN MATH', b'1', b'0', NULL),
(164, NULL, '161 units Bachelor in Business Education', b'1', b'0', NULL),
(165, NULL, 'Junior Secretarial', b'1', b'0', NULL),
(166, NULL, 'BBA-Business Management', b'1', b'0', NULL),
(167, NULL, 'Marine Transportation', b'1', b'0', NULL),
(168, NULL, 'BSBA Management', b'1', b'0', NULL),
(169, NULL, 'Doctor of Medicine', b'1', b'0', NULL),
(170, NULL, 'Master in Business Administration', b'1', b'0', NULL),
(171, NULL, 'BS Dentistry', b'1', b'0', NULL),
(172, NULL, 'BS in Chemical Engineering', b'1', b'0', NULL),
(173, NULL, 'BS in Business Administration', b'1', b'0', NULL),
(174, NULL, 'Bachelor of Science n Medical Technology', b'1', b'0', NULL),
(175, NULL, 'BSFS', b'1', b'0', NULL),
(176, NULL, 'BS Tourism', b'1', b'0', NULL),
(177, NULL, 'BSC Economics', b'1', b'0', NULL),
(178, NULL, 'AB Organizational Communication', b'1', b'0', NULL),
(179, NULL, 'Doctor of Dental Medicine', b'1', b'0', NULL),
(180, NULL, 'Medicine', b'1', b'0', NULL),
(181, NULL, 'Bachelor of Law Public Administration', b'1', b'0', NULL),
(182, NULL, 'LLB/Master in Public administration', b'1', b'0', NULL),
(183, NULL, 'Master of Marketing Communications', b'1', b'0', NULL),
(184, NULL, 'Bachelor of Arts major in Human Resource Mgt.', b'1', b'0', NULL),
(185, NULL, 'BS Commerce major in MarketingManagement', b'1', b'0', NULL),
(186, NULL, 'BS Management', b'1', b'0', NULL),
(187, NULL, 'Communication Technician (Undergraduate)', b'1', b'0', NULL),
(188, NULL, 'Bachelor of Fine Arts major in Advertising', b'1', b'0', NULL),
(189, NULL, 'BSBA major in Management', b'1', b'0', NULL),
(190, NULL, 'BS Biology major in Medical Biology (Undergraduate)', b'1', b'0', NULL),
(191, NULL, 'AB TOURISM', b'1', b'0', NULL),
(192, NULL, 'SENIOR HIGH SCHOOL', b'1', b'0', NULL),
(193, NULL, 'ASSOCIATE IN COMPUTER SCIENCE', b'1', b'0', NULL),
(194, NULL, '126 UNITS BS AIRCRAFT MAINTENANCE & TECH.', b'1', b'0', NULL),
(195, NULL, '63 UNITS BSBA', b'1', b'0', NULL),
(196, NULL, 'ASSOCIATE MARINE TRANSPORTATION', b'1', b'0', NULL),
(197, NULL, 'BS MAJOR IN ECONOMICS', b'1', b'0', NULL),
(198, NULL, 'HRIM-CULINARY ARTS', b'1', b'0', NULL),
(199, NULL, 'BS MED TECH', b'1', b'0', NULL),
(200, NULL, '72 UNITS BSBA', b'1', b'0', NULL),
(201, NULL, 'AB CONSULAR & DIPLOMATIC AFFAIRS', b'1', b'0', NULL),
(202, NULL, 'BS IN HOSPITALITY MANAGEMENT', b'1', b'0', NULL),
(203, NULL, 'BS INTERNATIONAL HOSPITALITY MANAGEMENT', b'1', b'0', NULL),
(204, NULL, 'BUSINESS INFORMATION SYSTEM MANAGEMENT', b'1', b'0', NULL),
(205, NULL, 'BS IN SOCIAL WORK', b'1', b'0', NULL),
(206, NULL, 'BS PHYSICAL THERAPY PROFESSIONAL EDUCATION', b'1', b'0', NULL),
(207, NULL, '121 UNITS BS IN SECONDARY EDUCATION', b'1', b'0', NULL),
(208, NULL, 'BEAUTY CARE (VOCATIONAL)', b'1', b'0', NULL),
(209, NULL, 'BS IN MARINE TRANSPORTATION', b'1', b'0', NULL),
(210, NULL, 'BS PHYSICAL THERAPY', b'1', b'0', NULL),
(211, NULL, '72 UNITS BACHELOR OF INDUSTRIAL TECHNOLOGY', b'1', b'0', NULL),
(212, NULL, 'BASIC SEAMAN', b'1', b'0', NULL),
(213, NULL, 'AB HUMANITIES', b'1', b'0', NULL),
(214, NULL, 'BS MARKETING MANAGEMENT', b'1', b'0', NULL),
(215, NULL, 'BSC BUSINESS MANAGEMENT', b'1', b'0', NULL),
(216, NULL, 'AB FASHION DESIGN AND MERCHANDISING', b'1', b'0', NULL),
(217, NULL, 'BS COMMERCE', b'1', b'0', NULL),
(218, NULL, 'BS CIVIL ENGINEERING', b'1', b'0', NULL),
(219, NULL, 'BS MANAGEMENT MAJOR IN COMTECH 2014', b'1', b'0', NULL),
(220, NULL, 'BS HOSPITALITY, RESTAURANT & INSTITUTION MANAGEMENT', b'1', b'0', NULL),
(221, NULL, 'BS COMMERCE MAJOR IN MANAGEMENT', b'1', b'0', NULL),
(222, NULL, '48 UNITS BS MARKETING (UNDERGRADUATE)', b'1', b'0', NULL),
(223, NULL, 'BACHELOR OF SCIENCE IN CUSTOMS  ADMINISTRATION', b'1', b'0', NULL),
(224, NULL, 'BS PHARMACY', b'1', b'0', NULL),
(225, NULL, 'BS IN FOREIGN SERVICE MAJOR IN INTERNATIONAL TRADE', b'1', b'0', NULL),
(226, NULL, 'BS COMMERCE MAJOR IN MARKETING', b'1', b'0', NULL),
(227, NULL, 'ASSOCIATE IN COMPUTER PROGRAMMING', b'1', b'0', NULL),
(228, NULL, 'COMPUTER NETWORKING (UNDERGRADUATE)', b'1', b'0', NULL),
(229, NULL, 'AIRCRAFT MECHANIC (UNDERGRADUATE)', b'1', b'0', NULL),
(230, NULL, 'MECHANICAL ENGINEERING (UNDERGRADUATE)', b'1', b'0', NULL),
(231, NULL, 'BS IN MECHANICAL ENGINEERING', b'1', b'0', NULL),
(232, NULL, 'HIGH SCHOOL (UNDERGRADUATE)', b'1', b'0', NULL),
(233, NULL, 'BUSINESS ENTREPRENEURSHIP', b'1', b'0', NULL),
(234, NULL, 'BS IN INFORMATION TECHNOLOGY', b'1', b'0', NULL),
(235, NULL, '106 UNITS BS ARCHITECTURE', b'1', b'0', NULL),
(236, NULL, '172 UNITS MEDICAL SECRETARY', b'1', b'0', NULL),
(237, NULL, 'BS MANAGEMENT MAJOR IN MARKETING', b'1', b'0', NULL),
(238, NULL, 'BS IN DENTAL MEDICINE', b'1', b'0', NULL),
(239, NULL, 'MULTI-MEDIA ARTS (UNDERGRADUATE)', b'1', b'0', NULL),
(240, NULL, 'MBA-TEP', b'1', b'0', NULL),
(241, NULL, '72 UNITS BS MARKETING', b'1', b'0', NULL),
(242, NULL, 'BS ACCOUNTANCY', b'1', b'0', NULL),
(243, NULL, 'BS MANAGEMENT ENGINEERING', b'1', b'0', NULL),
(244, NULL, 'BS IN EDUCATION', b'1', b'0', NULL),
(245, NULL, 'BSTM', b'1', b'0', NULL),
(246, NULL, 'EXECUTIVE SECRETARIAL', b'1', b'0', NULL),
(247, NULL, '30 UNITS CIVIL ENGINEER', b'1', b'0', NULL),
(248, NULL, 'BS ARCHITECTURE', b'1', b'0', NULL),
(249, NULL, 'BS ELECTRICAL ENGINEERING', b'1', b'0', NULL),
(250, NULL, 'HOTEL & RESTAURANT SERVICES', b'1', b'0', NULL),
(251, NULL, '165 UNITS BSBA MANAGEMENT', b'1', b'0', NULL),
(252, NULL, '84 UNITS INDUSTRIAL PSYCHOLOGY', b'1', b'0', NULL),
(253, NULL, '3RD YEAR HIGH SCHOOL', b'1', b'0', NULL),
(254, NULL, '60 UNITS BS HRM', b'1', b'0', NULL),
(255, NULL, '2ND YEAR HIGH SCHOOL', b'1', b'0', NULL),
(256, NULL, '111 UNITS COMPUTER ENGINEER', b'1', b'0', NULL),
(257, NULL, '117 UNITS BUSINESS TEACHER EDUCATION', b'1', b'0', NULL),
(258, NULL, 'BUSINESS ADMINISTRATION IN COMPUTER APPLICATION', b'1', b'0', NULL),
(259, NULL, 'BS MARINE TRANSPORTATION', b'1', b'0', NULL),
(260, NULL, 'BS BUSINESS MARKETING', b'1', b'0', NULL),
(261, NULL, 'COMPUTER PROGRAMMER', b'1', b'0', NULL),
(262, NULL, 'BS TOURISM MANAGEMENT', b'1', b'0', NULL),
(263, NULL, 'BACHELOR OF SCIENCE IN SPORTS SCIENCE', b'1', b'0', NULL),
(264, NULL, 'TOURISM', b'1', b'0', NULL),
(265, NULL, 'BS MAJOR IN FLYING (UNDERGRADUATE)', b'1', b'0', NULL),
(266, NULL, 'BS IN HOTEL & MANAGEMENT', b'1', b'0', NULL),
(267, NULL, 'BUSINESS ADMINISTRATION MAJOR IN COMPUTER SCIENCE', b'1', b'0', NULL),
(268, NULL, 'HOTEL AND RESTAURANT SERVICE', b'1', b'0', NULL),
(269, NULL, 'BSBA MAJOR IN MARKETING MANAGEMENT', b'1', b'0', NULL),
(270, NULL, 'BACHELOR OF SECONDARY EDUCATION', b'1', b'0', NULL),
(271, NULL, 'BACHELOR IN COOPERATIVE', b'1', b'0', NULL),
(272, NULL, 'ASSOCIATE MARINE ENGINEERING', b'1', b'0', NULL),
(273, NULL, '56 UNITS COMPUTER SCIENCE', b'1', b'0', NULL),
(274, NULL, 'BS MIDWIFERY', b'1', b'0', NULL),
(275, NULL, 'SENIOR HS GRADUATE', b'1', b'0', NULL),
(276, NULL, 'MARKETING MANAGEMENT', b'1', b'0', NULL),
(277, NULL, 'BS INFORMATION TECHNOLOGY', b'1', b'0', NULL),
(278, NULL, 'BS MAJOR IN MARKETING', b'1', b'0', NULL),
(279, NULL, 'BS IN INDUSTRIAL TECHNOLOGY', b'1', b'0', NULL),
(280, NULL, '1ST YEAR HIGH SCHOOL', b'1', b'0', NULL),
(281, NULL, 'BIT IN FOOD TECH', b'1', b'0', NULL),
(282, NULL, 'BSBA BANKING & FINANCE', b'1', b'0', NULL),
(283, NULL, 'BS ENTREPRENEURSHIP', b'1', b'0', NULL),
(284, NULL, 'BS SECONDARY EDUCATION', b'1', b'0', NULL),
(285, NULL, 'BSBA ECONOMICS', b'1', b'0', NULL),
(286, NULL, 'BS POLITICAL SCIENCE', b'1', b'0', NULL),
(287, NULL, 'BS ELEMENTARY EDUCATION', b'1', b'0', NULL),
(288, NULL, 'ASSOCIATE COMPUTER TECH.', b'1', b'0', NULL),
(289, NULL, 'MIDWIFERY 84 UNITS', b'1', b'0', NULL),
(290, NULL, '21 UNITS BS MASS COMMUNICATION', b'1', b'0', NULL),
(291, NULL, 'BS FOREIGN SERVICE', b'1', b'0', NULL),
(292, NULL, 'INFORMATION TECHNOLOGY', b'1', b'0', NULL),
(293, NULL, 'MASTER IN PUBLIC MGMT. & GOVERNANCE', b'1', b'0', NULL),
(294, NULL, 'COMMERCE', b'1', b'0', NULL),
(295, NULL, '42 UNITS BS ACCOUNTANCY', b'1', b'0', NULL),
(296, NULL, 'BS CUSTOM ADMINISTRATION', b'1', b'0', NULL),
(297, NULL, 'BS HRM', b'1', b'0', NULL),
(298, NULL, 'BS ECONOMICS', b'1', b'0', NULL),
(299, NULL, 'BS NURSING (UNDERGRADUATE)', b'1', b'0', NULL),
(300, NULL, 'BS MATHEMATICS', b'1', b'0', NULL),
(301, NULL, 'BS IN BUSINESS MANAGEMENT', b'1', b'0', NULL),
(302, NULL, 'BS MARINE ENGINEERING', b'1', b'0', NULL),
(303, NULL, '105 UNITS BS MATHEMATICS', b'1', b'0', NULL),
(304, NULL, '126 UNITS COMPUTER MANAGEMENT', b'1', b'0', NULL),
(305, NULL, 'BSBA MARKETING', b'1', b'0', NULL),
(306, NULL, 'BS HOTEL & RESTAURANT MANAGEMENT', b'1', b'0', NULL),
(307, NULL, 'BS MECHANICAL ENGINEERING', b'1', b'0', NULL),
(308, NULL, '3RD YEAR INFORMATION TECHNOLOGY', b'1', b'0', NULL),
(309, NULL, 'BS PSYCHOLOGY (UNDERGRADUATE)', b'1', b'0', NULL),
(310, NULL, '3RD YEAR ENTREPRENEURSHIP', b'1', b'0', NULL),
(311, NULL, 'COMMERCE (UNDERGRADUATE)', b'1', b'0', NULL),
(312, NULL, 'BSBA MANAGEMENT INFORMATION SYSTEM', b'1', b'0', NULL),
(313, NULL, 'MEDICAL CENTER (UNDERGRADUATE)', b'1', b'0', NULL),
(314, NULL, 'BS HRM (UNDERGRADUATE)', b'1', b'0', NULL),
(315, NULL, 'SOCIAL WORK', b'1', b'0', NULL),
(316, NULL, '85 UNITS BS ELECTRONIC ENGINEERING', b'1', b'0', NULL),
(317, NULL, '153 UNITS BS COMPUTER SCIENCE', b'1', b'0', NULL),
(318, NULL, '79 UNITSBS SECRETARIAL ADMINISTRATION', b'1', b'0', NULL),
(319, NULL, 'BS IN CUSTOM ADMINISTRATION', b'1', b'0', NULL),
(320, NULL, 'INFORMATION SYSTEM', b'1', b'0', NULL),
(321, NULL, 'MIDWIFERY', b'1', b'0', NULL),
(322, NULL, 'BSC MARKETING', b'1', b'0', NULL),
(323, NULL, 'BSBA MARKETING MANAGEMENT', b'1', b'0', NULL),
(324, NULL, '48 UNITS BANKING & FINANCE', b'1', b'0', NULL),
(325, NULL, 'BS IN ELECTRONICS & COMM. ENGINEERING', b'1', b'0', NULL),
(326, NULL, 'BACHELOR OF ARTS IN LEGAL MANAGEMENT', b'1', b'0', NULL),
(327, NULL, '65 UNITS BS MECHANICAL ENGINEERING', b'1', b'0', NULL),
(328, NULL, 'BS SECRETARIAT', b'1', b'0', NULL),
(329, NULL, 'BS IN FINANCE ADMINISTRATION', b'1', b'0', NULL),
(330, NULL, 'BS IN BUISNESS ADMINISTRATION', b'1', b'0', NULL),
(331, NULL, 'BS OFFICE ADMINISTRATION', b'1', b'0', NULL),
(332, NULL, 'BSBA MAJOR IN FINANCIAL ACCOUNTING', b'1', b'0', NULL),
(333, NULL, '120 UNITS BS CRIMINOLOGY', b'1', b'0', NULL),
(334, NULL, 'INTERNATIONAL TOURISM & HOSPITALITY MANAGEMENT', b'1', b'0', NULL),
(335, NULL, 'BS IN COMMERCE', b'1', b'0', NULL),
(336, NULL, 'HOTEL & RESTAURANT MANAGEMENT', b'1', b'0', NULL),
(337, NULL, 'BUSINESS ADMINISTRATION', b'1', b'0', NULL),
(338, NULL, 'BSBA MAJOR IN MARKETING', b'1', b'0', NULL),
(339, NULL, '92 UNITS BS IN BUSINESS ADMINISTRATION', b'1', b'0', NULL),
(340, NULL, 'ASSOCIATE IT GRADUATE', b'1', b'0', NULL),
(341, NULL, 'BS IN HOTEL & RESTAURANT MANAGEMENT', b'1', b'0', NULL),
(342, NULL, 'BS IN TOURISM MANAGEMENT', b'1', b'0', NULL),
(343, NULL, 'BS SOCIAL WORK', b'1', b'0', NULL),
(344, NULL, 'COMPUTER SCIENCE (UNDERGRADUATE)', b'1', b'0', NULL),
(345, NULL, 'ELECTRONICS & COMMUNICATION ENGINEERING', b'1', b'0', NULL),
(346, NULL, 'BS MANAGEMENT (UNDERGRADUATE)', b'1', b'0', NULL),
(347, NULL, 'BS  NURSING', b'1', b'0', NULL),
(348, NULL, 'COSMETOLOGY (VOCATIONAL)', b'1', b'0', NULL),
(349, NULL, 'BSBA EXPORT MANAGEMENT', b'1', b'0', NULL),
(350, NULL, 'DRESSMAKING (VOCATIONAL)', b'1', b'0', NULL),
(351, NULL, '48 UNITS INFORMATION TECHNOLOGY', b'1', b'0', NULL),
(352, NULL, 'BSBA BUSINESS MANAGEMENT', b'1', b'0', NULL),
(353, NULL, 'INFORMATION TECH. (UNDRGRADUATE)', b'1', b'0', NULL),
(354, NULL, 'BS INFORMATION TECH. (UNDERGRADUATE)', b'1', b'0', NULL),
(355, NULL, 'BS INDUSTRIAL TECH', b'1', b'0', NULL),
(356, NULL, 'BS ELEMENTARY EDUCATION (UNDERGRADUATE)', b'1', b'0', NULL),
(357, NULL, '179 UNITS BS NUTRITION DIETETICS', b'1', b'0', NULL),
(358, NULL, 'BS COMMERCE (UNDERGRADUATE)', b'1', b'0', NULL),
(359, NULL, '87 UNITS BS COMPUTER SCIENCE', b'1', b'0', NULL),
(360, NULL, 'BS IN PSYCHOLOGY', b'1', b'0', NULL),
(361, NULL, '65 UNITS BS CRIMINOLOGY', b'1', b'0', NULL),
(362, NULL, 'BSHM - CULINARY ARTS & TECH.', b'1', b'0', NULL),
(363, NULL, 'BS ELECTRONIC ENGINEERING', b'1', b'0', NULL),
(364, NULL, 'BSHRM', b'1', b'0', NULL),
(365, NULL, 'FOOD & BEVERAGES (VOCATIONAL)', b'1', b'0', NULL),
(366, NULL, 'AB MANAGEMENT HUMAN RESOURCE', b'1', b'0', NULL),
(367, NULL, 'BSC BUISNESS MANAGEMENT', b'1', b'0', NULL),
(368, NULL, 'BS CHEMISTRY', b'1', b'0', NULL),
(369, NULL, 'DENTISTRY', b'1', b'0', NULL),
(370, NULL, 'ARCHITECTURE TECHNOLOGY', b'1', b'0', NULL),
(371, NULL, 'BS HOTEL & RESTAURANT MNGT. (UNDERGRADUATE)', b'1', b'0', NULL),
(372, NULL, 'CONSULAR & DIPLOMATIC AFFAIRS', b'1', b'0', NULL),
(373, NULL, 'BS MICROBIOLOGY', b'1', b'0', NULL),
(374, NULL, 'BSCS AIRLINE OPERATION PROCEDURE', b'1', b'0', NULL),
(375, NULL, 'BS ECE', b'1', b'0', NULL),
(376, NULL, 'BS BIOLOGY', b'1', b'0', NULL),
(377, NULL, 'HIGH SCHOOL GRAD.', b'1', b'0', NULL),
(378, NULL, 'BACHELOR OF ARTS IN ECONOMICS', b'1', b'0', NULL),
(379, NULL, 'BACHELOR OF HOTEL & RESTAURANT MANAGEMENT', b'1', b'0', NULL),
(380, NULL, '21 UNITS BS INFORMATION TECHNOLOGY', b'1', b'0', NULL),
(381, NULL, 'AB COMMUNICATION ARTS', b'1', b'0', NULL),
(382, NULL, 'FOOD & BEVERAGE MANAGEMENT', b'1', b'0', NULL),
(383, NULL, 'BSBA MARKETING & CORPORATE COMMUNICATION', b'1', b'0', NULL),
(384, NULL, 'BS CRIMINOLOGY', b'1', b'0', NULL),
(385, NULL, 'BSBA ACCOUNTING', b'1', b'0', NULL),
(386, NULL, 'BACHELOR IN APPLIED ECONOMICS', b'1', b'0', NULL),
(387, NULL, '86 UNITS SECRETARIAL', b'1', b'0', NULL),
(388, NULL, 'AB PSYCHOLOGY', b'1', b'0', NULL),
(389, NULL, '72 UNITS SECRETARIAL', b'1', b'0', NULL),
(390, NULL, 'AB LEGAL MANAGEMENT', b'1', b'0', NULL),
(391, NULL, '18 UNITS NURSING', b'1', b'0', NULL),
(392, NULL, 'BSBA FINANCIAL MANAGEMENT', b'1', b'0', NULL),
(393, NULL, 'COMPUTER SECRETARY', b'1', b'0', NULL),
(394, NULL, 'COMPUTER HARDWARE TECH. (VOCATIONAL)', b'1', b'0', NULL),
(395, NULL, '80 UNITS BSBA', b'1', b'0', NULL),
(396, NULL, 'BS CIVIL ENGINEERING (UNDERGRADUATE)', b'1', b'0', NULL),
(397, NULL, '84 UNITS BS NURSING', b'1', b'0', NULL),
(398, NULL, 'BACHELOR IN ENTREPRENEURAL MANAGEMENT', b'1', b'0', NULL),
(399, NULL, '121 UNITS BS CRIMINOLOGY', b'1', b'0', NULL),
(400, NULL, '2ND YEAR BS MECHANICAL ENGINEERING', b'1', b'0', NULL),
(401, NULL, 'AUTOMOTIVE (VOCATIONAL)', b'1', b'0', NULL),
(402, NULL, '36 UNITS BS COMPUTER SCIENCE', b'1', b'0', NULL),
(403, NULL, '137 UNITS BACHELOR IN PHYSICAL EDUCATION', b'1', b'0', NULL),
(404, NULL, '177 UNITS MULTI-MEDIA ARTS', b'1', b'0', NULL),
(405, NULL, '30 UNITS MASTER OF PUBLIC ADMINISTRATION', b'1', b'0', NULL),
(406, NULL, 'ELECTRONICS', b'1', b'0', NULL),
(407, NULL, 'DIPLOMA IN FISHERIES TECH.', b'1', b'0', NULL),
(408, NULL, 'BS BUSINESS ADMINISTRATION', b'1', b'0', NULL),
(409, NULL, 'BS IN BUSINESS ECONOMICS', b'1', b'0', NULL),
(410, NULL, '75 UNITS BS IN INFORMATION TECHNOLOGY', b'1', b'0', NULL),
(411, NULL, '80 UNITS IN BS IN BUSINESS ADMINISTRATION', b'1', b'0', NULL),
(412, NULL, 'BS BUSINESS MANAGEMENT', b'1', b'0', NULL),
(413, NULL, 'BS COMMERCE MAJOR IN ACCOUNTING', b'1', b'0', NULL),
(414, NULL, '21 UNITS COMPUTER PROGRAMMING', b'1', b'0', NULL),
(415, NULL, '56 UNITS BUSINESS ADMINISTRATION', b'1', b'0', NULL),
(416, NULL, 'BS THEOLOGY', b'1', b'0', NULL),
(417, NULL, 'BS EDUCATION', b'1', b'0', NULL),
(418, NULL, 'BACHELOR IN GRAPHICS TECHNOLOGY', b'1', b'0', NULL),
(419, NULL, 'AIRLINE SECRETARIAL', b'1', b'0', NULL),
(420, NULL, '22 UNITS MIDWIFERY', b'1', b'0', NULL),
(421, NULL, '85 UNITS BS COMMERCE', b'1', b'0', NULL),
(422, NULL, 'BS FINANCE (UNDRGRADUATE)', b'1', b'0', NULL),
(423, NULL, '2ND YEAR COMPUTER GRAPHICS', b'1', b'0', NULL),
(424, NULL, '173 UNITS BA PSYCHOLOGY', b'1', b'0', NULL),
(425, NULL, 'HOTEL & RESTAURANT MGMT. (UNDERGRADUATE)', b'1', b'0', NULL),
(426, NULL, 'CHEMICAL ENGINEERING', b'1', b'0', NULL),
(427, NULL, '80 UNITS BS COMPUTER ENGINEERING', b'1', b'0', NULL),
(428, NULL, 'BS NUTRITION & DIETETICS', b'1', b'0', NULL),
(429, NULL, '21 UNITS SECRETARIAL', b'1', b'0', NULL),
(430, NULL, '183 UNITS BS NURSING', b'1', b'0', NULL),
(431, NULL, 'BS IN INTERIOR DESIGN', b'1', b'0', NULL),
(432, NULL, 'BS AVIATION IN COMM. FLYING', b'1', b'0', NULL),
(433, NULL, 'ELECTRICAL WIRINGS (VOCATIONAL)', b'1', b'0', NULL),
(434, NULL, 'BACHELOR OF ARTS IN COMMUNICATION', b'1', b'0', NULL),
(435, NULL, 'TERTIARY COMPUTER PROGRAM', b'1', b'0', NULL),
(436, NULL, 'BSBA (UNDERGRADUATE)', b'1', b'0', NULL),
(437, NULL, 'BSBA MAJOR IN ACCOUNTING', b'1', b'0', NULL),
(438, NULL, 'BA FINE ARTS', b'1', b'0', NULL),
(439, NULL, 'DOCTOR OF VETERINARY MEDICINE', b'1', b'0', NULL),
(440, NULL, '42 UNITS DENTAL HYGIENE', b'1', b'0', NULL),
(441, NULL, 'BS COMPUTER TECHNOLOGY', b'1', b'0', NULL),
(442, NULL, 'BS IN MARINE ENGINEERING', b'1', b'0', NULL),
(443, NULL, 'INFORMATION COMMUNICATION TECHNOLOGY', b'1', b'0', NULL),
(444, NULL, 'HRM', b'1', b'0', NULL),
(445, NULL, '120 UNITS MEDICAL TECHNOLOGY', b'1', b'0', NULL),
(446, NULL, 'AUTOMOTIVE NCII', b'1', b'0', NULL),
(447, NULL, 'TAILORING', b'1', b'0', NULL),
(448, NULL, 'ELEMENTARY (UNDERGRADUATE)', b'1', b'0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `degree_level`
--

CREATE TABLE `degree_level` (
  `id` bigint NOT NULL,
  `degree_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_active` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `degree_level`
--

INSERT INTO `degree_level` (`id`, `degree_name`, `is_active`) VALUES
(1, 'ELEMENTARY', b'1'),
(2, 'HIGH SCHOOL', b'1'),
(3, 'COLLEGE', b'1'),
(4, 'GRADUATE STUDIES', b'1'),
(5, 'VOCATIONAL', b'1'),
(6, 'UNDERGRADUATE (2ND YEAR COLLEGE)', b'1'),
(7, 'SECONDARY', b'1'),
(9, 'ELEMENTARY GRADUATE', b'1'),
(10, 'ELEMENTARY GRADUATE', b'1'),
(11, 'ELEMENTARY GRADUATE', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `degree_levels`
--

CREATE TABLE `degree_levels` (
  `id` bigint NOT NULL,
  `degree_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_active` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` bigint NOT NULL,
  `district_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `district_name`) VALUES
(1, 'FOURTH DISTRICT'),
(2, 'SECOND DISTRICT'),
(3, 'SIXTH DISTRICT'),
(4, 'FIFTH DISTRICT'),
(5, 'THIRD DISTRICT'),
(6, '7TH DISTRICT'),
(7, 'FIRST DISTRICT'),
(8, 'FOURTH DITRICT'),
(9, 'NO DISTRICT');

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

CREATE TABLE `division` (
  `id` bigint NOT NULL,
  `division_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `order_no` int NOT NULL,
  `approver1_id` bigint DEFAULT NULL,
  `approver2_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `division`
--

INSERT INTO `division` (`id`, `division_name`, `order_no`, `approver1_id`, `approver2_id`) VALUES
(1, 'OFFICE OF THE SECRETARY TO THE CITY COUNCIL', 0, NULL, NULL),
(2, 'AGENDA & BRIEFING DIVISION', 0, NULL, NULL),
(3, 'ADMINISTRATIVE DIVISION', 0, NULL, NULL),
(4, 'SESSION HALL CUSTODIAN & MAINTENANCE SECTION, ADMIN. DIVISION', 0, NULL, NULL),
(5, 'SESSION HALL CUSTODIAN & MAINTENANCE SECTION', 0, NULL, NULL),
(6, 'BUDGET & ACCOUNTING SECTION, ADMINISTRATIVE DIVISION', 0, NULL, NULL),
(7, 'SUPPLY & PROPERTY SECTION, ADMINISTRATIVE DIVISION', 0, NULL, NULL),
(8, 'HUMAN RESOURCE MANAGEMENT SECTION, ADMINISTRATIVE DIVISION', 0, NULL, NULL),
(9, 'RECORDS & PUBLICATION SECTION, ADMINISTRATIVE DIVISION', 0, NULL, NULL),
(10, 'LEGISLATIVE DIVISION', 0, NULL, NULL),
(11, 'JOURNAL & MINUTES DIVISION', 0, NULL, NULL),
(12, 'OFFICE OF HON. JESUS E. FAJARDO', 0, NULL, NULL),
(13, 'OFFICE OF HON. ERICK IAN  O. NIEVA', 0, NULL, NULL),
(14, 'OFFICE OF HON. NINO M. DELA CRUZ', 0, NULL, NULL),
(15, 'OFFICE OF HON. MOISES T. LIM', 0, NULL, NULL),
(16, 'OFFICE OF HON. IRMA C. ALFONSO-JUSON', 0, NULL, NULL),
(17, 'OFFICE OF HON. MARTIN V. ISIDRO, JR.', 0, NULL, NULL),
(18, 'OFFICE OF HON. RUBEN F. BUENAVENTURA', 0, NULL, NULL),
(19, 'OFFICE OF HON. NUMERO G. LIM', 0, NULL, NULL),
(20, 'OFFICE OF HON. DARWIN B. SIA', 0, NULL, NULL),
(21, 'OFFICE OF HON. ROMA PAULA  ROBLES-DALUZ', 0, NULL, NULL),
(22, 'OFFICE OF HON. RODOLFO N. LACSAMANA', 0, NULL, NULL),
(23, 'OFFICE OF HON. MACARIO M. LACSON', 0, NULL, NULL),
(24, 'OFFICE OF HON. JOHANNA MAUREEN NIETO-RODRIGUEZ', 0, NULL, NULL),
(25, 'OFFICE OF HON. PAMELA FA FUGOSO-PASCUAL', 0, NULL, NULL),
(26, 'OFFICE OF HON. ERNESTO C. ISIP, JR.', 0, NULL, NULL),
(27, 'OFFICE OF HON. TIMOTHY OLIVER  I. ZARCAL', 0, NULL, NULL),
(28, 'OFFICE OF HON. TERRENCE ALIBARBAR', 0, NULL, NULL),
(29, 'OFFICE OF HON. ARLENE MAILE I. ATIENZA', 0, NULL, NULL),
(30, 'OFFICE OF HON. LOUSITO N. CHUA', 0, NULL, NULL),
(31, 'OFFICE OF. HON. KRISTLE MARIE C. BACANI', 0, NULL, NULL),
(32, 'OFFICE OF HON. JOEL T. VILLANUEVA', 0, NULL, NULL),
(33, 'OFFICE OF HON. DON JUAN A. BAGATSING', 0, NULL, NULL),
(34, 'OFFICE OF HON. SCIENCE A. REYES', 0, NULL, NULL),
(35, 'OFFICE OF HON. LOUISA MARIE J. QUINTOS-TAN', 0, NULL, NULL),
(36, 'OFFICE OF HON. LARIS T. BORROMEO', 0, NULL, NULL),
(37, 'OFFICE OF HON. RICARDO A. ISIP, JR.', 0, NULL, NULL),
(38, 'OFFICE OF HON. RAYMUNDO R. YUPANGCO', 0, NULL, NULL),
(39, 'OFFICE OF HON. CHARRY R. ORTEGA', 0, NULL, NULL),
(40, 'OFFICE OF HON. JAYBEE S. HIZON', 0, NULL, NULL),
(41, 'OFFICE OF HON. ROBERTO S. ESPIRITU II', 0, NULL, NULL),
(42, 'OFFICE OF HON. LUIS C. UY', 0, NULL, NULL),
(43, 'OFFICE OF HON. CARLOS C. CASTA�EDA', 0, NULL, NULL),
(44, 'OFFICE OF HON. SALVADOR PHILIP H. LACUNA', 0, NULL, NULL),
(45, 'OFFICE OF HON. LUCIANO M. VELOSO', 0, NULL, NULL),
(46, 'OFFICE OF HON. BENNY FOG T. ABANTE III', 0, NULL, NULL),
(47, 'OFFICE OF HON. ELMER M. PAR', 0, NULL, NULL),
(48, 'OFFICE OF HON. LEILANIE MARIE H. LACUNA', 0, NULL, NULL),
(49, 'OFFICE OF HON. JULIANA M. RAE IBAY', 0, NULL, NULL),
(50, 'OFFICE OF THE PRESIDING OFFICER', 0, NULL, NULL),
(51, 'NO DIVISION', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `docs201`
--

CREATE TABLE `docs201` (
  `id` bigint NOT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `trans_date` date DEFAULT NULL,
  `document_type_id` bigint DEFAULT NULL,
  `employee_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `docs201_doc_file_urls`
--

CREATE TABLE `docs201_doc_file_urls` (
  `docs201_id` bigint NOT NULL,
  `doc_file_urls` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `document_type`
--

CREATE TABLE `document_type` (
  `id` bigint NOT NULL,
  `document_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_active` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `document_type`
--

INSERT INTO `document_type` (`id`, `document_name`, `is_active`) VALUES
(1, '201', b'1'),
(2, 'NBI', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `educational_background`
--

CREATE TABLE `educational_background` (
  `id` bigint NOT NULL,
  `attachment_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `units_earned` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `up_to_present` bit(1) NOT NULL,
  `year_graduated` int NOT NULL,
  `academic_honors_id` bigint DEFAULT NULL,
  `degree_course_id` bigint DEFAULT NULL,
  `degree_level_id` bigint DEFAULT NULL,
  `employee_id` bigint DEFAULT NULL,
  `scholarship_id` bigint DEFAULT NULL,
  `school_id` bigint DEFAULT NULL,
  `school_custom_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eligibility`
--

CREATE TABLE `eligibility` (
  `id` bigint NOT NULL,
  `eligibility_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `eligibility_type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_active` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eligibility`
--

INSERT INTO `eligibility` (`id`, `eligibility_name`, `eligibility_type`, `is_active`) VALUES
(1, 'CIVIL SERVICE', 'Professional', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` bigint NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `last_modified_by` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_modified_date` datetime(6) DEFAULT NULL,
  `birth_place` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prefix` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `suffix` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `assumptiondate` date DEFAULT NULL,
  `blood_type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `citizenship` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `civil_status` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `emp_hash_code` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `emp_no` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gsis_bp_no` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gsis_id_no` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gsis_policy_no` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `height` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mobileno1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mobileno2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pagibig_no` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `philhealth_no` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `plantilla_no` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `profile_photo` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sss_no` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tin` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `title_suffix` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `division_id` bigint DEFAULT NULL,
  `country_of_origin` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tel_mo` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mobile_no1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mobile_no2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tel_no` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `employee_status_id` bigint DEFAULT NULL,
  `position_title_id` bigint DEFAULT NULL,
  `houseno1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `houseno2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `street1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `street2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `subdivision1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `subdivision2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `brgy1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `brgy2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `city1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `city2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `province1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `province2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `zipcode1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `zipcode2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `district_id` bigint DEFAULT NULL,
  `umid_no` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `philsys_no` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `maiden_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_permanent_same_as_residential` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `birth_place`, `birthdate`, `first_name`, `gender`, `last_name`, `middle_name`, `prefix`, `suffix`, `assumptiondate`, `blood_type`, `citizenship`, `civil_status`, `email1`, `email2`, `emp_hash_code`, `emp_no`, `gsis_bp_no`, `gsis_id_no`, `gsis_policy_no`, `height`, `mobileno1`, `mobileno2`, `pagibig_no`, `password`, `philhealth_no`, `plantilla_no`, `profile_photo`, `religion`, `sss_no`, `status`, `tin`, `title_suffix`, `user_type`, `username`, `weight`, `division_id`, `country_of_origin`, `tel_mo`, `mobile_no1`, `mobile_no2`, `tel_no`, `employee_status_id`, `position_title_id`, `houseno1`, `houseno2`, `street1`, `street2`, `subdivision1`, `subdivision2`, `brgy1`, `brgy2`, `city1`, `city2`, `province1`, `province2`, `zipcode1`, `zipcode2`, `district_id`, `umid_no`, `philsys_no`, `maiden_name`, `is_permanent_same_as_residential`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, 'Ian', 'M', 'Orozco', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin@gmail.com', NULL, 'isHklfn35Rgnd456556rfgngdfg12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manila@123', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, 'ROLE_ADMIN', 'admin', NULL, NULL, NULL, NULL, '09062794574', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, NULL, NULL, NULL, NULL, NULL, NULL, 'HR', 'M', 'Officer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hr@gmail.com', NULL, 'hrHklfn35Rgnd456556rfgngdfg12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2a$11$fF7wrguVLnXiMCUp9ceL0.l1vuVUBXBoeCwUjPX7VtOCaPSXfa05O', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, 'ROLE_HR', 'hr_user', NULL, NULL, NULL, NULL, '09062794575', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(3, NULL, NULL, 'emp_user', '2026-06-06 19:26:47.234000', 'MANILA', '2026-05-30', 'John', 'M', 'Employee', 'GUILLEDO', NULL, 'JR.', NULL, 'A1', 'DUAL CITIZENSHIP BY BIRTH', 'SINGLE', 'employee@gmail.com', NULL, 'empHklfn35Rgnd456556rfgngdfg12', '', NULL, '2000756365', NULL, '5\'11', NULL, NULL, '1050-0064-3292', '$2a$11$DQEEGl9aW/Q8ZZLmHaChCe4tKe8Z6HA1YUsfMA1pH33ZoqlReKGTi', '19-000145795-4', '', '/file/download/employee_3.jpg', NULL, '03-8451171-0', 'A', '23213231', NULL, 'ROLE_EMPLOYEE', 'emp_user', '60', NULL, '', NULL, '09062794576', NULL, '02-85323351', NULL, NULL, 'UNIT 105 ILIGAN BLDG', 'UNIT 45 TOWER 2 ASIA PACIFIC TOWER BUILDING', '#28 Himlayan RD. ', '#28 Himlayan RD. ', 'MACARIA HOMES', 'BACOOD', 'LAWTON AVENUE', 'BARANGAY FORT BONIFACIO SOUTH DISTRICT', 'Valenzuela', 'Valenzuela', 'MM', 'MM', '1107', '1107', NULL, '112221', '1221221212', '', 0),
(6, NULL, NULL, NULL, NULL, NULL, NULL, 'HR', NULL, 'Officer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HR_OFFICER', 'ManilaHR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee_status`
--

CREATE TABLE `employee_status` (
  `id` bigint NOT NULL,
  `employee_status_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `employment_type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_active` bit(1) NOT NULL,
  `payroll_behavior` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_status`
--

INSERT INTO `employee_status` (`id`, `employee_status_name`, `employment_type`, `is_active`, `payroll_behavior`) VALUES
(1, 'PERMANENT', NULL, b'1', NULL),
(2, 'CONTRACTUAL', NULL, b'1', NULL),
(3, 'TEMPORARY', NULL, b'1', NULL),
(4, 'CASUAL', NULL, b'1', NULL),
(5, 'COTERMINOUS', NULL, b'1', NULL),
(6, 'JOB ORDER', NULL, b'1', NULL),
(7, 'JOB ORDER III', NULL, b'1', NULL),
(8, 'JOB ORDER VIII', NULL, b'1', NULL),
(9, 'ELECTIVE', NULL, b'1', NULL),
(10, 'APPOINTIVE', NULL, b'1', NULL),
(11, 'EX-OFFICIO', NULL, b'1', NULL),
(12, 'CONSULTANCY', NULL, b'1', NULL),
(13, 'TEMPORATY', NULL, b'1', NULL),
(14, 'ELECTED', NULL, b'1', NULL),
(15, '-DO-', NULL, b'1', NULL),
(16, 'ADMINISTRATIVE AIDE VI', NULL, b'1', NULL),
(17, '(CLERK III)', NULL, b'1', NULL),
(18, 'JOB ORDER VI', NULL, b'1', NULL),
(19, 'NO EMPLOYEE STATUS', 'NON-PLANTILLA', b'1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emp_references`
--

CREATE TABLE `emp_references` (
  `id` bigint NOT NULL,
  `company_address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `company_contact_no` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `position_title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `employee_id` bigint DEFAULT NULL,
  `employee_references` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `family_bg`
--

CREATE TABLE `family_bg` (
  `id` bigint NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `last_modified_by` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_modified_date` datetime(6) DEFAULT NULL,
  `business_add` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `employer` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `employment_status` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_deceased` bit(1) NOT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tel_no` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tin` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `employee_id` bigint DEFAULT NULL,
  `birth_place` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prefix` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `suffix` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `relationship` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `maiden_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `family_bg`
--

INSERT INTO `family_bg` (`id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `business_add`, `employer`, `employment_status`, `is_deceased`, `mobile_no`, `occupation`, `tel_no`, `tin`, `employee_id`, `birth_place`, `birthdate`, `first_name`, `gender`, `last_name`, `middle_name`, `prefix`, `suffix`, `relationship`, `maiden_name`) VALUES
(516, 'emp_user', '2026-06-06 19:27:58.623000', 'emp_user', '2026-06-06 19:27:58.623000', '', '', '', b'0', '', '', '', '', 3, NULL, '1981-03-03', 'ALMA', 'FEMALE', 'JAUDIAN', 'DALISAY', NULL, 'N/A', 'MOTHER', 'CLEMENTE');

-- --------------------------------------------------------

--
-- Table structure for table `government_issued_id`
--

CREATE TABLE `government_issued_id` (
  `id` bigint NOT NULL,
  `goverment_issued_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_no` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `issuance_date` date DEFAULT NULL,
  `place_of_issuance` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `goverment_issued_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `employee_id` bigint DEFAULT NULL,
  `employee_government_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `learning_development`
--

CREATE TABLE `learning_development` (
  `id` bigint NOT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `no_hours` int DEFAULT NULL,
  `providers` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `title_of_seminar` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `training_course_desc` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `up_to_present` bit(1) NOT NULL,
  `employee_id` bigint DEFAULT NULL,
  `learning_development_type` bigint DEFAULT NULL,
  `employee_learning_development` bigint DEFAULT NULL,
  `learning_type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hours_display` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `learning_type`
--

CREATE TABLE `learning_type` (
  `id` bigint NOT NULL,
  `learning_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_active` bit(1) NOT NULL,
  `type_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `learning_type`
--

INSERT INTO `learning_type` (`id`, `learning_name`, `is_active`, `type_name`) VALUES
(1, NULL, b'1', 'BCLE'),
(2, NULL, b'1', 'MCLE');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` bigint NOT NULL,
  `is_active` bit(1) NOT NULL,
  `level_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `other_info`
--

CREATE TABLE `other_info` (
  `id` bigint NOT NULL,
  `membership_in_association` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `non_academic` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `special_skill` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `employee_id` bigint DEFAULT NULL,
  `employee_other_info` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `other_info_question`
--

CREATE TABLE `other_info_question` (
  `id` bigint NOT NULL,
  `question_eight` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question_eight_attachment` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question_eight_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question_eight_type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question_eight_validity_date` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question_five` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question_four` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question_nine` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question_one_fourth` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question_one_third` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question_sevena` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question_six` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question_three` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question_twoa` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question_twob` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question_twobday` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question_twobmonth` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question_twobstatus_case` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question_twobyear` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `employee_id` bigint DEFAULT NULL,
  `question_one_third_if_yes` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question_five_if_yes` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question_four_if_yes` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question_nine_if_yes` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question_one_fourth_if_yes` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question_sevenaif_yes` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question_six_if_yes` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question_three_if_yes` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question_twoaif_yes` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question_twobif_yes` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question_ten` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question_ten_if_yes` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `position_description_form`
--

CREATE TABLE `position_description_form` (
  `id` bigint NOT NULL,
  `branch_division` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bureau_office` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact_external_agencies` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact_external_others` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact_external_others_text` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact_external_public` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact_internal_exec` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact_internal_non_supervisor` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact_internal_staff` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact_internal_supervisor` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `core_competencies` longtext COLLATE utf8mb4_general_ci,
  `core_competency_level` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `department_agency` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `duty_competency_level` longtext COLLATE utf8mb4_general_ci,
  `duty_description` longtext COLLATE utf8mb4_general_ci,
  `duty_percentage` longtext COLLATE utf8mb4_general_ci,
  `employee_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `equipment_used` longtext COLLATE utf8mb4_general_ci,
  `function_of_unit` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `immediate_supervisor_title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `job_summary` longtext COLLATE utf8mb4_general_ci,
  `leadership_competencies` longtext COLLATE utf8mb4_general_ci,
  `leadership_competency_level` longtext COLLATE utf8mb4_general_ci,
  `lgu_city` bit(1) NOT NULL,
  `lgu_class1` bit(1) NOT NULL,
  `lgu_class2` bit(1) NOT NULL,
  `lgu_class3` bit(1) NOT NULL,
  `lgu_class4` bit(1) NOT NULL,
  `lgu_class5` bit(1) NOT NULL,
  `lgu_class6` bit(1) NOT NULL,
  `lgu_class_special` bit(1) NOT NULL,
  `lgu_municipality` bit(1) NOT NULL,
  `lgu_province` bit(1) NOT NULL,
  `next_higher_supervisor_title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `other_compensation` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `present_appropriation_act` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `previous_appropriation_act` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `qs_education` longtext COLLATE utf8mb4_general_ci,
  `qs_eligibility` longtext COLLATE utf8mb4_general_ci,
  `qs_experience` longtext COLLATE utf8mb4_general_ci,
  `qs_training` longtext COLLATE utf8mb4_general_ci,
  `salary_authorized` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `supervised_staff_item_number` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `supervised_staff_position_title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `supervisor_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `work_condition_field` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `work_condition_office` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `work_condition_others` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `work_condition_others_text` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `workstation` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `position_title_id` bigint NOT NULL,
  `salary_grade` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `item_number` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `position_titles`
--

CREATE TABLE `position_titles` (
  `id` bigint NOT NULL,
  `department_code` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `education` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `eligibility` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_active` bit(1) NOT NULL,
  `position_title_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `training` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `position_title_employment` bigint DEFAULT NULL,
  `position_title_level` bigint DEFAULT NULL,
  `position_title_salary_grade` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `position_titles`
--

INSERT INTO `position_titles` (`id`, `department_code`, `education`, `eligibility`, `experience`, `is_active`, `position_title_name`, `training`, `position_title_employment`, `position_title_level`, `position_title_salary_grade`) VALUES
(1, NULL, NULL, NULL, NULL, b'1', 'CITY GOV\'T. DEPT. HEAD III', NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, b'1', 'SENIOR ADMIN. ASSISTANT IV', NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL, b'1', 'ADMINISTRATIVE AIDE IV', NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL, b'1', 'ADMINISTRATIVE AIDE I', NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL, b'1', 'CHIEF ADMINISTRATIVE OFFICER', NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL, b'1', 'SUPERVISING ADMINISTRATIVE OFFICER', NULL, NULL, NULL, NULL),
(7, NULL, NULL, NULL, NULL, b'1', 'SENIOR ADMINISTRATIVE OFFICER IV', NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL, b'1', 'ADMINISTRATIVE ASSISTANT II', NULL, NULL, NULL, NULL),
(9, NULL, NULL, NULL, NULL, b'1', 'ADMINISTRATIVE AIDE VI', NULL, NULL, NULL, NULL),
(10, NULL, NULL, NULL, NULL, b'1', 'ADMINISTRATIVE AIDE II', NULL, NULL, NULL, NULL),
(11, NULL, NULL, NULL, NULL, b'1', 'SUPERVISING ADMINISTRATIVE OFFICE', NULL, NULL, NULL, NULL),
(12, NULL, NULL, NULL, NULL, b'1', 'ADMINISTRATIVE OFFICER IV', NULL, NULL, NULL, NULL),
(13, NULL, NULL, NULL, NULL, b'1', 'ADMINISTRATIVE OFFICER V', NULL, NULL, NULL, NULL),
(14, NULL, NULL, NULL, NULL, b'1', 'ADMINISTRATIVE OFFICER II', NULL, NULL, NULL, NULL),
(15, NULL, NULL, NULL, NULL, b'1', 'ADMINISTRATIVE OFFICER III', NULL, NULL, NULL, NULL),
(16, NULL, NULL, NULL, NULL, b'1', 'ADMINISTRATIVE ASSISTANT  II', NULL, NULL, NULL, NULL),
(17, NULL, NULL, NULL, NULL, b'1', 'LOCAL LEGIS. STAFF OFFICER VI', NULL, NULL, NULL, NULL),
(18, NULL, NULL, NULL, NULL, b'1', 'LOCAL LEGIS. STAFF OFFICER V', NULL, NULL, NULL, NULL),
(19, NULL, NULL, NULL, NULL, b'1', 'LOCAL LEGIS. STAFF OFFICER IV', NULL, NULL, NULL, NULL),
(20, NULL, NULL, NULL, NULL, b'1', 'LOCAL LEGISLATIVE STAFF OFFICER III', NULL, NULL, NULL, NULL),
(21, NULL, NULL, NULL, NULL, b'1', 'LOCAL LEGIS. STAFF OFFICER III', NULL, NULL, NULL, NULL),
(22, NULL, NULL, NULL, NULL, b'1', 'LOCAL LEGIS. STAFF OFFICER II', NULL, NULL, NULL, NULL),
(23, NULL, NULL, NULL, NULL, b'1', 'SENIOR ADMINISTRATIVE ASST. I', NULL, NULL, NULL, NULL),
(24, NULL, NULL, NULL, NULL, b'1', 'LOCAL LEGIS. STAFF OFFICER I', NULL, NULL, NULL, NULL),
(25, NULL, NULL, NULL, NULL, b'1', 'LOCAL LEGISLATIVE STAFF OFFICER II', NULL, NULL, NULL, NULL),
(26, NULL, NULL, NULL, NULL, b'1', 'LOCAL LEGISLATIVE STAFF OFFICER I', NULL, NULL, NULL, NULL),
(27, NULL, NULL, NULL, NULL, b'1', 'ADMINISTRATIVE ASSISTANT V', NULL, NULL, NULL, NULL),
(28, NULL, NULL, NULL, NULL, b'1', 'ADMINISTRATIVE ASST. V', NULL, NULL, NULL, NULL),
(29, NULL, NULL, NULL, NULL, b'1', 'ADMINISTRATIVE ASSISTANT I', NULL, NULL, NULL, NULL),
(30, NULL, NULL, NULL, NULL, b'1', 'LOCAL LEGISLATIVE STAFF OFFICER IV', NULL, NULL, NULL, NULL),
(31, NULL, NULL, NULL, NULL, b'1', 'CLERK', NULL, NULL, NULL, NULL),
(32, NULL, NULL, NULL, NULL, b'1', 'ADMINISTRATIVE ASSISTANT III', NULL, NULL, NULL, NULL),
(33, NULL, NULL, NULL, NULL, b'1', 'CITY COUNCILOR', NULL, NULL, NULL, NULL),
(34, NULL, NULL, NULL, NULL, b'1', 'EXECUTIVE ASSISTANT IV', NULL, NULL, NULL, NULL),
(35, NULL, NULL, NULL, NULL, b'1', 'LOCAL LEGISLATIVE STAFF ASSISTANT I', NULL, NULL, NULL, NULL),
(36, NULL, NULL, NULL, NULL, b'1', 'LOCAL LEGISLATIVE STAFF EMPLOYEE II', NULL, NULL, NULL, NULL),
(37, NULL, NULL, NULL, NULL, b'1', 'EXECUTIVE ASSIUSTANT IV', NULL, NULL, NULL, NULL),
(38, NULL, NULL, NULL, NULL, b'1', 'LOCAL LEGISLATIVE STAFF  ASSISTANT I', NULL, NULL, NULL, NULL),
(39, NULL, NULL, NULL, NULL, b'1', 'LOCAL LEGIS. STAFF EMP. II', NULL, NULL, NULL, NULL),
(40, NULL, NULL, NULL, NULL, b'1', 'LOCAL LEGIS. STAFF EMP. I (Msgr.)', NULL, NULL, NULL, NULL),
(41, NULL, NULL, NULL, NULL, b'1', 'LOCAL LEGIS. STAFF ASSISTANT I', NULL, NULL, NULL, NULL),
(42, NULL, NULL, NULL, NULL, b'1', 'LOCAL LEGIS. STAFF EMPLOYEE II', NULL, NULL, NULL, NULL),
(43, NULL, NULL, NULL, NULL, b'1', 'LOCAL LEGISLATIVVE STAFF OFFICER III', NULL, NULL, NULL, NULL),
(44, NULL, NULL, NULL, NULL, b'1', 'LOCAL LEGISLATIVVE STAFF OFFICER II', NULL, NULL, NULL, NULL),
(45, NULL, NULL, NULL, NULL, b'1', 'LOCAL LEGISATIVE STAFF OFFICER IV', NULL, NULL, NULL, NULL),
(46, NULL, NULL, NULL, NULL, b'1', 'LOCAL LEGIS. ASSISTANT I', NULL, NULL, NULL, NULL),
(47, NULL, NULL, NULL, NULL, b'1', 'PRIVATE SECRETARY I', NULL, NULL, NULL, NULL),
(48, NULL, NULL, NULL, NULL, b'1', 'EXECUTIVE ASSISTANT V', NULL, NULL, NULL, NULL),
(49, NULL, NULL, NULL, NULL, b'1', 'SECURITY AGENT II', NULL, NULL, NULL, NULL),
(50, NULL, NULL, NULL, NULL, b'1', 'PERSONAL DRIVER/CHAUFFEUR', NULL, NULL, NULL, NULL),
(51, NULL, NULL, NULL, NULL, b'1', 'LEGISLATIVE OFFICER III', NULL, NULL, NULL, NULL),
(52, NULL, NULL, NULL, NULL, b'1', 'LOCAL LEGISLATOR SO VI', NULL, NULL, NULL, NULL),
(53, NULL, NULL, NULL, NULL, b'1', 'CITY GOV\'T DEPT. HEAD III', NULL, NULL, NULL, NULL),
(54, NULL, NULL, NULL, NULL, b'1', 'STENOGRAPHIC REPORTER', NULL, NULL, NULL, NULL),
(55, NULL, NULL, NULL, NULL, b'1', 'SR. STENOGRAPHIC REPORTER', NULL, NULL, NULL, NULL),
(56, NULL, NULL, NULL, NULL, b'1', 'LEGISLATIVE STAFF OFFICER II', NULL, NULL, NULL, NULL),
(57, NULL, NULL, NULL, NULL, b'1', 'SR. ADMIN. ASSISSTANT IV', NULL, NULL, NULL, NULL),
(58, NULL, NULL, NULL, NULL, b'1', 'CLERK II', NULL, NULL, NULL, NULL),
(59, NULL, NULL, NULL, NULL, b'1', '(CLERK II)', NULL, NULL, NULL, NULL),
(60, NULL, NULL, NULL, NULL, b'1', 'UTILITY WORKER I', NULL, NULL, NULL, NULL),
(61, NULL, NULL, NULL, NULL, b'1', '(UTILITY WORKER I)', NULL, NULL, NULL, NULL),
(62, NULL, NULL, NULL, NULL, b'1', 'DRIVER I', NULL, NULL, NULL, NULL),
(63, NULL, NULL, NULL, NULL, b'1', 'CONSULTANT/RESEARCHER', NULL, NULL, NULL, NULL),
(64, NULL, NULL, NULL, NULL, b'1', 'LOCAL LEGISLATIVE STAFF OFFICER VI', NULL, NULL, NULL, NULL),
(65, NULL, NULL, NULL, NULL, b'1', 'ACCOUNTING CLERK', NULL, NULL, NULL, NULL),
(66, NULL, NULL, NULL, NULL, b'1', 'SENIOR CLERK', NULL, NULL, NULL, NULL),
(67, NULL, NULL, NULL, NULL, b'1', 'CLERK III', NULL, NULL, NULL, NULL),
(68, NULL, NULL, NULL, NULL, b'1', 'CLERK IV', NULL, NULL, NULL, NULL),
(69, NULL, NULL, NULL, NULL, b'1', 'SUP. OFFICER II', NULL, NULL, NULL, NULL),
(70, NULL, NULL, NULL, NULL, b'1', 'HRMO III', NULL, NULL, NULL, NULL),
(71, NULL, NULL, NULL, NULL, b'1', 'BUDGET AIDE', NULL, NULL, NULL, NULL),
(72, NULL, NULL, NULL, NULL, b'1', 'ACCOUNTING CLERK II', NULL, NULL, NULL, NULL),
(73, NULL, NULL, NULL, NULL, b'1', 'ACCOUNTING CLERK III', NULL, NULL, NULL, NULL),
(74, NULL, NULL, NULL, NULL, b'1', 'STENOGRAPHIC REPORTER III', NULL, NULL, NULL, NULL),
(75, NULL, NULL, NULL, NULL, b'1', 'STENOGRAPHIC REPORTER IV', NULL, NULL, NULL, NULL),
(76, NULL, NULL, NULL, NULL, b'1', 'SR. ADMIN. ASSISTANT I', NULL, NULL, NULL, NULL),
(77, NULL, NULL, NULL, NULL, b'1', 'SR. ADMIN. ASSISTANT IV', NULL, NULL, NULL, NULL),
(78, NULL, NULL, NULL, NULL, b'1', 'SENIOR ADMINISTRATIVE ASSISTANT IV', NULL, NULL, NULL, NULL),
(79, NULL, NULL, NULL, NULL, b'1', '(ACCOUNTING CLERK II)', NULL, NULL, NULL, NULL),
(80, NULL, NULL, NULL, NULL, b'1', 'ADMINISTRATIVE AIDE VI (CLERK III)', NULL, NULL, NULL, NULL),
(81, NULL, NULL, NULL, NULL, b'1', 'UTILITY WORKER', NULL, NULL, NULL, NULL),
(82, NULL, NULL, NULL, NULL, b'1', 'UTILITY WORKET I', NULL, NULL, NULL, NULL),
(83, NULL, NULL, NULL, NULL, b'1', 'ADMIN. AIDE I', NULL, NULL, NULL, NULL),
(84, NULL, NULL, NULL, NULL, b'1', 'REPRO. MACHINE OPERATOR I', NULL, NULL, NULL, NULL),
(85, NULL, NULL, NULL, NULL, b'1', '(REPRO. MACHINE OPERATOR I)', NULL, NULL, NULL, NULL),
(86, NULL, NULL, NULL, NULL, b'1', 'REPRODUCTION MACHINE OPERATOR I', NULL, NULL, NULL, NULL),
(87, NULL, NULL, NULL, NULL, b'1', 'ADMINISTRATIVE AIDE II (RMOI)', NULL, NULL, NULL, NULL),
(88, NULL, NULL, NULL, NULL, b'1', 'PERSONNEL AIDE', NULL, NULL, NULL, NULL),
(89, NULL, NULL, NULL, NULL, b'1', 'SENIOR PERSONNEL AIDE', NULL, NULL, NULL, NULL),
(90, NULL, NULL, NULL, NULL, b'1', 'HUMAN RESOURCE MANAGEMENT OFFICER I', NULL, NULL, NULL, NULL),
(91, NULL, NULL, NULL, NULL, b'1', 'HUMAN RESOURCE MANAGEMENT OFFICER II', NULL, NULL, NULL, NULL),
(92, NULL, NULL, NULL, NULL, b'1', 'HUMAN RESOURCE MANAGEMENT OFFICER III', NULL, NULL, NULL, NULL),
(93, NULL, NULL, NULL, NULL, b'1', '(ADMINISTRATIVE OFFICER IV)', NULL, NULL, NULL, NULL),
(94, NULL, NULL, NULL, NULL, b'1', 'LEGAL OFFICER IV', NULL, NULL, NULL, NULL),
(95, NULL, NULL, NULL, NULL, b'1', 'CTO', NULL, NULL, NULL, NULL),
(96, NULL, NULL, NULL, NULL, b'1', 'MESSENGER', NULL, NULL, NULL, NULL),
(97, NULL, NULL, NULL, NULL, b'1', '(CLERK III)', NULL, NULL, NULL, NULL),
(98, NULL, NULL, NULL, NULL, b'1', 'LOCAL LEGISLATIVE STAFF EMPLOYEE I', NULL, NULL, NULL, NULL),
(99, NULL, NULL, NULL, NULL, b'1', '(UTILITY WORKER I', NULL, NULL, NULL, NULL),
(100, NULL, NULL, NULL, NULL, b'1', 'LOCAL LEGISLATIVE STAFF ASST. I', NULL, NULL, NULL, NULL),
(101, NULL, NULL, NULL, NULL, b'1', 'ADMINISTRATIVE OFFICER I', NULL, NULL, NULL, NULL),
(102, NULL, NULL, NULL, NULL, b'1', '(ADMINISTRATIVE OFFICER III)', NULL, NULL, NULL, NULL),
(103, NULL, NULL, NULL, NULL, b'1', 'LOCAL LEGIS. STAFF ASST. I', NULL, NULL, NULL, NULL),
(104, NULL, NULL, NULL, NULL, b'1', '(LOCAL LEGIS. STAFF ASST. I)', NULL, NULL, NULL, NULL),
(105, NULL, NULL, NULL, NULL, b'1', 'PAGE', NULL, NULL, NULL, NULL),
(106, NULL, NULL, NULL, NULL, b'1', 'LEGISLATIVE STAFF ASSISTANT I', NULL, NULL, NULL, NULL),
(107, NULL, NULL, NULL, NULL, b'1', 'LEGISLATIVE STAFF ASSISTANT III', NULL, NULL, NULL, NULL),
(108, NULL, NULL, NULL, NULL, b'1', 'LOCAL LEGISLATIVE STAFF ASSISTANCE III', NULL, NULL, NULL, NULL),
(109, NULL, NULL, NULL, NULL, b'1', 'ADMINISTRATIVE OFFICER I / LOCAL LEGISLATIVE STAFF ASSISTANT III', NULL, NULL, NULL, NULL),
(110, NULL, NULL, NULL, NULL, b'1', 'E/LABORER', NULL, NULL, NULL, NULL),
(111, NULL, NULL, NULL, NULL, b'1', 'FIELD RESEARCHER', NULL, NULL, NULL, NULL),
(112, NULL, NULL, NULL, NULL, b'1', 'RESEARCHER', NULL, NULL, NULL, NULL),
(113, NULL, NULL, NULL, NULL, b'1', 'ADMIN. AIDE VI', NULL, NULL, NULL, NULL),
(114, NULL, NULL, NULL, NULL, b'1', 'JOB ORDER VII', NULL, NULL, NULL, NULL),
(115, NULL, NULL, NULL, NULL, b'1', 'LABORER', NULL, NULL, NULL, NULL),
(116, NULL, NULL, NULL, NULL, b'1', '(LOCAL LEGISLATIVE ASST, I)', NULL, NULL, NULL, NULL),
(117, NULL, NULL, NULL, NULL, b'1', '(LLSA I)', NULL, NULL, NULL, NULL),
(118, NULL, NULL, NULL, NULL, b'1', 'LOCAL LEGIS. STAFF ASST. III', NULL, NULL, NULL, NULL),
(119, NULL, NULL, NULL, NULL, b'1', 'LOCAL LEGIS. STAFF EMP. III', NULL, NULL, NULL, NULL),
(120, NULL, NULL, NULL, NULL, b'1', 'LLS ASST. I', NULL, NULL, NULL, NULL),
(121, NULL, NULL, NULL, NULL, b'1', '(UTILITY WORKER I))', NULL, NULL, NULL, NULL),
(122, NULL, NULL, NULL, NULL, b'1', 'BARANGAY CHAIRMAN', NULL, NULL, NULL, NULL),
(123, NULL, NULL, NULL, NULL, b'1', 'LOCAL LEGISLATIVE STAFF EMP. V', NULL, NULL, NULL, NULL),
(124, NULL, NULL, NULL, NULL, b'1', 'ACCTG. CLERK', NULL, NULL, NULL, NULL),
(125, NULL, NULL, NULL, NULL, b'1', 'ACCTG. CLERK II', NULL, NULL, NULL, NULL),
(126, NULL, NULL, NULL, NULL, b'1', 'BUDGETING ASSISTANT', NULL, NULL, NULL, NULL),
(127, NULL, NULL, NULL, NULL, b'1', 'BUDGET OFFICER I', NULL, NULL, NULL, NULL),
(128, NULL, NULL, NULL, NULL, b'1', '(ADMINISTRATIVE OFFICER II)', NULL, NULL, NULL, NULL),
(129, NULL, NULL, NULL, NULL, b'1', 'ADMNISTRATIVE OFFICER IV', NULL, NULL, NULL, NULL),
(130, NULL, NULL, NULL, NULL, b'1', '(BUDGET OFFICER I)', NULL, NULL, NULL, NULL),
(131, NULL, NULL, NULL, NULL, b'1', '(BUDGETING ASSISTANT I)', NULL, NULL, NULL, NULL),
(132, NULL, NULL, NULL, NULL, b'1', 'ADMINISTRATIVE ASSISTANT VI', NULL, NULL, NULL, NULL),
(133, NULL, NULL, NULL, NULL, b'1', 'JOB ORDER VIII', NULL, NULL, NULL, NULL),
(134, NULL, NULL, NULL, NULL, b'1', 'EMERGENCY WORKER', NULL, NULL, NULL, NULL),
(135, NULL, NULL, NULL, NULL, b'1', '(CLERK IV)', NULL, NULL, NULL, NULL),
(136, NULL, NULL, NULL, NULL, b'1', 'ADMINISTRATIVE AIDE IV (CLERK II)', NULL, NULL, NULL, NULL),
(137, NULL, NULL, NULL, NULL, b'1', 'HUMAN RESOURCE MNGT. ASST.', NULL, NULL, NULL, NULL),
(138, NULL, NULL, NULL, NULL, b'1', 'HRMO I', NULL, NULL, NULL, NULL),
(139, NULL, NULL, NULL, NULL, b'1', 'HRMO II', NULL, NULL, NULL, NULL),
(140, NULL, NULL, NULL, NULL, b'1', 'ADMIN. OFFICER IV', NULL, NULL, NULL, NULL),
(141, NULL, NULL, NULL, NULL, b'1', '(HRMO II)', NULL, NULL, NULL, NULL),
(142, NULL, NULL, NULL, NULL, b'1', 'ADMINISTRATIVE ASISTANT II', NULL, NULL, NULL, NULL),
(143, NULL, NULL, NULL, NULL, b'1', 'STENOGRAPHIC REPORTER I', NULL, NULL, NULL, NULL),
(144, NULL, NULL, NULL, NULL, b'1', 'STENOGRAPHIC REPORTER II', NULL, NULL, NULL, NULL),
(145, NULL, NULL, NULL, NULL, b'1', '(STENOGRAPHIC REPORTER III)', NULL, NULL, NULL, NULL),
(146, NULL, NULL, NULL, NULL, b'1', 'ADMINISTRATIVE  ASSISTANT II', NULL, NULL, NULL, NULL),
(147, NULL, NULL, NULL, NULL, b'1', 'RECORDS OFFICER II', NULL, NULL, NULL, NULL),
(148, NULL, NULL, NULL, NULL, b'1', 'RECORDS OFFICER III', NULL, NULL, NULL, NULL),
(149, NULL, NULL, NULL, NULL, b'1', 'PERSONAL DRIVER/CHAUFFER', NULL, NULL, NULL, NULL),
(150, NULL, NULL, NULL, NULL, b'1', 'ADMINSTRATIVE ASSISTANT II', NULL, NULL, NULL, NULL),
(151, NULL, NULL, NULL, NULL, b'1', 'BOOK BINDER I', NULL, NULL, NULL, NULL),
(152, NULL, NULL, NULL, NULL, b'1', 'SENIOR ADMIN. ASST. I', NULL, NULL, NULL, NULL),
(153, NULL, NULL, NULL, NULL, b'1', '[UTILITY WORKER I]', NULL, NULL, NULL, NULL),
(154, NULL, NULL, NULL, NULL, b'1', 'E-LABORER', NULL, NULL, NULL, NULL),
(155, NULL, NULL, NULL, NULL, b'1', 'CONSULTANT RESEARCHER', NULL, NULL, NULL, NULL),
(156, NULL, NULL, NULL, NULL, b'1', 'HUMAN RESOURCE MANAGEMENT', NULL, NULL, NULL, NULL),
(157, NULL, NULL, NULL, NULL, b'1', 'SENIOR ADMINISTRATIVE ASSISTANT I', NULL, NULL, NULL, NULL),
(158, NULL, NULL, NULL, NULL, b'1', 'ADMINISTRATIVE AIDE VIII', NULL, NULL, NULL, NULL),
(159, NULL, NULL, NULL, NULL, b'1', 'LOCAL LEGISLATIVE STAFF OFFICER V', NULL, NULL, NULL, NULL),
(160, NULL, NULL, NULL, NULL, b'1', '-DO-', NULL, NULL, NULL, NULL),
(161, NULL, NULL, NULL, NULL, b'1', 'LOCAL LEGISLATIVE  STAFF OFFICER II', NULL, NULL, NULL, NULL),
(162, NULL, NULL, NULL, NULL, b'1', 'STAFF OF CONGRESSMAN PONCE', NULL, NULL, NULL, NULL),
(163, NULL, NULL, NULL, NULL, b'1', 'STAFF OF COUNCILOR LACSON', NULL, NULL, NULL, NULL),
(164, NULL, NULL, NULL, NULL, b'1', 'BARANGAY KAGAWAD', NULL, NULL, NULL, NULL),
(165, NULL, NULL, NULL, NULL, b'1', '(ACCTG. CLERK II)', NULL, NULL, NULL, NULL),
(166, NULL, NULL, NULL, NULL, b'1', 'HUMAN RESOURCE MANAGEMENT ASSISTANT', NULL, NULL, NULL, NULL),
(167, NULL, NULL, NULL, NULL, b'1', 'LEGISLATIVE STAFF OFFICER I', NULL, NULL, NULL, NULL),
(168, NULL, NULL, NULL, NULL, b'1', 'LEGISLATIVE STAFF OFFICER III', NULL, NULL, NULL, NULL),
(169, NULL, NULL, NULL, NULL, b'1', 'LEGISLATIVE STAFF OFFICER V', NULL, NULL, NULL, NULL),
(170, NULL, NULL, NULL, NULL, b'1', 'SUPERVISING ADMIN. OFFICER', NULL, NULL, NULL, NULL),
(171, NULL, NULL, NULL, NULL, b'1', 'CHIEF ADMIN. OFFICER', NULL, NULL, NULL, NULL),
(172, NULL, NULL, NULL, NULL, b'1', 'SUPERVISING ADMINISTRTIVE OFFICER', NULL, NULL, NULL, NULL),
(173, NULL, NULL, NULL, NULL, b'1', 'TECHNICAL ASSISTANT', NULL, NULL, NULL, NULL),
(174, NULL, NULL, NULL, NULL, b'1', 'LEGISLATIVE STAFF OFFICER IV', NULL, NULL, NULL, NULL),
(175, NULL, NULL, NULL, NULL, b'1', 'HUMAN RESOURCE MGT. ASSISTANT', NULL, NULL, NULL, NULL),
(176, NULL, NULL, NULL, NULL, b'1', 'HUMAN RESOURCE MGT. OFFICER I', NULL, NULL, NULL, NULL),
(177, NULL, NULL, NULL, NULL, b'1', 'PERMANENT', NULL, NULL, NULL, NULL),
(178, NULL, NULL, NULL, NULL, b'1', 'LEGISLATIVE STAFF OFFICER', NULL, NULL, NULL, NULL),
(179, NULL, NULL, NULL, NULL, b'1', 'ADMINSTRATIVE ASSISTANT V', NULL, NULL, NULL, NULL),
(180, NULL, NULL, NULL, NULL, b'1', 'STENOGRAPGIC REPORTER III', NULL, NULL, NULL, NULL),
(181, NULL, NULL, NULL, NULL, b'1', '(MESSENGER)', NULL, NULL, NULL, NULL),
(182, NULL, NULL, NULL, NULL, b'1', 'LOCAL LEGISLATIVE STAFF ASST. III', NULL, NULL, NULL, NULL),
(183, NULL, NULL, NULL, NULL, b'1', '(LOCAL LEGISLATIVE STAFF ASST. III)', NULL, NULL, NULL, NULL),
(184, NULL, NULL, NULL, NULL, b'1', 'SR. ADMINISTRATIVE ASST. IV (LOC. LEGIS. STAFF OFF. III)', NULL, NULL, NULL, NULL),
(185, NULL, NULL, NULL, NULL, b'1', 'SR. ADMINISTRATIVE ASST. IV', NULL, NULL, NULL, NULL),
(186, NULL, NULL, NULL, NULL, b'1', 'COMM. AFFAIRS ASST. I', NULL, NULL, NULL, NULL),
(187, NULL, NULL, NULL, NULL, b'1', 'P.S.OFFICER I', NULL, NULL, NULL, NULL),
(188, NULL, NULL, NULL, NULL, b'1', 'PRIVATE SECRETARY', NULL, NULL, NULL, NULL),
(189, NULL, NULL, NULL, NULL, b'1', 'NO POSITION', NULL, NULL, NULL, NULL),
(190, NULL, NULL, NULL, NULL, b'1', 'DATA ENCODER', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profession`
--

CREATE TABLE `profession` (
  `id` bigint NOT NULL,
  `is_active` bit(1) NOT NULL,
  `profession_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profession`
--

INSERT INTO `profession` (`id`, `is_active`, `profession_name`) VALUES
(1, b'1', 'ENGINEER'),
(2, b'1', 'ACCOUNTANT'),
(3, b'1', 'VIBE CODER');

-- --------------------------------------------------------

--
-- Table structure for table `proffesion`
--

CREATE TABLE `proffesion` (
  `id` bigint NOT NULL,
  `is_active` bit(1) NOT NULL,
  `profession_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_grade`
--

CREATE TABLE `salary_grade` (
  `id` bigint NOT NULL,
  `is_active` bit(1) NOT NULL,
  `salary_grade_group` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `salary_grade_number` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scholarships`
--

CREATE TABLE `scholarships` (
  `id` bigint NOT NULL,
  `is_active` bit(1) NOT NULL,
  `scholarship_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scholarships`
--

INSERT INTO `scholarships` (`id`, `is_active`, `scholarship_name`) VALUES
(1, b'1', 'DOST SCHOLAR');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `id` bigint NOT NULL,
  `is_active` bit(1) NOT NULL,
  `school_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`id`, `is_active`, `school_name`) VALUES
(1, b'1', 'HARVENT SCHOOL PANGASINAN'),
(2, b'1', 'DIVINE WORLD ACADEMY, PANGASINAN'),
(3, b'1', 'UNIVERSITY OF STO. TOMAS'),
(4, b'1', 'ATENEO LAW SCHOOL/ ARELLANO LAW FOUNDATION'),
(5, b'1', 'PLM GRADUATE SCHOOL OF LAW'),
(6, b'1', 'MAGURANG  ELEMENTARY SCHOOL'),
(7, b'1', 'ANTONIO LUNA ELEMENTARY SCHOOL'),
(8, b'1', 'JOSE P LAUREL HIGH SCHOOL'),
(9, b'1', 'POLANGUI GENERAL COMPRESHENSIVE HIGH SCHOOL'),
(10, b'1', 'JOBS SECRETAIAL AND TECHNICAL SCHOOL'),
(11, b'1', 'BACOOD ELEMENTARY SCHOOL'),
(12, b'1', 'ELPIDIO QUIRINO HIGH SCHOOL'),
(13, b'1', 'LYCEUM OF THE PHILIPPINES'),
(14, b'1', 'NO SCHOOL'),
(15, b'1', 'RAFAEL PALMA ELEMENTARY SCHOOL'),
(16, b'1', 'MANILA HIGH SCHOOL'),
(17, b'1', 'FAR EASTERN UNIVERSITY'),
(18, b'1', 'PEDRO GUEVARA ELEMENTARY SCHOOL'),
(19, b'1', 'JOSE ABAD SANTOS HIGH SCHOOL'),
(20, b'1', 'POLYTECHNIC UNIVERSITY OF THE PHILIPPINES'),
(21, b'1', 'LA PAZ'),
(22, b'1', 'ARAULLO HIGH SCHOOL'),
(23, b'1', 'PAMANTASAN NG LUNGSOD NG MAYNILA'),
(24, b'1', 'ANDRES BONIFACIO ELEMENTARY SCHOOL'),
(25, b'1', 'CAYETANO ARELLANO HIGH SCHOOL'),
(26, b'1', 'ADAMSON UNIVERSITY'),
(27, b'1', 'FRANCISCO BENITEZ ELEMENTARY SCHOOL'),
(28, b'1', 'FLORENTINO TORRES HIGH SCHOOL'),
(29, b'1', 'TESDA'),
(30, b'1', 'SAINT JUDE COLLEGE, MANILA'),
(31, b'1', 'BAGONG BARANGAY ELEMENTARY SCHOOL'),
(32, b'1', 'MANUEL A. ROXAS HIGH SCHOOL'),
(33, b'1', 'TECHNOLOGICAL UNIVERSITY OF THE PHILIPPINES'),
(34, b'1', 'ESPIRITU SANTO PAROCHIAL SCHOOL'),
(35, b'1', 'UNIVERSITY OF THE EAST'),
(36, b'1', 'STA.ROSA ACADEMY'),
(37, b'1', 'NORTHWESTERN UNIVERSITY'),
(38, b'1', 'DR. ALEJANDRO ALBERT ELEMENTARY SCHOOL'),
(39, b'1', 'CENTRAL INSTITUTE OF TECHNOLOGY'),
(40, b'1', 'E.A.R.N'),
(41, b'1', 'JUSTO LUKBAN ELEMENTARY SCHOOL'),
(42, b'1', 'POLYTECHNIC UNIVERSITY OF THE PHILIPPINES (PUP)'),
(43, b'1', 'STA. ANA ELEMENTARY SCHOOL'),
(44, b'1', 'VILLAMOR HIGH SCHOOL'),
(45, b'1', 'ARELLANO MABINI HIGH SCHOOL'),
(46, b'1', 'PHILIPPINE CHRISTIAN UNIVERSITY'),
(47, b'1', 'SAN ROQUE ELEMENTARY SCHOOL'),
(48, b'1', 'NEW ERA COLLEGE'),
(49, b'1', 'AMA COMPUTER COLLEGE'),
(50, b'1', 'SAN BEDA COLLEGE OF LAW'),
(51, b'1', 'MLQU SCHOOL OF LAW'),
(52, b'1', 'ST. JOSEPH\'S COLLEGE'),
(53, b'1', 'UST / PAMANTASAN NG LUNGSOD NG MAYNILA'),
(54, b'1', 'SAINT ANTHONY SCHOOL'),
(55, b'1', 'DATAMEX COMPUTER COLLEGE'),
(56, b'1', 'MAKATI ELEMENTARY SCHOOL'),
(57, b'1', 'MAKATI HIGH SCHOOL'),
(58, b'1', 'TECHNOLOGICAL INSTITUTE OF THE PHILIPPINES'),
(59, b'1', 'LEGARDA ELEMENTARY SCHOOL'),
(60, b'1', 'RIZAL EXPERIMENTAL STATION PILOT SCHOOL AND COTTEGES/ALS ACCREDITATION AND EQUIVALENCY PASSER'),
(61, b'1', 'UNIVERSIDAD DE MANILA'),
(62, b'1', 'GRACIANO LOPEZ JAENA ELEMENTARY SCHOOL'),
(63, b'1', 'NATIONAL TEACHERS COLLEGE'),
(64, b'1', 'PACO CATHOLIC SCHOOL'),
(65, b'1', 'ARAULLO EVENING VOCATIONAL SCHOOL'),
(66, b'1', 'PAMANTASAN NG MAKATI'),
(67, b'1', 'HOPE CHRISTIAN ELEMENTARY SCHOOL'),
(68, b'1', 'HOPE CHRISTIAN HIGH SCHOOL'),
(69, b'1', 'STI COLLEGE'),
(70, b'1', 'GERONIMO SANTIAGO ELEMENTARY SCHOOL'),
(71, b'1', 'MANUEL L. QUEZON UNIVERSITY'),
(72, b'1', 'PEDRO GUEVARRA'),
(73, b'1', 'JOSE ABAD SANTOS'),
(74, b'1', 'MATER DEI COLLEGE'),
(75, b'1', 'UNIVERSITY OF STO.TOMAS'),
(76, b'1', 'ALTURA ELEMENTARY SCHOOL'),
(77, b'1', 'RAMON AVECENA HIGH SCHOOL'),
(78, b'1', 'JUAN LUNA ELEMENTARY SCHOOL'),
(79, b'1', 'NCBA HIGH SCHOOL'),
(80, b'1', 'AURALLIO HIGH SCHOOL'),
(81, b'1', 'EAC'),
(82, b'1', 'KNOX ELEMENTARY SCHOOL'),
(83, b'1', 'BETHEL HIGH SCHOOL'),
(84, b'1', 'FEATI UNIVERSITY'),
(85, b'1', 'MALVAR ELEMENTARY SCHOOL'),
(86, b'1', 'ARELLANO JUAN SUMULONG HIGH SCHOOL (LEGARDA)'),
(87, b'1', 'PHILIPPINE  MERHANT SCHOOL'),
(88, b'1', 'ANTONIO REGIDOR ELEMENTARY SCHOOL'),
(89, b'1', 'DO�A TEODORA ALONZO HIGH SCHOOL'),
(90, b'1', 'P. GOMEZ ELEMENTARY SCHOOL'),
(91, b'1', 'MAPUA INSTITUTE OF TECH.'),
(92, b'1', 'ST. FRANCIS SCHOOL'),
(93, b'1', 'LA CONCORDIA COLLEGE'),
(94, b'1', 'PHILIPPINE WOMEN\'S UNIVERSITY'),
(95, b'1', 'EMILIO AGUINALDO COLLEGE'),
(96, b'1', 'ISAAC LOPEZ INTEGRATED SCHOOL'),
(97, b'1', 'ARELLANO UNIVERSITY PLARIDEL HIGH SCHOOL'),
(98, b'1', 'INTERNAL AUDITOR OF QUALITY MGT. SYSTEMS'),
(99, b'1', 'CENTRO ESCOLAR UNIVERSITY'),
(100, b'1', 'RAMON MAGSAYSAY HIGH SCHOOL'),
(101, b'1', 'STA. ISABEL COLLEGE'),
(102, b'1', 'J. ZAMORA ELEMENTARY SCHOOL'),
(103, b'1', 'TECHNOLOGICAL INSTITUTE OF THE PHILIPPINES BSC BANKING & FINANCE'),
(104, b'1', 'HOLY CHILD CATHOLIC SCHOOL'),
(105, b'1', 'GENTLE SHEPHERD MONTESSORI INC.'),
(106, b'1', 'THE NATIONAL TEACHERS COLLEGE'),
(107, b'1', 'DAANG HARI - I ELEMENTARY SCHOOL'),
(108, b'1', 'ELISA ESGUERRA HIGH SCHOOL'),
(109, b'1', 'EULOGIO AMANG RODRIGUEZ INSTITUTE OF SCIENCE AND TECHNOLOGY'),
(110, b'1', 'SAN BEDA ALABANG'),
(111, b'1', 'MANILA SCIENCE HIGH SCHOOL'),
(112, b'1', 'UNIVERSITY OF THE PHILIPPINES'),
(113, b'1', 'DE LA SALLE - COLLEGE OF SAINT BENILDE'),
(114, b'1', 'MABINI ELEMENTARY SCHOOL'),
(115, b'1', 'LA SALETTE HIGH SCHOOL'),
(116, b'1', 'EMPLOYMENT APPRENTICESHIP RESEARCH NETWORK INC. (EARN)'),
(117, b'1', 'FAR EASTERN UNIVERSITY (FEU)'),
(118, b'1', 'JUAN SUMULONG ELEMENTARY SCHOOL'),
(119, b'1', 'FAR EASTERN UNIVERSITY GIRLS HIGH SCHOOL'),
(120, b'1', 'ARSENIO H. LACSON ELEMENTARY SCHOOL'),
(121, b'1', 'MANGGAHAN ELEMENTARY SCHOOL'),
(122, b'1', 'MARIKINA INSTITUTE OF SCIENCE AND TECHNOLOGY'),
(123, b'1', 'DE LA SALLE UNIVERSITY'),
(124, b'1', 'UNIVERSITY OF HEIDELBERG INSTITUTION OF PUBLIC HEALTH'),
(125, b'1', 'PAMANTASAN NG LUNGSOD NG MAYNILA - GRADUATE SCHOOL OF LAW'),
(126, b'1', 'COLEGIO DE SAN JUAN DE LETRAN'),
(127, b'1', 'LORENZO RUIZ ACADEMY'),
(128, b'1', 'MANILA LAW COLLEGE'),
(129, b'1', 'COLEGIO DE SAN LORENZO DE PAMPANGA'),
(130, b'1', 'IMMACULATE CONCEPCION ACADEMY OF MANILA'),
(131, b'1', 'EMILIO JACINTO ELEMENTARY SCHOOL'),
(132, b'1', 'DR JUAN G. NOLASCO HIGH SCHOOL'),
(133, b'1', 'ST. JUDE COLLEGE'),
(134, b'1', 'BALILING ELEMENTARY SCHOOL'),
(135, b'1', 'ST. TERESITA\'S ACADEMY'),
(136, b'1', 'SAINT MARY\'S UNIVERSITY'),
(137, b'1', 'PUP-OPEN UNIVERSITY SYSTEM'),
(138, b'1', 'MARGARITA ROXAS ELEMENTARY SCHOOL'),
(139, b'1', 'MARIANO MARCOS MEMORIAL HIGH SCHOOL'),
(140, b'1', 'DATA PRO COMPUTER SCHOOL'),
(141, b'1', 'CECILIO APOSTOL ELEMENTARY SCHOOL'),
(142, b'1', 'FAR EASTERN UNIVERSITY (LLS)'),
(143, b'1', 'G. SANTIAGO ELEMENTARY SCHOOL'),
(144, b'1', 'V. MAPA HIGH SCHOOL'),
(145, b'1', 'PRESIDENT DIOSDADO MACAPAGAL TECHNOLOGICAL ACADEMY'),
(146, b'1', 'EAST CENTRAL SCHOOL'),
(147, b'1', 'PARANAQUE NATIONAL HIGH SCHOOL'),
(148, b'1', 'KABAKA MTAC'),
(149, b'1', 'AMA COMPUTER COLLEGE PARA�AQUE BRANCH'),
(150, b'1', 'STA ELENA ELEMENTARY SCHOOL'),
(151, b'1', 'RIZAL NATIONAL HIGH SCHOOL'),
(152, b'1', 'SAMSON COLLEGE OF SCIENCE & TECHNOLOGY'),
(153, b'1', 'PEDRO GUEVARRA ELEMENTARY SCHOOL'),
(154, b'1', 'ISCOM COMPUTER LEARNING CENTER'),
(155, b'1', 'DON BOSCO ELEMENTARY SCHOOL'),
(156, b'1', 'ST. FRANCIS HIGH SCHOOL'),
(157, b'1', 'EPIFANIO DELOS SANTOS ELEMENTARY SCHOOL'),
(158, b'1', 'ESTEBAN ABADA HIGH SCHOOL'),
(159, b'1', 'RIZAL ELEMENTARY SCHOOL'),
(160, b'1', 'ARELLANO HIGH SCHOOL'),
(161, b'1', 'SAN SEBASTIAN COLLEGE'),
(162, b'1', 'PHILIPPINE LAW SCHOOL'),
(163, b'1', 'TOMAS PINPIN ELEMENTARY SCHOOL'),
(164, b'1', 'TOMAS DEL ROSARIO ACADEMY'),
(165, b'1', 'CORA DELOROSO CAREER CENTRE'),
(166, b'1', 'COLLEGE OF THE HOLY SPIRIT'),
(167, b'1', 'EPIFANO DELO SANTOS ELEMENTARY SCHOOL'),
(168, b'1', 'AMA CLC'),
(169, b'1', 'DALAHICAN ELEMENTARY SCHOOL'),
(170, b'1', 'QUEZON NATIONAL HIGH SCHOOL'),
(171, b'1', 'TESDA, LUCENA'),
(172, b'1', 'MANUELS ENVERGARA UNIVERSITY FOUNDATION'),
(173, b'1', 'TOMAS EARNSHAW ELEMENTARY SCHOOL'),
(174, b'1', 'LOURDES SCHOOL OF QUEZON CITY'),
(175, b'1', 'UNIVERSITY OF SANTO TOMAS'),
(176, b'1', 'HOLY HEART CHRISTIAN ACADEMY'),
(177, b'1', 'LYCEUM OF THE PHILIPPINES UNIVERSITY - MANILA'),
(178, b'1', 'SAINT GREGORY ACADEMY'),
(179, b'1', 'SAINT FRANCIS ACADEMY'),
(180, b'1', 'MOISES SALVADOR ELEMENTARY SCHOOL'),
(181, b'1', 'JUAN SUMULONG HIGH SCHOOL (AU)'),
(182, b'1', 'ARELLANO UNIVERSITY'),
(183, b'1', 'MORNING BREEZE ELEMENTARY SCHOOL'),
(184, b'1', 'CLARO M. RECTO HIGH SCHOOL'),
(185, b'1', 'MANILA CENTRAL UNIVERSITY'),
(186, b'1', 'ISABELO DELOS REYES  ELEMENTARY SCHOOL'),
(187, b'1', 'GREGORIO PERFECTO HIGH SCHOOL'),
(188, b'1', 'SAMSON COLLEGE OF SCIENCE AND TECHNOLOGY'),
(189, b'1', 'CORA DOLOROSO CAREER CENTRE'),
(190, b'1', 'CLARET SCHOOL/ST. JAMES SCHOOL'),
(191, b'1', 'LLAMAS SCHOOL'),
(192, b'1', 'UNIBERSIDAD DE MANILA'),
(193, b'1', 'FERNANDO MA. GUERRERO ELEMENTARY SCHOOL'),
(194, b'1', 'GREGG BUSINESS COLLEGE'),
(195, b'1', 'DR. JOSE RIZAL ELEMENTARY SCHOOL'),
(196, b'1', 'PRES. SERGIO OSMENA HIGH SCHOOL'),
(197, b'1', 'MANILA COMPUTER TRAINING CENTER'),
(198, b'1', 'PMI COLLEGES'),
(199, b'1', 'MANUEL L. QUEZON ELEMENTARY SCHOOL'),
(200, b'1', 'MOUNTAIN HEIGHTS HIGH SCHOOL'),
(201, b'1', 'OUR LADY OF FATIMA UNIVERSITY'),
(202, b'1', 'ST. JOSEPH SCHOOL'),
(203, b'1', 'EDUCATION POWER CORPORATION'),
(204, b'1', 'ST. LOUIS UNIVERSITY'),
(205, b'1', 'MAGAT ELEMENTARY SCHOOL'),
(206, b'1', 'FERNANDO MARIA GUERRERO ELEMENTARY SCHOOL'),
(207, b'1', 'PHILIPPINE COLLEGE OF CRIMINOLOGY'),
(208, b'1', 'LAKANDULA ELEMENTARY SCHOOL'),
(209, b'1', 'LAKANDULA HIGH SCHOOL'),
(210, b'1', 'AMA COMPUTER LEARNING CENTER'),
(211, b'1', 'CITY COLLEGE OF MANILA'),
(212, b'1', 'DILIMAN PREPARATORY SCHOOL'),
(213, b'1', 'BAGANGA ELEMENTARY SCHOOL'),
(214, b'1', 'TONDO HIGH SCHOOL'),
(215, b'1', 'MAGAT SALAMAT ELEMENTARY SCHOOL'),
(216, b'1', 'EARN/PUP/GREGG BUSINESS SCHOOL'),
(217, b'1', 'DONA JUANA ELEMENTARY SCHOOL'),
(218, b'1', 'COMMONWEALTH HIGH SCHOOL'),
(219, b'1', 'NEW ERA UNIVERSITY'),
(220, b'1', 'UNIVERSITY OF MANILA'),
(221, b'1', 'F. BENITEZ ELEMENTARY SCHOOL'),
(222, b'1', 'DOMINGO LACSON NATIONAL HIGH SCHOOL'),
(223, b'1', 'UNIVERSITY OF NEGROS OCCIDENTAL RECOLETOS'),
(224, b'1', 'POLILLO ELEMENTARY SCHOOL'),
(225, b'1', 'POLILLO NATIONAL HIGH SCHOOL'),
(226, b'1', 'BACANI LEARNING CENTER'),
(227, b'1', 'ROSAURO ALMARIO ELEMENTARY SCHOOL'),
(228, b'1', 'RAJA SOLIMAN SCIENCE AND TECHNOLOGY HIGH SCHOOL'),
(229, b'1', 'G. DEL PILAR ELEMENTARY SCHOOL'),
(230, b'1', 'J. ABAD SANTOS HIGH SCHOOL'),
(231, b'1', 'TANGOS ELEMENTARY SCHOOL'),
(232, b'1', 'NAVOTAS NATIONAL HIGH SCHOOL'),
(233, b'1', 'AKLAN POLYTECHNIC COLLEGE'),
(234, b'1', 'STA. MESA PAROCHIAL SCHOOL'),
(235, b'1', 'MINUHANG ELEMENTARY SCHOOL'),
(236, b'1', 'MINUHANG BRGY HIGH SCHOOL'),
(237, b'1', 'EASTERN VISAYAS STATE UNIVERSITY FORMER LIT'),
(238, b'1', 'MANILA CATHEDRAL SCHOOL'),
(239, b'1', 'JOSE CORAZON DE JESUS'),
(240, b'1', 'PHILIPPINE MARITIME INSTITUTE'),
(241, b'1', 'PHILIPPINE PASAY CHUNG HUA ACADEMY'),
(242, b'1', 'MALATE CATHOLIC SCHOOL'),
(243, b'1', 'SPI FOUNDATION'),
(244, b'1', 'PHILIPPINE MARITIME INSTITUTE COLLEGES'),
(245, b'1', 'PUNTA ELEMENTARY SCHOOL'),
(246, b'1', 'INFORMATICS COMPUTER INSTITUTE PHILS.'),
(247, b'1', 'MICROCADD TECHNOLOGIES CO., INC.'),
(248, b'1', 'MANSALAY ELEMENTARY SCHOOL'),
(249, b'1', 'MANSALAY CATHOLIC HIGH SCHOOL'),
(250, b'1', 'SAMSON TECHNOLOGY SCHOOL'),
(251, b'1', 'GEN. LICERIO ELEMENTARY SCHOOL'),
(252, b'1', 'VICTORINO MAPA HIGH SCHOOL'),
(253, b'1', 'POLYTECHNIC UNIVERSITY OF THE PHILIPPINES (PUP-MAIN)'),
(254, b'1', 'BANGA ELEMENTARY SCHOOL'),
(255, b'1', 'CENTRAL VISAYAN INSTITUTE'),
(256, b'1', 'NORTHWESTERN VISAYAN COLLEGES');

-- --------------------------------------------------------

--
-- Table structure for table `service_record`
--

CREATE TABLE `service_record` (
  `id` bigint NOT NULL,
  `branch` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_present` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lv_abs` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `separation_cause` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `separation_date` date DEFAULT NULL,
  `station` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `employee_id` bigint DEFAULT NULL,
  `employee_status_id` bigint DEFAULT NULL,
  `district` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `eligibility` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `employment_status_notes` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `entrance_date` date DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `office_assignment` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `page_no` int DEFAULT NULL,
  `plantilla_no` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `position_title_notes` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `salary_grade` int DEFAULT NULL,
  `signing_date` date DEFAULT NULL,
  `status_of_appointment` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status_of_sepeparation` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `step_inc` int DEFAULT NULL,
  `training` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `vice` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `position_title_id` bigint DEFAULT NULL,
  `level_of_position` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `agency_receiving_officer` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_of_action_csc_action` date DEFAULT NULL,
  `date_of_release_csc_action` date DEFAULT NULL,
  `mode_of_publication` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `publication_date_from` date DEFAULT NULL,
  `publication_date_to` date DEFAULT NULL,
  `validate_inv` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_record_report_request`
--

CREATE TABLE `service_record_report_request` (
  `id` bigint NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `last_modified_by` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_modified_date` datetime(6) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_general_ci,
  `print_date` date DEFAULT NULL,
  `employee_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_record_signatory`
--

CREATE TABLE `service_record_signatory` (
  `id` bigint NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `signatory` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_user`
--

CREATE TABLE `sys_user` (
  `id` bigint NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `last_modified_by` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_modified_date` datetime(6) DEFAULT NULL,
  `birth_place` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prefix` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `suffix` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `profile_photo` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sys_user`
--

INSERT INTO `sys_user` (`id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `birth_place`, `birthdate`, `first_name`, `gender`, `last_name`, `middle_name`, `prefix`, `suffix`, `password`, `profile_photo`, `user_type`, `username`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, 'Ian', NULL, 'Orozco', NULL, NULL, NULL, '$2a$11$iH5Rzl6TRLQci\r\n  4.Kkm.waOzcEIVFx7W23BUeY35ROOnPKFQ2oHnQu', NULL, 'ADMIN', 'admin'),
(2, NULL, NULL, NULL, NULL, NULL, NULL, 'HR', NULL, 'Officer JR.', NULL, NULL, NULL, '$2a$11$VGHLvjxGwoCr1\r\n  MCOZcIgbuEEcULDM5llH/qUgHKCmvzvoRVwSXv0a', NULL, 'HR_OFFICER', 'ManilaHR');

-- --------------------------------------------------------

--
-- Table structure for table `voluntary_work`
--

CREATE TABLE `voluntary_work` (
  `id` bigint NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `nature_of_work` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `no_hours` int NOT NULL,
  `org_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `up_to_present` bit(1) NOT NULL,
  `employee_id` bigint DEFAULT NULL,
  `employee_voluntary_experience` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `work_experience`
--

CREATE TABLE `work_experience` (
  `id` bigint NOT NULL,
  `appointment_status` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `department` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `govt_office` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `immediate_supervisor` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `job_description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `office_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `position_title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `salary` decimal(19,2) DEFAULT NULL,
  `salary_grade` int NOT NULL,
  `step_no` int NOT NULL,
  `up_to_present` bit(1) NOT NULL,
  `employee_id` bigint DEFAULT NULL,
  `part_time` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_honors`
--
ALTER TABLE `academic_honors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKq4m60pqp7shng4u5n9h2346mp` (`employee_id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9daqcqq2nrtbcr5xqeivvkorq` (`employee_id`),
  ADD KEY `FK6dkxjytgu6sicuyjgkw78s6th` (`position_title_id`);

--
-- Indexes for table `civil_service_eligibility`
--
ALTER TABLE `civil_service_eligibility`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK11els6twcr3p8n496oo4bdjay` (`employee_id`);

--
-- Indexes for table `clearance`
--
ALTER TABLE `clearance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKakvatv27oixrlsnjv78yw3yg8` (`employee_id`);

--
-- Indexes for table `clearance_approvers`
--
ALTER TABLE `clearance_approvers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `competency`
--
ALTER TABLE `competency`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKkpn6sc53ejygxrrdbnguptcpr` (`position_title_id`),
  ADD KEY `FKhuo9e2bp4mt5atdvgddrapv0s` (`position_title_competency`);

--
-- Indexes for table `degree_course`
--
ALTER TABLE `degree_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `degree_level`
--
ALTER TABLE `degree_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `degree_levels`
--
ALTER TABLE `degree_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKbjc7vabch3lr6hsw613gxkxxj` (`approver1_id`),
  ADD KEY `FK3q4sm4p8tcs1mwgjf86n8hgv9` (`approver2_id`);

--
-- Indexes for table `docs201`
--
ALTER TABLE `docs201`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKa1gpfxikx217mh8h096jgusjs` (`document_type_id`),
  ADD KEY `FKj0aeq15bvnol7i3ufwrnkw39` (`employee_id`);

--
-- Indexes for table `docs201_doc_file_urls`
--
ALTER TABLE `docs201_doc_file_urls`
  ADD KEY `FK3qk06t8w6mw4k95uxlatix27v` (`docs201_id`);

--
-- Indexes for table `document_type`
--
ALTER TABLE `document_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `educational_background`
--
ALTER TABLE `educational_background`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1yl0u47llsher677lb30d00ab` (`academic_honors_id`),
  ADD KEY `FKpnt03dlnr9yc23h6mjlbxslia` (`degree_course_id`),
  ADD KEY `FK4gcrbimdavkjfm5qpnl5v8bja` (`degree_level_id`),
  ADD KEY `FK14ceskuk61xm43mev8c50fppw` (`employee_id`),
  ADD KEY `FKc5j2sxb0iea7c5kwqyrtvigb8` (`scholarship_id`),
  ADD KEY `FKnhe9kp08si436d9ejbx2db83q` (`school_id`);

--
-- Indexes for table `eligibility`
--
ALTER TABLE `eligibility`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_username_employee` (`username`),
  ADD KEY `FKoxlp1b4xvwyjgb7hh4wd54jy4` (`division_id`),
  ADD KEY `FK4704ko2smpmsrtx3v0lkc4ovk` (`employee_status_id`),
  ADD KEY `FK4j53t0rj5oh8xyu2puvrbyq7u` (`position_title_id`),
  ADD KEY `FKckh7umfgmvx1yh9plcx9w6kg6` (`district_id`);

--
-- Indexes for table `employee_status`
--
ALTER TABLE `employee_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_references`
--
ALTER TABLE `emp_references`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKn2i813wxvlr0xgqlv5f4f4ps0` (`employee_id`),
  ADD KEY `FKetuxsit5caw4vgyi7h6vv4276` (`employee_references`);

--
-- Indexes for table `family_bg`
--
ALTER TABLE `family_bg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKemp90k1r0c263dk7c9cn464tq` (`employee_id`);

--
-- Indexes for table `government_issued_id`
--
ALTER TABLE `government_issued_id`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKc6haxah0djpl8oft30at55y6u` (`employee_id`),
  ADD KEY `FKmqxg82ptlo41mfmr2fmvk33nq` (`employee_government_id`);

--
-- Indexes for table `learning_development`
--
ALTER TABLE `learning_development`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKk72tlxsaana3893wolwalil0r` (`employee_id`),
  ADD KEY `FKkcboybaamo0cdnr7neguqger4` (`learning_development_type`),
  ADD KEY `FKfof3xc7p1c73gp9phjy7qi1s6` (`employee_learning_development`);

--
-- Indexes for table `learning_type`
--
ALTER TABLE `learning_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_info`
--
ALTER TABLE `other_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK7x5ogqujoq86e2hpol0bnyhnd` (`employee_id`),
  ADD KEY `FKqdbsvjxbomlp6tnx9ivqh4txi` (`employee_other_info`);

--
-- Indexes for table `other_info_question`
--
ALTER TABLE `other_info_question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKkr9p46vncrck6moify54askn` (`employee_id`);

--
-- Indexes for table `position_description_form`
--
ALTER TABLE `position_description_form`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKoffeukona1d28k4x1gax3tn1l` (`position_title_id`);

--
-- Indexes for table `position_titles`
--
ALTER TABLE `position_titles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9lkrr4b0q6a7tq9caee9iyd9` (`position_title_employment`),
  ADD KEY `FKf4toreyvllr9378baqgc14v1a` (`position_title_level`),
  ADD KEY `FKnwln3rosxmpeskj19tg687vps` (`position_title_salary_grade`);

--
-- Indexes for table `profession`
--
ALTER TABLE `profession`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proffesion`
--
ALTER TABLE `proffesion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_grade`
--
ALTER TABLE `salary_grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scholarships`
--
ALTER TABLE `scholarships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_record`
--
ALTER TABLE `service_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK2er2bwv51vvq5sntfa0jc4mi3` (`employee_id`),
  ADD KEY `FKmpsbsvhs3rg1tixamymmkucts` (`employee_status_id`),
  ADD KEY `FKr1rq1lc08hgb7rohgnlcmarxy` (`position_title_id`);

--
-- Indexes for table `service_record_report_request`
--
ALTER TABLE `service_record_report_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKcgcy7q273bv68sxxp90j6ht6d` (`employee_id`);

--
-- Indexes for table `service_record_signatory`
--
ALTER TABLE `service_record_signatory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_user`
--
ALTER TABLE `sys_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_username_sys_user` (`username`);

--
-- Indexes for table `voluntary_work`
--
ALTER TABLE `voluntary_work`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKs02tcmltgv4cd3c7bc6f4n5sv` (`employee_id`),
  ADD KEY `FK4i49p8jxkeoiolo7fxstb462u` (`employee_voluntary_experience`);

--
-- Indexes for table `work_experience`
--
ALTER TABLE `work_experience`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKj6hlvbxs4ak90odkb1ex0c4yq` (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_honors`
--
ALTER TABLE `academic_honors`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `civil_service_eligibility`
--
ALTER TABLE `civil_service_eligibility`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `clearance`
--
ALTER TABLE `clearance`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `clearance_approvers`
--
ALTER TABLE `clearance_approvers`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `competency`
--
ALTER TABLE `competency`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `degree_course`
--
ALTER TABLE `degree_course`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=450;

--
-- AUTO_INCREMENT for table `degree_level`
--
ALTER TABLE `degree_level`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `degree_levels`
--
ALTER TABLE `degree_levels`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `division`
--
ALTER TABLE `division`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `docs201`
--
ALTER TABLE `docs201`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `document_type`
--
ALTER TABLE `document_type`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `educational_background`
--
ALTER TABLE `educational_background`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=937;

--
-- AUTO_INCREMENT for table `eligibility`
--
ALTER TABLE `eligibility`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=639;

--
-- AUTO_INCREMENT for table `employee_status`
--
ALTER TABLE `employee_status`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `emp_references`
--
ALTER TABLE `emp_references`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT for table `family_bg`
--
ALTER TABLE `family_bg`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=518;

--
-- AUTO_INCREMENT for table `government_issued_id`
--
ALTER TABLE `government_issued_id`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `learning_development`
--
ALTER TABLE `learning_development`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=812;

--
-- AUTO_INCREMENT for table `learning_type`
--
ALTER TABLE `learning_type`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `other_info`
--
ALTER TABLE `other_info`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;

--
-- AUTO_INCREMENT for table `other_info_question`
--
ALTER TABLE `other_info_question`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `position_description_form`
--
ALTER TABLE `position_description_form`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `position_titles`
--
ALTER TABLE `position_titles`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `profession`
--
ALTER TABLE `profession`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `proffesion`
--
ALTER TABLE `proffesion`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_grade`
--
ALTER TABLE `salary_grade`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scholarships`
--
ALTER TABLE `scholarships`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `service_record`
--
ALTER TABLE `service_record`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3235;

--
-- AUTO_INCREMENT for table `service_record_report_request`
--
ALTER TABLE `service_record_report_request`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `service_record_signatory`
--
ALTER TABLE `service_record_signatory`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sys_user`
--
ALTER TABLE `sys_user`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `voluntary_work`
--
ALTER TABLE `voluntary_work`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `work_experience`
--
ALTER TABLE `work_experience`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FKq4m60pqp7shng4u5n9h2346mp` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`);

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `FK6dkxjytgu6sicuyjgkw78s6th` FOREIGN KEY (`position_title_id`) REFERENCES `position_titles` (`id`),
  ADD CONSTRAINT `FK9daqcqq2nrtbcr5xqeivvkorq` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`);

--
-- Constraints for table `civil_service_eligibility`
--
ALTER TABLE `civil_service_eligibility`
  ADD CONSTRAINT `FK11els6twcr3p8n496oo4bdjay` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`);

--
-- Constraints for table `clearance`
--
ALTER TABLE `clearance`
  ADD CONSTRAINT `FKakvatv27oixrlsnjv78yw3yg8` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`);

--
-- Constraints for table `competency`
--
ALTER TABLE `competency`
  ADD CONSTRAINT `FKhuo9e2bp4mt5atdvgddrapv0s` FOREIGN KEY (`position_title_competency`) REFERENCES `position_titles` (`id`),
  ADD CONSTRAINT `FKkpn6sc53ejygxrrdbnguptcpr` FOREIGN KEY (`position_title_id`) REFERENCES `position_titles` (`id`);

--
-- Constraints for table `division`
--
ALTER TABLE `division`
  ADD CONSTRAINT `FK3q4sm4p8tcs1mwgjf86n8hgv9` FOREIGN KEY (`approver2_id`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `FKbjc7vabch3lr6hsw613gxkxxj` FOREIGN KEY (`approver1_id`) REFERENCES `employee` (`id`);

--
-- Constraints for table `docs201`
--
ALTER TABLE `docs201`
  ADD CONSTRAINT `FKa1gpfxikx217mh8h096jgusjs` FOREIGN KEY (`document_type_id`) REFERENCES `document_type` (`id`),
  ADD CONSTRAINT `FKj0aeq15bvnol7i3ufwrnkw39` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`);

--
-- Constraints for table `docs201_doc_file_urls`
--
ALTER TABLE `docs201_doc_file_urls`
  ADD CONSTRAINT `FK3qk06t8w6mw4k95uxlatix27v` FOREIGN KEY (`docs201_id`) REFERENCES `docs201` (`id`);

--
-- Constraints for table `educational_background`
--
ALTER TABLE `educational_background`
  ADD CONSTRAINT `FK14ceskuk61xm43mev8c50fppw` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `FK1yl0u47llsher677lb30d00ab` FOREIGN KEY (`academic_honors_id`) REFERENCES `academic_honors` (`id`),
  ADD CONSTRAINT `FK4gcrbimdavkjfm5qpnl5v8bja` FOREIGN KEY (`degree_level_id`) REFERENCES `degree_level` (`id`),
  ADD CONSTRAINT `FKc5j2sxb0iea7c5kwqyrtvigb8` FOREIGN KEY (`scholarship_id`) REFERENCES `scholarships` (`id`),
  ADD CONSTRAINT `FKnhe9kp08si436d9ejbx2db83q` FOREIGN KEY (`school_id`) REFERENCES `school` (`id`),
  ADD CONSTRAINT `FKpnt03dlnr9yc23h6mjlbxslia` FOREIGN KEY (`degree_course_id`) REFERENCES `degree_course` (`id`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `FK4704ko2smpmsrtx3v0lkc4ovk` FOREIGN KEY (`employee_status_id`) REFERENCES `employee_status` (`id`),
  ADD CONSTRAINT `FK4j53t0rj5oh8xyu2puvrbyq7u` FOREIGN KEY (`position_title_id`) REFERENCES `position_titles` (`id`),
  ADD CONSTRAINT `FKckh7umfgmvx1yh9plcx9w6kg6` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`),
  ADD CONSTRAINT `FKoxlp1b4xvwyjgb7hh4wd54jy4` FOREIGN KEY (`division_id`) REFERENCES `division` (`id`);

--
-- Constraints for table `emp_references`
--
ALTER TABLE `emp_references`
  ADD CONSTRAINT `FKetuxsit5caw4vgyi7h6vv4276` FOREIGN KEY (`employee_references`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `FKn2i813wxvlr0xgqlv5f4f4ps0` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`);

--
-- Constraints for table `family_bg`
--
ALTER TABLE `family_bg`
  ADD CONSTRAINT `FKemp90k1r0c263dk7c9cn464tq` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`);

--
-- Constraints for table `government_issued_id`
--
ALTER TABLE `government_issued_id`
  ADD CONSTRAINT `FKc6haxah0djpl8oft30at55y6u` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `FKmqxg82ptlo41mfmr2fmvk33nq` FOREIGN KEY (`employee_government_id`) REFERENCES `employee` (`id`);

--
-- Constraints for table `learning_development`
--
ALTER TABLE `learning_development`
  ADD CONSTRAINT `FKfof3xc7p1c73gp9phjy7qi1s6` FOREIGN KEY (`employee_learning_development`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `FKk72tlxsaana3893wolwalil0r` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `FKkcboybaamo0cdnr7neguqger4` FOREIGN KEY (`learning_development_type`) REFERENCES `learning_type` (`id`);

--
-- Constraints for table `other_info`
--
ALTER TABLE `other_info`
  ADD CONSTRAINT `FK7x5ogqujoq86e2hpol0bnyhnd` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `FKqdbsvjxbomlp6tnx9ivqh4txi` FOREIGN KEY (`employee_other_info`) REFERENCES `employee` (`id`);

--
-- Constraints for table `other_info_question`
--
ALTER TABLE `other_info_question`
  ADD CONSTRAINT `FKkr9p46vncrck6moify54askn` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`);

--
-- Constraints for table `position_description_form`
--
ALTER TABLE `position_description_form`
  ADD CONSTRAINT `FKoffeukona1d28k4x1gax3tn1l` FOREIGN KEY (`position_title_id`) REFERENCES `position_titles` (`id`);

--
-- Constraints for table `position_titles`
--
ALTER TABLE `position_titles`
  ADD CONSTRAINT `FK9lkrr4b0q6a7tq9caee9iyd9` FOREIGN KEY (`position_title_employment`) REFERENCES `employee_status` (`id`),
  ADD CONSTRAINT `FKf4toreyvllr9378baqgc14v1a` FOREIGN KEY (`position_title_level`) REFERENCES `level` (`id`),
  ADD CONSTRAINT `FKnwln3rosxmpeskj19tg687vps` FOREIGN KEY (`position_title_salary_grade`) REFERENCES `salary_grade` (`id`);

--
-- Constraints for table `service_record`
--
ALTER TABLE `service_record`
  ADD CONSTRAINT `FK2er2bwv51vvq5sntfa0jc4mi3` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `FKmpsbsvhs3rg1tixamymmkucts` FOREIGN KEY (`employee_status_id`) REFERENCES `employee_status` (`id`),
  ADD CONSTRAINT `FKr1rq1lc08hgb7rohgnlcmarxy` FOREIGN KEY (`position_title_id`) REFERENCES `position_titles` (`id`);

--
-- Constraints for table `service_record_report_request`
--
ALTER TABLE `service_record_report_request`
  ADD CONSTRAINT `FKcgcy7q273bv68sxxp90j6ht6d` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`);

--
-- Constraints for table `voluntary_work`
--
ALTER TABLE `voluntary_work`
  ADD CONSTRAINT `FK4i49p8jxkeoiolo7fxstb462u` FOREIGN KEY (`employee_voluntary_experience`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `FKs02tcmltgv4cd3c7bc6f4n5sv` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`);

--
-- Constraints for table `work_experience`
--
ALTER TABLE `work_experience`
  ADD CONSTRAINT `FKj6hlvbxs4ak90odkb1ex0c4yq` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
