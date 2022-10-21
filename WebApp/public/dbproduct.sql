-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2022 at 07:03 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbproduct`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminID` varchar(10) NOT NULL,
  `AdminName` varchar(10) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `C-Date` date NOT NULL,
  `Mod-Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminID`, `AdminName`, `Location`, `C-Date`, `Mod-Date`) VALUES
('a1111', 'Jame', 'samko', '2018-09-12', '2022-11-17'),
('a1112', 'ruth', 'Khlong 6 Pathum Than', '2019-09-12', '2023-10-17'),
('a1113', 'bank', 'Ladprao', '2014-09-17', '2023-01-12');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `CartID` varchar(10) NOT NULL,
  `ProductName` varchar(20) NOT NULL,
  `Price` float NOT NULL,
  `NumOfProducts` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `C-Date` date NOT NULL,
  `Mod-Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`CartID`, `ProductName`, `Price`, `NumOfProducts`, `Total`, `C-Date`, `Mod-Date`) VALUES
('cc1001', 'แชมพู', 159, 1, 159, '2022-08-09', '2022-11-16'),
('cc1002', 'ผงซักฟอก', 129, 2, 258, '2022-09-12', '2023-01-19'),
('cc1003', 'ครีมนวล', 30, 3, 90, '2021-08-17', '2022-10-13');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` varchar(10) NOT NULL,
  `CustomerName` varchar(20) NOT NULL,
  `Locations` varchar(30) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `c-Dates` date NOT NULL,
  `Mod-Dates` date NOT NULL,
  `Postcode` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `CustomerName`, `Locations`, `Email`, `DateOfBirth`, `c-Dates`, `Mod-Dates`, `Postcode`) VALUES
('c2001', 'Nattasit', 'Khlong 6 Pathum Thani', 'nateiei@gmail.com', '2002-06-06', '2022-09-08', '2022-09-10', 12120),
('c2002', 'Loop', 'Khlong 6 Pathum Thani', 'loopnakup@gmail.com', '1998-05-05', '2022-09-09', '2022-09-10', 12120),
('c2003', 'JameO', 'samko augthong', 'Jamekiki@gmail.com', '2003-02-12', '2022-09-10', '2022-09-12', 14160);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `Iid` varchar(10) NOT NULL,
  `CustomerID` varchar(10) NOT NULL,
  `CartID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`Iid`, `CustomerID`, `CartID`) VALUES
('v1001', 'c2001', 'cc1001'),
('v1002', 'c2002', 'cc1002'),
('v1003', 'c2003', 'cc1003');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `LocationID` varchar(10) NOT NULL,
  `LocationName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`LocationID`, `LocationName`) VALUES
('l1011', 'Khlong Hok'),
('l1012', 'Khlong10'),
('l1013', 'samko');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` varchar(10) NOT NULL,
  `ProductName` varchar(20) NOT NULL,
  `Price` float NOT NULL,
  `C-Date` date NOT NULL,
  `Mod-Date` date NOT NULL,
  `Deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `ProductName`, `Price`, `C-Date`, `Mod-Date`, `Deleted`) VALUES
('p1101', 'แชมพู', 159, '2022-09-05', '2022-11-30', 1),
('p1102', 'ผงซักฟอก', 129, '2022-07-04', '2023-03-15', 1),
('p1103', 'ครีมนวล', 30, '2022-05-10', '2022-12-15', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`CartID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`Iid`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`LocationID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
