-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2025 at 02:27 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_rental_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `pickup_location_id` int(11) NOT NULL,
  `pickup_address_id` int(11) NOT NULL,
  `dropoff_location_id` int(11) NOT NULL,
  `dropoff_address_id` int(11) NOT NULL,
  `pickup_datetime` datetime NOT NULL,
  `return_datetime` datetime NOT NULL,
  `total_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `car_id`, `customer_id`, `pickup_location_id`, `pickup_address_id`, `dropoff_location_id`, `dropoff_address_id`, `pickup_datetime`, `return_datetime`, `total_price`) VALUES
(1, 1, 1, 1, 1, 2, 3, '2025-06-01 09:00:00', '2025-06-05 18:00:00', 28000),
(3, 3, 3, 1, 2, 1, 1, '2025-07-01 08:00:00', '2025-07-03 20:00:00', 24000),
(4, 6, 4, 3, 1, 2, 4, '2025-06-15 07:00:00', '2025-06-17 18:00:00', 10000),
(7, 7, 7, 3, 1, 3, 1, '2025-07-02 08:30:00', '2025-07-03 17:00:00', 4500),
(8, 1, 8, 1, 2, 2, 3, '2025-07-05 08:00:00', '2025-07-07 18:30:00', 14000),
(9, 6, 9, 1, 1, 1, 1, '2025-06-28 09:00:00', '2025-06-28 21:00:00', 5000),
(10, 3, 10, 3, 1, 2, 4, '2025-07-10 07:00:00', '2025-07-13 18:00:00', 36000),
(11, 1, 1, 2, 3, 1, 2, '2025-05-05 00:00:00', '2025-05-09 00:00:00', 28000),
(14, 5, 7, 2, 3, 1, 1, '2025-06-04 00:00:00', '2025-06-05 03:30:00', 22000),
(17, 11, 16, 4, 7, 1, 2, '2025-06-03 00:00:00', '2025-06-05 04:00:00', 15000),
(19, 2, 17, 6, 8, 6, 8, '2025-06-10 01:30:00', '2025-06-18 00:00:00', 48000),
(20, 15, 13, 7, 10, 7, 10, '2025-06-16 00:00:00', '2025-06-17 03:30:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(100) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `logo`) VALUES
(1, 'Toyota', 'img/brands/toyota.png'),
(2, 'Nissan', 'img/brands/nissan.png'),
(3, 'Suzuki', 'img/brands/suzuki.png'),
(4, 'Honda', 'img/brands/honda.png'),
(5, 'Vitz', 'C:\\Users\\USER\\Pictures\\CARS\\1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `fuel` varchar(20) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL,
  `passengers` int(11) DEFAULT NULL,
  `gearbox` enum('automatic','manual') DEFAULT NULL,
  `price_per_day` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `brand_id`, `model`, `fuel`, `color`, `class`, `passengers`, `gearbox`, `price_per_day`) VALUES
(1, 1, 'Corolla', 'Petrol', 'White', 'Sedan', 5, 'automatic', 7000),
(2, 1, 'Yaris', 'Petrol', 'Silver', 'Hatchback', 5, 'manual', 6000),
(3, 1, 'Fortuner', 'Diesel', 'Black', 'SUV', 7, 'automatic', 12000),
(4, 2, 'Sunny', 'Petrol', 'Black', 'Sedan', 5, 'manual', 6000),
(5, 2, 'X-Trail', 'Diesel', 'Gray', 'SUV', 7, 'automatic', 11000),
(6, 3, 'Swift', 'Petrol', 'Red', 'Hatchback', 4, 'manual', 5000),
(7, 3, 'Celerio', 'Petrol', 'Blue', 'Hatchback', 4, 'manual', 4500),
(8, 1, '12345', 'PETROL', 'Pink', 'main', 4, 'manual', 5000),
(9, 2, '568', 'ELECTRIC', 'red', '5', 4, 'automatic', 1000),
(10, 5, '564', 'PETROL', 'Blue', '5', 4, 'automatic', 2000),
(11, 1, '141', 'PETROL', 'white', '6', 5, 'automatic', 5000),
(12, 5, 'kjlh', 'PETROL', 'black', 'nkk', 4, 'automatic', 2),
(13, 1, 'colorral', 'HYBRID', 'black', 'swit', 1, 'manual', 1),
(14, 1, 'corollar', 'HYBRID', 'Black', 'swit', 1, 'manual', 1),
(15, 1, 'ryu', 'HYBRID', 'Black', 'super', 1, 'manual', 1);

-- --------------------------------------------------------

--
-- Table structure for table `car_features`
--

CREATE TABLE `car_features` (
  `car_id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car_features`
--

INSERT INTO `car_features` (`car_id`, `feature_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(6, 1),
(6, 3),
(8, 1),
(8, 2),
(8, 7),
(8, 9),
(9, 6),
(9, 9),
(10, 2),
(10, 6),
(10, 7),
(10, 9),
(11, 1),
(11, 7),
(11, 9),
(12, 1),
(13, 9),
(14, 9),
(15, 9);

