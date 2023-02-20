-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2023 at 07:22 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bideshikokhabar`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `Name` varchar(70) DEFAULT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Permanent_Address` varchar(70) DEFAULT NULL,
  `Email` varchar(70) DEFAULT NULL,
  `Password` varchar(80) DEFAULT NULL,
  `Re_Password` varchar(80) DEFAULT NULL,
  `Role_Type` varchar(50) DEFAULT NULL,
  `Priroty` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `Name`, `Date_of_Birth`, `Gender`, `Permanent_Address`, `Email`, `Password`, `Re_Password`, `Role_Type`, `Priroty`) VALUES
(1, 'Saujanya', '2057-03-24', 'Male', 'Belauri,Kanchanpur', 'saujanya@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `read_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `user_id`, `title`, `description`, `date`, `read_status`) VALUES
(95, 37, 'Your problem status', 'Your problem is in pending state', '2022-08-08 13:53:53', 0),
(96, 38, 'Your problem status', 'Your problem is in pending state', '2022-08-08 13:57:35', 0),
(97, 38, 'Your problem Status', 'Your request is in waiting list.', '2022-08-08 13:58:14', 0),
(98, 38, 'Your problem Status', 'Your request has been fulfilled.', '2022-08-08 14:01:24', 0),
(99, 38, 'Your problem Status', 'Your request is in waiting list.', '2022-08-08 18:06:51', 0),
(100, 38, 'Your problem Status', 'Your request has been fulfilled.', '2022-08-08 18:07:48', 0),
(106, 37, 'Your problem Status', 'Your request has been fulfilled.', '2022-08-08 20:54:01', 0),
(107, 37, 'Your problem Status', 'Your request is in waiting list.', '2022-08-08 20:54:16', 0),
(108, 38, 'Your problem Status', 'Your request has been fulfilled.', '2022-08-08 20:56:06', 0),
(109, 38, 'Your problem Status', 'Your request is in waiting list.', '2022-08-08 20:56:16', 0),
(110, 52, 'Your problem status', 'Your problem is in pending state', '2022-08-08 21:09:38', 0),
(111, 52, 'Your problem Status', 'Your request is in waiting list.', '2022-08-08 21:10:37', 0),
(112, 52, 'Your problem Status', 'Your request has been fulfilled.', '2022-08-08 21:11:33', 0),
(113, 37, 'Your problem Status', 'Your request is in pending list.', '2022-08-08 21:12:08', 0),
(114, 38, 'Your problem Status', 'Your request is in pending list.', '2022-08-08 21:12:58', 0),
(115, 38, 'Your problem Status', 'Your request is in waiting list.', '2022-08-08 21:13:07', 0),
(116, 52, 'Your problem Status', 'Your request is in pending list.', '2022-08-08 21:13:44', 0),
(117, 52, 'Your problem Status', 'Your request has been fulfilled.', '2022-08-08 21:13:51', 0),
(118, 52, 'Your problem Status', 'Your request is in waiting list.', '2022-08-09 04:00:01', 0),
(119, 52, 'Your problem Status', 'Your request has been fulfilled.', '2022-08-09 07:32:20', 0),
(120, 52, 'Your problem status', 'Your problem is in pending state', '2022-08-09 08:44:37', 0),
(121, 52, 'Your problem Status', 'Your request is in waiting list.', '2022-08-09 08:48:06', 0),
(122, 37, 'Your problem Status', 'Your request has been fulfilled.', '2022-09-13 05:57:29', 0),
(123, 37, 'Your problem Status', 'Your request is in waiting list.', '2022-09-14 05:13:33', 0),
(124, 52, 'Your problem Status', 'Your request is in waiting list.', '2022-09-14 07:49:32', 0),
(125, 52, 'Your problem Status', 'Your request has been fulfilled.', '2023-02-19 06:14:01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `problem_list`
--

CREATE TABLE `problem_list` (
  `problem_id` int(11) NOT NULL,
  `Problem` varchar(250) DEFAULT NULL,
  `Company_Name` varchar(50) DEFAULT NULL,
  `Company_Address` varchar(50) DEFAULT NULL,
  `Aggrement_Photo_of_Company` varchar(150) DEFAULT NULL,
  `Manpower_Name` varchar(50) DEFAULT NULL,
  `Manpower_Address` varchar(70) DEFAULT NULL,
  `Contact_Number_of_Manpower` varchar(50) DEFAULT NULL,
  `Province` varchar(70) DEFAULT NULL,
  `District` varchar(70) DEFAULT NULL,
  `Municipality` varchar(70) DEFAULT NULL,
  `Wardno` varchar(70) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT 0,
  `Problem_Description` varchar(450) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `problem_list`
--

INSERT INTO `problem_list` (`problem_id`, `Problem`, `Company_Name`, `Company_Address`, `Aggrement_Photo_of_Company`, `Manpower_Name`, `Manpower_Address`, `Contact_Number_of_Manpower`, `Province`, `District`, `Municipality`, `Wardno`, `user_id`, `status`, `Problem_Description`, `date`) VALUES
(137, 'custody', 'abc company', 'Machapokhari,Kathmandu', 'images/Cover Page.docx', 'Abc manpower', 'Belauri, Kanchanpur', '9812795414', '7', 'Kanchanpur', 'Bedkot', '7', 52, 2, 'According to the aggrement of company,  our wages is cpmparitively very low . The manager of this company force us to work late night without extra charge.', '2022-08-09 14:29:37');

--
-- Triggers `problem_list`
--
DELIMITER $$
CREATE TRIGGER `gen_notif` BEFORE INSERT ON `problem_list` FOR EACH ROW begin
insert into notification(user_id, title, description, date, read_status) values(new.user_id, "Your problem status", "Your problem is in pending state", current_timestamp, 0);
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Father_Name` varchar(50) DEFAULT NULL,
  `Mother_Name` varchar(50) DEFAULT NULL,
  `Contact_Number` varchar(10) DEFAULT NULL,
  `Permanent_Address` varchar(70) DEFAULT NULL,
  `Email` varchar(70) DEFAULT NULL,
  `Password` varchar(80) DEFAULT NULL,
  `Re_Password` varchar(80) DEFAULT NULL,
  `profile_picture` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `Name`, `Date_of_Birth`, `Gender`, `Father_Name`, `Mother_Name`, `Contact_Number`, `Permanent_Address`, `Email`, `Password`, `Re_Password`, `profile_picture`) VALUES
(37, 'Ram  Chetri', '2000-01-01', 'Male', 'Manish  Shrestha', 'Devi Kumari Shrestha', '9812457812', 'Lalitpur,Kathmandu', 'ram@gmail.com', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'images/air force.png'),
(38, 'shyam  hari', '1999-01-01', 'Male', 'Ram  Chetri', 'Sita  Chetri', '9812746565', 'Belauri Kanchanpur', 'shyam@gmail.com', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'images/D minor.png'),
(52, 'Manish  Shrestha', '2002-08-31', 'Male', 'Durga Bahadur Shrestha', 'Shyam Maya Shrestha', '9812795414', 'Belauri, Kanchanpur', 'manish123@gmail.com', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 'images/mhjgj.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `UK` (`Email`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `problem_list`
--
ALTER TABLE `problem_list`
  ADD PRIMARY KEY (`problem_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `UK` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `problem_list`
--
ALTER TABLE `problem_list`
  MODIFY `problem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `problem_list`
--
ALTER TABLE `problem_list`
  ADD CONSTRAINT `problem_list_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
