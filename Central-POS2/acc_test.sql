-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2018 at 12:47 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acc_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `outlet_id` varchar(255) NOT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`name`, `role`, `email`, `outlet_id`, `employee_id`) VALUES
('Martin', 'Admin', 'martinganteng@gmail.com', 'CaseNation.ID', 3);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `item_code` varchar(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `min` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  `hpp` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `item_code`, `description`, `qty`, `unit_price`, `min`, `max`, `hpp`) VALUES
(27, 'RMT-0000002', 'Mario Bros', 10, 100000, 3, 10, 50000),
(36, 'RMT-0000003', 'Eye case', 49, 100000, 3, 10, 50000),
(37, 'RMT-0000004', 'Blue Ceramic', 35, 100000, 3, 10, 50000),
(38, 'RMT-0000005', 'Pink Flower', 0, 100000, 3, 10, 50000),
(39, 'RMT-0000006', 'Pineapple Case', 0, 100000, 3, 10, 50000),
(40, 'RMT-0000007', 'Black Flower', 0, 100000, 3, 10, 50000),
(41, 'RMT-0000008', 'Flower case', 0, 100000, 3, 10, 50000),
(42, 'RMT-0000009', 'Pug Case', 38, 100000, 3, 10, 50000),
(43, 'RMT-0000010', 'Simpsons', 0, 100000, 3, 10, 50000),
(44, 'RMT-0000011', 'Captain America', 0, 100000, 3, 10, 50000),
(45, 'RMT-0000012', 'Nike', 0, 100000, 3, 10, 50000),
(46, 'RMT-0000013', 'Starwars', 0, 100000, 3, 10, 50000);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `description` varchar(255) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `invoice_line_id` int(11) NOT NULL,
  `invoice_id` varchar(15) NOT NULL,
  `month` varchar(20) NOT NULL,
  `payment_method` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`description`, `unit_price`, `qty`, `date`, `invoice_line_id`, `invoice_id`, `month`, `payment_method`) VALUES