-- --------------------------------------------------------

--
-- Table structure for table `car_images`
--

CREATE TABLE `car_images` (
  `id` int(11) NOT NULL,
  `car_id` int(11) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car_images`
--

INSERT INTO `car_images` (`id`, `car_id`, `image_path`) VALUES
(2, 1, 'img/cars/corolla_back.jpg'),
(3, 1, 'img/cars/corolla_inside.jpg'),
(4, 3, 'img/cars/fortuner_side.jpg'),
(5, 3, 'img/cars/fortuner_back.jpg'),
(6, 6, 'img/cars/swift1.jpg'),
(7, 6, 'img/cars/swift2.jpg'),
(8, 1, 'C:\\Users\\USER\\Pictures\\CARS\\1.jpg'),
(9, 2, 'C:\\Users\\USER\\Pictures\\BRAND\\bmw.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `city_addresses`
--

CREATE TABLE `city_addresses` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city_addresses`
--

INSERT INTO `city_addresses` (`id`, `city_id`, `address`) VALUES
(1, 1, 'No. 12 Main St, Colombo 01'),
(2, 1, 'No. 45 Lake Rd, Colombo 02'),
(3, 2, 'No. 77 Hill Rd, Kandy'),
(4, 2, 'No. 21 Temple St, Kandy'),
(5, 4, 'No.55 Rahula Rd,Kurunegala'),
(6, 5, 'Rahula RD,Rathnapura'),
(7, 4, 'lake RD,kurunegala'),
(8, 6, 'No.34 rd,Ampara'),
(9, 6, 'No 22,RD,Ampara'),
(10, 7, 'No,12 RD,Mahiyanganaya');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `dob`, `phone`, `email`, `address`) VALUES
(1, 'Kasun Jayasuriya', '1995-03-21', '0771234567', 'kasun@gmail.com', '10/2, Kandy Road, Colombo'),
(3, 'Imran Ali', '2000-11-30', '0751122334', 'imran@live.com', '34, Main Street, Kandy'),
(4, 'Nirasha Perera', '1993-08-12', '0701122345', 'nirasha@outlook.com', '50, Highlevel Rd, Nugegoda'),
(7, 'Ravindu Pathirana', '1998-12-19', '0713344556', 'ravindu@hotmail.com', '65, Temple Rd, Gampaha'),
(8, 'Hashini Ratnayake', '1990-06-17', '0782233445', 'hashini.rat@gmail.com', '32, Mihindu Mawatha, Kurunegala'),
(9, 'Malith Jayawardena', '1987-09-24', '0765566778', 'malithj@ymail.com', '99, Lake Road, Anuradhapura'),
(10, 'Tharushi Gunasekara', '1991-11-10', '0744455667', 'tharushi@outlook.com', '15, Main Rd, Ratnapura'),
(11, 'Nuwan Abeysekara', '1994-01-01', '0758899776', 'nuwan.a@gmail.com', 'No 8, Hill Street, Kandy'),
(12, 'Himali Dissanayake', '1996-04-04', '0706677885', 'himalid@gmail.com', '200, Queens Rd, Colombo 3'),
(13, 'Isuru Madushan', '1993-03-03', '0786655443', 'isurum@ymail.com', '25, Circular Rd, Jaffna'),
(16, 'ovindi Bandara', '2025-06-04', '0716598236', 'oviundi@gmail.com', 'No4; Lake Rd,Maho'),
(17, 'malki perera', '2000-08-16', '0762302778', 'malki@gmail.com', 'No 67,RD,Ampara');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`) VALUES
(1, 'Air Conditioning'),
(2, 'Bluetooth'),
(3, 'GPS'),
(4, 'Reverse Camera'),
(5, 'Leather Seats'),
(6, 'Sun Proof'),
(7, 'Navigation Systems'),
(8, 'Electric Windows'),
(9, 'Air Bags'),
(10, 'Heated Seats');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `city`) VALUES
(6, 'Ampara'),
(1, 'Colombo'),
(3, 'Galle'),
(2, 'Kandy'),
(4, 'Kurunegala'),
(7, 'mahiyanganaya'),
(5, 'Rathnapura');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `user_type` enum('admin','user') NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `username`, `password`, `user_type`, `image`, `phone`, `email`) VALUES
(1, 'System Admin', 'admin', '1234', 'admin', 'C:\\Users\\USER\\Pictures\\USER\\woman.png', '0770000000', 'admin@carrental.lk'),
(2, 'Default User', 'user', '1234', 'user', 'img/users/user.png', '0710000000', 'user@carrental.lk'),
(3, 'Kamal Perera', 'kamalp', '1234', 'admin', 'img/users/u1.png', '0712345678', 'kamalp@gmail.com'),
(4, 'Nimali Fernando', 'nimalif', '1111', 'user', 'img/users/u2.png', '0773456789', 'nimalif@yahoo.com'),
(5, 'Suresh Bandara', 'sureshb', '1111', 'user', 'img/users/u3.png', '0701122334', 'sureshb@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_id` (`car_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `pickup_location_id` (`pickup_location_id`),
  ADD KEY `pickup_address_id` (`pickup_address_id`),
  ADD KEY `dropoff_location_id` (`dropoff_location_id`),
  ADD KEY `dropoff_address_id` (`dropoff_address_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Indexes for table `car_features`
--
ALTER TABLE `car_features`
  ADD PRIMARY KEY (`car_id`,`feature_id`),
  ADD KEY `feature_id` (`feature_id`);

--
-- Indexes for table `car_images`
--
ALTER TABLE `car_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_id` (`car_id`);

--
-- Indexes for table `city_addresses`
--
ALTER TABLE `city_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `city` (`city`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `car_images`
--
ALTER TABLE `car_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `city_addresses`
--
ALTER TABLE `city_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_3` FOREIGN KEY (`pickup_location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_4` FOREIGN KEY (`pickup_address_id`) REFERENCES `city_addresses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_5` FOREIGN KEY (`dropoff_location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_6` FOREIGN KEY (`dropoff_address_id`) REFERENCES `city_addresses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `cars_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`);

--
-- Constraints for table `car_features`
--
ALTER TABLE `car_features`
  ADD CONSTRAINT `car_features_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `car_features_ibfk_2` FOREIGN KEY (`feature_id`) REFERENCES `features` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `car_images`
--
ALTER TABLE `car_images`
  ADD CONSTRAINT `car_images_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `city_addresses`
--
ALTER TABLE `city_addresses`
  ADD CONSTRAINT `city_addresses_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
