-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2025 at 03:55 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `roomno` varchar(255) NOT NULL,
  `complainttype` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` varchar(50) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`id`, `Name`, `roomno`, `complainttype`, `description`, `status`) VALUES
(1, 'shiva', '101', 'water problem', 'water coming in drops', 'Accepted'),
(2, 'zion', '101', 'electricity problem', 'electricity power off often', 'Processing');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `roomno` varchar(255) NOT NULL,
  `warden` varchar(255) NOT NULL,
  `Hostelcomittee` varchar(255) NOT NULL,
  `roomcondition` varchar(255) NOT NULL,
  `messquality` varchar(200) NOT NULL,
  `hostelsurrounding` varchar(200) NOT NULL,
  `rating` varchar(200) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `Name`, `roomno`, `warden`, `Hostelcomittee`, `roomcondition`, `messquality`, `hostelsurrounding`, `rating`, `message`) VALUES
(1, 'shiva', '101', 'Good', 'Good', 'Good', 'Good', 'Good', 'Good', 'good'),
(2, 'zion', '101', 'Good', 'Good', 'Good', 'Poor', 'Good', 'Average', 'good');

-- --------------------------------------------------------

--
-- Table structure for table `roomregister`
--

CREATE TABLE `roomregister` (
  `id` int(11) NOT NULL,
  `roomno` varchar(200) NOT NULL,
  `room` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Regno` varchar(255) NOT NULL,
  `Contact` varchar(200) NOT NULL,
  `Guardian` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `Permanentaddress` varchar(255) NOT NULL,
  `joindate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roomregister`
--

INSERT INTO `roomregister` (`id`, `roomno`, `room`, `price`, `Name`, `Regno`, `Contact`, `Guardian`, `address`, `Permanentaddress`, `joindate`) VALUES
(1, '101', 'One Seater', '5000', 'suba', '1001', '986732150', 'sriram', 'kumbakonam', 'kumbakonam', '2024-02-12'),
(2, '101', 'One Seater', '5000', 'Heaman', '1002', '9867321501', 'sriram', 'kumbakonam', 'kumbakonam', '2025-02-24'),
(3, '102', 'Two Seater', '4000', 'shiva', '1003', '986732150', 'parvathi', 'kumbakonam', 'kumbakonam', '2025-02-19'),
(4, '101', 'One Seater', '5000', 'zion', '1005', '9867321501', 'sriram', 'Kumbakonam', 'kumbakonam', '2025-02-18');

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `fathername` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `phoneno` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`id`, `name`, `age`, `fathername`, `Gender`, `phoneno`, `email`, `password`, `address`) VALUES
(1, 'heaman', '25', 'sriram', 'Male', '978675643', 'heaman@gmail.com', '12345', 'kumbakonam'),
(2, 'Sriram', '34', 'vasu', 'Male', '9994384621', 'sriram@gmail.com', '123456', 'kumbakonam'),
(3, 'shiva', '29', 'god', 'Male', '98674323452', 'shiva@gmail.com', '12345', 'kumbakonam'),
(4, 'Ruthrasakhi', '21', 'sriram', 'Female', '9033423201', 'ruthrasakhi@gmail.com', '123456', 'kumbakonam'),
(5, 'Zion', '20', 'sriram', 'Male', '9033423201', 'Zion@gmail.com', '1234567', 'kumbakonam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roomregister`
--
ALTER TABLE `roomregister`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roomregister`
--
ALTER TABLE `roomregister`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userlogin`
--
ALTER TABLE `userlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
