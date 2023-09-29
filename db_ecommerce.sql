-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2022 at 07:49 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin`
--
CREATE DATABASE IF NOT EXISTS `admin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `admin`;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `email` varchar(100) NOT NULL,
  `password` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `password`) VALUES
('kishan@gmail.com\r\n', 123);
--
-- Database: `admin_pannel`
--
CREATE DATABASE IF NOT EXISTS `admin_pannel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `admin_pannel`;
--
-- Database: `ajaxphp`
--
CREATE DATABASE IF NOT EXISTS `ajaxphp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ajaxphp`;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `emial` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `api`
--
CREATE DATABASE IF NOT EXISTS `api` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `api`;

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `descreption` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `app2021`
--
CREATE DATABASE IF NOT EXISTS `app2021` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `app2021`;

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(11) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `user_type`) VALUES
(4, 'user@gmail.com', '123', '2'),
(5, 'admin@gmail.com', '123', '1');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emp`
--
ALTER TABLE `emp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `bloosom_greens`
--
CREATE DATABASE IF NOT EXISTS `bloosom_greens` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bloosom_greens`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `moblie` int(12) NOT NULL,
  `city` varchar(50) NOT NULL,
  `msg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `moblie`, `city`, `msg`) VALUES
(1, ' kishan kumar', 'kishan@gmail.com', 2147483647, 'Azamgarh', 'hi I am kishan kumar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `crud`
--
CREATE DATABASE IF NOT EXISTS `crud` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `crud`;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `file` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `date` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `mobile`, `email`, `password`, `file`, `address`, `date`) VALUES
(1, 'gh', '567898765', 'kishan276288@gmail.com', 'adm6789in', 'Screenshot (26).png', 'VILLAGE POST-GALIBPUR POLICE STATION PAWAI TAHSHIL PHULPUR DISTRIC AZAMGARH', 0),
(2, 'bhavesh ', '9889898989', 'bh@gmail.com', '1234', 'Screenshot (23).png', 'galibpi', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `crud_3`
--
CREATE DATABASE IF NOT EXISTS `crud_3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `crud_3`;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` varchar(13) NOT NULL,
  `class` varchar(12) NOT NULL,
  `college` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `age`, `class`, `college`) VALUES
(13, 'kishan kumar ', '24', 'diploma engi', '  C S J M GOVT. P OLYTECHNIC AMBEDKAR NAGAR  ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Database: `ecom`
--
CREATE DATABASE IF NOT EXISTS `ecom` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ecom`;

-- --------------------------------------------------------

--
-- Table structure for table `add_slider`
--

CREATE TABLE `add_slider` (
  `id` int(11) NOT NULL,
  `simage` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_slider`
--

INSERT INTO `add_slider` (`id`, `simage`, `created_at`, `updated_at`) VALUES
(1, 'download.jpg', '2022-05-10 04:50:12', '2022-05-10 04:50:12'),
(2, 'a.jpg', '2022-05-10 04:50:43', '2022-05-10 04:50:43'),
(3, 'a.png', '2022-05-10 04:50:58', '2022-05-10 04:50:58'),
(4, 'istockphoto-1206800961-612x612.jpg', '2022-05-10 04:51:15', '2022-05-10 04:51:15'),
(5, 'mobile_app.png', '2022-05-10 05:37:34', '2022-05-10 05:37:34'),
(6, 'pizza-g8bbad4623_1920.png', '2022-05-16 05:55:02', '2022-05-16 05:55:02');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updated_at`) VALUES
(1, 'admin', 'admin', '2022-05-23 03:41:41');

-- --------------------------------------------------------

--
-- Table structure for table `bhavesh`
--

CREATE TABLE `bhavesh` (
  `id` int(11) NOT NULL,
  `first` varchar(255) NOT NULL,
  `last` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `checks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bhavesh`
--

INSERT INTO `bhavesh` (`id`, `first`, `last`, `email`, `password`, `checks`) VALUES
(1, 'BHAVESH', 'SINGH', 'singhbhavesh682@gmail.com', 'singhbhavesh682@gmail.com', 'click'),
(2, 'Shiva', 'Singh', 's@gmail.com', 's@gmail.com', 'click');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `pimage` varchar(255) NOT NULL,
  `total` decimal(9,2) NOT NULL DEFAULT 0.00,
  `color` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `Email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `pid`, `pname`, `price`, `quantity`, `pimage`, `total`, `color`, `created_at`, `Email`) VALUES
(1, 1, 'Apple', '500.00', 1, 'a.png', '500.00', '2', '2022-05-23 03:27:22', 's@gmail.com'),
(2, 1, 'Shirt', '1099.00', 2, 'a1.jpg', '2198.00', '1', '2022-05-25 05:21:33', 's@gmail.com'),
(3, 25, 'Sandal', '199.00', 11, 'sandal.jpg', '2189.00', '3', '2022-05-26 13:19:29', ''),
(4, 1, 'Shirt', '1099.00', 1, 'a1.jpg', '1099.00', '1', '2022-05-27 04:05:47', ''),
(5, 4, 'Men Premium ', '599.00', 2, 'j1.jpg', '1198.00', 'Select', '2022-05-28 03:55:54', ''),
(6, 23, 'Badminton', '1199.00', 1, 'badminton.jpg', '1199.00', 'Select', '2022-05-28 14:52:50', ''),
(7, 1, 'Shirt', '1099.00', 1, 'a1.jpg', '1099.00', '1', '2022-05-29 19:45:08', ''),
(8, 14, 'Casual Shirt', '599.00', 1, 'wsh1.jpg', '599.00', 'Select', '2022-06-12 11:35:05', ''),
(9, 4, 'Men Premium ', '599.00', 1, 'j1.jpg', '599.00', 'Select', '2022-06-13 17:20:46', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat_name`, `created_at`) VALUES
(1, 'Mens', '2022-05-21 02:43:44'),
(2, 'Women', '2022-05-21 02:44:26'),
(3, 'Electronics', '2022-05-21 02:46:55'),
(4, 'Sports', '2022-05-21 03:03:23'),
(5, 'Child', '2022-05-21 03:06:31');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `pincode` int(11) NOT NULL,
  `card` varchar(225) NOT NULL,
  `card_number` int(11) NOT NULL,
  `expdate` int(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `cvv` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `username`, `email`, `address`, `city`, `state`, `pincode`, `card`, `card_number`, `expdate`, `year`, `cvv`, `created_at`) VALUES
