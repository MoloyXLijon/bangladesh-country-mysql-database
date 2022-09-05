-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2022 at 08:58 PM
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
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `division_name_bn` varchar(150) NOT NULL,
  `district_name_bn` varchar(130) NOT NULL,
  `district_name_en` text NOT NULL,
  `division_name_en` text NOT NULL,
  `division_id` varchar(210) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0:Blocked, 1:Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_name_bn`, `district_name_bn`, `district_name_en`, `division_name_en`, `division_id`, `status`) VALUES
(1, 'চট্টগ্রাম', 'কুমিল্লা', 'cumilla', 'chattogram', '2', 1),
(2, 'চট্টগ্রাম', 'ফেনী', 'feni', 'chattogram', '2', 1),
(3, 'চট্টগ্রাম', 'ব্রাহ্মণবাড়িয়া', 'brahmanbaria', 'chattogram', '2', 1),
(4, 'চট্টগ্রাম', 'রাঙ্গামাটি', 'rangamati', 'chattogram', '2', 1),
(5, 'চট্টগ্রাম', 'নোয়াখালী', 'noakhali', 'chattogram', '2', 1),
(6, 'চট্টগ্রাম', 'চাঁদপুর', 'chandpur', 'chattogram', '2', 1),
(7, 'চট্টগ্রাম', 'লক্ষ্মীপুর', 'lakshmipur', 'chattogram', '2', 1),
(8, 'চট্টগ্রাম', 'চট্টগ্রাম', 'chattogram', 'chattogram', '2', 1),
(9, 'চট্টগ্রাম', 'কক্সবাজার', 'coxsbazar', 'chattogram', '2', 1),
(10, 'চট্টগ্রাম', 'খাগড়াছড়ি', 'khagrachari', 'chattogram', '2', 1),
(11, 'চট্টগ্রাম', 'বান্দরবান', 'bandarban', 'chattogram', '2', 1),
(12, 'রাজশাহী', 'সিরাজগঞ্জ', 'sirajganj', 'rajshahi', '3', 1),
(13, 'রাজশাহী', 'পাবনা', 'pabna', 'rajshahi', '3', 1),
(14, 'রাজশাহী', 'বগুড়া', 'bogura', 'rajshahi', '3', 1),
(15, 'রাজশাহী', 'রাজশাহী', 'rajshahi', 'rajshahi', '3', 1),
(16, 'রাজশাহী', 'নাটোর', 'natore', 'rajshahi', '3', 1),
(17, 'রাজশাহী', 'জয়পুরহাট', 'jaipurhat', 'rajshahi', '3', 1),
(18, 'রাজশাহী', 'চাঁপাইনবাবগঞ্জ', 'nawabganj', 'rajshahi', '3', 1),
(19, 'রাজশাহী', 'নওগাঁ', 'naogaon', 'rajshahi', '3', 1),
(20, 'খুলনা', 'যশোর', 'jashore', 'khulna', '4', 1),
(21, 'খুলনা', 'সাতক্ষীরা', 'satkhira', 'khulna', '4', 1),
(22, 'খুলনা', 'মেহেরপুর', 'meherpur', 'khulna', '4', 1),
(23, 'খুলনা', 'নড়াইল', 'narail', 'khulna', '4', 1),
(24, 'খুলনা', 'চুয়াডাঙ্গা', 'chuadanga', 'khulna', '4', 1),
(25, 'খুলনা', 'কুষ্টিয়া', 'kushtia', 'khulna', '4', 1),
(26, 'খুলনা', 'মাগুরা', 'magura', 'khulna', '4', 1),
(27, 'খুলনা', 'খুলনা', 'khulna', 'khulna', '4', 1),
(28, 'খুলনা', 'বাগেরহাট', 'bagerhat', 'khulna', '4', 1),
(29, 'খুলনা', 'ঝিনাইদহ', 'jhenaidah', 'khulna', '4', 1),
(30, 'বরিশাল', 'বরিশাল', 'barishal', 'barishal', '5', 1),
(31, 'বরিশাল', 'ঝালকাঠি', 'jhalokati', 'barishal', '5', 1),
(32, 'বরিশাল', 'পটুয়াখালী', 'patuakhali', 'barishal', '5', 1),
(33, 'বরিশাল', 'পিরোজপুর', 'pirojpur', 'barishal', '5', 1),
(34, 'বরিশাল', 'ভোলা', 'bhola', 'barishal', '5', 1),
(35, 'বরিশাল', 'বরগুনা', 'barguna', 'barishal', '5', 1),
(36, 'সিলেট', 'সিলেট', 'sylhet', 'sylhet', '6', 1),
(37, 'সিলেট', 'মৌলভীবাজার', 'moulvibazar', 'sylhet', '6', 1),
(38, 'সিলেট', 'হবিগঞ্জ', 'habiganj', 'sylhet', '6', 1),
(39, 'সিলেট', 'সুনামগঞ্জ', 'sunamganj', 'sylhet', '6', 1),
(40, 'রংপুর', 'রংপুর', 'rangpur', 'rangpur', '7', 1),
(41, 'রংপুর', 'পঞ্চগড়', 'panchagarh', 'rangpur', '7', 1),
(42, 'রংপুর', 'দিনাজপুর', 'dinajpur', 'rangpur', '7', 1),
(43, 'রংপুর', 'লালমনিরহাট', 'lalmonirhat', 'rangpur', '7', 1),
(44, 'রংপুর', 'নীলফামারী', 'nilphamari', 'rangpur', '7', 1),
(45, 'রংপুর', 'ঠাকুরগাঁও', 'thakurgaon', 'rangpur', '7', 1),
(46, 'রংপুর', 'গাইবান্ধা', 'gaibandha', 'rangpur', '7', 1),
(47, 'রংপুর', 'কুড়িগ্রাম', 'kurigram', 'rangpur', '7', 1),
(48, 'ময়মনসিংহ', 'ময়মনসিংহ', 'mymensingh', 'mymensingh', '8', 1),
(49, 'ময়মনসিংহ', 'জামালপুর', 'jamalpur', 'mymensingh', '8', 1),
(50, 'ময়মনসিংহ', 'নেত্রকোণা', 'netrokona', 'mymensingh', '8', 1),
(51, 'ময়মনসিংহ', 'শেরপুর', 'sherpur', 'mymensingh', '8', 1),
(52, 'ঢাকা', 'ঢাকা', 'dhaka', 'dhaka', '1', 1),
(53, 'ঢাকা', 'নরসিংদী', 'narsingdi', 'dhaka', '1', 1),
(54, 'ঢাকা', 'গাজীপুর', 'gazipur', 'dhaka', '1', 1),
(55, 'ঢাকা', 'শরীয়তপুর', 'shariatpur', 'dhaka', '1', 1),
(56, 'ঢাকা', 'নারায়ণগঞ্জ', 'narayanganj', 'dhaka', '1', 1),
(57, 'ঢাকা', 'টাঙ্গাইল', 'tangail', 'dhaka', '1', 1),
(58, 'ঢাকা', 'কিশোরগঞ্জ', 'kishoreganj', 'dhaka', '1', 1),
(59, 'ঢাকা', 'মানিকগঞ্জ', 'manikganj', 'dhaka', '1', 1),
(60, 'ঢাকা', 'মুন্সিগঞ্জ', 'munshiganj', 'dhaka', '1', 1),
(61, 'ঢাকা', 'রাজবাড়ী', 'rajbari', 'dhaka', '1', 1),
(62, 'ঢাকা', 'মাদারীপুর', 'madaripur', 'dhaka', '1', 1),
(63, 'ঢাকা', 'ফরিদপুর', 'faridpur', 'dhaka', '1', 1),
(64, 'ঢাকা', 'গোপালগঞ্জ', 'gopalganj', 'dhaka', '1', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
