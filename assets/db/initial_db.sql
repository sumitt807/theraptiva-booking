-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2022 at 07:04 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `theraptiva`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_theraptiva_appointments`
--

CREATE TABLE `wp_theraptiva_appointments` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_provider_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `booking_date` varchar(15) NOT NULL,
  `booking_time` varchar(15) NOT NULL,
  `payment_type` text NOT NULL,
  `status` int(11) NOT NULL COMMENT '[0=pending, 1=approved, 2=cancelled]',
  `order_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_theraptiva_customers`
--

CREATE TABLE `wp_theraptiva_customers` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_theraptiva_services`
--

CREATE TABLE `wp_theraptiva_services` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `price` float NOT NULL,
  `is_avilable` tinyint(4) NOT NULL DEFAULT 1 COMMENT '[0=not avilable, 1=avilable]',
  `duration` int(11) NOT NULL,
  `icon` int(11) NOT NULL,
  `wp_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_theraptiva_service_providers`
--

CREATE TABLE `wp_theraptiva_service_providers` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_theraptiva_working_hours`
--

CREATE TABLE `wp_theraptiva_working_hours` (
  `id` int(11) NOT NULL,
  `service_provider_id` int(11) NOT NULL,
  `mon` text NOT NULL,
  `tue` text NOT NULL,
  `web` text NOT NULL,
  `thu` text NOT NULL,
  `fri` text NOT NULL,
  `sat` text NOT NULL,
  `sun` text NOT NULL,
  `lunch_break` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_theraptiva_services`
--
ALTER TABLE `wp_theraptiva_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_theraptiva_service_providers`
--
ALTER TABLE `wp_theraptiva_service_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_theraptiva_working_hours`
--
ALTER TABLE `wp_theraptiva_working_hours`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_theraptiva_services`
--
ALTER TABLE `wp_theraptiva_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_theraptiva_service_providers`
--
ALTER TABLE `wp_theraptiva_service_providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_theraptiva_working_hours`
--
ALTER TABLE `wp_theraptiva_working_hours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
