-- phpMyAdmin SQL Dump
-- version 4.9.7deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 11, 2022 at 06:28 PM
-- Server version: 8.0.27-0ubuntu0.21.04.1
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ubanking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `aid` int NOT NULL,
  `name` text NOT NULL,
  `contact` text NOT NULL,
  `address` text NOT NULL,
  `bid` text NOT NULL,
  `bmail` text NOT NULL,
  `email` text NOT NULL,
  `pass` text NOT NULL,
  `active` tinyint NOT NULL
);

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`aid`, `name`, `contact`, `address`, `bid`, `bmail`, `email`, `pass`, `active`) VALUES
(5, 'Sonali Bank', '01521569950', '44 Motijheel Commercial Area, Dhaka-1000', '42346293857693', 'sonalibank@ubbl.com', 'sonalibank@gmail.com', 'Bank1234', 1),
(6, 'Rupali Bank', '01521569950', '34 Dilkusha C/A, Dhaka-1000', '93874562389475', 'rupalibank@ubbl.com', 'rupalibank@gmail.com', 'Bank2345', 1),
(7, 'Janata Bank', '01345678912', '110 Motijheel Commercial Area, Dhaka 1000', '93745623978456', 'janatabank@ubbl.com', 'janatabank@gmail.com', 'Bank3456', 1),
(8, 'Agrani Bank', '01518641840', '9/D Dilkusha Commercial Area,\r\nDhaka - 1000', '23487239487298', 'agranibank@ubbl.com', 'agranibank@gmail.com', 'Bank4567', 1),
(9, 'Pubali Bank', '01521326125', '26, Dilkusha Commercial Area\r\nDhaka , Dhaka 1000', '49238756384752', 'pubalibank@ubbl.com', 'pubalibank@gmail.com', 'Bank5678', 0);

-- --------------------------------------------------------

--
-- Table structure for table `superadmin`
--

CREATE TABLE `superadmin` (
  `id` int NOT NULL,
  `admin` text NOT NULL,
  `pass` text NOT NULL
);

--
-- Dumping data for table `superadmin`
--

INSERT INTO `superadmin` (`id`, `admin`, `pass`) VALUES
(1, 'super-admin', 'SuperAdmin0');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `acc` text NOT NULL,
  `bank` text NOT NULL,
  `amount` int NOT NULL,
  `type` text NOT NULL,
  `acc2` text,
  `bank2` text
);

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `name`, `acc`, `bank`, `amount`, `type`, `acc2`, `bank2`) VALUES
(2, 'Shamimatul Shopnil', '1294837799', 'Rupali Bank', 100, 'withdraw', NULL, NULL),
(3, 'Shamimatul Shopnil', '1294837799', 'Rupali Bank', 10000, 'deposit', NULL, NULL),
(5, 'Md. Abu Bakar Shahadat', '3266747851', 'Rupali Bank', 100000, 'deposit', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int NOT NULL,
  `fname` text NOT NULL,
  `gender` text NOT NULL,
  `contact` text NOT NULL,
  `address` text NOT NULL,
  `nid` text NOT NULL,
  `bank` text NOT NULL,
  `acc` text NOT NULL,
  `balance` int NOT NULL,
  `email` text NOT NULL,
  `image` text NOT NULL,
  `pass` text NOT NULL,
  `pin` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0'
);

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `fname`, `gender`, `contact`, `address`, `nid`, `bank`, `acc`, `balance`, `email`, `image`, `pass`, `pin`, `active`) VALUES
(17, 'Md. Abu Bakar Shahadat', 'Male', '01681774142', 'Madartek, Bashabo', '5535099997', 'Rupali Bank', '3266747851', 105000, 'shahadat@gmail.com', '3266747851.jpg', '5d93ceb70e2bf5daa84ec3d0cd2c731a', '1234', 1),
(18, 'Al-Amin Islam Hridoy', 'Male', '01521326125', 'Madartek, Bashabo', '5535099997', 'Janata Bank', '2342245191', 0, 'hridoy@gmail.com', '2342245191.jpg', 'asdf1234', '1234', 0),
(19, 'Tanbin Siddique Eidul', 'Male', '01521569950', 'Bashabo, Dhaka', '5535099997', 'Agrani Bank', '4192199557', 0, 'eidul@gmail.com', '4192199557.jpg', 'eidul1234', '1234', 0),
(20, 'Shamimatul Shopnil', 'Female', '01334567890', 'sdfsDf,sDfsDF', '5535099997', 'Rupali Bank', '1294837799', 5200, 'shopnil@gmail.com', '1294837799.jpg', 'shopnil', '1234', 1),
(23, 'Wonder Woman', 'Female', '01345678912', 'abdsdsf', '23452345234523', 'Janata Bank', '1883385667', 0, 'ww@gmail.com', '1883385667.jpg', '14a232e26452ccb5ea8ace7ab114c86e', '1234', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `superadmin`
--
ALTER TABLE `superadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `aid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `superadmin`
--
ALTER TABLE `superadmin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`s
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
