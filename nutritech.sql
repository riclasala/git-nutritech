-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2019 at 09:07 AM
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
-- Database: `nutritech`
--

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
(1, '52.445499');

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
  `product_name` varchar(100) NOT NULL,
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
-- Indexes for table `item_packages`
--
ALTER TABLE `item_packages`
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
-- AUTO_INCREMENT for table `item_packages`
--
ALTER TABLE `item_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
