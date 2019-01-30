-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2019 at 04:24 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_shop`
--
CREATE DATABASE IF NOT EXISTS `ci_shop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ci_shop`;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('gmna115brsv4f6np2ib7thadmvslic28', '::1', 1530091592, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303039313539323b),
('kqf01e0p4oscc7kdr0rg94ucuq9v8968', '::1', 1530090844, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303039303834343b6469737472696275746f725f69647c733a353a223233303839223b757365725f69647c733a363a22313337323434223b),
('r8cjngn2j72pma93pe0dqj0qe40ja7qh', '::1', 1530091288, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303039313238383b6469737472696275746f725f69647c733a353a223233303839223b757365725f69647c733a363a22313337323434223b),
('baufl0otlme3sq7im250c33i0ptq45ck', '::1', 1530091302, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303039313238383b),
('hvjob3offrj41c80d5c3rqa1msdmc3hk', '::1', 1530093309, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303039333330393b6469737472696275746f725f69647c733a353a223137393430223b757365725f69647c733a343a2239363437223b),
('gg6mlokd7j22ge5o6598ott53hal8ng8', '::1', 1530093799, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303039333739393b),
('jku7rc0euseq6kjqro67ako7p8ka214p', '::1', 1530093800, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303039333739393b6469737472696275746f725f69647c733a353a223137393430223b757365725f69647c733a343a2239363437223b),
('49n8a45c08arsa9oh2f7lvul0o7jlrqc', '::1', 1530168559, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303136383535383b),
('gre5ojmipv96fhnqoqmikf7d2daujevs', '::1', 1530678072, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303637383037323b),
('vrrn2clhqleksbt14h4cr6obempisn31', '::1', 1544614156, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343631343135363b),
('fjttj6k6m6sorqejc81lj367po3pf96l', '::1', 1544614578, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343631343537383b),
('3i1cgis665c2mki4hohovmp70p7kguq4', '::1', 1544615563, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343631353536333b),
('ir4i3q1l5o9bp26feaaf97qi12umdg2g', '::1', 1544615662, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343631353536333b),
('psdedrsosmmbfcc1em5b2onea6el02jn', '::1', 1544674320, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343637343332303b),
('6kru0ursdaucfiopfg6tjcbfkhrah6n9', '::1', 1544674443, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343637343332303b6469737472696275746f725f69647c733a353a223137393430223b757365725f69647c733a343a2239363437223b),
('2ahgnngb5707c0v35t78m44paidljk4i', '::1', 1544757281, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343735373231313b6469737472696275746f725f69647c733a353a223137393430223b757365725f69647c733a343a2239363437223b),
('7ffjief7s2f49nun8fcvcjjptc140rml', '::1', 1544767508, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343736373436303b),
('rm6b1i31bbvbgvriesj2bokuti6aiik8', '::1', 1544836484, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343833363438303b);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `promo_id` int(11) NOT NULL,
  `promo_code` varchar(50) NOT NULL,
  `promo_description` varchar(255) NOT NULL,
  `tsp` decimal(18,2) NOT NULL,
  `nsp` decimal(18,2) NOT NULL,
  `promo_period_from` datetime NOT NULL,
  `promo_period_to` datetime NOT NULL,
  `pse` decimal(18,2) NOT NULL,
  `item_id` int(11) NOT NULL,
  `promo_type_id` int(11) NOT NULL,
  `item_class_id` int(11) NOT NULL,
  `item_subclass_id` int(11) NOT NULL,
  `item_description` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `sequence` int(11) NOT NULL,
  `item_class_description` varchar(255) NOT NULL,
  `item_subclass_description` varchar(255) NOT NULL,
  `promo_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `promo_id`, `promo_code`, `promo_description`, `tsp`, `nsp`, `promo_period_from`, `promo_period_to`, `pse`, `item_id`, `promo_type_id`, `item_class_id`, `item_subclass_id`, `item_description`, `image_url`, `sequence`, `item_class_description`, `item_subclass_description`, `promo_type`) VALUES