(1, 'Shiva Singh', 's@gmail.com', 'BHIKHANPUR', 'AYODHYA(FAIZABAD)', 'Uttar Pradesh', 224001, 'Visa', 1111111, 1, '2022', 0, '2022-05-25 05:29:42');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_states`
--

CREATE TABLE `master_states` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 0,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `st_code` int(10) UNSIGNED DEFAULT NULL,
  `short_name` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_states`
--

INSERT INTO `master_states` (`id`, `country_id`, `state`, `st_code`, `short_name`, `created_at`, `updated_at`) VALUES
(1, 100, 'Tamilnadu', 22, 'TN', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(2, 100, 'Andhra Pradesh', 1, 'AP', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(3, 100, 'Arunachal Pradesh', 2, 'AN', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(4, 100, 'Assam', 3, 'AS', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(5, 100, 'Bihar', 4, 'BH', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(6, 100, 'Tripura', 23, 'TP', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(7, 100, 'Chattisgarh', 28, 'CG', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(9, 100, 'Other', 30, 'OT', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(10, 100, 'Delhi', 26, 'DL', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(11, 100, 'Goa', 5, 'GO', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(12, 100, 'Gujrat', 6, 'GJ', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(13, 100, 'Haryana', 7, 'HR', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(14, 100, 'Himachal Pradesh', 8, 'HP', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(15, 100, 'Jammu & Kashmir', 9, 'JK', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(16, 100, 'Jharkhand', 29, 'JH', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(17, 100, 'Karnataka', 10, 'KT', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(18, 100, 'Kerala', 11, 'KL', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(19, 100, 'Lakshdweep', 31, 'LD', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(20, 100, 'Madhya Pradesh', 12, 'MP', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(21, 100, 'Maharashtra', 13, 'MH', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(22, 100, 'Manipur', 14, 'MN', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(23, 100, 'Meghalaya', 15, 'MG', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(24, 100, 'Mizoram', 16, 'MZ', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(25, 100, 'Nagaland', 17, 'NG', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(26, 100, 'Orissa', 18, 'OR', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(27, 100, 'Pondichery', 32, 'PC', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(28, 100, 'Punjab', 19, 'PJ', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(29, 100, 'Rajasthan', 20, 'RJ', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(30, 100, 'Sikkim', 21, 'SK', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(33, 100, 'Uttar Pradesh', 24, 'UP', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(34, 100, 'Uttarakhand', 27, 'UK', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(35, 100, 'West Bengal', 25, 'WB', '2021-11-10 02:10:42', '2021-11-10 02:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `des` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `price` decimal(9,2) NOT NULL DEFAULT 0.00,
  `old_price` decimal(9,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `pname` varchar(255) DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  `sub_cat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `image`, `des`, `status`, `price`, `old_price`, `created_at`, `pname`, `category`, `sub_cat`) VALUES
(1, 'a1.jpg', 'Best Shirt', '1', '1099.00', '1299.00', '2022-05-23 04:37:33', 'Shirt', '1', 'Shirt'),
(2, 'w.jpg', 'Nice Shirt', '1', '20000.00', '1299.00', '2022-05-23 04:53:03', 'Shirt', '1', 'Shirt'),
(3, 'j.jpg', 'Men Premium Cotton Blend,', '1', '1099.00', '899.00', '2022-05-25 01:24:28', 'Stretchable Jeans ', '1', 'Jeans'),
(4, 'j1.jpg', 'Nice Jeans', '1', '599.00', '799.00', '2022-05-25 01:29:51', 'Men Premium ', '1', 'Jeans'),
(5, 's1.jpg', 'Pure Cotton', '1', '3999.00', '5999.00', '2022-05-25 01:35:22', 'Mens Suit123', '1', 'Suits'),
(6, 's2.jpg', 'Nice Dress', '1', '999.00', '2999.00', '2022-05-25 01:37:27', 'Suit', '1', 'Suits'),
(7, 'b1.jpg', 'Casual Blazer', '1', '3099.00', '3599.00', '2022-05-25 01:42:43', 'Men Blazer', '1', 'Blazers'),
(8, 'k.jpg', 'Cotton Kurta', '1', '1099.00', '599.00', '2022-05-25 01:45:50', 'Straight Kurta', '1', 'Kurtas'),
(9, 's3.jpg', 'Best Shirt', '1', '1099.00', '1299.00', '2022-05-25 01:50:32', 'Shirt', '1', 'Shirt'),
(10, 'ws1.jpg', 'Beautiful For Women saree', '1', '1099.00', '699.00', '2022-05-25 01:58:42', ' Banarasi Saree', '2', 'Sarees'),
(11, 'ws2.jpg', 'Saree Cotton', '1', '299.00', '599.00', '2022-05-25 01:59:55', 'Women saree', '2', 'Sarees'),
(12, 'wk1.jpg', 'Kurta with Palazzo ', '1', '1099.00', '1299.00', '2022-05-25 02:03:27', 'Kurta with Palazzo ', '2', 'Kurti'),
(13, 'wk2.jpg', 'Kurta with Palazzo ', '1', '699.00', '1099.00', '2022-05-25 02:04:00', 'Kurta with Palazzo ', '2', 'Kurti'),
(14, 'wsh1.jpg', 'Casual Shirt', '1', '599.00', '799.00', '2022-05-25 02:07:43', 'Casual Shirt', '2', 'Shirt'),
(15, 'wsh2.jpg', 'Formal Shirt', '0', '1099.00', '1299.00', '2022-05-25 02:08:26', 'Casual Shirt', '2', 'Shirt'),
(16, 'wj1.jpg', 'Best Dress', '1', '1099.00', '1299.00', '2022-05-25 02:11:15', 'Women Jeans', '2', 'Jeans'),
(17, 'wj2.jpg', 'Jeans', '1', '1099.00', '1599.00', '2022-05-25 02:12:45', 'Jeans', '2', 'Jeans'),
(18, 'wg1.jpg', 'Best Selling Gowns', '1', '1099.00', '1299.00', '2022-05-25 02:17:37', 'Gowns', '2', 'Gowns'),
(19, 'm1.jpg', '33W Charger Included', '1', '0.00', '15999.00', '2022-05-25 02:26:34', 'Redmi Note 11', '3', 'Mobile'),
(20, 'l1.jpg', 'Best Laptop', '1', '41000.00', '50000.00', '2022-05-25 02:29:29', 'RedmiBook', '3', 'Laptop'),
(21, 'b11.jpg', 'Bluetooth', '1', '999.00', '1099.00', '2022-05-25 02:32:11', 'Boat', '3', 'Speaker & Bluetooth'),
(22, 'bat.jpg', 'Bat', '1', '1099.00', '599.00', '2022-05-25 02:34:39', 'MRF Bat', '4', 'Cricket'),
(23, 'badminton.jpg', 'Best Badminton', '1', '1199.00', '1599.00', '2022-05-25 02:35:19', 'Badminton', '4', 'Badminton'),
(24, 'f.jpg', 'Best Football', '1', '1099.00', '1499.00', '2022-05-25 02:37:04', 'Football', '4', 'Football'),
(25, 'sandal.jpg', 'Best Sandal', '1', '199.00', '399.00', '2022-05-25 02:40:25', 'Sandal', '5', 'Sandals'),
(26, 'toy.jpg', 'Toys', '1', '299.00', '289.00', '2022-05-25 02:43:46', 'Toys', '5', 'Toys');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `cat_id`, `sname`, `created_at`) VALUES
(1, 2, 'Kurti', '2022-05-21 03:18:00'),
(2, 1, 'Shirt', '2022-05-21 05:05:07'),
(3, 3, 'Mobile', '2022-05-21 05:05:22'),
(4, 4, 'Sonata', '2022-05-21 05:05:34'),
(5, 1, 'Kurtas', '2022-05-23 05:13:41'),
(6, 1, 'Blazers', '2022-05-23 05:13:56'),
(7, 1, 'Suits', '2022-05-23 05:14:09'),
(8, 1, 'Jeans', '2022-05-23 05:14:18'),
(9, 2, 'Shirt', '2022-05-23 05:14:37'),
(10, 2, 'Jeans', '2022-05-23 05:14:48'),
(11, 2, 'Sarees', '2022-05-23 05:16:42'),
(12, 2, 'Gowns', '2022-05-23 05:17:23'),
(13, 2, 'Lahenga & Choli', '2022-05-23 05:17:43'),
(14, 3, 'Laptop', '2022-05-23 05:18:09'),
(15, 3, 'Speaker & Bluetooth', '2022-05-23 05:18:36'),
(16, 3, 'Tablets', '2022-05-23 05:18:50'),
(17, 3, 'Camera', '2022-05-23 05:18:58'),
(18, 4, 'Cricket', '2022-05-23 05:19:11'),
(19, 4, 'Badminton', '2022-05-23 05:19:21'),
(20, 4, 'Football', '2022-05-23 05:19:31'),
(21, 4, 'Skating', '2022-05-23 05:19:45'),
(22, 4, 'Chess', '2022-05-23 05:19:55'),
(23, 5, 'Sandals', '2022-05-23 05:20:15'),
(24, 5, 'Toys', '2022-05-23 05:20:26'),
(25, 5, 'Shirt', '2022-05-23 05:20:33'),
(26, 5, 'Jeans', '2022-05-23 05:20:43'),
(27, 5, 'T-Shirt', '2022-05-23 05:20:56'),
(28, 1, 'laptops', '2022-06-12 07:00:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_slider`
--
ALTER TABLE `add_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bhavesh`
--
ALTER TABLE `bhavesh`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_slider`
--
ALTER TABLE `add_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bhavesh`
--
ALTER TABLE `bhavesh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- Database: `ecommerce`
--
CREATE DATABASE IF NOT EXISTS `ecommerce` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ecommerce`;

-- --------------------------------------------------------

--
-- Table structure for table `add_slider`
--

CREATE TABLE `add_slider` (
  `id` int(11) NOT NULL,
  `simage` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_slider`
--

INSERT INTO `add_slider` (`id`, `simage`, `created_at`, `updated_at`) VALUES
(1, 'download.jpg', '2022-05-10 04:50:12', '2022-05-10 04:50:12'),
(2, 'a.jpg', '2022-05-10 04:50:43', '2022-05-10 04:50:43'),
(3, 'a.png', '2022-05-10 04:50:58', '2022-05-10 04:50:58'),
(4, 'istockphoto-1206800961-612x612.jpg', '2022-05-10 04:51:15', '2022-05-10 04:51:15'),
(5, 'mobile_app.png', '2022-05-10 05:37:34', '2022-05-10 05:37:34'),
(6, 'pizza-g8bbad4623_1920.png', '2022-05-16 05:55:02', '2022-05-16 05:55:02');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updated_at`) VALUES
(1, 'admin', 'admin', '2022-05-23 03:41:41');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `pimage` varchar(255) NOT NULL,
  `total` decimal(9,2) NOT NULL DEFAULT 0.00,
  `color` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `Email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `pid`, `pname`, `price`, `quantity`, `pimage`, `total`, `color`, `created_at`, `Email`) VALUES
(9, 8, 'JENS', '650.00', 1, 'D_15.webp', '650.00', 'Select', '2022-06-12 11:40:06', ''),
(10, 7, 'DUPPATA', '154.00', 1, 'Dslider_5.webp', '154.00', 'Select', '2022-06-12 11:40:19', ''),
(11, 9, 'BATMINTON', '400.00', 1, 'D_21.webp', '400.00', 'Select', '2022-06-12 11:40:36', ''),
(12, 2, 'FOOBALL', '1199.00', 1, 'D_20.webp', '1199.00', 'Select', '2022-06-12 11:41:05', ''),
(13, 3, 'WIFI', '1499.00', 1, 'D_19.webp', '1499.00', 'Select', '2022-06-12 12:07:54', ''),
(14, 6, 'shirt', '600.00', 1, 'Dslider_1.webp', '600.00', 'Select', '2022-06-13 17:04:11', ''),
(15, 5, 'shirt', '899.00', 1, 'Dslider_9.webp', '899.00', 'Select', '2022-06-13 17:08:27', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat_name`, `created_at`) VALUES
(1, 'Mens', '2022-05-21 02:43:44'),
(2, 'Women', '2022-05-21 02:44:26'),
(3, 'Electronics', '2022-05-21 02:46:55'),
(4, 'Sports', '2022-05-21 03:03:23'),
(5, 'Child', '2022-05-21 03:06:31');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `pincode` int(11) NOT NULL,
  `card` varchar(225) NOT NULL,
  `card_number` int(11) NOT NULL,
  `expdate` int(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `cvv` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `username`, `email`, `address`, `city`, `state`, `pincode`, `card`, `card_number`, `expdate`, `year`, `cvv`, `created_at`) VALUES
(1, 'Shiva Singh', 's@gmail.com', 'BHIKHANPUR', 'AYODHYA(FAIZABAD)', 'Uttar Pradesh', 224001, 'Visa', 1111111, 1, '2022', 0, '2022-05-25 05:29:42');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_states`
--

CREATE TABLE `master_states` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 0,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `st_code` int(10) UNSIGNED DEFAULT NULL,
  `short_name` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_states`
--

INSERT INTO `master_states` (`id`, `country_id`, `state`, `st_code`, `short_name`, `created_at`, `updated_at`) VALUES
(1, 100, 'Tamilnadu', 22, 'TN', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(2, 100, 'Andhra Pradesh', 1, 'AP', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(3, 100, 'Arunachal Pradesh', 2, 'AN', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(4, 100, 'Assam', 3, 'AS', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(5, 100, 'Bihar', 4, 'BH', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(6, 100, 'Tripura', 23, 'TP', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(7, 100, 'Chattisgarh', 28, 'CG', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(9, 100, 'Other', 30, 'OT', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(10, 100, 'Delhi', 26, 'DL', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(11, 100, 'Goa', 5, 'GO', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(12, 100, 'Gujrat', 6, 'GJ', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(13, 100, 'Haryana', 7, 'HR', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(14, 100, 'Himachal Pradesh', 8, 'HP', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(15, 100, 'Jammu & Kashmir', 9, 'JK', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(16, 100, 'Jharkhand', 29, 'JH', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(17, 100, 'Karnataka', 10, 'KT', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(18, 100, 'Kerala', 11, 'KL', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(19, 100, 'Lakshdweep', 31, 'LD', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(20, 100, 'Madhya Pradesh', 12, 'MP', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(21, 100, 'Maharashtra', 13, 'MH', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(22, 100, 'Manipur', 14, 'MN', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(23, 100, 'Meghalaya', 15, 'MG', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(24, 100, 'Mizoram', 16, 'MZ', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(25, 100, 'Nagaland', 17, 'NG', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(26, 100, 'Orissa', 18, 'OR', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(27, 100, 'Pondichery', 32, 'PC', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(28, 100, 'Punjab', 19, 'PJ', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(29, 100, 'Rajasthan', 20, 'RJ', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(30, 100, 'Sikkim', 21, 'SK', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(33, 100, 'Uttar Pradesh', 24, 'UP', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(34, 100, 'Uttarakhand', 27, 'UK', '2021-11-10 02:10:42', '2021-11-10 02:10:42'),
(35, 100, 'West Bengal', 25, 'WB', '2021-11-10 02:10:42', '2021-11-10 02:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `des` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `price` decimal(9,2) NOT NULL DEFAULT 0.00,
  `old_price` decimal(9,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `pname` varchar(255) DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  `sub_cat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `image`, `des`, `status`, `price`, `old_price`, `created_at`, `pname`, `category`, `sub_cat`) VALUES
(2, 'D_20.webp', 'ADIDAS KIDS BALLS', '1', '1199.00', '1599.00', '2022-06-12 06:25:22', 'FOOBALL', '4', 'Football'),
(3, 'D_19.webp', ' LETEST WIFI', '1', '1499.00', '1999.00', '2022-06-12 06:36:31', 'WIFI', '3', 'Camera'),
(4, 'Dslider_4.webp', 'CHILDS TOYS', '1', '400.00', '499.00', '2022-06-12 06:37:47', 'TOYS', '5', 'Toys'),
(5, 'Dslider_9.webp', 'shirts', '1', '899.00', '999.00', '2022-06-12 06:40:42', 'shirt', '1', 'Shirt'),
(6, 'Dslider_1.webp', 'FORMAL SHIRT', '1', '600.00', '745.00', '2022-06-12 06:49:41', 'shirt', '1', 'Shirt'),
(7, 'Dslider_5.webp', 'BEST DUPPATA', '1', '154.00', '174.00', '2022-06-12 06:52:06', 'DUPPATA', '2', 'Sarees'),
(8, 'D_15.webp', 'TOP JENS', '1', '650.00', '760.00', '2022-06-12 06:54:36', 'JENS', '1', 'Jeans'),
(9, 'D_21.webp', 'PUMA BATMINTON', '1', '400.00', '599.00', '2022-06-12 06:56:59', 'BATMINTON', '4', 'Badminton'),
(10, 'wjens.webp', 'women jeans', '0', '400.00', '499.00', '2022-06-13 07:46:18', 'jeans', '2', 'Jeans'),
(11, 'wjens.webp', 'women jeans', '0', '400.00', '499.00', '2022-06-13 07:47:34', 'jeans', '2', 'Jeans'),
(12, 'Dslider_13.webp', 'letest product', '1', '1999.00', '2300.00', '2022-06-13 07:57:29', 'lanhenga cholli', '2', 'Lahenga & Choli'),
(13, 'wjens_1.webp', 'taujer jeans', '1', '799.00', '999.00', '2022-06-13 07:59:19', 'jeans', '2', 'Jeans'),
(14, 'Dslider_6.webp', 'banarshi shoot', '1', '1099.00', '1199.00', '2022-06-13 08:02:12', 'shoot', '2', 'Kurti'),
(15, 'g_1.webp', 'shirt women', '1', '999.00', '1099.00', '2022-06-13 08:03:06', 'shirt women', '2', 'Shirt'),
(16, '30-pieces-test-leads-with-alligator-clips-set-insulated-test-original-imaffyfnwdnp5mux.webp', 'anchor ', '1', '45.00', '50.00', '2022-06-13 08:04:50', 'leads', '3', 'Speaker & Bluetooth'),
(17, 'E_1.webp', 'ic wair', '1', '12.00', '15.00', '2022-06-13 08:07:06', 'i c ', '3', 'Speaker & Bluetooth'),
(18, 'E_4.webp', 'activba gloogun', '1', '200.00', '299.00', '2022-06-13 08:08:56', 'gloogun', '3', 'Speaker & Bluetooth'),
(19, 'E_3.webp', 'best fan', '1', '999.00', '1100.00', '2022-06-13 08:10:30', 'a c fan', '3', 'Mobile'),
(20, 'E_2.webp', 'good quality', '1', '999.00', '1000.00', '2022-06-13 08:12:43', 'temprature magarment', '3', 'Speaker & Bluetooth'),
(21, 'D_17.webp', 'anchor presh', '1', '1099.00', '1200.00', '2022-06-13 08:14:08', 'presh', '3', 'Speaker & Bluetooth'),
(22, 'download (1).jpg', 'world cup', '1', '200000.00', '399999.00', '2022-06-13 08:16:11', 'racing car', '4', 'Skating'),
(23, 'download (2).jpg', 'race bike', '1', '199999.00', '300000.00', '2022-06-13 08:17:38', 'racing bike', '4', 'Skating'),
(24, 'images (1).jpg', 'hero cycle', '1', '1899.00', '2999.00', '2022-06-13 08:18:55', 'racing cycle', '4', 'Skating'),
(25, 'Dslider_3.webp', 'car', '1', '120.00', '150.00', '2022-06-13 08:20:38', 'robot toys', '5', 'Toys'),
(26, 'K_8.webp', 'child bus', '1', '130.00', '150.00', '2022-06-13 08:22:06', 'child bus', '5', 'Toys');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `first` varchar(255) NOT NULL,
  `last` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `checks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `first`, `last`, `email`, `password`, `checks`) VALUES
(1, 'BHAVESH', 'SINGH', 'singhbhavesh682@gmail.com', 'singhbhavesh682@gmail.com', 'click'),
(2, 'Shiva', 'Singh', 's@gmail.com', 's@gmail.com', 'click'),
(3, '', '', '', '', ''),
(6, 'kishan', 'kumar', 'kishan@gmail.com', 'gmail@g,ailco,', 'on'),
(8, 'amit', 'kumar', 'amit@gmail.com', 'amit@gmail.com', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `cat_id`, `sname`, `created_at`) VALUES
(1, 2, 'Kurti', '2022-05-21 03:18:00'),
(2, 1, 'Shirt', '2022-05-21 05:05:07'),
(3, 3, 'Mobile', '2022-05-21 05:05:22'),
(4, 4, 'Sonata', '2022-05-21 05:05:34'),
(5, 1, 'Kurtas', '2022-05-23 05:13:41'),
(6, 1, 'Blazers', '2022-05-23 05:13:56'),
(7, 1, 'Suits', '2022-05-23 05:14:09'),
(8, 1, 'Jeans', '2022-05-23 05:14:18'),
(9, 2, 'Shirt', '2022-05-23 05:14:37'),
(10, 2, 'Jeans', '2022-05-23 05:14:48'),
(11, 2, 'Sarees', '2022-05-23 05:16:42'),
(12, 2, 'Gowns', '2022-05-23 05:17:23'),
(13, 2, 'Lahenga & Choli', '2022-05-23 05:17:43'),
(14, 3, 'Laptop', '2022-05-23 05:18:09'),
(15, 3, 'Speaker & Bluetooth', '2022-05-23 05:18:36'),
(16, 3, 'Tablets', '2022-05-23 05:18:50'),
(17, 3, 'Camera', '2022-05-23 05:18:58'),
(18, 4, 'Cricket', '2022-05-23 05:19:11'),
(19, 4, 'Badminton', '2022-05-23 05:19:21'),
(20, 4, 'Football', '2022-05-23 05:19:31'),
(21, 4, 'Skating', '2022-05-23 05:19:45'),
(22, 4, 'Chess', '2022-05-23 05:19:55'),
(23, 5, 'Sandals', '2022-05-23 05:20:15'),
(24, 5, 'Toys', '2022-05-23 05:20:26'),
(25, 5, 'Shirt', '2022-05-23 05:20:33'),
(26, 5, 'Jeans', '2022-05-23 05:20:43'),
(27, 5, 'T-Shirt', '2022-05-23 05:20:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_slider`
--
ALTER TABLE `add_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_slider`
--
ALTER TABLE `add_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- Database: `file_uplode`
--
CREATE DATABASE IF NOT EXISTS `file_uplode` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `file_uplode`;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `profile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `form`
--
CREATE DATABASE IF NOT EXISTS `form` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `form`;

-- --------------------------------------------------------

--
-- Table structure for table `detail`
--

CREATE TABLE `detail` (
  `id` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail`
--

INSERT INTO `detail` (`id`, `Username`, `Email`, `Password`) VALUES
(1, 'kishan kumar', 'kishan@gmail.com', '123'),
(2, 'kishan kumar', 'kishan@gmail.com', '123'),
(3, 'kishan kumar', 'kishan@gmail.com', '123'),
(4, 'kishan kumar', 'kishan@gmail.com', '123'),
(5, 'kishan kumar', 'kishan@gmail.com', '123'),
(6, 'kishan kumar', 'kishan@gmail.com', '123'),
(7, 'kishan kumar', 'kishan@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`id`, `username`, `email`, `password`) VALUES
(2, 'kishan kumar', 'kishan@gmail.com', '123'),
(3, 'admin', 'kishan276288@gmail.com', 'admin'),
(4, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `kishan`
--

CREATE TABLE `kishan` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kishan`
--

INSERT INTO `kishan` (`id`, `username`, `email`, `password`) VALUES
(22, 'admin', ' ', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `question _paper`
--

CREATE TABLE `question _paper` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `Q_1` varchar(12) NOT NULL,
  `Q_2` varchar(255) NOT NULL,
  `Q_3` varchar(255) NOT NULL,
  `Q_4` varchar(12) NOT NULL,
  `Q_5` varchar(12) NOT NULL,
  `Q_6` varchar(12) NOT NULL,
  `Q_7` varchar(12) NOT NULL,
  `Q_8` varchar(12) NOT NULL,
  `Q_9` varchar(12) NOT NULL,
  `Q_10` varchar(12) NOT NULL,
  `Q_11` varchar(12) NOT NULL,
  `Q_12` varchar(12) NOT NULL,
  `Q_13` varchar(12) NOT NULL,
  `Q_14` varchar(12) NOT NULL,
  `Q_15` varchar(12) NOT NULL,
  `Q_16` varchar(12) NOT NULL,
  `Q_17` varchar(12) NOT NULL,
  `Q_18` varchar(12) NOT NULL,
  `Q_19` varchar(12) NOT NULL,
  `Q_20` varchar(12) NOT NULL,
  `msg1` varchar(255) NOT NULL,
  `msg2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question _paper`
--

INSERT INTO `question _paper` (`id`, `name`, `email`, `Q_1`, `Q_2`, `Q_3`, `Q_4`, `Q_5`, `Q_6`, `Q_7`, `Q_8`, `Q_9`, `Q_10`, `Q_11`, `Q_12`, `Q_13`, `Q_14`, `Q_15`, `Q_16`, `Q_17`, `Q_18`, `Q_19`, `Q_20`, `msg1`, `msg2`) VALUES
(14, 'rtrtrt', 'rtryrt', 'b', 'd', 'e', 'a', 'c', 'a', 'd', 'c', 'b', 'b', 'e', 'c', 'c', 'd', 'e', 'd', 'd', 'c', 'c', 'c', 'feef', 'erere'),
(15, 'abc', 'abc@gmail.com', '', 'd', 'd', 'b', 'b', 'd', 'e', 'a', 'b', 'c', 'd', 'e', 'a', 'b', 'c', 'c', 'd', 'e', 'c', 'c', 'hjfhdjhfjdhf', 'jhdfjhdjhfdfj'),
(16, 'abc', 'abc@gmail.com', '', 'd', 'd', 'b', 'b', 'd', 'e', 'a', 'b', 'c', 'd', 'e', 'a', 'b', 'c', 'c', 'd', 'e', 'c', 'c', 'hjfhdjhfjdhf', 'jhdfjhdjhfdfj'),
(17, 'abc', 'abc@gmail.com', '', 'd', 'd', 'b', 'b', 'd', 'e', 'a', 'b', 'c', 'd', 'e', 'a', 'b', 'c', 'c', 'd', 'e', 'c', 'c', 'hjfhdjhfjdhf', 'jhdfjhdjhfdfj'),
(18, 'abc', 'abc@gmail.com', '', 'd', 'd', 'b', 'b', 'd', 'e', 'a', 'b', 'c', 'd', 'e', 'a', 'b', 'c', 'c', 'd', 'e', 'c', 'c', 'hjfhdjhfjdhf', 'jhdfjhdjhfdfj'),
(19, 'abc', 'abc@gmail.com', '', 'd', 'd', 'b', 'b', 'd', 'e', 'a', 'b', 'c', 'd', 'e', 'a', 'b', 'c', 'c', 'd', 'e', 'c', 'c', 'hjfhdjhfjdhf', 'jhdfjhdjhfdfj'),
(20, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(22, 'kishan kumar', 'kishan276288@gmail.com', 'a', 'c', 'b', 'd', 'c', 'a', 'e', 'c', 'a', 'c', 'e', 'b', 'd', 'b', 'c', 'd', 'a', 'd', 'd', 'b', '21. What is Cannabis?', '21. What is Cannabis?'),
(23, 'kishan kumar', 'kishan276288@gmail.com', 'a', 'c', 'b', 'd', 'c', 'a', 'e', 'c', 'a', 'c', 'e', 'b', 'd', 'b', 'c', 'd', 'a', 'd', 'd', 'b', '21. What is Cannabis?', '21. What is Cannabis?'),
(24, 'kishan kumar', 'kishan276288@gmail.com', 'a', 'c', 'b', 'd', 'c', 'a', 'e', 'c', 'a', 'c', 'e', 'b', 'd', 'b', 'c', 'd', 'a', 'd', 'd', 'b', '21. What is Cannabis?', '21. What is Cannabis?'),
(25, 'kishan kumar', 'kishan276288@gmail.com', 'a', 'c', 'b', 'd', 'c', 'a', 'e', 'c', 'a', 'c', 'e', 'b', 'd', 'b', 'c', 'd', 'a', 'd', 'd', 'b', '21. What is Cannabis?', '21. What is Cannabis?'),
(26, 'kishan kumar', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(27, 'sdsdsf', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(28, 'dvfdfhdu', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(29, 'dvfdfhdu', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(30, 'sqwqwq', 'dfdfw', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(31, 'sqwqwq', 'dfdfw', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(32, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(33, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(34, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(35, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(36, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(37, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(38, 'dfedf', 'dere', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(39, 'dfedf', 'dere', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(40, 'swew', 'wewew', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kishan`
--
ALTER TABLE `kishan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question _paper`
--
ALTER TABLE `question _paper`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail`
--
ALTER TABLE `detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `emp`
--
ALTER TABLE `emp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kishan`
--
ALTER TABLE `kishan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `question _paper`
--
ALTER TABLE `question _paper`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- Database: `kishan`
--
CREATE DATABASE IF NOT EXISTS `kishan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `kishan`;

-- --------------------------------------------------------

--
-- Table structure for table `detail`
--

CREATE TABLE `detail` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `innovative`
--

CREATE TABLE `innovative` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` int(12) NOT NULL,
  `image` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `innovative`
--

INSERT INTO `innovative` (`id`, `name`, `email`, `phone`, `image`, `address`) VALUES
(1, 'kishan', 'kishan276288@gmail.com', 0, '', 'VILLAGE POST-GALIBPUR POLICE STATION PAWAI TAHSHIL PHULPUR DISTRIC AZAMGARH'),
(2, 'KISHAN KUMAR', 'kishan276288@gmail.com', 0, '', 'VILLAGE POST-GALIBPUR POLICE STATION PAWAI TAHSHIL PHULPUR DISTRIC AZAMGARH');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `username`, `email`, `password`) VALUES
(13, 'kishan', 'kishan@hhguhguj.com', '1234567'),
(14, 'vinay', 'vinay@jhji.com', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `email`, `phone`, `address`, `password`, `image`) VALUES
(8, 'KISHAN KUMAR', 'kishan276288@gmail.com', '+919889104', 'VILLAGE POST-GALIBPUR POLICE STATION PAWAI TAHSHIL PHULPUR DISTRIC AZAMGARH', 'ueriueiruie3843', 'FB_IMG_1596047621185.jpg'),
(9, 'bhavesh_singh_faizabad', 'bhavesh@gmail.com', '9899877678', 'azamgarh_50', 'bhavesh', 'Screenshot (25).png'),
(10, 'Amit_kumar_basti', 'A@gmail.com', '8778678760', 'Akabarpur_basti', 'Amit@gmail.com', 'Screenshot (16).png'),
(11, 'Sonu_bharti_Gorakhpur', 's@gmail.com', '0000000000', 'Ambedkarnagar_gorakhpur', 'Sonu@gmail.com', 'FB_IMG_1596047759604.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `innovative`
--
ALTER TABLE `innovative`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail`
--
ALTER TABLE `detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `innovative`
--
ALTER TABLE `innovative`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Database: `laraveldb`
--
CREATE DATABASE IF NOT EXISTS `laraveldb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laraveldb`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_01_035911_create_table_post', 1),
(6, '2022_03_01_051740_create_table_posts', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_post`
--

CREATE TABLE `table_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_posts`
--

CREATE TABLE `table_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `table_post`
--
ALTER TABLE `table_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_posts`
--
ALTER TABLE `table_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_post`
--
ALTER TABLE `table_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_posts`
--
ALTER TABLE `table_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `laravel_db`
--
CREATE DATABASE IF NOT EXISTS `laravel_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel_db`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_05_064720_create_posts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descreption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `descreption`, `created_at`, `updated_at`) VALUES
(1, 'kishan276288@gmail.com', 'hello', 'hello', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `login`
--
CREATE DATABASE IF NOT EXISTS `login` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `login`;

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` int(20) NOT NULL,
  `massage` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `loginproject`
--
CREATE DATABASE IF NOT EXISTS `loginproject` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `loginproject`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `mintevenuindia`
--
CREATE DATABASE IF NOT EXISTS `mintevenuindia` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mintevenuindia`;

-- --------------------------------------------------------

--
-- Table structure for table `contact-us`
--

CREATE TABLE `contact-us` (
  `id` int(11) NOT NULL,
  `name` varchar(266) NOT NULL,
  `email` varchar(266) NOT NULL,
  `moblie` varchar(10) NOT NULL,
  `msg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `plots-in-bahadurgarh`
--

CREATE TABLE `plots-in-bahadurgarh` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `intrest` varchar(255) NOT NULL,
  `ploatsize` varchar(255) NOT NULL,
  `msg` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `plots-in-yamuna-expressway`
--

CREATE TABLE `plots-in-yamuna-expressway` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `intrest` varchar(255) NOT NULL,
  `ploatsize` varchar(255) NOT NULL,
  `msg` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `plots-in-yamuna-expressway_2`
--

CREATE TABLE `plots-in-yamuna-expressway_2` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ploatarea` varchar(255) NOT NULL,
  `secter` varchar(255) NOT NULL,
  `msg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact-us`
--
ALTER TABLE `contact-us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plots-in-bahadurgarh`
--
ALTER TABLE `plots-in-bahadurgarh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plots-in-yamuna-expressway`
--
ALTER TABLE `plots-in-yamuna-expressway`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plots-in-yamuna-expressway_2`
--
ALTER TABLE `plots-in-yamuna-expressway_2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact-us`
--
ALTER TABLE `contact-us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plots-in-bahadurgarh`
--
ALTER TABLE `plots-in-bahadurgarh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plots-in-yamuna-expressway`
--
ALTER TABLE `plots-in-yamuna-expressway`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plots-in-yamuna-expressway_2`
--
ALTER TABLE `plots-in-yamuna-expressway_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `mobishop`
--
CREATE DATABASE IF NOT EXISTS `mobishop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mobishop`;
--
-- Database: `newsms`
--
CREATE DATABASE IF NOT EXISTS `newsms` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `newsms`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `sno` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Database: `onlinevoting`
--
CREATE DATABASE IF NOT EXISTS `onlinevoting` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `onlinevoting`;
--
-- Database: `phpcrud`
--
CREATE DATABASE IF NOT EXISTS `phpcrud` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `phpcrud`;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `class` int(10) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `studentclass`
--

CREATE TABLE `studentclass` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentclass`
--

INSERT INTO `studentclass` (`id`, `name`) VALUES
(1, 'b.tech'),
(2, 'Bca');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"laravel_db\",\"table\":\"posts\"},{\"db\":\"loginproject\",\"table\":\"users\"},{\"db\":\"laraveldb\",\"table\":\"table_post\"},{\"db\":\"laravel_db\",\"table\":\"failed_jobs\"},{\"db\":\"ajaxphp\",\"table\":\"student\"},{\"db\":\"app2021\",\"table\":\"migrations\"},{\"db\":\"app2021\",\"table\":\"login\"},{\"db\":\"app2021\",\"table\":\"emp\"},{\"db\":\"post\",\"table\":\"posts\"},{\"db\":\"posts\",\"table\":\"post\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-03-06 05:44:42', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":244}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `post`
--
CREATE DATABASE IF NOT EXISTS `post` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `post`;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(100) NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `descreption` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- Database: `project`
--
CREATE DATABASE IF NOT EXISTS `project` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `project`;
--
-- Database: `santosh`
--
CREATE DATABASE IF NOT EXISTS `santosh` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `santosh`;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `Email`, `password`) VALUES
(3, 'user@gmail.com', '123'),
(4, 'admin@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `username`, `email`, `password`) VALUES
(1, 'kishan kumar', 'kishan@gmail.com', '123456'),
(2, 'kishan kumar', 'kishan@gmail.com', '123456'),
(3, 'kishan kumar', 'kishan@gmail.com', '123456'),
(4, 'shani', 'shani@gmail.com', 'shani'),
(5, 'kishan kumar', 'kishan@gmail.com', '123'),
(6, 'kishan kumar', 'kishan@gmail.com', '123'),
(7, '', 'kishan@gmail.com', 'qwert');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `shivamdb`
--
CREATE DATABASE IF NOT EXISTS `shivamdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shivamdb`;

-- --------------------------------------------------------

--
-- Table structure for table `taskajax`
--

CREATE TABLE `taskajax` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taskajax`
--

INSERT INTO `taskajax` (`id`, `fname`, `lname`, `email`, `password`, `img`) VALUES
(1, 'shivam', 'kumar', 'shiva@gmail.com', 'asdf', 'image');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `taskajax`
--
ALTER TABLE `taskajax`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `taskajax`
--
ALTER TABLE `taskajax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `shubham`
--
CREATE DATABASE IF NOT EXISTS `shubham` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shubham`;
--
-- Database: `simple_crud`
--
CREATE DATABASE IF NOT EXISTS `simple_crud` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `simple_crud`;

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `descreption` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `title`, `descreption`) VALUES
(1, '', ''),
(2, '', ''),
(3, '', ''),
(4, '', ''),
(5, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department`) VALUES
(1, 'HR'),
(2, 'Fecalty'),
(3, 'office'),
(4, 'manneger'),
(5, 'Cource');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `name`, `email`, `password`) VALUES
(5, 'abrar', '', '1234567'),
(6, 'vinay', '', '2345678'),
(7, 'shani kuamr', '', '31e31'),
(8, 'shani kuamr', '', '31e31'),
(9, 'shani kuamr', 'shani@gmail.com', '31e31'),
(10, 'abrar', 'abrar@gmail.com', '43211fdsa'),
(11, '', 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varbinary(255) NOT NULL,
  `mobile` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- Database: `sms`
--
CREATE DATABASE IF NOT EXISTS `sms` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sms`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'kishan@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `rollno` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(25) NOT NULL,
  `pcont` varchar(14) NOT NULL,
  `standers` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `rollno`, `name`, `city`, `pcont`, `standers`, `image`) VALUES
(4, '3', 'kishan_kumar azamgarh', 'delhi india', '926800223', 3, ''),
(5, '3', 'Manish_kumar_Rov', 'Azamgarh (U P)', '9889104576', 4, 'IMG20200725105220.jpg'),
(9, '1', 'shani_kumar', 'ambedkar_nagar', '7847547584', 1, 'Screenshot (22).png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `testing`
--
CREATE DATABASE IF NOT EXISTS `testing` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `testing`;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

--CREATE TABLE `student` (
 -- `id` int(11) NOT NULL,
 -- `student_name` varchar(255) NOT NULL,
 -- `age` varchar(255) NOT NULL,
 -- `city` varchar(255) NOT NULL
--) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

--INSERT INTO `student` (`id`, `student_name`, `age`, `city`) VALUES
--(1, 'kishan_kumar', '24', 'delhi'),
--(2, 'akash_kumar', '24', 'Premnagar'),
--(3, 'Ram_kuamr', '20', 'delhi'),
--(4, 'kuamr', '23', 'Goa'),
--(5, 'Manish_kuamr', '18', 'Azamgarh'),
--(6, 'abc', '20', 'banarash'),
--(7, 'Manish_kuamr', '18', 'Azamgarh'),
--(8, 'Mohit_kuamr', '28', 'Varanshi'),
--(9, 'Manish_kuamr', '18', 'Azamgarh'),
--(10, 'Manish_kuamr', '18', 'Azamgarh'),
--(11, 'Mohit_kuamr', '28', 'Varanshi'),
(--12, 'Mohit_kuamr', '28', 'Varanshi'),
--(13, 'Rohit_kuamr', '38', 'Naranshi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
