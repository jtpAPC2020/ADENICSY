-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2023 at 09:20 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loginsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `d_calendar`
--

CREATE TABLE `d_calendar` (
  `id` int(11) NOT NULL,
  `d_name` varchar(255) DEFAULT NULL,
  `d_code` varchar(11) DEFAULT NULL,
  `date` date NOT NULL,
  `s_time` time NOT NULL,
  `e_time` time NOT NULL,
  `availableSlot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `d_calendar`
--

INSERT INTO `d_calendar` (`id`, `d_name`, `d_code`, `date`, `s_time`, `e_time`, `availableSlot`) VALUES
(9, 'Guler Marion Regalado', 'GMR', '2023-02-23', '13:50:00', '15:50:00', 0),
(10, 'Arnold Mendoza', 'DAM', '2023-02-25', '08:00:00', '17:16:00', 0),
(11, 'Denroe Apelo', 'DDA', '2023-03-03', '13:39:00', '16:39:00', 0),
(12, 'Guler Marion Regalado', 'GMR', '2023-03-03', '15:44:00', '17:44:00', 0),
(13, 'Arnold Mendoza', 'DAM', '2023-03-03', '16:45:00', '13:49:00', 0),
(14, 'Arnold Mendoza', 'DAM', '2023-03-02', '20:14:00', '19:14:00', 0),
(15, 'Denroe Apelo', 'DDA', '2023-03-02', '20:15:00', '19:14:00', 0),
(16, 'Guler Marion Regalado', 'GMR', '2023-03-02', '19:27:00', '18:27:00', 0),
(17, 'Guler Marion Regalado', 'GMR', '2023-03-10', '16:19:00', '16:20:00', 0),
(18, 'Dr. Lea Benitez', '', '2023-03-06', '00:00:00', '19:30:00', 0),
(19, 'Dr. May Bell Bustillo', 'DBM', '2023-03-06', '09:30:00', '19:30:00', 0),
(20, 'Dr. Ingrid May Pedrola', 'DIMP', '2023-03-06', '09:30:00', '19:30:00', 0),
(21, 'Dr. Gerald Giba', 'DGG', '2023-03-06', '09:30:00', '19:30:00', 15),
(23, 'Dr. Gerald Giba', 'DGG', '2023-03-07', '09:30:00', '19:30:00', 17),
(25, 'Dr. Ingrid May Pedrola', 'DIMP', '2023-03-07', '09:30:00', '19:30:00', 15),
(27, 'Dr. May Bell Bustillo', 'DBM', '2023-03-07', '09:30:00', '19:30:00', 15),
(30, 'Dr. Lea Benitez', '', '2023-03-07', '09:30:00', '19:30:00', 15),
(32, 'Dr. Lea Benitez', 'DLB', '2023-03-08', '09:30:00', '19:30:00', 15);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contactno` varchar(255) DEFAULT NULL,
  `empRole` varchar(255) NOT NULL,
  `namecode` varchar(15) NOT NULL,
  `timeCreated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `fname`, `lname`, `email`, `username`, `password`, `contactno`, `empRole`, `namecode`, `timeCreated`) VALUES
(3, 'May Bell', 'Bustillo', 'BustMA77@gmail.com', 'st_MayAnneB021723', 'ngy456!@vbH', '09678965213', 'Doctor', 'DBM', '2023-02-17 10:33:29'),
(16, 'Guiler Marion', 'Regalado', 'janssenpedrola26@gmail.com', 'asda', 'sda', '09982901878', 'Staff', 'DGMR', '2023-02-20 02:03:41'),
(18, 'Marion', 'Regalado', 'mrg@gmail.com', 'marion', '12345', '09999999999', 'Staff', '', '2023-02-23 08:08:17'),
(19, 'Gerald', 'Giba', 'geraldSupot24@gmail.com', 'geraldlabsu', 'oagushc80931qdc', '09929239211', 'Doctor', 'DGG', '2023-03-02 03:19:28'),
(21, 'Ingrid May', 'Pedrola', 'ingridp26@gmail.com', 'ingrid22', 'qawdq', NULL, 'Doctor', 'DIMP', '2023-03-02 05:16:26'),
(24, 'Lea', 'Benitez', 'drleaB_@gmail.com', 'dr_leaB321', '0987', '09784326654', 'Doctor', 'DLB', '2023-03-08 02:32:30');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `dr_ID` int(11) NOT NULL,
  `dr_date` date NOT NULL,
  `dr_patientID` int(211) NOT NULL,
  `dr_procedure` varchar(255) NOT NULL,
  `dr_note` varchar(255) NOT NULL,
  `dr_done` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`dr_ID`, `dr_date`, `dr_patientID`, `dr_procedure`, `dr_note`, `dr_done`) VALUES
(1, '2021-10-01', 16, 'Root Canal Therapy', 'Some Details Here', 'Dr. Denroe'),
(2, '0000-00-00', 16, 'Cleaning', 'Some Details Here', 'Dr. Marie'),
(3, '0000-00-00', 16, 'Cleaning', 'Some Details Here', 'Dr. Reynold'),
(4, '0000-00-00', 16, 'Adjustment', 'Some Details Here', 'Dr. Allan'),
(5, '2023-02-23', 0, 'Tooth Extraction', 'Tooth Decay on tooth 12', 'Dr. Marion'),
(6, '2023-02-23', 0, 'Cleaning', 'Tooth Decay on tooth 12', 'Dr. Lea'),
(7, '2023-02-25', 15, 'Cleaning', 'Tooth Filling on tooth 12', 'Dr. Marion'),
(8, '2023-02-17', 15, 'Tooth Extraction', 'Tooth Decay on tooth 12', 'Dr. Lea'),
(10, '2023-03-04', 16, 'Cleaning 24', 'Tooth Filling on tooth 12', 'Dr. Marion'),
(11, '2023-03-04', 16, 'Cleaning 24', 'Tooth Filling on tooth 12', 'Dr. Marion');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) NOT NULL,
  `Age` int(211) NOT NULL,
  `password` varchar(300) DEFAULT NULL,
  `contactno` varchar(11) DEFAULT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `fname`, `lname`, `email`, `birthday`, `Age`, `password`, `contactno`, `posting_date`) VALUES
(15, 'JanssenDuplicate', 'Pedrola', 'janssenpedrola26@gmail.com', 'January 26, 2002', 20, '123456', '0999449195', '2023-01-11 07:20:25'),
(16, 'Ana', 'Santos', 'anasantos@gmail.com', 'April 04, 1997', 26, '123456ASs', '09929239211', '2023-01-12 07:52:31'),
(18, 'Alex', 'Reyes', 'al@gmail.com', 'September 04, 1964', 59, 'qwere3d', '09946751289', '2023-02-22 03:47:53'),
(19, 'Christine', 'Alegre', 'rocketship@gmail.com', 'May 02, 1975', 47, 'oiuaos99023', '09563348787', '2023-02-22 03:47:53'),
(20, 'Michel', 'DeFrance', 'mdefrance@gmail.com', 'September 02, 1985', 38, 'michel85038', '09234785634', '2023-02-22 10:59:01'),
(22, 'Michel Anne', 'Zamora', 'mazamora@gmail.com', 'August 29, 2001', 22, 'mzamora0829', '09987345613', '2023-02-22 11:01:52'),
(23, 'Sara', 'Snyder', 'sarasnyder@gmail.com', 'April 07, 2000', 23, 'sarasnyder07', '09341564782', '2023-02-22 11:01:52'),
(24, 'Frances Shara', 'Delo Santos', 'francesdelosantos@gmail.com', 'March 05, 2002', 21, 'francesshara2002', '09984567281', '2023-02-22 11:01:52'),
(25, 'Patrick', 'Dixon', 'patdixon@gmail.com', 'November 11, 1995', 28, 'patrick1995', '09644628103', '2023-02-22 11:01:52'),
(27, 'Kimberly', 'Bell', 'kimbell@gmail.com', 'August 25, 2000', 23, 'Kimberly2000', '09988212731', '2023-02-22 11:01:52'),
(28, 'Janssen', 'Pedrola', 'janssenpedrola262@gmail.com', '', 0, 'Jp12345', '09994491952', '2023-02-24 09:52:24'),
(29, 'Guiler Marion ', 'Regalado ', 'marionregalado20@gmail.com', '', 0, 'Qwerty_12', '09982901878', '2023-03-07 08:07:35'),
(30, 'Patricia ', 'Meltran ', 'plmeltran@student.apc.edu.ph', '', 0, 'Meltran24', '09123456789', '2023-03-07 08:07:39');

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

CREATE TABLE `pictures` (
  `id` int(11) NOT NULL,
  `patiendID` int(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `time_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pictures`
--

INSERT INTO `pictures` (`id`, `patiendID`, `name`, `type`, `size`, `path`, `caption`, `time_created`) VALUES
(14, 15, 'sample-teethunderbite-after.jpg', 'image/jpeg', 43633, 'uploads/pictures/sample-teethunderbite-after.jpg', '', '2023-03-07 06:45:13'),
(15, 15, 'sample-teethunderbite-after.jpg', 'image/jpeg', 43633, 'uploads/pictures/sample-teethunderbite-after.jpg', 'asas', '2023-03-07 06:45:27'),
(16, 16, '06-10-06smile.jpg', 'image/jpeg', 637678, 'uploads/pictures/06-10-06smile.jpg', 'After Braces', '2023-03-07 06:52:32');

-- --------------------------------------------------------

--
-- Table structure for table `queueing_list`
--

CREATE TABLE `queueing_list` (
  `queueing_number` int(211) NOT NULL,
  `patient_id` int(211) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `contact` varchar(11) NOT NULL,
  `concern` varchar(255) NOT NULL,
  `preffDoctor` varchar(255) NOT NULL,
  `time_arrived` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `queueing_list`
--

INSERT INTO `queueing_list` (`queueing_number`, `patient_id`, `patient_name`, `contact`, `concern`, `preffDoctor`, `time_arrived`) VALUES
(1, 29, 'Guiler Marion  Regalado ', '09982901878', 'Haha', 'Dr. Gerald Giba', '0000-00-00 00:00:00'),
(2, 15, 'John Pedrola', '09999999999', 'Tooth Extraction', 'Dr. Gerald Giba', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `queueing_list_priority`
--

CREATE TABLE `queueing_list_priority` (
  `queueing_number` int(211) NOT NULL,
  `patient_id` int(211) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `contact` varchar(11) NOT NULL,
  `concern` varchar(255) NOT NULL,
  `preffDoctor` varchar(255) NOT NULL,
  `time_arrived` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `queueing_list_priority`
--

INSERT INTO `queueing_list_priority` (`queueing_number`, `patient_id`, `patient_name`, `contact`, `concern`, `preffDoctor`, `time_arrived`) VALUES
(1, 15, 'John Pedrola', '0', '09678965213', 'Dr. Gerald Giba', '2023-03-07 20:45:16'),
(2, 15, 'John Pedrola', 'asdbrt', '0992923921', 'Dr. Gerald Giba', '0000-00-00 00:00:00'),
(3, 15, 'John Pedrola', 'Tooth Extra', '0999449195', 'Dr. Gerald Giba', '0000-00-00 00:00:00'),
(4, 15, 'John Pedrola', 'Tooth Extra', '0999449195', 'Dr. Gerald Giba', '0000-00-00 00:00:00'),
(5, 15, 'John Pedrola', '09999999999', 'Tooth Extraction jaismwka', 'Dr. Gerald Giba', '2023-03-08 10:33:55'),
(6, 15, 'John Pedrola', '09978965213', 'Tooth Extraction', 'Dr. Gerald Giba', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `queueing_num_priority`
--

CREATE TABLE `queueing_num_priority` (
  `id` int(6) NOT NULL,
  `queue_number` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `queueing_num_priority`
--

INSERT INTO `queueing_num_priority` (`id`, `queue_number`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `queue_num`
--

CREATE TABLE `queue_num` (
  `id` int(6) UNSIGNED NOT NULL,
  `queue_number` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `queue_num`
--

INSERT INTO `queue_num` (`id`, `queue_number`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `s_payment`
--

CREATE TABLE `s_payment` (
  `s_payID` int(11) NOT NULL,
  `s_date` date NOT NULL,
  `s_patiendID` int(11) NOT NULL,
  `s_procedure` varchar(255) NOT NULL,
  `s_total` int(255) NOT NULL,
  `s_amount` int(255) DEFAULT NULL,
  `added_by` varchar(25) NOT NULL,
  `s_modify` varchar(255) NOT NULL,
  `s_balance` int(11) GENERATED ALWAYS AS (`s_total` - `s_amount`) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `s_payment`
--

INSERT INTO `s_payment` (`s_payID`, `s_date`, `s_patiendID`, `s_procedure`, `s_total`, `s_amount`, `added_by`, `s_modify`) VALUES
(8, '2023-03-02', 16, 'Tooth Extraction', 500, 350, 'Lea Benitez', ''),
(9, '2023-03-02', 16, 'Tooth Extraction', 500, 500, 'Lea Benitez', ''),
(10, '2023-03-02', 16, 'Tooth Extraction', 800, 0, 'Lea Benitez', ''),
(11, '2023-03-03', 16, 'Tooth Fillings', 800, 0, 'Lea Benitez', ''),
(12, '2023-03-02', 16, 'Tooth Fillings', 800, 0, 'Lea Benitez', ''),
(13, '2023-03-02', 16, 'Tooth Extraction', 500, 0, 'Guiler Marion Regalado', ''),
(14, '2023-03-04', 16, 'Tooth Extraction on Molar', 800, 800, 'Guiler Marion Regalado', 'Marion Regalado'),
(15, '2023-03-04', 15, 'Tooth Extraction, Tooth Fillings', 1500, 1500, 'Lea Benitez', 'Marion Regalado'),
(16, '2023-03-06', 15, 'Tooth Extraction on Molar 32', 500, 500, 'Lea Benitez', 'Marion Regalado'),
(17, '2023-03-07', 15, 'Tooth Extraction 22', 800, 500, 'Lea Benitez', 'Marion Regalado'),
(18, '2023-03-06', 28, 'Tooth Extraction on Molar', 800, 350, 'Lea Benitez', 'Marion Regalado'),
(19, '2023-03-07', 15, 'Tooth Fillings', 500, 800, 'Lea Benitez', 'Marion Regalado'),
(20, '2023-03-09', 15, 'Root Canal ', 900, 1, 'Lea Benitez', 'Marion Regalado'),
(21, '2023-03-09', 15, 'Tooth Extraction', 0, 900, 'Marion Regalado', 'Marion Regalado'),
(22, '2023-03-08', 15, 'Tooth Fillings', 500, 200, 'Lea Benitez', 'Marion Regalado');

-- --------------------------------------------------------

--
-- Table structure for table `xray`
--

CREATE TABLE `xray` (
  `id` int(11) NOT NULL,
  `patiendID` int(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `timeCreated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `xray`
--

INSERT INTO `xray` (`id`, `patiendID`, `name`, `type`, `size`, `path`, `caption`, `timeCreated`) VALUES
(2, 15, 'samplexray.jpg', 'image/jpeg', 5832, 'uploads/xrays/samplexray.jpg', 'Panoramic xray taken March 06 before braces', '2023-03-07 07:22:25'),
(3, 15, 'sidexray.jpg', 'image/jpeg', 14492, 'uploads/xrays/sidexray.jpg', 'Side Xray of patient', '2023-03-07 07:27:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d_calendar`
--
ALTER TABLE `d_calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`dr_ID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `queueing_list`
--
ALTER TABLE `queueing_list`
  ADD PRIMARY KEY (`queueing_number`);

--
-- Indexes for table `queueing_list_priority`
--
ALTER TABLE `queueing_list_priority`
  ADD PRIMARY KEY (`queueing_number`);

--
-- Indexes for table `queueing_num_priority`
--
ALTER TABLE `queueing_num_priority`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `queue_num`
--
ALTER TABLE `queue_num`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s_payment`
--
ALTER TABLE `s_payment`
  ADD PRIMARY KEY (`s_payID`);

--
-- Indexes for table `xray`
--
ALTER TABLE `xray`
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
-- AUTO_INCREMENT for table `d_calendar`
--
ALTER TABLE `d_calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `dr_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `queueing_list`
--
ALTER TABLE `queueing_list`
  MODIFY `queueing_number` int(211) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `queueing_list_priority`
--
ALTER TABLE `queueing_list_priority`
  MODIFY `queueing_number` int(211) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `queueing_num_priority`
--
ALTER TABLE `queueing_num_priority`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `queue_num`
--
ALTER TABLE `queue_num`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `s_payment`
--
ALTER TABLE `s_payment`
  MODIFY `s_payID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `xray`
--
ALTER TABLE `xray`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