(1, 7624, 'M-JM+UC', 'MONTHLY - JUICE MASTER + ULTRA CORE', '127820.00', '114125.00', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', 3948, 1, 1, 1, 'ADVANCED ULTRA CORE ELECTRIC OIL SKILLET W/ GLASS COVER - 220V', 'dining/cookwarespecials/uc/ucglass.png', 4, 'COOKWARE \"SPECIALS\"', 'DINING', 'MONTHLY'),
(2, 7603, 'B-UC 220V', ' BOOSTER - ULTRACORE 220V', '69860.00', '62375.00', '2019-01-08 00:00:00', '2019-01-14 00:00:00', '0.00', 3948, 2, 1, 1, 'ADVANCED ULTRA CORE ELECTRIC OIL SKILLET W/ GLASS COVER - 220V', 'dining/cookwarespecials/uc/ucglass.png', 4, 'COOKWARE \"SPECIALS\"', 'DINING', 'BOOSTER'),
(3, 7610, 'B-MCGT 220V', 'BOOSTER-MCGT 220V', '42840.00', '38250.00', '2019-01-08 00:00:00', '2019-01-14 00:00:00', '0.00', 2005, 2, 1, 1, 'MEGA CONTACT GRILL TOASTER - 220V', 'dining/cookwarespecials/mcgt/mcgt.png', 7, 'COOKWARE \"SPECIALS\"', 'DINING', 'BOOSTER'),
(4, 7591, 'CONVENTION-MCGT', '2020 CONVENTION - MCGT', '26900.00', '0.00', '2019-01-08 15:41:16', '2019-02-04 00:00:00', '0.00', 2005, 8, 1, 1, 'MEGA CONTACT GRILL TOASTER - 220V', 'dining/cookwarespecials/mcgt/mcgt.png', 7, 'COOKWARE \"SPECIALS\"', 'DINING', 'CONVENTION'),
(5, 7609, 'B-MCGT 110V', ' BOOSTER - MEGA CONTACT GRILL TOASTER 110V', '44520.00', '39750.00', '2019-01-08 00:00:00', '2019-01-14 00:00:00', '0.00', 2016, 2, 1, 1, 'MEGA CONTACT GRILL TOASTER - 110V', 'dining/cookwarespecials/mcgt/mcgt.png', 8, 'COOKWARE \"SPECIALS\"', 'DINING', 'BOOSTER'),
(6, 7607, 'B-RCK 110V', 'BOOSTER-RICE COOKWARE 110V', '46480.00', '41500.00', '2019-01-08 00:00:00', '2019-01-14 00:00:00', '0.00', 4001, 2, 1, 1, 'AUTOMATIC MAGIC ALL S/S MULTI-RICE COOKWARE - 110V', 'dining/rck.png', 9, 'COOKWARE \"SPECIALS\"', 'DINING', 'BOOSTER'),
(7, 7593, 'B-RCK 220V', 'BOOSTER-RICE COOKWARE 220V', '44800.00', '40000.00', '2018-01-08 00:00:00', '2019-01-14 00:00:00', '0.00', 3998, 2, 1, 1, 'AUTOMATIC MAGIC ALL S/S MULTI-RICE COOKWARE - 220V', 'dining/rck.png', 10, 'COOKWARE \"SPECIALS\"', 'DINING', 'BOOSTER'),
(8, 7614, 'B-RCK 220V', 'BOOSTER-RICE COOKWARE 220V', '44800.00', '40000.00', '2019-01-08 00:00:00', '2019-01-14 00:00:00', '0.00', 3998, 2, 1, 1, 'AUTOMATIC MAGIC ALL S/S MULTI-RICE COOKWARE - 220V', 'dining/rck.png', 10, 'COOKWARE \"SPECIALS\"', 'DINING', 'BOOSTER'),
(9, 7590, 'CONVENTION-RCK', '2020 CONVENTION - RCK', '26900.00', '0.00', '2019-01-08 15:40:05', '2019-02-04 00:00:00', '0.00', 3998, 8, 1, 1, 'AUTOMATIC MAGIC ALL S/S MULTI-RICE COOKWARE - 220V', 'dining/rck.png', 10, 'COOKWARE \"SPECIALS\"', 'DINING', 'CONVENTION'),
(10, 7608, 'B-4PC STEAMRWOK', ' BOOSTER - 4PC STEAMER WOK', '42840.00', '38250.00', '2019-01-08 00:00:00', '2019-01-14 00:00:00', '0.00', 3448, 2, 4, 1, '4PC UNIVERSAL 5-PLY STEAMER WOK', 'living/owok.png', 0, 'COOKWARE \"A TOUCH OF CLASS\"', 'DINING', 'BOOSTER'),
(11, 7601, 'B-8PC JUMBO', ' BOOSTER - 8PC JUMBO COOKWARE SET', '78680.00', '70250.00', '2019-01-08 00:00:00', '2019-01-14 00:00:00', '0.00', 3448, 2, 4, 1, '4PC UNIVERSAL 5-PLY STEAMER WOK', 'living/owok.png', 0, 'COOKWARE \"A TOUCH OF CLASS\"', 'DINING', 'BOOSTER'),
(12, 7600, 'B-11PC COOKWARE', ' BOOSTER - 11PC FAMILY COOKWARE SET', '78680.00', '70250.00', '2019-01-08 00:00:00', '2019-01-14 00:00:00', '0.00', 1892, 2, 4, 1, '2 QT SAUCEPAN - 5 PLY COOKWARE', 'dining/2qt.png', 1, 'COOKWARE \"A TOUCH OF CLASS\"', 'DINING', 'BOOSTER'),
(13, 7601, 'B-8PC JUMBO', ' BOOSTER - 8PC JUMBO COOKWARE SET', '78680.00', '70250.00', '2019-01-08 00:00:00', '2019-01-14 00:00:00', '0.00', 3449, 2, 4, 1, '8PC JUMBO COOKWARE SET', 'dining/8pc-jumbo.png', 3, 'COOKWARE \"A TOUCH OF CLASS\"', 'DINING', 'BOOSTER'),
(14, 7600, 'B-11PC COOKWARE', ' BOOSTER - 11PC FAMILY COOKWARE SET', '78680.00', '70250.00', '2019-01-08 00:00:00', '2019-01-14 00:00:00', '0.00', 958, 2, 4, 1, '3PC COLANDER SET - 5-PLY', 'dining/colander.png', 5, 'COOKWARE \"A TOUCH OF CLASS\"', 'DINING', 'BOOSTER'),
(15, 7600, 'B-11PC COOKWARE', ' BOOSTER - 11PC FAMILY COOKWARE SET', '78680.00', '70250.00', '2019-01-08 00:00:00', '2019-01-14 00:00:00', '0.00', 1888, 2, 4, 1, '1.5 QT SAUCEPAN - 5 PLY COOKWARE', 'dining/1.5qt.png', 7, 'COOKWARE \"A TOUCH OF CLASS\"', 'DINING', 'BOOSTER'),
(16, 7600, 'B-11PC COOKWARE', ' BOOSTER - 11PC FAMILY COOKWARE SET', '78680.00', '70250.00', '2019-01-08 00:00:00', '2019-01-14 00:00:00', '0.00', 1887, 2, 4, 1, '11PC FAMILY COOKWARE SET - 5 PLY', 'dining/touchofclass/11pc/11pc.png', 8, 'COOKWARE \"A TOUCH OF CLASS\"', 'DINING', 'BOOSTER'),
(17, 7601, 'B-8PC JUMBO', ' BOOSTER - 8PC JUMBO COOKWARE SET', '78680.00', '70250.00', '2019-01-08 00:00:00', '2019-01-14 00:00:00', '0.00', 2051, 2, 4, 1, '12QT DUTCH OVEN WITH WHISTLING KNOB COVER', 'dining/touchofclass/12qt.png', 9, 'COOKWARE \"A TOUCH OF CLASS\"', 'DINING', 'BOOSTER'),
(18, 7601, 'B-8PC JUMBO', ' BOOSTER - 8PC JUMBO COOKWARE SET', '78680.00', '70250.00', '2019-01-08 00:00:00', '2019-01-14 00:00:00', '0.00', 972, 2, 4, 1, '24QTS STOCK POT WITH VENTED KNOB COVER', 'dining/24qt.png', 10, 'COOKWARE \"A TOUCH OF CLASS\"', 'DINING', 'BOOSTER'),
(19, 7600, 'B-11PC COOKWARE', ' BOOSTER - 11PC FAMILY COOKWARE SET', '78680.00', '70250.00', '2019-01-08 00:00:00', '2019-01-14 00:00:00', '0.00', 1901, 2, 4, 1, '6QT DUTCH OVEN W/ COVER - 5 PLY COOKWARE', 'dining/6qt.png', 12, 'COOKWARE \"A TOUCH OF CLASS\"', 'DINING', 'BOOSTER'),
(20, 7600, 'B-11PC COOKWARE', ' BOOSTER - 11PC FAMILY COOKWARE SET', '78680.00', '70250.00', '2019-01-08 00:00:00', '2019-01-14 00:00:00', '0.00', 1904, 2, 4, 1, '9 1/2\" FRYING PAN WITH COVER - 5 PLY COOKWARE', 'dining/9fyringpan.png', 13, 'COOKWARE \"A TOUCH OF CLASS\"', 'DINING', 'BOOSTER'),
(21, 7646, 'SPL-72PC', 'SPECIALS PROMO - 72PC', '70420.00', '62875.00', '2018-01-08 00:00:00', '2019-01-14 00:00:00', '17000.00', 3372, 3, 7, 1, '12 SERVING PCS ADRIAN TABLEWARE WITH INLAID GOLD', 'dining/12pc.png', 0, 'FINE TABLEWARE COLLECTION', 'DINING', 'SPECIALS'),
(22, 7646, 'SPL-72PC', 'SPECIALS PROMO - 72PC', '70420.00', '62875.00', '2018-01-08 00:00:00', '2019-01-14 00:00:00', '17000.00', 3371, 3, 7, 1, '4X5 PC PLACE SETTING ADRIAN TABLEWARE W/ INLAID GOLD', 'dining/4x5.png', 0, 'FINE TABLEWARE COLLECTION', 'DINING', 'SPECIALS'),
(23, 7646, 'SPL-72PC', 'SPECIALS PROMO - 72PC', '70420.00', '62875.00', '2018-01-08 00:00:00', '2019-01-14 00:00:00', '17000.00', 2140, 3, 7, 1, '72PC ADRIAN FINE TABLEWARE SET', 'dining/72pc.png', 0, 'FINE TABLEWARE COLLECTION', 'DINING', 'SPECIALS'),
(24, 7624, 'M-JM+UC', 'MONTHLY - JUICE MASTER + ULTRA CORE', '127820.00', '114125.00', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', 1827, 1, 3, 2, 'JUICE MASTER PROFESSIONAL - 220V', 'living/jm1_a.png', 0, 'JUICE EXTRACTION & FOOD PROCESSING  SYSTEM', 'LIVING', 'MONTHLY'),
(25, 7606, 'B-FBTECH 220V', ' BOOSTER - FOODBLENDERTECH 220V', '59920.00', '53500.00', '2019-01-08 00:00:00', '2019-01-14 00:00:00', '0.00', 3548, 2, 3, 2, 'FOOD BLENDER TECH - 220V', 'living/fbtech.png', 0, 'JUICE EXTRACTION & FOOD PROCESSING  SYSTEM', 'LIVING', 'BOOSTER'),
(26, 7592, 'CONVENTION-JM', '2020 CONVENTION - JM', '46900.00', '0.00', '2019-01-08 15:43:04', '2019-02-04 00:00:00', '0.00', 1827, 8, 3, 2, 'JUICE MASTER PROFESSIONAL - 220V', 'living/jm1_a.png', 0, 'JUICE EXTRACTION & FOOD PROCESSING  SYSTEM', 'LIVING', 'CONVENTION'),
(27, 7598, 'B-AIRTECH 110V', 'BOOSTER - AIRTECH 110V', '119840.00', '107000.00', '2019-01-08 00:00:00', '2019-01-14 00:00:00', '0.00', 3442, 2, 8, 2, 'AIRTECH PURIFIER WITH GWMX - 110V', 'living/atech.png', 0, 'WATER FILTER & AIR PURIFICATION SYSTEM', 'LIVING', 'BOOSTER'),
(28, 7599, 'B-AIRTECH 220V', 'BOOSTER - AIRTECH 220V', '114800.00', '102500.00', '2019-01-08 00:00:00', '2019-01-14 00:00:00', '0.00', 3441, 2, 8, 2, 'AIRTECH PURIFIER WITH GWMX - 220V', 'living/atech.png', 0, 'WATER FILTER & AIR PURIFICATION SYSTEM', 'LIVING', 'BOOSTER'),
(29, 7611, 'B-CTECH 110V', 'BOOSTER - COFFEETECH 110V', '44520.00', '39750.00', '2019-01-08 00:00:00', '2019-01-14 00:00:00', '0.00', 3531, 2, 3, 3, 'COFFEETECH DELUXE - FRESH BREW 110V', 'giving/coffee-tech.png', 3, 'JUICE EXTRACTION & FOOD PROCESSING  SYSTEM', 'GIVING', 'BOOSTER'),
(30, 7612, 'B-CTECH 220V', 'BOOSTER - COFFEETECH 220V', '42840.00', '38250.00', '2019-01-08 00:00:00', '2019-01-14 00:00:00', '0.00', 3527, 2, 3, 3, 'COFFEETECH DELUXE - FRESH BREW 220V', 'giving/coffee-tech.png', 3, 'JUICE EXTRACTION & FOOD PROCESSING  SYSTEM', 'GIVING', 'BOOSTER');

-- --------------------------------------------------------

--
-- Table structure for table `site_cookies`
--

CREATE TABLE `site_cookies` (
  `id` int(11) NOT NULL,
  `cookie_code` varchar(128) NOT NULL,
  `portal_account_id` int(11) NOT NULL,
  `expiry_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_cookies`
--

INSERT INTO `site_cookies` (`id`, `cookie_code`, `portal_account_id`, `expiry_date`) VALUES
(1, '3rpZfHEnzXLimqkRgz06ACYT3WyFCbu9gwT3TkTmVEvrmLBkRp9fHgVj9QmVQQdBtkaseEEYcyuJ1txw2oarZ3xHiXc2KwoC93BApT1ZN5Bj6FVhAFZkevWEmFBgFaCT', 9647, 1545884030);

-- --------------------------------------------------------

--
-- Table structure for table `store_items`
--

CREATE TABLE `store_items` (
  `id` int(11) NOT NULL,
  `item_title` varchar(255) NOT NULL,
  `item_url` varchar(255) NOT NULL,
  `item_price` decimal(18,2) NOT NULL,
  `item_description` varchar(255) NOT NULL,
  `big_pic` varchar(255) NOT NULL,
  `small_pic` varchar(255) NOT NULL,
  `was_price` decimal(18,2) NOT NULL,
  `item_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_items`
--

INSERT INTO `store_items` (`id`, `item_title`, `item_url`, `item_price`, `item_description`, `big_pic`, `small_pic`, `was_price`, `item_status`) VALUES
(1, 'Rice Cookware', 'Rice-Cookware', '39760.00', 'Cook Rice', '', '1_image.png', '0.00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_cookies`
--
ALTER TABLE `site_cookies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_items`
--
ALTER TABLE `store_items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `site_cookies`
--
ALTER TABLE `site_cookies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `store_items`
--
ALTER TABLE `store_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `dbblog`
--
CREATE DATABASE IF NOT EXISTS `dbblog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbblog`;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Laravels', 'This is the content of laravel', NULL, '2019-01-15 03:18:35'),
(2, 'PHP', 'Code of Laravel', NULL, NULL),
(3, 'At3', 'AT3 COntent', NULL, NULL),
(4, 'AT4', 'At4 COntent', NULL, NULL),
(5, 'At5', 'At5 Content', NULL, NULL),
(6, 'At6', 'At6 content\r\n', NULL, NULL),
(7, 'At7', 'At7 content', NULL, NULL),
(8, 'At8', 'At8 content', NULL, NULL),
(9, 'At9', 'At9 content', NULL, NULL),
(10, 'At10', 'At10 content', NULL, NULL),
(15, 'ghagaga', 'agagaga', '2019-01-15 03:46:23', '2019-01-15 03:46:23'),
(16, 'hahaha', 'hahaha', '2019-01-15 03:53:13', '2019-01-15 03:53:13');

-- --------------------------------------------------------

--
-- Table structure for table `barangays`
--

CREATE TABLE `barangays` (
  `id` int(11) NOT NULL,
  `barangay` varchar(255) NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barangays`
--

INSERT INTO `barangays` (`id`, `barangay`, `city_id`) VALUES
(1, 'Agtangao', 1),
(2, 'Angad', 1),
(3, 'Bañacao', 1),
(4, 'Bangbangar', 1),
(5, 'Cabuloan', 1),
(6, 'Calaba', 1),
(7, 'Cosili East (Proper)', 1),
(8, 'Cosili West (Buaya)', 1),
(9, 'Dangdangla', 1),
(10, 'Lingtan', 1),
(11, 'Lipcan', 1),
(12, 'Lubong', 1),
(13, 'Macarcarmay', 1),
(14, 'Macray', 1),
(15, 'Malita', 1),
(16, 'Maoay', 1),
(17, 'Palao', 1),
(18, 'Patucannay', 1),
(19, 'Sagap', 1),
(20, 'San Antonio', 1),
(21, 'Santa Rosa', 1),
(22, 'Sao-atan', 1),
(23, 'Sappaac', 1),
(24, 'Tablac (Calot)', 1),
(25, 'Zone 1 Poblacion (Nalasin)', 1),
(26, 'Zone 2 Poblacion (Consiliman)', 1),
(27, 'Zone 3 Poblacion (Lalaud)', 1),
(28, 'Zone 4 Poblacion (Town Proper)', 1),
(29, 'Zone 5 Poblacion (Bo. Barikir)', 1),
(30, 'Zone 6 Poblacion (Sinapangan)', 1),
(31, 'Zone 7 Poblacion (Baliling)', 1),
(32, 'Amti', 2),
(33, 'Bao-yan', 2),
(34, 'Danac East', 2),
(35, 'Danac West', 2),
(36, 'Dao-angan', 2),
(37, 'Dumagas', 2),
(38, 'Kilong-Olao', 2),
(39, 'Poblacion (Boliney)', 2),
(40, 'Abang', 3),
(41, 'Bangbangcag', 3),
(42, 'Bangcagan', 3),
(43, 'Banglolao', 3),
(44, 'Bugbog', 3),
(45, 'Calao', 3),
(46, 'Dugong', 3),
(47, 'Labon', 3),
(48, 'Layugan', 3),
(49, 'Madalipay', 3),
(50, 'North Poblacion', 3),
(51, 'Pagala', 3),
(52, 'Pakiling', 3),
(53, 'Palaquio', 3),
(54, 'Patoc', 3),
(55, 'Quimloong', 3),
(56, 'Salnec', 3),
(57, 'San Miguel', 3),
(58, 'Siblong', 3),
(59, 'South Poblacion', 3),
(60, 'Tabiog', 3),
(61, 'Ducligan', 4),
(62, 'Labaan', 4),
(63, 'Lamao (Poblacion)', 4),
(64, 'Lingay', 4),
(65, 'Ableg', 5),
(66, 'Cabaruyan', 5),
(67, 'Pikek', 5),
(68, 'Tui (Poblacion)', 5),
(69, 'Abaquid', 6),
(70, 'Cabaruan', 6),
(71, 'Caupasan (Poblacion)', 6),
(72, 'Danglas', 6),
(73, 'Nagaparan', 6),
(74, 'Padangitan', 6),
(75, 'Pangal', 6),
(76, 'Bayaan', 7),
(77, 'Cabaroan', 7),
(78, 'Calumbaya', 7),
(79, 'Cardona', 7),
(80, 'Isit', 7),
(81, 'Kimmalaba', 7),
(82, 'Libtec', 7),
(83, 'Lub-lubba', 7),
(84, 'Mudiit', 7),
(85, 'Namit-ingan', 7),
(86, 'Pacac', 7),
(87, 'Poblacion', 7),
(88, 'Salucag', 7),
(89, 'Talogtog', 7),
(90, 'Taping', 7),
(91, 'Benben (Bonbon)', 8),
(92, 'Bulbulala', 8),
(93, 'Buli', 8),
(94, 'Canan (Gapan)', 8),
(95, 'Luguis', 8),
(96, 'Malabbaga', 8),
(97, 'Mudeng', 8),
(98, 'Pidipid', 8),
(99, 'Poblacion', 8),
(100, 'San Gregorio', 8),
(101, 'Toon', 8),
(102, 'Udangan', 8),
(103, 'Bacag', 9),
(104, 'Buneg', 9),
(105, 'Guinguinabang', 9),
(106, 'Lan-ag', 9),
(107, 'Pacoc', 9),
(108, 'Poblacion (Talampac)', 9),
(109, 'Aguet', 10),
(110, 'Bacooc', 10),
(111, 'Balais', 10),
(112, 'Cayapa', 10),
(113, 'Dalaguisen', 10),
(114, 'Laang', 10),
(115, 'Lagben', 10),
(116, 'Laguiben', 10),
(117, 'Nagtipulan', 10),
(118, 'Nagtupacan', 10),
(119, 'Paganao', 10),
(120, 'Pawa', 10),
(121, 'Poblacion', 10),
(122, 'Presentar', 10),
(123, 'San Isidro', 10),
(124, 'Tagodtod', 10),
(125, 'Taping', 10),
(126, 'Ba-i', 11),
(127, 'Collago', 11),
(128, 'Pang-ot', 11),
(129, 'Poblacion', 11),
(130, 'Pulot', 11),
(131, 'Baac', 12),
(132, 'Dalayap (Nalaas)', 12),
(133, 'Mabungtot', 12),
(134, 'Malapaao', 12),
(135, 'Poblacion', 12),
(136, 'Quillat', 12),
(137, 'Bonglo (Patagui)', 13),
(138, 'Bulbulala', 13),
(139, 'Cawayan', 13),
(140, 'Domenglay', 13),
(141, 'Lenneng', 13),
(142, 'Mapisla', 13),
(143, 'Mogao', 13),
(144, 'Nalbuan', 13),
(145, 'Poblacion', 13),
(146, 'Subagan', 13),
(147, 'Tumalip', 13),
(148, 'Ampalioc', 14),
(149, 'Barit', 14),
(150, 'Gayaman', 14),
(151, 'Lul-luno', 14),
(152, 'Luzong', 14),
(153, 'Nagbukel-Tiquipa', 14),
(154, 'Poblacion', 14),
(155, 'Sabnangan', 14),
(156, 'Bayabas', 15),
(157, 'Binasaran', 15),
(158, 'Buanao', 15),
(159, 'Dulao', 15),
(160, 'Duldulao', 15),
(161, 'Gacab', 15),
(162, 'Lat-ey', 15),
(163, 'Malibcong (Poblacion)', 15),
(164, 'Mataragan', 15),
(165, 'Pacgued', 15),
(166, 'Taripan', 15),
(167, 'Umnap', 15),
(168, 'Ayyeng (Poblacion)', 16),
(169, 'Catacdegan Nuevo', 16),
(170, 'Catacdegan Viejo', 16),
(171, 'Luzong', 16),
(172, 'San Jose Norte', 16),
(173, 'San Jose Sur', 16),
(174, 'San Juan Norte', 16),
(175, 'San Juan Sur', 16),
(176, 'San Ramon East', 16),
(177, 'San Ramon West', 16),
(178, 'Santo Tomas', 16),
(179, 'Dumayco', 17),
(180, 'Lusuac', 17),
(181, 'Malamsit (Pau-Malamsit)', 17),
(182, 'Namarabar', 17),
(183, 'Patiao', 17),
(184, 'Poblacion', 17),
(185, 'Riang (Tiang)', 17),
(186, 'Santa Rosa', 17),
(187, 'Tattawa', 17),
(188, 'Alinaya', 18),
(189, 'Arab', 18),
(190, 'Garreta', 18),
(191, 'Immuli', 18),
(192, 'Laskig', 18),
(193, 'Monggoc', 18),
(194, 'Naguirayan', 18),
(195, 'Pamutic', 18),
(196, 'Pangtud', 18),
(197, 'Poblacion East', 18),
(198, 'Poblacion West', 18),
(199, 'San Diego', 18),
(200, 'Sulbec', 18),
(201, 'Suyo (Malidong)', 18),
(202, 'Yuyeng', 18),
(203, 'Bolbolo', 19),
(204, 'Brookside', 19),
(205, 'Dalit', 19),
(206, 'Dintan', 19),
(207, 'Gapang', 19),
(208, 'Kinabiti', 19),
(209, 'Maliplipit', 19),
(210, 'Nagcanasan', 19),
(211, 'Namara', 19),
(212, 'Nanangduan', 19),
(213, 'Ocup', 19),
(214, 'Pang-ot', 19),
(215, 'Patad', 19),
(216, 'Poblacion', 19),
(217, 'San Juan East', 19),
(218, 'San Juan West', 19),
(219, 'South Balioag', 19),
(220, 'Tikitik', 19),
(221, 'Villavieja', 19),
(222, 'Bazar', 20),
(223, 'Bilabila', 20),
(224, 'Gangal (Poblacion)', 20),
(225, 'Maguyepyep', 20),
(226, 'Naguilian', 20),
(227, 'Saccaang', 20),
(228, 'Sallapadan', 20),
(229, 'Subusob', 20),
(230, 'Ud-udiao', 20),
(231, 'Cabayogan', 21),
(232, 'Dalimag', 21),
(233, 'Langbaban', 21),
(234, 'Manayday', 21),
(235, 'Pantoc', 21),
(236, 'Poblacion', 21),
(237, 'Sabtan-olo', 21),
(238, 'San Marcial', 21),
(239, 'Tangbao', 21),
(240, 'Abualan', 22),
(241, 'Badas', 22),
(242, 'Ba-ug', 22),
(243, 'Cabcaborao', 22),
(244, 'Calabaoan', 22),
(245, 'Culiong', 22),
(246, 'Daoidao', 22),
(247, 'Guimba', 22),
(248, 'Lam-ag', 22),
(249, 'Lumobang', 22),
(250, 'Nangobongan', 22),
(251, 'Pattaoig', 22),
(252, 'Poblacion North', 22),
(253, 'Poblacion South', 22),
(254, 'Quidaoen', 22),
(255, 'Sabangan', 22),
(256, 'Silet', 22),
(257, 'Supi-il', 22),
(258, 'Tagaytay', 22),
(259, 'Labaan', 23),
(260, 'Palang', 23),
(261, 'Pantoc', 23),
(262, 'Poblacion', 23),
(263, 'Tangadan', 23),
(264, 'Villa Mercedes', 23),
(265, 'Bagalay', 24),
(266, 'Basbasa', 24),
(267, 'Budac', 24),
(268, 'Bumagcat', 24),
(269, 'Cabaroan', 24),
(270, 'Deet', 24),
(271, 'Gaddani', 24),
(272, 'Patucannay', 24),
(273, 'Pias', 24),
(274, 'Poblacion', 24),
(275, 'Velasco', 24),
(276, 'Alaoa', 25),
(277, 'Anayan', 25),
(278, 'Apao', 25),
(279, 'Belaat', 25),
(280, 'Caganayan', 25),
(281, 'Cogon', 25),
(282, 'Lanec', 25),
(283, 'Lapat-Balantay', 25),
(284, 'Naglibacan', 25),
(285, 'Poblacion (Agsimao)', 25),
(286, 'Alangtin', 26),
(287, 'Amtuagan', 26),
(288, 'Dilong', 26),
(289, 'Kili', 26),
(290, 'Poblacion (Mayabo)', 26),
(291, 'Supo', 26),
(292, 'Tabacda', 26),
(293, 'Tiempo', 26),
(294, 'Tubtuba', 26),
(295, 'Wayangan', 26),
(296, 'Ap-apaya', 27),
(297, 'Bol-lilising', 27),
(298, 'Cal-lao', 27),
(299, 'Lap-lapog', 27),
(300, 'Lumaba', 27),
(301, 'Poblacion', 27),
(302, 'Tamac', 27),
(303, 'Tuquib', 27);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `province_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city`, `province_id`) VALUES
(1, 'Bangued', 1),
(2, 'Boliney', 1),
(3, 'Bucay', 1),
(4, 'Bucloc', 1),
(5, 'Daguioman', 1),
(6, 'Danglas', 1),
(7, 'Dolores', 1),
(8, 'La Paz', 1),
(9, 'Lacub', 1),
(10, 'Lagangilang', 1),
(11, 'Lagayan', 1),
(12, 'Langiden', 1),
(13, 'Licuan-Baay (Licuan)', 1),
(14, 'Luba', 1),
(15, 'Malibcong', 1),
(16, 'Manabo', 1),
(17, 'Peñarrubia', 1),
(18, 'Pidigan', 1),
(19, 'Pilar', 1),
(20, 'Sallapadan', 1),
(21, 'San Isidro', 1),
(22, 'San Juan', 1),
(23, 'San Quintin', 1),
(24, 'Tayum', 1),
(25, 'Tineg', 1),
(26, 'Tubo', 1),
(27, 'Villaviciosa', 1),
(28, 'Buenavista', 2),
(29, 'Butuan', 2),
(30, 'Cabadbaran', 2),
(31, 'Carmen', 2),
(32, 'Jabonga', 2),
(33, 'Kitcharao', 2),
(34, 'Las Nieves', 2),
(35, 'Magallanes', 2),
(36, 'Nasipit', 2),
(37, 'Remedios T. Romualdez', 2),
(38, 'Santiago', 2),
(39, 'Tubay', 2),
(40, 'Bayugan', 3),
(41, 'Bunawan', 3),
(42, 'Esperanza', 3),
(43, 'La Paz', 3),
(44, 'Loreto', 3),
(45, 'Prosperidad', 3),
(46, 'Rosario', 3),
(47, 'San Francisco', 3),
(48, 'San Luis', 3),
(49, 'Santa Josefa', 3),
(50, 'Sibagat', 3),
(51, 'Talacogon', 3),
(52, 'Trento', 3),
(53, 'Veruela', 3),
(54, 'Altavas', 4),
(55, 'Balete', 4),
(56, 'Banga', 4),
(57, 'Batan', 4),
(58, 'Buruanga', 4),
(59, 'Ibajay', 4),
(60, 'Kalibo', 4),
(61, 'Lezo', 4),
(62, 'Libacao', 4),
(63, 'Madalag', 4),
(64, 'Makato', 4),
(65, 'Malay', 4),
(66, 'Malinao', 4),
(67, 'Nabas', 4),
(68, 'New Washington', 4),
(69, 'Numancia', 4),
(70, 'Tangalan', 4),
(71, 'Bacacay', 5),
(72, 'Camalig', 5),
(73, 'Daraga (Locsin)', 5),
(74, 'Guinobatan', 5),
(75, 'Jovellar', 5),
(76, 'Legazpi', 5),
(77, 'Libon', 5),
(78, 'Ligao', 5),
(79, 'Malilipot', 5),
(80, 'Malinao', 5),
(81, 'Manito', 5),
(82, 'Oas', 5),
(83, 'Pio Duran', 5),
(84, 'Polangui', 5),
(85, 'Rapu-Rapu', 5),
(86, 'Santo Domingo', 5),
(87, 'Tabaco', 5),
(88, 'Tiwi', 5),
(89, 'Anini-y', 6),
(90, 'Barbaza', 6),
(91, 'Belison', 6),
(92, 'Bugasong', 6),
(93, 'Caluya', 6),
(94, 'Culasi', 6),
(95, 'Hamtic', 6),
(96, 'Laua-an', 6),
(97, 'Libertad', 6),
(98, 'Pandan', 6),
(99, 'Patnongon', 6),
(100, 'San Jose de Buenavista', 6),
(101, 'San Remigio', 6),
(102, 'Sebaste', 6),
(103, 'Sibalom', 6),
(104, 'Tibiao', 6),
(105, 'Tobias Fornier (Dao)', 6),
(106, 'Valderrama', 6),
(107, 'Calanasan', 7),
(108, 'Conner', 7),
(109, 'Flora', 7),
(110, 'Kabugao', 7),
(111, 'Luna', 7),
(112, 'Pudtol', 7),
(113, 'Santa Marcela', 7),
(114, 'Baler', 8),
(115, 'Casiguran', 8),
(116, 'Dilasag', 8),
(117, 'Dinalungan', 8),
(118, 'Dingalan', 8),
(119, 'Dipaculao', 8),
(120, 'Maria Aurora', 8),
(121, 'San Luis', 8),
(122, 'Akbar', 9),
(123, 'Al-Barka', 9),
(124, 'Hadji Mohammad Ajul', 9),
(125, 'Hadji Muhtamad', 9),
(126, 'Isabela City', 9),
(127, 'Lamitan', 9),
(128, 'Lantawan', 9),
(129, 'Maluso', 9),
(130, 'Sumisip', 9),
(131, 'Tabuan-Lasa', 9),
(132, 'Tipo-Tipo', 9),
(133, 'Tuburan', 9),
(134, 'Ungkaya Pukan', 9),
(135, 'Abucay', 10),
(136, 'Bagac', 10),
(137, 'Balanga', 10),
(138, 'Dinalupihan', 10),
(139, 'Hermosa', 10),
(140, 'Limay', 10),
(141, 'Mariveles', 10),
(142, 'Morong', 10),
(143, 'Orani', 10),
(144, 'Orion', 10),
(145, 'Pilar', 10),
(146, 'Samal', 10),
(147, 'Basco', 11),
(148, 'Itbayat', 11),
(149, 'Ivana', 11),
(150, 'Mahatao', 11),
(151, 'Sabtang', 11),
(152, 'Uyugan', 11),
(153, 'Agoncillo', 12),
(154, 'Alitagtag', 12),
(155, 'Balayan', 12),
(156, 'Balete', 12),
(157, 'Batangas City', 12),
(158, 'Bauan', 12),
(159, 'Calaca', 12),
(160, 'Calatagan', 12),
(161, 'Cuenca', 12),
(162, 'Ibaan', 12),
(163, 'Laurel', 12),
(164, 'Lemery', 12),
(165, 'Lian', 12),
(166, 'Lipa', 12),
(167, 'Lobo', 12),
(168, 'Mabini', 12),
(169, 'Malvar', 12),
(170, 'Mataasnakahoy', 12),
(171, 'Nasugbu', 12),
(172, 'Padre Garcia', 12),
(173, 'Rosario', 12),
(174, 'San Jose', 12),
(175, 'San Juan', 12),
(176, 'San Luis', 12),
(177, 'San Nicolas', 12),
(178, 'San Pascual', 12),
(179, 'Santa Teresita', 12),
(180, 'Santo Tomas', 12),
(181, 'Taal', 12),
(182, 'Talisay', 12),
(183, 'Tanauan', 12),
(184, 'Taysan', 12),
(185, 'Tingloy', 12),
(186, 'Tuy', 12),
(187, 'Atok', 13),
(188, 'Baguio', 13),
(189, 'Bakun', 13),
(190, 'Bokod', 13),
(191, 'Buguias', 13),
(192, 'Itogon', 13),
(193, 'Kabayan', 13),
(194, 'Kapangan', 13),
(195, 'Kibungan', 13),
(196, 'La Trinidad', 13),
(197, 'Mankayan', 13),
(198, 'Sablan', 13),
(199, 'Tuba', 13),
(200, 'Tublay', 13),
(201, 'Almeria', 14),
(202, 'Biliran', 14),
(203, 'Cabucgayan', 14),
(204, 'Caibiran', 14),
(205, 'Culaba', 14),
(206, 'Kawayan', 14),
(207, 'Maripipi', 14),
(208, 'Naval', 14),
(209, 'Alburquerque', 15),
(210, 'Alicia', 15),
(211, 'Anda', 15),
(212, 'Antequera', 15),
(213, 'Baclayon', 15),
(214, 'Balilihan', 15),
(215, 'Batuan', 15),
(216, 'Bien Unido', 15),
(217, 'Bilar', 15),
(218, 'Buenavista', 15),
(219, 'Calape', 15),
(220, 'Candijay', 15),
(221, 'Carmen', 15),
(222, 'Catigbian', 15),
(223, 'Clarin', 15),
(224, 'Corella', 15),
(225, 'Cortes', 15),
(226, 'Dagohoy', 15),
(227, 'Danao', 15),
(228, 'Dauis', 15),
(229, 'Dimiao', 15),
(230, 'Duero', 15),
(231, 'Garcia Hernandez', 15),
(232, 'Getafe', 15),
(233, 'Guindulman', 15),
(234, 'Inabanga', 15),
(235, 'Jagna', 15),
(236, 'Lila', 15),
(237, 'Loay', 15),
(238, 'Loboc', 15),
(239, 'Loon', 15),
(240, 'Mabini', 15),
(241, 'Maribojoc', 15),
(242, 'Panglao', 15),
(243, 'Pilar', 15),
(244, 'President Carlos P. Garcia (Pitogo)', 15),
(245, 'Sagbayan (Borja)', 15),
(246, 'San Isidro', 15),
(247, 'San Miguel', 15),
(248, 'Sevilla', 15),
(249, 'Sierra Bullones', 15),
(250, 'Sikatuna', 15),
(251, 'Tagbilaran', 15),
(252, 'Talibon', 15),
(253, 'Trinidad', 15),
(254, 'Tubigon', 15),
(255, 'Ubay', 15),
(256, 'Valencia', 15),
(257, 'Baungon', 16),
(258, 'Cabanglasan', 16),
(259, 'Damulog', 16),
(260, 'Dangcagan', 16),
(261, 'Don Carlos', 16),
(262, 'Impasugong', 16),
(263, 'Kadingilan', 16),
(264, 'Kalilangan', 16),
(265, 'Kibawe', 16),
(266, 'Kitaotao', 16),
(267, 'Lantapan', 16),
(268, 'Libona', 16),
(269, 'Malaybalay', 16),
(270, 'Malitbog', 16),
(271, 'Manolo Fortich', 16),
(272, 'Maramag', 16),
(273, 'Pangantucan', 16),
(274, 'Quezon', 16),
(275, 'San Fernando', 16),
(276, 'Sumilao', 16),
(277, 'Talakag', 16),
(278, 'Valencia', 16),
(279, 'Angat', 17),
(280, 'Balagtas (Bigaa)', 17),
(281, 'Baliuag', 17),
(282, 'Bocaue', 17),
(283, 'Bulakan', 17),
(284, 'Bustos', 17),
(285, 'Calumpit', 17),
(286, 'Doña Remedios Trinidad', 17),
(287, 'Guiguinto', 17),
(288, 'Hagonoy', 17),
(289, 'Malolos', 17),
(290, 'Marilao', 17),
(291, 'Meycauayan', 17),
(292, 'Norzagaray', 17),
(293, 'Obando', 17),
(294, 'Pandi', 17),
(295, 'Paombong', 17),
(296, 'Plaridel', 17),
(297, 'Pulilan', 17),
(298, 'San Ildefonso', 17),
(299, 'San Jose del Monte', 17),
(300, 'San Miguel', 17),
(301, 'San Rafael', 17),
(302, 'Santa Maria', 17),
(303, 'Abulug', 18),
(304, 'Alcala', 18),
(305, 'Allacapan', 18),
(306, 'Amulung', 18),
(307, 'Aparri', 18),
(308, 'Baggao', 18),
(309, 'Ballesteros', 18),
(310, 'Buguey', 18),
(311, 'Calayan', 18),
(312, 'Camalaniugan', 18),
(313, 'Claveria', 18),
(314, 'Enrile', 18),
(315, 'Gattaran', 18),
(316, 'Gonzaga', 18),
(317, 'Iguig', 18),
(318, 'Lal-lo', 18),
(319, 'Lasam', 18),
(320, 'Pamplona', 18),
(321, 'Peñablanca', 18),
(322, 'Piat', 18),
(323, 'Rizal', 18),
(324, 'Sanchez-Mira', 18),
(325, 'Santa Ana', 18),
(326, 'Santa Praxedes', 18),
(327, 'Santa Teresita', 18),
(328, 'Santo Niño (Faire)', 18),
(329, 'Solana', 18),
(330, 'Tuao', 18),
(331, 'Tuguegarao', 18),
(332, 'Basud', 19),
(333, 'Capalonga', 19),
(334, 'Daet', 19),
(335, 'Jose Panganiban', 19),
(336, 'Labo', 19),
(337, 'Mercedes', 19),
(338, 'Paracale', 19),
(339, 'San Lorenzo Ruiz (Imelda)', 19),
(340, 'San Vicente', 19),
(341, 'Santa Elena', 19),
(342, 'Talisay', 19),
(343, 'Vinzons', 19),
(344, 'Baao', 20),
(345, 'Balatan', 20),
(346, 'Bato', 20),
(347, 'Bombon', 20),
(348, 'Buhi', 20),
(349, 'Bula', 20),
(350, 'Cabusao', 20),
(351, 'Calabanga', 20),
(352, 'Camaligan', 20),
(353, 'Canaman', 20),
(354, 'Caramoan', 20),
(355, 'Del Gallego', 20),
(356, 'Gainza', 20),
(357, 'Garchitorena', 20),
(358, 'Goa', 20),
(359, 'Iriga', 20),
(360, 'Lagonoy', 20),
(361, 'Libmanan', 20),
(362, 'Lupi', 20),
(363, 'Magarao', 20),
(364, 'Milaor', 20),
(365, 'Minalabac', 20),
(366, 'Nabua', 20),
(367, 'Naga', 20),
(368, 'Ocampo', 20),
(369, 'Pamplona', 20),
(370, 'Pasacao', 20),
(371, 'Pili', 20),
(372, 'Presentacion (Parubcan)', 20),
(373, 'Ragay', 20),
(374, 'Sagñay', 20),
(375, 'San Fernando', 20),
(376, 'San Jose', 20),
(377, 'Sipocot', 20),
(378, 'Siruma', 20),
(379, 'Tigaon', 20),
(380, 'Tinambac', 20),
(381, 'Catarman', 21),
(382, 'Guinsiliban', 21),
(383, 'Mahinog', 21),
(384, 'Mambajao', 21),
(385, 'Sagay', 21),
(386, 'Cuartero', 22),
(387, 'Dao', 22),
(388, 'Dumalag', 22),
(389, 'Dumarao', 22),
(390, 'Ivisan', 22),
(391, 'Jamindan', 22),
(392, 'Maayon', 22),
(393, 'Mambusao', 22),
(394, 'Panay', 22),
(395, 'Panitan', 22),
(396, 'Pilar', 22),
(397, 'Pontevedra', 22),
(398, 'President Roxas', 22),
(399, 'Roxas City', 22),
(400, 'Sapian', 22),
(401, 'Sigma', 22),
(402, 'Tapaz', 22),
(403, 'Bagamanoc', 23),
(404, 'Baras', 23),
(405, 'Bato', 23),
(406, 'Caramoran', 23),
(407, 'Gigmoto', 23),
(408, 'Pandan', 23),
(409, 'Panganiban (Payo)', 23),
(410, 'San Andres (Calolbon)', 23),
(411, 'San Miguel', 23),
(412, 'Viga', 23),
(413, 'Virac', 23),
(414, 'Alfonso', 24),
(415, 'Amadeo', 24),
(416, 'Bacoor', 24),
(417, 'Carmona', 24),
(418, 'Cavite City', 24),
(419, 'Dasmariñas', 24),
(420, 'General Emilio Aguinaldo', 24),
(421, 'General Mariano Alvarez', 24),
(422, 'General Trias', 24),
(423, 'Imus', 24),
(424, 'Indang', 24),
(425, 'Kawit', 24),
(426, 'Magallanes', 24),
(427, 'Maragondon', 24),
(428, 'Mendez (Mendez-Nuñez)', 24),
(429, 'Naic', 24),
(430, 'Noveleta', 24),
(431, 'Rosario', 24),
(432, 'Silang', 24),
(433, 'Tagaytay', 24),
(434, 'Tanza', 24),
(435, 'Ternate', 24),
(436, 'Trece Martires', 24),
(437, 'Alcantara', 25),
(438, 'Alcoy', 25),
(439, 'Alegria', 25),
(440, 'Aloguinsan', 25),
(441, 'Argao', 25),
(442, 'Asturias', 25),
(443, 'Badian', 25),
(444, 'Balamban', 25),
(445, 'Bantayan', 25),
(446, 'Barili', 25),
(447, 'Bogo', 25),
(448, 'Boljoon', 25),
(449, 'Borbon', 25),
(450, 'Carcar', 25),
(451, 'Carmen', 25),
(452, 'Catmon', 25),
(453, 'Cebu City', 25),
(454, 'Compostela', 25),
(455, 'Consolacion', 25),
(456, 'Cordova', 25),
(457, 'Daanbantayan', 25),
(458, 'Dalaguete', 25),
(459, 'Danao', 25),
(460, 'Dumanjug', 25),
(461, 'Ginatilan', 25),
(462, 'Lapu-Lapu (Opon)', 25),
(463, 'Liloan', 25),
(464, 'Madridejos', 25),
(465, 'Malabuyoc', 25),
(466, 'Mandaue', 25),
(467, 'Medellin', 25),
(468, 'Minglanilla', 25),
(469, 'Moalboal', 25),
(470, 'Naga', 25),
(471, 'Oslob', 25),
(472, 'Pilar', 25),
(473, 'Pinamungajan', 25),
(474, 'Poro', 25),
(475, 'Ronda', 25),
(476, 'Samboan', 25),
(477, 'San Fernando', 25),
(478, 'San Francisco', 25),
(479, 'San Remigio', 25),
(480, 'Santa Fe', 25),
(481, 'Santander', 25),
(482, 'Sibonga', 25),
(483, 'Sogod', 25),
(484, 'Tabogon', 25),
(485, 'Tabuelan', 25),
(486, 'Talisay', 25),
(487, 'Toledo', 25),
(488, 'Tuburan', 25),
(489, 'Tudela', 25),
(490, 'Compostela', 26),
(491, 'Laak (San Vicente)', 26),
(492, 'Mabini (Doña Alicia)', 26),
(493, 'Maco', 26),
(494, 'Maragusan (San Mariano)', 26),
(495, 'Mawab', 26),
(496, 'Monkayo', 26),
(497, 'Montevista', 26),
(498, 'Nabunturan', 26),
(499, 'New Bataan', 26),
(500, 'Pantukan', 26),
(501, 'Alamada', 27),
(502, 'Aleosan', 27),
(503, 'Antipas', 27),
(504, 'Arakan', 27),
(505, 'Banisilan', 27),
(506, 'Carmen', 27),
(507, 'Kabacan', 27),
(508, 'Kidapawan', 27),
(509, 'Libungan', 27),
(510, 'Magpet', 27),
(511, 'Makilala', 27),
(512, 'Matalam', 27),
(513, 'Midsayap', 27),
(514, 'M\'lang', 27),
(515, 'Pigcawayan', 27),
(516, 'Pikit', 27),
(517, 'President Roxas', 27),
(518, 'Tulunan', 27),
(519, 'Asuncion (Saug)', 28),
(520, 'Braulio E. Dujali', 28),
(521, 'Carmen', 28),
(522, 'Kapalong', 28),
(523, 'New Corella', 28),
(524, 'Panabo', 28),
(525, 'Samal', 28),
(526, 'San Isidro', 28),
(527, 'Santo Tomas', 28),
(528, 'Tagum', 28),
(529, 'Talaingod', 28),
(530, 'Bansalan', 29),
(531, 'Davao City', 29),
(532, 'Digos', 29),
(533, 'Hagonoy', 29),
(534, 'Kiblawan', 29),
(535, 'Magsaysay', 29),
(536, 'Malalag', 29),
(537, 'Matanao', 29),
(538, 'Padada', 29),
(539, 'Santa Cruz', 29),
(540, 'Sulop', 29),
(541, 'Don Marcelino', 30),
(542, 'Jose Abad Santos (Trinidad)', 30),
(543, 'Malita', 30),
(544, 'Santa Maria', 30),
(545, 'Sarangani', 30),
(546, 'Baganga', 31),
(547, 'Banaybanay', 31),
(548, 'Boston', 31),
(549, 'Caraga', 31),
(550, 'Cateel', 31),
(551, 'Governor Generoso', 31),
(552, 'Lupon', 31),
(553, 'Manay', 31),
(554, 'Mati', 31),
(555, 'San Isidro', 31),
(556, 'Tarragona', 31),
(557, 'Basilisa (Rizal)', 32),
(558, 'Cagdianao', 32),
(559, 'Dinagat', 32),
(560, 'Libjo (Albor)', 32),
(561, 'Loreto', 32),
(562, 'San Jose', 32),
(563, 'Tubajon', 32),
(564, 'Arteche', 33),
(565, 'Balangiga', 33),
(566, 'Balangkayan', 33),
(567, 'Borongan', 33),
(568, 'Can-avid', 33),
(569, 'Dolores', 33),
(570, 'General MacArthur', 33),
(571, 'Giporlos', 33),
(572, 'Guiuan', 33),
(573, 'Hernani', 33),
(574, 'Jipapad', 33),
(575, 'Lawaan', 33),
(576, 'Llorente', 33),
(577, 'Maslog', 33),
(578, 'Maydolong', 33),
(579, 'Mercedes', 33),
(580, 'Oras', 33),
(581, 'Quinapondan', 33),
(582, 'Salcedo', 33),
(583, 'San Julian', 33),
(584, 'San Policarpo', 33),
(585, 'Sulat', 33),
(586, 'Taft', 33),
(587, 'Buenavista', 34),
(588, 'Jordan', 34),
(589, 'Nueva Valencia', 34),
(590, 'San Lorenzo', 34),
(591, 'Sibunag', 34),
(592, 'Aguinaldo', 35),
(593, 'Alfonso Lista (Potia)', 35),
(594, 'Asipulo', 35),
(595, 'Banaue', 35),
(596, 'Hingyon', 35),
(597, 'Hungduan', 35),
(598, 'Kiangan', 35),
(599, 'Lagawe', 35),
(600, 'Lamut', 35),
(601, 'Mayoyao', 35),
(602, 'Tinoc', 35),
(603, 'Adams', 36),
(604, 'Bacarra', 36),
(605, 'Badoc', 36),
(606, 'Bangui', 36),
(607, 'Banna (Espiritu)', 36),
(608, 'Batac', 36),
(609, 'Burgos', 36),
(610, 'Carasi', 36),
(611, 'Currimao', 36),
(612, 'Dingras', 36),
(613, 'Dumalneg', 36),
(614, 'Laoag', 36),
(615, 'Marcos', 36),
(616, 'Nueva Era', 36),
(617, 'Pagudpud', 36),
(618, 'Paoay', 36),
(619, 'Pasuquin', 36),
(620, 'Piddig', 36),
(621, 'Pinili', 36),
(622, 'San Nicolas', 36),
(623, 'Sarrat', 36),
(624, 'Solsona', 36),
(625, 'Vintar', 36),
(626, 'Alilem', 37),
(627, 'Banayoyo', 37),
(628, 'Bantay', 37),
(629, 'Burgos', 37),
(630, 'Cabugao', 37),
(631, 'Candon', 37),
(632, 'Caoayan', 37),
(633, 'Cervantes', 37),
(634, 'Galimuyod', 37),
(635, 'Gregorio del Pilar (Concepcion)', 37),
(636, 'Lidlidda', 37),
(637, 'Magsingal', 37),
(638, 'Nagbukel', 37),
(639, 'Narvacan', 37),
(640, 'Quirino (Angkaki)', 37),
(641, 'Salcedo (Baugen)', 37),
(642, 'San Emilio', 37),
(643, 'San Esteban', 37),
(644, 'San Ildefonso', 37),
(645, 'San Juan (Lapog)', 37),
(646, 'San Vicente', 37),
(647, 'Santa', 37),
(648, 'Santa Catalina', 37),
(649, 'Santa Cruz', 37),
(650, 'Santa Lucia', 37),
(651, 'Santa Maria', 37),
(652, 'Santiago', 37),
(653, 'Santo Domingo', 37),
(654, 'Sigay', 37),
(655, 'Sinait', 37),
(656, 'Sugpon', 37),
(657, 'Suyo', 37),
(658, 'Tagudin', 37),
(659, 'Vigan', 37),
(660, 'Ajuy', 38),
(661, 'Alimodian', 38),
(662, 'Anilao', 38),
(663, 'Badiangan', 38),
(664, 'Balasan', 38),
(665, 'Banate', 38),
(666, 'Barotac Nuevo', 38),
(667, 'Barotac Viejo', 38),
(668, 'Batad', 38),
(669, 'Bingawan', 38),
(670, 'Cabatuan', 38),
(671, 'Calinog', 38),
(672, 'Carles', 38),
(673, 'Concepcion', 38),
(674, 'Dingle', 38),
(675, 'Dueñas', 38),
(676, 'Dumangas', 38),
(677, 'Estancia', 38),
(678, 'Guimbal', 38),
(679, 'Igbaras', 38),
(680, 'Iloilo City', 38),
(681, 'Janiuay', 38),
(682, 'Lambunao', 38),
(683, 'Leganes', 38),
(684, 'Lemery', 38),
(685, 'Leon', 38),
(686, 'Maasin', 38),
(687, 'Miagao', 38),
(688, 'Mina', 38),
(689, 'New Lucena', 38),
(690, 'Oton', 38),
(691, 'Passi', 38),
(692, 'Pavia', 38),
(693, 'Pototan', 38),
(694, 'San Dionisio', 38),
(695, 'San Enrique', 38),
(696, 'San Joaquin', 38),
(697, 'San Miguel', 38),
(698, 'San Rafael', 38),
(699, 'Santa Barbara', 38),
(700, 'Sara', 38),
(701, 'Tigbauan', 38),
(702, 'Tubungan', 38),
(703, 'Zarraga', 38),
(704, 'Alicia', 39),
(705, 'Angadanan', 39),
(706, 'Aurora', 39),
(707, 'Benito Soliven', 39),
(708, 'Burgos', 39),
(709, 'Cabagan', 39),
(710, 'Cabatuan', 39),
(711, 'Cauayan', 39),
(712, 'Cordon', 39),
(713, 'Delfin Albano (Magsaysay)', 39),
(714, 'Dinapigue', 39),
(715, 'Divilacan', 39),
(716, 'Echague', 39),
(717, 'Gamu', 39),
(718, 'Ilagan', 39),
(719, 'Jones', 39),
(720, 'Luna', 39),
(721, 'Maconacon', 39),
(722, 'Mallig', 39),
(723, 'Naguilian', 39),
(724, 'Palanan', 39),
(725, 'Quezon', 39),
(726, 'Quirino', 39),
(727, 'Ramon', 39),
(728, 'Reina Mercedes', 39),
(729, 'Roxas', 39),
(730, 'San Agustin', 39),
(731, 'San Guillermo', 39),
(732, 'San Isidro', 39),
(733, 'San Manuel (Callang)', 39),
(734, 'San Mariano', 39),
(735, 'San Mateo', 39),
(736, 'San Pablo', 39),
(737, 'Santa Maria', 39),
(738, 'Santiago', 39),
(739, 'Santo Tomas', 39),
(740, 'Tumauini', 39),
(741, 'Balbalan', 40),
(742, 'Lubuagan', 40),
(743, 'Pasil', 40),
(744, 'Pinukpuk', 40),
(745, 'Rizal (Liwan)', 40),
(746, 'Tabuk', 40),
(747, 'Tanudan', 40),
(748, 'Tinglayan', 40),
(749, 'Agoo', 41),
(750, 'Aringay', 41),
(751, 'Bacnotan', 41),
(752, 'Bagulin', 41),
(753, 'Balaoan', 41),
(754, 'Bangar', 41),
(755, 'Bauang', 41),
(756, 'Burgos', 41),
(757, 'Caba', 41),
(758, 'Luna', 41),
(759, 'Naguilian', 41),
(760, 'Pugo', 41),
(761, 'Rosario', 41),
(762, 'San Fernando', 41),
(763, 'San Gabriel', 41),
(764, 'San Juan', 41),
(765, 'Santo Tomas', 41),
(766, 'Santol', 41),
(767, 'Sudipen', 41),
(768, 'Tubao', 41),
(769, 'Alaminos', 42),
(770, 'Bay', 42),
(771, 'Biñan', 42),
(772, 'Cabuyao', 42),
(773, 'Calamba', 42),
(774, 'Calauan', 42),
(775, 'Cavinti', 42),
(776, 'Famy', 42),
(777, 'Kalayaan', 42),
(778, 'Liliw', 42),
(779, 'Los Baños', 42),
(780, 'Luisiana', 42),
(781, 'Lumban', 42),
(782, 'Mabitac', 42),
(783, 'Magdalena', 42),
(784, 'Majayjay', 42),
(785, 'Nagcarlan', 42),
(786, 'Paete', 42),
(787, 'Pagsanjan', 42),
(788, 'Pakil', 42),
(789, 'Pangil', 42),
(790, 'Pila', 42),
(791, 'Rizal', 42),
(792, 'San Pablo', 42),
(793, 'San Pedro', 42),
(794, 'Santa Cruz', 42),
(795, 'Santa Maria', 42),
(796, 'Santa Rosa', 42),
(797, 'Siniloan', 42),
(798, 'Victoria', 42),
(799, 'Bacolod', 43),
(800, 'Baloi', 43),
(801, 'Baroy', 43),
(802, 'Iligan', 43),
(803, 'Kapatagan', 43),
(804, 'Kauswagan', 43),
(805, 'Kolambugan', 43),
(806, 'Lala', 43),
(807, 'Linamon', 43),
(808, 'Magsaysay', 43),
(809, 'Maigo', 43),
(810, 'Matungao', 43),
(811, 'Munai', 43),
(812, 'Nunungan', 43),
(813, 'Pantao Ragat', 43),
(814, 'Pantar', 43),
(815, 'Poona Piagapo', 43),
(816, 'Salvador', 43),
(817, 'Sapad', 43),
(818, 'Sultan Naga Dimaporo (Karomatan)', 43),
(819, 'Tagoloan', 43),
(820, 'Tangcal', 43),
(821, 'Tubod', 43),
(822, 'Amai Manabilang (Bumbaran)', 44),
(823, 'Bacolod-Kalawi (Bacolod-Grande)', 44),
(824, 'Balabagan', 44),
(825, 'Balindong (Watu)', 44),
(826, 'Bayang', 44),
(827, 'Binidayan', 44),
(828, 'Buadiposo-Buntong', 44),
(829, 'Bubong', 44),
(830, 'Butig', 44),
(831, 'Calanogas', 44),
(832, 'Ditsaan-Ramain', 44),
(833, 'Ganassi', 44),
(834, 'Kapai', 44),
(835, 'Kapatagan', 44),
(836, 'Lumba-Bayabao (Maguing)', 44),
(837, 'Lumbaca-Unayan', 44),
(838, 'Lumbatan', 44),
(839, 'Lumbayanague', 44),
(840, 'Madalum', 44),
(841, 'Madamba', 44),
(842, 'Maguing', 44),
(843, 'Malabang', 44),
(844, 'Marantao', 44),
(845, 'Marawi', 44),
(846, 'Marogong', 44),
(847, 'Masiu', 44),
(848, 'Mulondo', 44),
(849, 'Pagayawan (Tatarikan)', 44),
(850, 'Piagapo', 44),
(851, 'Picong (Sultan Gumander)', 44),
(852, 'Poona Bayabao (Gata)', 44),
(853, 'Pualas', 44),
(854, 'Saguiaran', 44),
(855, 'Sultan Dumalondong', 44),
(856, 'Tagoloan II', 44),
(857, 'Tamparan', 44),
(858, 'Taraka', 44),
(859, 'Tubaran', 44),
(860, 'Tugaya', 44),
(861, 'Wao', 44),
(862, 'Abuyog', 45),
(863, 'Alangalang', 45),
(864, 'Albuera', 45),
(865, 'Babatngon', 45),
(866, 'Barugo', 45),
(867, 'Bato', 45),
(868, 'Baybay', 45),
(869, 'Burauen', 45),
(870, 'Calubian', 45),
(871, 'Capoocan', 45),
(872, 'Carigara', 45),
(873, 'Dagami', 45),
(874, 'Dulag', 45),
(875, 'Hilongos', 45),
(876, 'Hindang', 45),
(877, 'Inopacan', 45),
(878, 'Isabel', 45),
(879, 'Jaro', 45),
(880, 'Javier (Bugho)', 45),
(881, 'Julita', 45),
(882, 'Kananga', 45),
(883, 'La Paz', 45),
(884, 'Leyte', 45),
(885, 'MacArthur', 45),
(886, 'Mahaplag', 45),
(887, 'Matag-ob', 45),
(888, 'Matalom', 45),
(889, 'Mayorga', 45),
(890, 'Merida', 45),
(891, 'Ormoc', 45),
(892, 'Palo', 45),
(893, 'Palompon', 45),
(894, 'Pastrana', 45),
(895, 'San Isidro', 45),
(896, 'San Miguel', 45),
(897, 'Santa Fe', 45),
(898, 'Tabango', 45),
(899, 'Tabontabon', 45),
(900, 'Tacloban', 45),
(901, 'Tanauan', 45),
(902, 'Tolosa', 45),
(903, 'Tunga', 45),
(904, 'Villaba', 45),
(905, 'Ampatuan', 46),
(906, 'Barira', 46),
(907, 'Buldon', 46),
(908, 'Buluan', 46),
(909, 'Cotabato City', 46),
(910, 'Datu Abdullah Sangki', 46),
(911, 'Datu Anggal Midtimbang', 46),
(912, 'Datu Blah T. Sinsuat', 46),
(913, 'Datu Hoffer Ampatuan', 46),
(914, 'Datu Montawal (Pagagawan)', 46),
(915, 'Datu Odin Sinsuat (Dinaig)', 46),
(916, 'Datu Paglas', 46),
(917, 'Datu Piang (Dulawan)', 46),
(918, 'Datu Salibo', 46),
(919, 'Datu Saudi-Ampatuan', 46),
(920, 'Datu Unsay', 46),
(921, 'General Salipada K. Pendatun', 46),
(922, 'Guindulungan', 46),
(923, 'Kabuntalan (Tumbao)', 46),
(924, 'Mamasapano', 46),
(925, 'Mangudadatu', 46),
(926, 'Matanog', 46),
(927, 'Northern Kabuntalan', 46),
(928, 'Pagalungan', 46),
(929, 'Paglat', 46),
(930, 'Pandag', 46),
(931, 'Parang', 46),
(932, 'Rajah Buayan', 46),
(933, 'Shariff Aguak (Maganoy)', 46),
(934, 'Shariff Saydona Mustapha', 46),
(935, 'South Upi', 46),
(936, 'Sultan Kudarat (Nuling)', 46),
(937, 'Sultan Mastura', 46),
(938, 'Sultan sa Barongis (Lambayong)', 46),
(939, 'Sultan Sumagka (Talitay)', 46),
(940, 'Talayan', 46),
(941, 'Upi', 46),
(942, 'Boac', 47),
(943, 'Buenavista', 47),
(944, 'Gasan', 47),
(945, 'Mogpog', 47),
(946, 'Santa Cruz', 47),
(947, 'Torrijos', 47),
(948, 'Aroroy', 48),
(949, 'Baleno', 48),
(950, 'Balud', 48),
(951, 'Batuan', 48),
(952, 'Cataingan', 48),
(953, 'Cawayan', 48),
(954, 'Claveria', 48),
(955, 'Dimasalang', 48),
(956, 'Esperanza', 48),
(957, 'Mandaon', 48),
(958, 'Masbate City', 48),
(959, 'Milagros', 48),
(960, 'Mobo', 48),
(961, 'Monreal', 48),
(962, 'Palanas', 48),
(963, 'Pio V. Corpuz (Limbuhan)', 48),
(964, 'Placer', 48),
(965, 'San Fernando', 48),
(966, 'San Jacinto', 48),
(967, 'San Pascual', 48),
(968, 'Uson', 48),
(969, 'Caloocan', 49),
(970, 'Las Piñas', 49),
(971, 'Makati', 49),
(972, 'Malabon', 49),
(973, 'Mandaluyong', 49),
(974, 'Manila', 49),
(975, 'Marikina', 49),
(976, 'Muntinlupa', 49),
(977, 'Navotas', 49),
(978, 'Parañaque', 49),
(979, 'Pasay', 49),
(980, 'Pasig', 49),
(981, 'Pateros', 49),
(982, 'Quezon City', 49),
(983, 'San Juan', 49),
(984, 'Taguig', 49),
(985, 'Valenzuela', 49),
(986, 'Aloran', 50),
(987, 'Baliangao', 50),
(988, 'Bonifacio', 50),
(989, 'Calamba', 50),
(990, 'Clarin', 50),
(991, 'Concepcion', 50),
(992, 'Don Victoriano Chiongbian (Don Mariano Marcos)', 50),
(993, 'Jimenez', 50),
(994, 'Lopez Jaena', 50),
(995, 'Oroquieta', 50),
(996, 'Ozamiz', 50),
(997, 'Panaon', 50),
(998, 'Plaridel', 50),
(999, 'Sapang Dalaga', 50),
(1000, 'Sinacaban', 50),
(1001, 'Tangub', 50),
(1002, 'Tudela', 50),
(1003, 'Alubijid', 51),
(1004, 'Balingasag', 51),
(1005, 'Balingoan', 51),
(1006, 'Binuangan', 51),
(1007, 'Cagayan de Oro', 51),
(1008, 'Claveria', 51),
(1009, 'El Salvador', 51),
(1010, 'Gingoog', 51),
(1011, 'Gitagum', 51),
(1012, 'Initao', 51),
(1013, 'Jasaan', 51),
(1014, 'Kinoguitan', 51),
(1015, 'Lagonglong', 51),
(1016, 'Laguindingan', 51),
(1017, 'Libertad', 51),
(1018, 'Lugait', 51),
(1019, 'Magsaysay (Linugos)', 51),
(1020, 'Manticao', 51),
(1021, 'Medina', 51),
(1022, 'Naawan', 51),
(1023, 'Opol', 51),
(1024, 'Salay', 51),
(1025, 'Sugbongcogon', 51),
(1026, 'Tagoloan', 51),
(1027, 'Talisayan', 51),
(1028, 'Villanueva', 51),
(1029, 'Barlig', 52),
(1030, 'Bauko', 52),
(1031, 'Besao', 52),
(1032, 'Bontoc', 52),
(1033, 'Natonin', 52),
(1034, 'Paracelis', 52),
(1035, 'Sabangan', 52),
(1036, 'Sadanga', 52),
(1037, 'Sagada', 52),
(1038, 'Tadian', 52),
(1039, 'Bacolod', 53),
(1040, 'Bago', 53),
(1041, 'Binalbagan', 53),
(1042, 'Cadiz', 53),
(1043, 'Calatrava', 53),
(1044, 'Candoni', 53),
(1045, 'Cauayan', 53),
(1046, 'Enrique B. Magalona (Saravia)', 53),
(1047, 'Escalante', 53),
(1048, 'Himamaylan', 53),
(1049, 'Hinigaran', 53),
(1050, 'Hinoba-an (Asia)', 53),
(1051, 'Ilog', 53),
(1052, 'Isabela', 53),
(1053, 'Kabankalan', 53),
(1054, 'La Carlota', 53),
(1055, 'La Castellana', 53),
(1056, 'Manapla', 53),
(1057, 'Moises Padilla (Magallon)', 53),
(1058, 'Murcia', 53),
(1059, 'Pontevedra', 53),
(1060, 'Pulupandan', 53),
(1061, 'Sagay', 53),
(1062, 'Salvador Benedicto', 53),
(1063, 'San Carlos', 53),
(1064, 'San Enrique', 53),
(1065, 'Silay', 53),
(1066, 'Sipalay', 53),
(1067, 'Talisay', 53),
(1068, 'Toboso', 53),
(1069, 'Valladolid', 53),
(1070, 'Victorias', 53),
(1071, 'Amlan (Ayuquitan)', 54),
(1072, 'Ayungon', 54),
(1073, 'Bacong', 54),
(1074, 'Bais', 54),
(1075, 'Basay', 54),
(1076, 'Bayawan (Tulong)', 54),
(1077, 'Bindoy (Payabon)', 54),
(1078, 'Canlaon', 54),
(1079, 'Dauin', 54),
(1080, 'Dumaguete', 54),
(1081, 'Guihulngan', 54),
(1082, 'Jimalalud', 54),
(1083, 'La Libertad', 54),
(1084, 'Mabinay', 54),
(1085, 'Manjuyod', 54),
(1086, 'Pamplona', 54),
(1087, 'San Jose', 54),
(1088, 'Santa Catalina', 54),
(1089, 'Siaton', 54),
(1090, 'Sibulan', 54),
(1091, 'Tanjay', 54),
(1092, 'Tayasan', 54),
(1093, 'Valencia (Luzurriaga)', 54),
(1094, 'Vallehermoso', 54),
(1095, 'Zamboanguita', 54),
(1096, 'Allen', 55),
(1097, 'Biri', 55),
(1098, 'Bobon', 55),
(1099, 'Capul', 55),
(1100, 'Catarman', 55),
(1101, 'Catubig', 55),
(1102, 'Gamay', 55),
(1103, 'Laoang', 55),
(1104, 'Lapinig', 55),
(1105, 'Las Navas', 55),
(1106, 'Lavezares', 55),
(1107, 'Lope de Vega', 55),
(1108, 'Mapanas', 55),
(1109, 'Mondragon', 55),
(1110, 'Palapag', 55),
(1111, 'Pambujan', 55),
(1112, 'Rosario', 55),
(1113, 'San Antonio', 55),
(1114, 'San Isidro', 55),
(1115, 'San Jose', 55),
(1116, 'San Roque', 55),
(1117, 'San Vicente', 55),
(1118, 'Silvino Lobos', 55),
(1119, 'Victoria', 55),
(1120, 'Aliaga', 56),
(1121, 'Bongabon', 56),
(1122, 'Cabanatuan', 56),
(1123, 'Cabiao', 56),
(1124, 'Carranglan', 56),
(1125, 'Cuyapo', 56),
(1126, 'Gabaldon (Bitulok & Sabani)', 56),
(1127, 'Gapan', 56),
(1128, 'General Mamerto Natividad', 56),
(1129, 'General Tinio (Papaya)', 56),
(1130, 'Guimba', 56),
(1131, 'Jaen', 56),
(1132, 'Laur', 56),
(1133, 'Licab', 56),
(1134, 'Llanera', 56),
(1135, 'Lupao', 56),
(1136, 'Muñoz', 56),
(1137, 'Nampicuan', 56),
(1138, 'Palayan', 56),
(1139, 'Pantabangan', 56),
(1140, 'Peñaranda', 56),
(1141, 'Quezon', 56),
(1142, 'Rizal', 56),
(1143, 'San Antonio', 56),
(1144, 'San Isidro', 56),
(1145, 'San Jose', 56),
(1146, 'San Leonardo', 56),
(1147, 'Santa Rosa', 56),
(1148, 'Santo Domingo', 56),
(1149, 'Talavera', 56),
(1150, 'Talugtug', 56),
(1151, 'Zaragoza', 56),
(1152, 'Alfonso Castañeda', 57),
(1153, 'Ambaguio', 57),
(1154, 'Aritao', 57),
(1155, 'Bagabag', 57),
(1156, 'Bambang', 57),
(1157, 'Bayombong', 57),
(1158, 'Diadi', 57),
(1159, 'Dupax del Norte', 57),
(1160, 'Dupax del Sur', 57),
(1161, 'Kasibu', 57),
(1162, 'Kayapa', 57),
(1163, 'Quezon', 57),
(1164, 'Santa Fe (Imugan)', 57),
(1165, 'Solano', 57),
(1166, 'Villaverde (Ibung)', 57),
(1167, 'Abra de Ilog', 58),
(1168, 'Calintaan', 58),
(1169, 'Looc', 58),
(1170, 'Lubang', 58),
(1171, 'Magsaysay', 58),
(1172, 'Mamburao', 58),
(1173, 'Paluan', 58),
(1174, 'Rizal', 58),
(1175, 'Sablayan', 58),
(1176, 'San Jose', 58),
(1177, 'Santa Cruz', 58),
(1178, 'Baco', 59),
(1179, 'Bansud', 59),
(1180, 'Bongabong', 59),
(1181, 'Bulalacao (San Pedro)', 59),
(1182, 'Calapan', 59),
(1183, 'Gloria', 59),
(1184, 'Mansalay', 59),
(1185, 'Naujan', 59),
(1186, 'Pinamalayan', 59),
(1187, 'Pola', 59),
(1188, 'Puerto Galera', 59),
(1189, 'Roxas', 59),
(1190, 'San Teodoro', 59),
(1191, 'Socorro', 59),
(1192, 'Victoria', 59),
(1193, 'Aborlan', 60),
(1194, 'Agutaya', 60),
(1195, 'Araceli', 60),
(1196, 'Balabac', 60),
(1197, 'Bataraza', 60),
(1198, 'Brooke\'s Point', 60),
(1199, 'Busuanga', 60),
(1200, 'Cagayancillo', 60),
(1201, 'Coron', 60),
(1202, 'Culion', 60),
(1203, 'Cuyo', 60),
(1204, 'Dumaran', 60),
(1205, 'El Nido (Bacuit)', 60),
(1206, 'Kalayaan', 60),
(1207, 'Linapacan', 60),
(1208, 'Magsaysay', 60),
(1209, 'Narra', 60),
(1210, 'Puerto Princesa', 60),
(1211, 'Quezon', 60),
(1212, 'Rizal (Marcos)', 60),
(1213, 'Roxas', 60),
(1214, 'San Vicente', 60),
(1215, 'Sofronio Española', 60),
(1216, 'Taytay', 60),
(1217, 'Angeles', 61),
(1218, 'Apalit', 61),
(1219, 'Arayat', 61),
(1220, 'Bacolor', 61),
(1221, 'Candaba', 61),
(1222, 'Floridablanca', 61),
(1223, 'Guagua', 61),
(1224, 'Lubao', 61),
(1225, 'Mabalacat', 61),
(1226, 'Macabebe', 61),
(1227, 'Magalang', 61),
(1228, 'Masantol', 61),
(1229, 'Mexico', 61),
(1230, 'Minalin', 61),
(1231, 'Porac', 61),
(1232, 'San Fernando', 61),
(1233, 'San Luis', 61),
(1234, 'San Simon', 61),
(1235, 'Santa Ana', 61),
(1236, 'Santa Rita', 61),
(1237, 'Santo Tomas', 61),
(1238, 'Sasmuan', 61),
(1239, 'Agno', 62),
(1240, 'Aguilar', 62),
(1241, 'Alaminos', 62),
(1242, 'Alcala', 62),
(1243, 'Anda', 62),
(1244, 'Asingan', 62),
(1245, 'Balungao', 62),
(1246, 'Bani', 62),
(1247, 'Basista', 62),
(1248, 'Bautista', 62),
(1249, 'Bayambang', 62),
(1250, 'Binalonan', 62),
(1251, 'Binmaley', 62),
(1252, 'Bolinao', 62),
(1253, 'Bugallon', 62),
(1254, 'Burgos', 62),
(1255, 'Calasiao', 62),
(1256, 'Dagupan', 62),
(1257, 'Dasol', 62),
(1258, 'Infanta', 62),
(1259, 'Labrador', 62),
(1260, 'Laoac', 62),
(1261, 'Lingayen', 62),
(1262, 'Mabini', 62),
(1263, 'Malasiqui', 62),
(1264, 'Manaoag', 62),
(1265, 'Mangaldan', 62),
(1266, 'Mangatarem', 62),
(1267, 'Mapandan', 62),
(1268, 'Natividad', 62),
(1269, 'Pozorrubio', 62),
(1270, 'Rosales', 62),
(1271, 'San Carlos', 62),
(1272, 'San Fabian', 62),
(1273, 'San Jacinto', 62),
(1274, 'San Manuel', 62),
(1275, 'San Nicolas', 62),
(1276, 'San Quintin', 62),
(1277, 'Santa Barbara', 62),
(1278, 'Santa Maria', 62),
(1279, 'Santo Tomas', 62),
(1280, 'Sison', 62),
(1281, 'Sual', 62),
(1282, 'Tayug', 62),
(1283, 'Umingan', 62),
(1284, 'Urbiztondo', 62),
(1285, 'Urdaneta', 62),
(1286, 'Villasis', 62),
(1287, 'Agdangan', 63),
(1288, 'Alabat', 63),
(1289, 'Atimonan', 63),
(1290, 'Buenavista', 63),
(1291, 'Burdeos', 63),
(1292, 'Calauag', 63),
(1293, 'Candelaria', 63),
(1294, 'Catanauan', 63),
(1295, 'Dolores', 63),
(1296, 'General Luna', 63),
(1297, 'General Nakar', 63),
(1298, 'Guinayangan', 63),
(1299, 'Gumaca', 63),
(1300, 'Infanta', 63),
(1301, 'Jomalig', 63),
(1302, 'Lopez', 63),
(1303, 'Lucban', 63),
(1304, 'Lucena', 63),
(1305, 'Macalelon', 63),
(1306, 'Mauban', 63),
(1307, 'Mulanay', 63),
(1308, 'Padre Burgos', 63),
(1309, 'Pagbilao', 63),
(1310, 'Panukulan', 63),
(1311, 'Patnanungan', 63),
(1312, 'Perez', 63),
(1313, 'Pitogo', 63),
(1314, 'Plaridel', 63),
(1315, 'Polillo', 63),
(1316, 'Quezon', 63),
(1317, 'Real', 63),
(1318, 'Sampaloc', 63),
(1319, 'San Andres', 63),
(1320, 'San Antonio', 63),
(1321, 'San Francisco (Aurora)', 63),
(1322, 'San Narciso', 63),
(1323, 'Sariaya', 63),
(1324, 'Tagkawayan', 63),
(1325, 'Tayabas', 63),
(1326, 'Tiaong', 63),
(1327, 'Unisan', 63),
(1328, 'Aglipay', 64),
(1329, 'Cabarroguis', 64),
(1330, 'Diffun', 64),
(1331, 'Maddela', 64),
(1332, 'Nagtipunan', 64),
(1333, 'Saguday', 64),
(1334, 'Angono', 65),
(1335, 'Antipolo', 65),
(1336, 'Baras', 65),
(1337, 'Binangonan', 65),
(1338, 'Cainta', 65),
(1339, 'Cardona', 65),
(1340, 'Jalajala', 65),
(1341, 'Morong', 65),
(1342, 'Pililla', 65),
(1343, 'Rodriguez (Montalban)', 65),
(1344, 'San Mateo', 65),
(1345, 'Tanay', 65),
(1346, 'Taytay', 65),
(1347, 'Teresa', 65),
(1348, 'Alcantara', 66),
(1349, 'Banton (Jones)', 66),
(1350, 'Cajidiocan', 66),
(1351, 'Calatrava', 66),
(1352, 'Concepcion', 66),
(1353, 'Corcuera', 66),
(1354, 'Ferrol', 66),
(1355, 'Looc', 66),
(1356, 'Magdiwang', 66),
(1357, 'Odiongan', 66),
(1358, 'Romblon', 66),
(1359, 'San Agustin', 66),
(1360, 'San Andres', 66),
(1361, 'San Fernando', 66),
(1362, 'San Jose', 66),
(1363, 'Santa Fe', 66),
(1364, 'Santa Maria (Imelda)', 66),
(1365, 'Almagro', 67),
(1366, 'Basey', 67),
(1367, 'Calbayog', 67),
(1368, 'Calbiga', 67),
(1369, 'Catbalogan', 67),
(1370, 'Daram', 67),
(1371, 'Gandara', 67),
(1372, 'Hinabangan', 67),
(1373, 'Jiabong', 67),
(1374, 'Marabut', 67),
(1375, 'Matuguinao', 67),
(1376, 'Motiong', 67),
(1377, 'Pagsanghan', 67),
(1378, 'Paranas (Wright)', 67),
(1379, 'Pinabacdao', 67),
(1380, 'San Jorge', 67),
(1381, 'San Jose de Buan', 67),
(1382, 'San Sebastian', 67),
(1383, 'Santa Margarita', 67),
(1384, 'Santa Rita', 67),
(1385, 'Santo Niño', 67),
(1386, 'Tagapul-an', 67),
(1387, 'Talalora', 67),
(1388, 'Tarangnan', 67),
(1389, 'Villareal', 67),
(1390, 'Zumarraga', 67),
(1391, 'Alabel', 68),
(1392, 'Glan', 68),
(1393, 'Kiamba', 68),
(1394, 'Maasim', 68),
(1395, 'Maitum', 68),
(1396, 'Malapatan', 68),
(1397, 'Malungon', 68),
(1398, 'Enrique Villanueva', 69),
(1399, 'Larena', 69),
(1400, 'Lazi', 69),
(1401, 'Maria', 69),
(1402, 'San Juan', 69),
(1403, 'Siquijor', 69),
(1404, 'Barcelona', 70),
(1405, 'Bulan', 70),
(1406, 'Bulusan', 70),
(1407, 'Casiguran', 70),
(1408, 'Castilla', 70),
(1409, 'Donsol', 70),
(1410, 'Gubat', 70),
(1411, 'Irosin', 70),
(1412, 'Juban', 70),
(1413, 'Magallanes', 70),
(1414, 'Matnog', 70),
(1415, 'Pilar', 70),
(1416, 'Prieto Diaz', 70),
(1417, 'Santa Magdalena', 70),
(1418, 'Sorsogon City', 70),
(1419, 'Banga', 71),
(1420, 'General Santos (Dadiangas)', 71),
(1421, 'Koronadal', 71),
(1422, 'Lake Sebu', 71),
(1423, 'Norala', 71),
(1424, 'Polomolok', 71),
(1425, 'Santo Niño', 71),
(1426, 'Surallah', 71),
(1427, 'Tampakan', 71),
(1428, 'Tantangan', 71),
(1429, 'T\'Boli', 71),
(1430, 'Tupi', 71),
(1431, 'Anahawan', 72),
(1432, 'Bontoc', 72),
(1433, 'Hinunangan', 72),
(1434, 'Hinundayan', 72),
(1435, 'Libagon', 72),
(1436, 'Liloan', 72),
(1437, 'Limasawa', 72),
(1438, 'Maasin', 72),
(1439, 'Macrohon', 72),
(1440, 'Malitbog', 72),
(1441, 'Padre Burgos', 72),
(1442, 'Pintuyan', 72),
(1443, 'Saint Bernard', 72),
(1444, 'San Francisco', 72),
(1445, 'San Juan (Cabalian)', 72),
(1446, 'San Ricardo', 72),
(1447, 'Silago', 72),
(1448, 'Sogod', 72),
(1449, 'Tomas Oppus', 72),
(1450, 'Bagumbayan', 73),
(1451, 'Columbio', 73),
(1452, 'Esperanza', 73),
(1453, 'Isulan', 73),
(1454, 'Kalamansig', 73),
(1455, 'Lambayong (Mariano Marcos)', 73),
(1456, 'Lebak', 73),
(1457, 'Lutayan', 73),
(1458, 'Palimbang', 73),
(1459, 'President Quirino', 73),
(1460, 'Senator Ninoy Aquino', 73),
(1461, 'Tacurong', 73),
(1462, 'Banguingui (Tongkil)', 74),
(1463, 'Hadji Panglima Tahil (Marunggas)', 74),
(1464, 'Indanan', 74),
(1465, 'Jolo', 74),
(1466, 'Kalingalan Caluang', 74),
(1467, 'Lugus', 74),
(1468, 'Luuk', 74),
(1469, 'Maimbung', 74),
(1470, 'Old Panamao', 74),
(1471, 'Omar', 74),
(1472, 'Pandami', 74),
(1473, 'Panglima Estino (New Panamao)', 74),
(1474, 'Pangutaran', 74),
(1475, 'Parang', 74),
(1476, 'Pata', 74),
(1477, 'Patikul', 74),
(1478, 'Siasi', 74),
(1479, 'Talipao', 74),
(1480, 'Tapul', 74),
(1481, 'Alegria', 75),
(1482, 'Bacuag', 75),
(1483, 'Burgos', 75),
(1484, 'Claver', 75),
(1485, 'Dapa', 75),
(1486, 'Del Carmen', 75),
(1487, 'General Luna', 75),
(1488, 'Gigaquit', 75),
(1489, 'Mainit', 75),
(1490, 'Malimono', 75),
(1491, 'Pilar', 75),
(1492, 'Placer', 75),
(1493, 'San Benito', 75),
(1494, 'San Francisco (Anao-Aon)', 75),
(1495, 'San Isidro', 75),
(1496, 'Santa Monica (Sapao)', 75),
(1497, 'Sison', 75),
(1498, 'Socorro', 75),
(1499, 'Surigao City', 75),
(1500, 'Tagana-an', 75),
(1501, 'Tubod', 75),
(1502, 'Barobo', 76),
(1503, 'Bayabas', 76),
(1504, 'Bislig', 76),
(1505, 'Cagwait', 76),
(1506, 'Cantilan', 76),
(1507, 'Carmen', 76),
(1508, 'Carrascal', 76),
(1509, 'Cortes', 76),
(1510, 'Hinatuan', 76),
(1511, 'Lanuza', 76),
(1512, 'Lianga', 76),
(1513, 'Lingig', 76),
(1514, 'Madrid', 76),
(1515, 'Marihatag', 76),
(1516, 'San Agustin', 76),
(1517, 'San Miguel', 76),
(1518, 'Tagbina', 76),
(1519, 'Tago', 76),
(1520, 'Tandag', 76),
(1521, 'Anao', 77),
(1522, 'Bamban', 77),
(1523, 'Camiling', 77),
(1524, 'Capas', 77),
(1525, 'Concepcion', 77),
(1526, 'Gerona', 77),
(1527, 'La Paz', 77),
(1528, 'Mayantoc', 77),
(1529, 'Moncada', 77),
(1530, 'Paniqui', 77),
(1531, 'Pura', 77),
(1532, 'Ramos', 77),
(1533, 'San Clemente', 77),
(1534, 'San Jose', 77),
(1535, 'San Manuel', 77),
(1536, 'Santa Ignacia', 77),
(1537, 'Tarlac City', 77),
(1538, 'Victoria', 77),
(1539, 'Bongao', 78),
(1540, 'Languyan', 78),
(1541, 'Mapun (Cagayan de Tawi-Tawi)', 78),
(1542, 'Panglima Sugala (Balimbing)', 78),
(1543, 'Sapa-Sapa', 78),
(1544, 'Sibutu', 78),
(1545, 'Simunul', 78),
(1546, 'Sitangkai', 78),
(1547, 'South Ubian', 78),
(1548, 'Tandubas', 78),
(1549, 'Turtle Islands (Taganak)', 78),
(1550, 'Botolan', 79),
(1551, 'Cabangan', 79),
(1552, 'Candelaria', 79),
(1553, 'Castillejos', 79),
(1554, 'Iba', 79),
(1555, 'Masinloc', 79),
(1556, 'Olongapo', 79),
(1557, 'Palauig', 79),
(1558, 'San Antonio', 79),
(1559, 'San Felipe', 79),
(1560, 'San Marcelino', 79),
(1561, 'San Narciso', 79),
(1562, 'Santa Cruz', 79),
(1563, 'Subic', 79),
(1564, 'Baliguian', 80),
(1565, 'Dapitan', 80),
(1566, 'Dipolog', 80),
(1567, 'Godod', 80),
(1568, 'Gutalac', 80),
(1569, 'Jose Dalman (Ponot)', 80),
(1570, 'Kalawit', 80),
(1571, 'Katipunan', 80),
(1572, 'La Libertad', 80),
(1573, 'Labason', 80),
(1574, 'Leon B. Postigo (Bacungan)', 80),
(1575, 'Liloy', 80),
(1576, 'Manukan', 80),
(1577, 'Mutia', 80),
(1578, 'Piñan (New Piñan)', 80),
(1579, 'Polanco', 80),
(1580, 'President Manuel A. Roxas', 80),
(1581, 'Rizal', 80),
(1582, 'Salug', 80),
(1583, 'Sergio Osmeña Sr.', 80),
(1584, 'Siayan', 80),
(1585, 'Sibuco', 80),
(1586, 'Sibutad', 80),
(1587, 'Sindangan', 80),
(1588, 'Siocon', 80),
(1589, 'Sirawai', 80),
(1590, 'Tampilisan', 80),
(1591, 'Aurora', 81),
(1592, 'Bayog', 81),
(1593, 'Dimataling', 81),
(1594, 'Dinas', 81),
(1595, 'Dumalinao', 81),
(1596, 'Dumingag', 81),
(1597, 'Guipos', 81),
(1598, 'Josefina', 81),
(1599, 'Kumalarang', 81),
(1600, 'Labangan', 81),
(1601, 'Lakewood', 81),
(1602, 'Lapuyan', 81),
(1603, 'Mahayag', 81),
(1604, 'Margosatubig', 81),
(1605, 'Midsalip', 81),
(1606, 'Molave', 81),
(1607, 'Pagadian', 81),
(1608, 'Pitogo', 81),
(1609, 'Ramon Magsaysay (Liargo)', 81),
(1610, 'San Miguel', 81),
(1611, 'San Pablo', 81),
(1612, 'Sominot (Don Mariano Marcos)', 81),
(1613, 'Tabina', 81),
(1614, 'Tambulig', 81),
(1615, 'Tigbao', 81),
(1616, 'Tukuran', 81),
(1617, 'Vincenzo A. Sagun', 81),
(1618, 'Zamboanga City', 81),
(1619, 'Alicia', 82),
(1620, 'Buug', 82),
(1621, 'Diplahan', 82),
(1622, 'Imelda', 82),
(1623, 'Ipil', 82),
(1624, 'Kabasalan', 82),
(1625, 'Mabuhay', 82),
(1626, 'Malangas', 82),
(1627, 'Naga', 82),
(1628, 'Olutanga', 82),
(1629, 'Payao', 82),
(1630, 'Roseller Lim', 82),
(1631, 'Siay', 82),
(1632, 'Talusan', 82),
(1633, 'Titay', 82),
(1634, 'Tungawan', 82);

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
(3, '2019_01_15_080258_create_articles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` int(11) NOT NULL,
  `province` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `province`) VALUES
(1, 'Abra'),
(2, 'Agusan Del Norte'),
(3, 'Agusan Del Sur'),
(4, 'Aklan'),
(5, 'Albay'),
(6, 'Antique'),
(7, 'Apayao'),
(8, 'Aurora'),
(9, 'Basilan'),
(10, 'Bataan'),
(11, 'Batanes'),
(12, 'Batangas'),
(13, 'Benguet'),
(14, 'Biliran'),
(15, 'Bohol'),
(16, 'Bukidnon'),
(17, 'Bulacan'),
(18, 'Cagayan'),
(19, 'Camarines Norte'),
(20, 'Camarines Sur'),
(21, 'Camiguin'),
(22, 'Capiz'),
(23, 'Catanduanes'),
(24, 'Cavite'),
(25, 'Cebu'),
(26, 'Compostella Valley'),
(27, 'Cotabato'),
(28, 'Davao Del Norte'),
(29, 'Davao Del Sur'),
(30, 'Davao Occidental'),
(31, 'Davao Oriental'),
(32, 'Dinagat Islands'),
(33, 'Eastern Samar'),
(34, 'Guimaras'),
(35, 'Ifugao'),
(36, 'Ilocos Norte'),
(37, 'Ilocos Sur'),
(38, 'Iloilo'),
(39, 'Isabela'),
(40, 'Kalinga'),
(41, 'La Union'),
(42, 'Laguna'),
(43, 'Lanao Del Norte'),
(44, 'Lanao Del Sur'),
(45, 'Leyte M'),
(46, 'Maguindanao'),
(47, 'Marinduque'),
(48, 'Masbate'),
(49, 'Metro Manila'),
(50, 'Misamis Occidental'),
(51, 'Misamis Oriental'),
(52, 'Mountain Province'),
(53, 'Negros Occidental'),
(54, 'Negros Oriental'),
(55, 'Northern Samar'),
(56, 'Nueva Ecija'),
(57, 'Nueva Vizcaya'),
(58, 'Occidental Mindoro'),
(59, 'Oriental Mindoro'),
(60, 'Palawan'),
(61, 'Pampanga'),
(62, 'Pangasinan'),
(63, 'Quezon'),
(64, 'Quirino R'),
(65, 'Rizal'),
(66, 'Romblon'),
(67, 'Samar'),
(68, 'Sarangani'),
(69, 'Siquijor'),
(70, 'Sorsogon'),
(71, 'South Cotabato'),
(72, 'Southern Leyte'),
(73, 'Sultan Kudarat'),
(74, 'Sulu'),
(75, 'Surigao Del Norte'),
(76, 'Surigao Del Sur'),
(77, 'Tarlac'),
(78, 'Tawi-Tawi'),
(79, 'Zambales'),
(80, 'Zamboanga Del Norte'),
(81, 'Zamboanga Del Sur'),
(82, 'Zamboanga Sibugay');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barangays`
--
ALTER TABLE `barangays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
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
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `barangays`
--
ALTER TABLE `barangays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1635;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `nutritech`
--
CREATE DATABASE IF NOT EXISTS `nutritech` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `nutritech`;

-- --------------------------------------------------------

--
-- Table structure for table `currency_rates`
--

CREATE TABLE `currency_rates` (
  `id` int(11) NOT NULL,
  `usd_rate` decimal(8,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency_rates`
--

INSERT INTO `currency_rates` (`id`, `usd_rate`) VALUES
(1, '52.584039');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_class_id` int(11) NOT NULL,
  `item_description` varchar(255) NOT NULL,
  `unit_price` decimal(18,2) NOT NULL,
  `nsp` decimal(18,2) NOT NULL,
  `item_photo` varchar(255) NOT NULL,
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_id`, `item_class_id`, `item_description`, `unit_price`, `nsp`, `item_photo`, `sequence`) VALUES
(1, 3201, 1, 'ULTRA TECH OIL SKILLET - 220V', '57960.00', '51750.00', 'dining/cookwarespecials/ut/ut.png', 1),
(2, 3253, 1, 'ULTRA TECH OIL SKILLET - 110V', '59920.00', '53500.00', 'dining/cookwarespecials/ut/ut.png', 1),
(3, 3948, 1, 'ADVANCED ULTRA CORE ELECTRIC OIL SKILLET W/ GLASS COVER - 220V', '69860.00', '62375.00', 'dining/cookwarespecials/uc/ucglass.png', 4),
(4, 3949, 1, 'ADVANCED ULTRA CORE ELECTRIC OIL SKILLET W/ GLASS COVER - 110V', '71470.00', '63812.50', 'dining/cookwarespecials/uc/ucglass.png', 4),
(5, 2538, 1, 'MAGIC COOKER - 110V', '76636.00', '68425.00', 'dining/cookwarespecials/mc/mc.png', 5),
(6, 455, 1, 'MAGIC COOKER - 220V', '74900.00', '66875.00', 'dining/cookwarespecials/mc/mc.png', 6),
(7, 2005, 1, 'MEGA CONTACT GRILL TOASTER - 220V', '42840.00', '38250.00', 'dining/cookwarespecials/mcgt/mcgt.png', 7),
(8, 2016, 1, 'MEGA CONTACT GRILL TOASTER - 110V', '44520.00', '39750.00', 'dining/cookwarespecials/mcgt/mcgt.png', 8),
(9, 4001, 1, 'AUTOMATIC MAGIC ALL S/S MULTI-RICE COOKWARE - 110V', '46480.00', '41500.00', 'dining/rck.png', 9),
(10, 3998, 1, 'AUTOMATIC MAGIC ALL S/S MULTI-RICE COOKWARE - 220V', '44800.00', '40000.00', 'dining/rck.png', 10),
(11, 3542, 1, 'CHAFING DISH WITH S/S COVER', '37940.00', '33875.00', 'dining/cookwarespecials/cd/cd.png', 12),
(12, 1076, 1, 'COLOSSAL OVAL FISH POACHER ', '36400.00', '32500.00', 'dining/cookwarespecials/cofp/cofp.png', 12),
(13, 2908, 1, 'PRESIDENT ROUND GRILL PAN W/ SPOUT', '19800.00', '17670.00', 'dining/cookwarespecials/prgp/prgp.png', 13),
(14, 3537, 1, 'LIFESTYLE PAN WITH COVER - MARBLE COATING', '14560.00', '13000.00', 'dining/cookwarespecials/lifestylepan/lpcmc.png', 14),
(15, 3545, 2, 'ELEGANT MEAL KIT', '13580.00', '12125.00', 'giving/emk.png', 0),
(16, 1155, 2, 'THERMOTECH ', '9968.00', '8900.00', 'giving/ttech.png', 5),
(17, 3321, 2, 'TUMBLERTECH', '3920.00', '3500.00', 'giving/tblr.png', 6),
(18, 3370, 2, 'LARGE OVAL TRAY WITH DOME COVER', '19800.00', '17678.57', 'giving/lotc.png', 7),
(19, 3450, 2, 'ULTIMATE WHISTLING KETTLE', '13580.00', '12125.00', 'dining/uwk.png', 8),
(20, 2910, 2, '6PC MULTI-FUNCTIONAL MESH STRAINER SET', '9968.00', '8900.00', 'giving/strainer.png', 9),
(21, 2013, 2, '8PC KITCHEN SPECIALTY ITEMS', '23380.00', '20875.00', 'giving/ksi.png', 10),
(22, 963, 2, 'CAN OPENER S/S', '1960.00', '1750.00', 'giving/co.png', 11),
(23, 2912, 2, 'CERAMIC PEELER', '840.00', '750.00', 'giving/cp.png', 12),
(24, 1632, 2, 'SUPREME MULTI-FUNCTION KITCHEN SHEAR ', '3920.00', '3500.00', 'giving/ks.png', 14),
(25, 1147, 2, 'VACUUM FRESH SET', '20860.00', '18625.00', 'giving/vfs.png', 17),
(26, 969, 3, 'JUICE MASTER PROFESSIONAL - 110V', '59920.00', '53500.00', 'living/jm1_a.png', 0),
(27, 1827, 3, 'JUICE MASTER PROFESSIONAL - 220V', '57960.00', '51750.00', 'living/jm1_a.png', 0),
(28, 3548, 3, 'FOOD BLENDER TECH - 220V', '59920.00', '53500.00', 'living/fbtech.png', 0),
(29, 3549, 3, 'FOOD BLENDER TECH - 110V', '62720.00', '56000.00', 'living/fbtech.png', 0),
(30, 3527, 3, 'COFFEETECH DELUXE - FRESH BREW 220V', '42840.00', '38250.00', 'giving/coffee-tech.png', 3),
(31, 3531, 3, 'COFFEETECH DELUXE - FRESH BREW 110V', '44520.00', '39750.00', 'giving/coffee-tech.png', 3),
(32, 3448, 4, '4PC UNIVERSAL 5-PLY STEAMER WOK', '42840.00', '38250.00', 'living/owok.png', 0),
(33, 1153, 4, '2 QT SAUCEPAN - STARTER', '12320.00', '11000.00', 'dining/2qtstarter.png', 0),
(34, 1892, 4, '2 QT SAUCEPAN - 5 PLY COOKWARE', '13580.00', '12125.00', 'dining/2qt.png', 1),
(35, 3449, 4, '8PC JUMBO COOKWARE SET', '78680.00', '70250.00', 'dining/8pc-jumbo.png', 3),
(36, 2913, 4, '7PC STARTER SET WITH JCS DOME COVER', '48440.00', '43250.00', 'dining/touchofclass/7pcstarter/starterset.png', 4),
(37, 958, 4, '3PC COLANDER SET - 5-PLY', '36400.00', '32500.00', 'dining/colander.png', 5),
(38, 1888, 4, '1.5 QT SAUCEPAN - 5 PLY COOKWARE', '12880.00', '11500.00', 'dining/1.5qt.png', 7),
(39, 1887, 4, '11PC FAMILY COOKWARE SET - 5 PLY', '78680.00', '70250.00', 'dining/touchofclass/11pc/11pc.png', 8),
(40, 2051, 4, '12QT DUTCH OVEN WITH WHISTLING KNOB COVER', '29700.00', '26510.00', 'dining/touchofclass/12qt.png', 9),
(41, 972, 4, '24QTS STOCK POT WITH VENTED KNOB COVER', '36400.00', '32500.00', 'dining/24qt.png', 10),
(42, 2914, 4, '3PC JUNIOR COLANDER SET W/ COVER - STARTER', '26460.00', '23625.00', 'dining/jcs.png', 11),
(43, 1901, 4, '6QT DUTCH OVEN W/ COVER - 5 PLY COOKWARE', '29700.00', '26510.00', 'dining/6qt.png', 12),
(44, 1904, 4, '9 1/2\" FRYING PAN WITH COVER - 5 PLY COOKWARE', '17500.00', '15625.00', 'dining/9fyringpan.png', 13),
(45, 1741, 5, 'CRYSTAL FLUTE - LUDOVICA FRANCIS', '2240.00', '2000.00', 'dining/flute.png', 1),
(46, 1740, 5, 'CRYSTAL GOBLET - LUDOVICA FRANCIS', '2240.00', '2000.00', 'dining/goblet.png', 2),
(47, 1742, 5, 'CRYSTAL WINE - LUDOVICA FRANCIS', '2240.00', '2000.00', 'dining/wine.png', 3),
(48, 1739, 5, 'CRYSTAL GLASS - LUDOVICA FRANCIS', '2240.00', '2000.00', 'dining/glass.png', 4),
(49, 3700, 5, 'CRYSTAL DECANTER BOTTLE - LUDOVICA FRANCIS', '20860.00', '18625.00', 'dining/decanter.png', 5),
(50, 1672, 5, '1X4 LUDOVICA FRANCIS FINE CRYSTAL COLLECTION', '7980.00', '7125.00', 'dining/1x4.png', 6),
(51, 1687, 5, '4X4 LUDOVICA FRANCIS FINE CRYSTAL COLLECTION', '28140.00', '25125.00', 'dining/4x4.png', 7),
(52, 1647, 6, 'COMPLETER SET I PACKAGE - PRINCE THOBIAN', '37940.00', '33875.00', 'dining/completers1package.png', 0),
(53, 3457, 6, 'COMPLETER SET I PACKAGE - BARON FRANCIS', '39900.00', '35625.00', 'dining/completers1package.png', 0),
(54, 3456, 6, 'COMPLETER SET I INDIVIDUAL - BARON FRANCIS', '11620.00', '10375.00', 'dining/completers1.png', 1),
(55, 1666, 6, 'COMPLETER SET I INDIVIDUAL - PRINCE THOBIAN', '10780.00', '9625.00', 'dining/completers1.png', 1),
(56, 1648, 6, 'COMPLETER SET II INDIVIDUAL - PRINCE THOBIAN', '66920.00', '59750.00', 'dining/completers2.png', 3),
(57, 3458, 6, 'COMPLETER SET II INDIVIDUAL - BARON FRANCIS', '70840.00', '63250.00', 'dining/completers2.png', 3),
(58, 3455, 6, '5PC BASIC SERVING SET BARON FRANCIS', '29400.00', '26250.00', 'dining/5basic.png', 4),
(59, 1646, 6, '5PC BASIC SERVING SET PRINCE THOBIAN', '27860.00', '24875.00', 'dining/5basic.png', 4),
(60, 1645, 6, '4X3 PC SETTING - PRINCE THOBIAN', '37940.00', '33875.00', 'dining/4x3.png', 5),
(61, 3454, 6, '4X3 PC SETTING - BARON FRANCIS', '39900.00', '35625.00', 'dining/4x3.png', 5),
(62, 2140, 7, '72PC ADRIAN FINE TABLEWARE SET', '70420.00', '62875.00', 'dining/72pc.png', 0),
(63, 3371, 7, '4X5 PC PLACE SETTING ADRIAN TABLEWARE W/ INLAID GOLD', '24220.00', '21625.00', 'dining/4x5.png', 0),
(64, 3372, 7, '12 SERVING PCS ADRIAN TABLEWARE WITH INLAID GOLD', '27720.00', '24750.00', 'dining/12pc.png', 0),
(65, 3452, 7, '3PC BASIC GIFT SET - ADRIAN FINE TABLEWARE INLAID GOLD COLLECTION', '5600.00', '5000.00', 'giving/3pcs.png', 12),
(66, 2915, 8, '10\" CERAMIC WATER FILTER W/ CARBON CARTRIDGE', '29700.00', '26510.00', 'living/cwf.png', 0),
(67, 2113, 12, '6PC STEAK KNIFE WITH WOODEN CASE (4.5\")', '14560.00', '13000.00', 'dining/6pcsteak.png', 0),
(68, 962, 12, '9 PC BASIC GOURMET SET WITH KNIFE BLOCK', '36400.00', '32500.00', 'dining/9pc.png', 1),
(69, 961, 12, '16PC GOURMET SET W/ KNIFE BLOCK', '45500.00', '40625.00', 'dining/16pc.png', 3),
(70, 960, 12, '19PC HOMEMAKER SET', '56140.00', '50125.00', 'dining/19pc.png', 5),
(71, 2917, 12, 'CHOP & DROP CUTTING BOARD - RECTANGLE', '8540.00', '7625.00', 'dining/cb_rec.png', 6),
(72, 3441, 14, 'AIRTECH PURIFIER WITH GWMX - 220V', '114800.00', '102500.00', 'living/atech.png', 0),
(73, 3442, 14, 'AIRTECH PURIFIER WITH GWMX - 110V', '119840.00', '107000.00', 'living/atech.png', 0),
(74, 3443, 14, 'AIRTECH - CARTRIDGE SET W/ GWMX', '11850.00', '10580.00', 'living/atech_filter.png', 0),
(75, 3451, 14, 'OUTDOOR MIST FAN HUMIDIFIER 220V', '39760.00', '35500.00', 'living/mist_fan.png', 0),
(76, 3505, 14, 'OUTDOOR MIST FAN HUMIDIFIER 110V', '41440.00', '37000.00', 'living/mist_fan.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `item_class`
--

CREATE TABLE `item_class` (
  `id` int(11) NOT NULL,
  `item_class_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_class`
--

INSERT INTO `item_class` (`id`, `item_class_description`) VALUES
(1, 'COOKWARE \"SPECIALS\"'),
(2, 'FAST BREAK ITEM / KITCHEN ACCESSORIES'),
(3, 'JUICE EXTRACTION & FOOD PROCESSING  SYSTEM'),
(4, 'COOKWARE \"A TOUCH OF CLASS\"'),
(5, 'FINE CRYSTAL COLLECTION'),
(6, 'FINE BONE CHINA COLLECTION'),
(7, 'FINE TABLEWARE COLLECTION'),
(8, 'WATER FILTER SYSTEM'),
(9, 'SPARE PARTS'),
(10, 'MARKETING SOUVENIR ITEMS'),
(11, 'MARKETING MATERIALS'),
(12, 'FINE CUTLERY COLLECTION'),
(13, 'FIRST CLASS COLLECTION'),
(14, 'AIR PURIFICATION SYSTEM');

-- --------------------------------------------------------

--
-- Table structure for table `item_packages`
--

CREATE TABLE `item_packages` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_img` varchar(255) NOT NULL,
  `product_code` varchar(50) NOT NULL,
  `sequence` int(11) NOT NULL,
  `unit_price` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_packages`
--

INSERT INTO `item_packages` (`id`, `product_name`, `product_img`, `product_code`, `sequence`, `unit_price`) VALUES
(1, 'GRANDSLAM PACKAGE', 'collection/grandslam.png', 'MJURWAMBDC197117', 1, '895020.00'),
(2, 'BABY GRANDSLAM PACKAGE', 'collection/baby_g.png', 'MJURMA711', 2, '481320.00'),
(3, 'WESTERN BONANZA PACKAGE', 'collection/western.png', 'MJURMW', 3, '316680.00'),
(4, 'EASTERN BONANZA - PRINCE THOBIAN', 'collection/eastern.png', 'PTCRC1C2', 4, '191100.00'),
(5, 'EASTERN BONANZA - BARON FRANCIS', 'collection/eastern.png', 'BFCRC1C2', 5, '199920.00'),
(6, 'ATLANTIC BONANZA - PRINCE THOBIAN', 'collection/atlantic.png', 'PTCR7219', 6, '218820.00'),
(7, 'ATLANTIC BONANZA - BARON FRANCIS', 'collection/atlantic.png', 'BFCR7219', 7, '222600.00'),
(8, 'PACIFIC BONANZA PACKAGE', 'collection/pacific.png', 'MJUR', 8, '207060.00'),
(9, 'NORTHERN BONANZA PACKAGE', 'collection/northern.png', 'FBJ19', 9, '207900.00'),
(10, 'SOUTHERN BONANZA PACKAGE', 'collection/southern.png', 'MACJB', 10, '290640.00'),
(11, '31PC MASTER COOKWARE PACKAGE', 'collection/31pc.png', '31PC', 11, '248220.00');

-- --------------------------------------------------------

--
-- Table structure for table `promo_items`
--

CREATE TABLE `promo_items` (
  `id` int(11) NOT NULL,
  `promo_id` int(11) NOT NULL,
  `promo_code` varchar(50) NOT NULL,
  `promo_description` varchar(255) NOT NULL,
  `promo_period_from` datetime NOT NULL,
  `promo_period_to` datetime NOT NULL,
  `pse` decimal(18,2) NOT NULL,
  `item_package_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `promo_type`
--

CREATE TABLE `promo_type` (
  `id` int(11) NOT NULL,
  `promo_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promo_type`
--

INSERT INTO `promo_type` (`id`, `promo_type`) VALUES
(1, 'MONTHLY'),
(2, 'BOOSTER'),
(3, 'SPECIALS'),
(4, 'SLASH'),
(5, 'PRESIDENT'),
(6, 'ICE BREAKER'),
(7, 'MANAGERS GATHERING'),
(8, 'CONVENTION'),
(9, 'CLEARANCE SALES'),
(10, 'TRAVEL LIFESTYLE'),
(11, 'BASIC SELLING SKILLS'),
(12, 'FIESTRAVAGANZA'),
(13, 'FASTRACK'),
(14, 'EAGLE'),
(15, 'HAPPY DAY ESCAPADE'),
(16, 'FASTBREAK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `currency_rates`
--
ALTER TABLE `currency_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_id` (`item_id`);

--
-- Indexes for table `item_class`
--
ALTER TABLE `item_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo_items`
--
ALTER TABLE `promo_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo_type`
--
ALTER TABLE `promo_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `currency_rates`
--
ALTER TABLE `currency_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `item_class`
--
ALTER TABLE `item_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `promo_items`
--
ALTER TABLE `promo_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promo_type`
--
ALTER TABLE `promo_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
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
  `id` int(11) NOT NULL,
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
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
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
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
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
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'ci_shop', 'ci_sessions', '{\"CREATE_TIME\":\"2018-06-25 16:09:03\"}', '2018-06-25 10:53:03'),
('root', 'ci_shop', 'site_cookies', '{\"CREATE_TIME\":\"2018-06-21 17:08:40\",\"col_order\":[0,1,2,3],\"col_visib\":[1,1,1,1]}', '2018-06-21 11:25:46');

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
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-01-29 03:23:22', '{\"Console\\/Mode\":\"collapse\"}');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
