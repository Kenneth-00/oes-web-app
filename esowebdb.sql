-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2023 at 06:22 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `esowebdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `actualreportbytotal_tbl`
--

CREATE TABLE `actualreportbytotal_tbl` (
  `no#` int(11) NOT NULL,
  `particular_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `actualreportbytotal_tbl`
--

INSERT INTO `actualreportbytotal_tbl` (`no#`, `particular_id`, `user_id`, `count`) VALUES
(1, 1, 3, 2),
(2, 1, 9, 2),
(3, 1, 10, 3),
(4, 1, 11, 4),
(5, 1, 12, 2),
(6, 1, 13, 1),
(7, 1, 14, 3),
(8, 2, 9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `logs_tbl`
--

CREATE TABLE `logs_tbl` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `monthlyreport_tbl`
--

CREATE TABLE `monthlyreport_tbl` (
  `entry_id` int(11) NOT NULL,
  `date_entry` date NOT NULL,
  `facilitator` varchar(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `type_beneficiary` varchar(50) NOT NULL,
  `count_male` int(255) NOT NULL,
  `count_female` int(255) NOT NULL,
  `poor_rate` double NOT NULL,
  `fair_rate` double NOT NULL,
  `satisfactory_rate` double NOT NULL,
  `verysatisfactory_rate` double NOT NULL,
  `excellent_rate` double NOT NULL,
  `duration` double NOT NULL,
  `serviceOpt` varchar(50) NOT NULL,
  `partners` varchar(50) NOT NULL,
  `fac_staff` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `cost_fund` double NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `monthlyreport_tbl`
--

INSERT INTO `monthlyreport_tbl` (`entry_id`, `date_entry`, `facilitator`, `title`, `type_beneficiary`, `count_male`, `count_female`, `poor_rate`, `fair_rate`, `satisfactory_rate`, `verysatisfactory_rate`, `excellent_rate`, `duration`, `serviceOpt`, `partners`, `fac_staff`, `role`, `cost_fund`, `user_id`) VALUES
(11, '2023-04-07', 'EVSU IT Faculty', '', 'Sectors', 12, 13, 12.99, 0, 0, 0, 0, 23, 'training, outreach, consultancy, ', '', '', '', 235, 0),
(12, '2023-04-21', 'EVSU IT Faculty', '', 'Sectors', 12, 13, 12.99, 0, 0, 0, 0, 23.09, 'training, outreach, consultancy, ', '', '', '', 234.678, 0),
(13, '2023-04-21', 'EVSU IT Faculty', '', 'Sectors', 12, 13, 12.99, 0, 0, 0, 0, 23.09, 'training, outreach, consultancy, ', '', '', '', 234.678, 0),
(16, '2023-04-30', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0),
(17, '2023-04-07', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0),
(18, '2023-04-28', '', '', '', 1234, 13, 12, 23, 12.9, 23, 0, 12, 'Training of Dishwashing Liquid Making', '', '', '', 0, 0),
(19, '2023-04-28', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 'Seminars', '', '', '', 0, 0),
(24, '2023-04-28', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0),
(25, '2023-04-28', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0),
(26, '0000-00-00', '', '', '', 12, 12, 2, 1, 32, 2, 2, 0, '', '', '', '', 0, 0),
(27, '2023-04-07', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0),
(28, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0),
(29, '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0),
(30, '2023-03-31', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0),
(31, '2023-04-28', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `particulars_tbl`
--

CREATE TABLE `particulars_tbl` (
  `particulars_id` int(11) NOT NULL,
  `particulars` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `particulars_tbl`
--

INSERT INTO `particulars_tbl` (`particulars_id`, `particulars`) VALUES
(1, 'Number of Active Partnerships with LGUs, industries, NGOs, NGAs, SMEs, and other stakeholders as a result of extension services'),
(2, 'Number of Trainees weighted by the length of training'),
(3, 'Number of Extension Programs organized AND supported CONSISTENT WITH the SUC\'s mandated and priority programs'),
(4, 'Percentage of Beneficiaries who rate the traning course/s as satisfactory or higher in terms of quality and relevance');

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE `user_tbl` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`user_id`, `name`, `username`, `user_password`, `user_role`) VALUES
(2, 'ADMIN', 'admin@esvu.edu.ph', 'admin@evsu-main', 'Admin'),
(3, 'ADMIN 1', 'admin1@esvu.edu.ph', 'admin1@evsu-main', 'Admin'),
(4, 'ADMIN 2', 'admin2@esvu.edu.ph', 'admin2@evsu-main', 'Admin'),
(9, 'CAAD', 'caad@evsu.edu.ph', 'caad@evsu-main', 'Author'),
(10, 'CAS', 'cas@evsu.edu.ph', 'cas@evsu-main', 'Author'),
(11, 'COE', 'coe@evsu.edu.ph', 'coe@evsu-main', 'Author'),
(12, 'COED', 'coed@evsu.edu.ph', 'coed@evsu-main', 'Author'),
(13, 'COT', 'cot@evsu.edu.ph', 'cot@evsu-main', 'Author'),
(14, 'GS', 'gs@evsu.edu.ph', 'gs@evsu-main', 'Author');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actualreportbytotal_tbl`
--
ALTER TABLE `actualreportbytotal_tbl`
  ADD PRIMARY KEY (`no#`),
  ADD KEY `fk_user_id` (`user_id`),
  ADD KEY `particular_id` (`particular_id`);

--
-- Indexes for table `logs_tbl`
--
ALTER TABLE `logs_tbl`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `monthlyreport_tbl`
--
ALTER TABLE `monthlyreport_tbl`
  ADD PRIMARY KEY (`entry_id`),
  ADD KEY `fk_user_id` (`user_id`) USING BTREE;

--
-- Indexes for table `particulars_tbl`
--
ALTER TABLE `particulars_tbl`
  ADD PRIMARY KEY (`particulars_id`);

--
-- Indexes for table `user_tbl`
--
ALTER TABLE `user_tbl`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actualreportbytotal_tbl`
--
ALTER TABLE `actualreportbytotal_tbl`
  MODIFY `no#` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `monthlyreport_tbl`
--
ALTER TABLE `monthlyreport_tbl`
  MODIFY `entry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `particulars_tbl`
--
ALTER TABLE `particulars_tbl`
  MODIFY `particulars_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_tbl`
--
ALTER TABLE `user_tbl`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `actualreportbytotal_tbl`
--
ALTER TABLE `actualreportbytotal_tbl`
  ADD CONSTRAINT `fk_particular_id` FOREIGN KEY (`particular_id`) REFERENCES `particulars_tbl` (`particulars_id`),
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_tbl` (`user_id`);

--
-- Constraints for table `logs_tbl`
--
ALTER TABLE `logs_tbl`
  ADD CONSTRAINT `logs_tbl_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_tbl` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