('Mario Bros', 100000, 123, '2017-08-14 00:00:00', 1, '1', 'August', 'Cash'),
('Mario Bros', 100000, 32, '2017-09-07 00:00:00', 2, '2', 'September', 'Cash'),
('Mario Bros', 100000, 52, '2017-11-20 00:00:00', 3, '3', 'November', 'Cash'),
('Mario Bros', 100000, 41, '2017-12-20 00:00:00', 4, '4', 'December', 'Cash'),
('Mario Bros', 100000, 94, '2018-01-20 00:00:00', 7, '7', 'January', 'Cash'),
('Mario Bros', 100000, 8, '2018-02-05 21:14:41', 958, '20180205211441', 'February', 'Debit/Credit'),
('Mario Bros', 100000, 1, '2018-02-06 09:08:25', 959, '20180206090825', 'February', 'Cash'),
('Mario Bros', 100000, 1, '2018-02-06 09:14:05', 960, '20180206091405', 'February', 'Cash'),
('Mario Bros', 100000, 1, '2018-02-06 09:14:56', 961, '20180206091456', 'February', 'Cash'),
('Mario Bros', 100000, 1, '2018-02-06 09:17:09', 962, '20180206091709', 'February', 'Cash'),
('Mario Bros', 100000, 1, '2018-02-06 09:21:03', 963, '20180206092103', 'February', 'Cash'),
('Mario Bros', 100000, 1, '2018-02-06 09:22:04', 964, '20180206092204', 'February', 'Debit/Credit'),
('Eye case', 100000, 1, '2018-02-06 09:22:04', 965, '20180206092204', 'February', 'Debit/Credit'),
('Mario Bros', 100000, 1, '2018-02-06 09:23:31', 966, '20180206092331', 'February', 'Debit/Credit'),
('Mario Bros', 100000, 1, '2018-02-06 09:24:34', 967, '20180206092434', 'February', 'Debit/Credit'),
('Eye case', 100000, 3, '2018-02-06 09:25:44', 968, '20180206092544', 'February', 'Debit/Credit'),
('Mario Bros', 100000, 3, '2018-02-06 09:29:01', 969, '20180206092901', 'February', 'Cash'),
('Mario Bros', 100000, 1, '2018-02-06 09:29:55', 970, '20180206092955', 'February', 'Cash'),
('Eye case', 100000, 3, '2018-02-06 09:29:55', 971, '20180206092955', 'February', 'Cash'),
('Mario Bros', 100000, 1, '2018-02-06 09:31:22', 972, '20180206093122', 'February', 'Debit/Credit'),
('Eye case', 100000, 6, '2018-02-06 09:31:22', 973, '20180206093122', 'February', 'Debit/Credit'),
('Mario Bros', 100000, 3, '2018-02-06 13:13:02', 974, '20180206131302', 'February', 'Debit/Credit'),
('Eye case', 100000, 1, '2018-02-06 13:13:02', 975, '20180206131302', 'February', 'Debit/Credit'),
('Mario Bros', 100000, 2, '2018-02-06 22:09:16', 976, '20180206220916', 'February', 'Debit/Credit'),
('Eye case', 100000, 1, '2018-02-06 22:09:16', 977, '20180206220916', 'February', 'Debit/Credit'),
('Blue Ceramic', 100000, 2, '2018-02-06 22:09:16', 978, '20180206220916', 'February', 'Debit/Credit'),
('Mario Bros', 100000, 6, '2018-02-06 22:31:35', 979, '20180206223135', 'February', 'Cash'),
('Eye case', 100000, 1, '2018-02-06 22:31:35', 980, '20180206223135', 'February', 'Cash'),
('Blue Ceramic', 100000, 1, '2018-02-06 22:31:35', 981, '20180206223135', 'February', 'Cash'),
('Mario Bros', 100000, 1, '2018-02-08 19:50:34', 982, '20180208195034', 'February', 'Cash'),
('Pug Case', 100000, 2, '2018-02-08 20:55:24', 983, '20180208205524', 'February', 'Debit/Credit'),
('Mario Bros', 100000, 25, '2018-02-08 21:46:34', 984, '20180208214634', 'February', 'Cash'),
('Eye case', 100000, 2, '2018-02-08 21:46:52', 985, '20180208214652', 'February', 'Cash'),
('Mario Bros', 100000, 20, '2018-02-08 21:47:07', 986, '20180208214707', 'February', 'Cash'),
('Eye case', 100000, 1, '2018-02-09 15:50:44', 987, '20180209155044', 'February', 'Cash'),
('Mario Bros', 100000, 1, '2018-02-12 21:03:40', 988, '20180212210340', 'February', 'Cash'),
('Mario Bros', 100000, 2, '2018-02-12 21:23:27', 989, '20180212212327', 'February', 'Debit/Credit'),
('Mario Bros', 100000, 1, '2018-02-14 18:15:10', 990, '20180214181510', 'February', 'Cash'),
('Eye case', 100000, 1, '2018-02-14 18:15:22', 991, '20180214181522', 'February', 'Cash'),
('Mario Bros', 100000, 1, '2018-02-14 18:18:58', 992, '20180214181858', 'February', 'Debit/Credit');

-- --------------------------------------------------------

--
-- Table structure for table `outlet`
--

CREATE TABLE `outlet` (
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `outlet_id` int(11) NOT NULL,
  `postal_code` int(255) DEFAULT NULL,
  `date_founded` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `outlet`
--

INSERT INTO `outlet` (`name`, `address`, `phone`, `city`, `province`, `outlet_id`, `postal_code`, `date_founded`, `email`) VALUES
('CaseNation.ID', 'Tangerang', '089636053432', 'Tangerang', 'Tangerang', 1, 0, '0000-00-00', NULL),
('Toko kue Martin', 'Cimone', '0808080808', 'Banten', 'Tangerang', 2, 15810, '0000-00-00', 'martinganteng@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_line_id`);

--
-- Indexes for table `outlet`
--
ALTER TABLE `outlet`
  ADD PRIMARY KEY (`outlet_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_line_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=993;

--
-- AUTO_INCREMENT for table `outlet`
--
ALTER TABLE `outlet`
  MODIFY `outlet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
