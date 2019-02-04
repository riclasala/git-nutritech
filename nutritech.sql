-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2019 at 04:23 AM
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
(1, '52.310375');

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
  `pse` decimal(18,2) NOT NULL,
  `item_photo` varchar(255) NOT NULL,
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_id`, `item_class_id`, `item_description`, `unit_price`, `nsp`, `pse`, `item_photo`, `sequence`) VALUES
(1, 3201, 1, 'ULTRA TECH OIL SKILLET - 220V', '57960.00', '51750.00', '0.00', 'dining/cookwarespecials/ut/ut.png', 1),
(2, 3253, 1, 'ULTRA TECH OIL SKILLET - 110V', '59920.00', '53500.00', '0.00', 'dining/cookwarespecials/ut/ut.png', 1),
(3, 3948, 1, 'ADVANCED ULTRA CORE ELECTRIC OIL SKILLET W/ GLASS COVER - 220V', '69860.00', '62375.00', '0.00', 'dining/cookwarespecials/uc/ucglass.png', 4),
(4, 3949, 1, 'ADVANCED ULTRA CORE ELECTRIC OIL SKILLET W/ GLASS COVER - 110V', '71470.00', '63812.50', '0.00', 'dining/cookwarespecials/uc/ucglass.png', 4),
(5, 2538, 1, 'MAGIC COOKER - 110V', '76636.00', '68425.00', '0.00', 'dining/cookwarespecials/mc/mc.png', 5),
(6, 455, 1, 'MAGIC COOKER - 220V', '74900.00', '66875.00', '0.00', 'dining/cookwarespecials/mc/mc.png', 6),
(7, 2005, 1, 'MEGA CONTACT GRILL TOASTER - 220V', '42840.00', '38250.00', '0.00', 'dining/cookwarespecials/mcgt/mcgt.png', 7),
(8, 2016, 1, 'MEGA CONTACT GRILL TOASTER - 110V', '44520.00', '39750.00', '0.00', 'dining/cookwarespecials/mcgt/mcgt.png', 8),
(9, 4001, 1, 'AUTOMATIC MAGIC ALL S/S MULTI-RICE COOKWARE - 110V', '46480.00', '41500.00', '0.00', 'dining/rck.png', 9),
(10, 3998, 1, 'AUTOMATIC MAGIC ALL S/S MULTI-RICE COOKWARE - 220V', '44800.00', '40000.00', '0.00', 'dining/rck.png', 10),
(11, 3542, 1, 'CHAFING DISH WITH S/S COVER', '37940.00', '33875.00', '0.00', 'dining/cookwarespecials/cd/cd.png', 12),
(12, 1076, 1, 'COLOSSAL OVAL FISH POACHER ', '36400.00', '32500.00', '0.00', 'dining/cookwarespecials/cofp/cofp.png', 12),
(13, 2908, 1, 'PRESIDENT ROUND GRILL PAN W/ SPOUT', '19800.00', '17670.00', '0.00', 'dining/cookwarespecials/prgp/prgp.png', 13),
(14, 3537, 1, 'LIFESTYLE PAN WITH COVER - MARBLE COATING', '14560.00', '13000.00', '0.00', 'dining/cookwarespecials/lifestylepan/lpcmc.png', 14),
(15, 3545, 2, 'ELEGANT MEAL KIT', '13580.00', '12125.00', '0.00', 'giving/emk.png', 0),
(16, 1155, 2, 'THERMOTECH ', '9968.00', '8900.00', '2000.00', 'giving/ttech.png', 5),
(17, 3321, 2, 'TUMBLERTECH', '3920.00', '3500.00', '1000.00', 'giving/tblr.png', 6),
(18, 3370, 2, 'LARGE OVAL TRAY WITH DOME COVER', '19800.00', '17670.00', '0.00', 'giving/lotc.png', 7),
(19, 3450, 2, 'ULTIMATE WHISTLING KETTLE', '13580.00', '12125.00', '0.00', 'dining/uwk.png', 8),
(20, 2910, 2, '6PC MULTI-FUNCTIONAL MESH STRAINER SET', '9968.00', '8900.00', '2000.00', 'giving/strainer.png', 9),
(21, 2013, 2, '8PC KITCHEN SPECIALTY ITEMS', '23380.00', '20875.00', '0.00', 'giving/ksi.png', 10),
(22, 963, 2, 'CAN OPENER S/S', '1960.00', '1750.00', '500.00', 'giving/co.png', 11),
(23, 2912, 2, 'CERAMIC PEELER', '840.00', '750.00', '200.00', 'giving/cp.png', 12),
(24, 1632, 2, 'SUPREME MULTI-FUNCTION KITCHEN SHEAR ', '3920.00', '3500.00', '1000.00', 'giving/ks.png', 14),
(25, 1147, 2, 'VACUUM FRESH SET', '20860.00', '18625.00', '0.00', 'giving/vfs.png', 17),
(26, 969, 3, 'JUICE MASTER PROFESSIONAL - 110V', '59920.00', '53500.00', '0.00', 'living/jm1_a.png', 0),
(27, 1827, 3, 'JUICE MASTER PROFESSIONAL - 220V', '57960.00', '51750.00', '0.00', 'living/jm1_a.png', 0),
(28, 3548, 3, 'FOOD BLENDER TECH - 220V', '59920.00', '53500.00', '15000.00', 'living/fbtech.png', 0),
(29, 3549, 3, 'FOOD BLENDER TECH - 110V', '62720.00', '56000.00', '15000.00', 'living/fbtech.png', 0),
(30, 3527, 3, 'COFFEETECH DELUXE - FRESH BREW 220V', '42840.00', '38250.00', '0.00', 'giving/coffee-tech.png', 3),
(31, 3531, 3, 'COFFEETECH DELUXE - FRESH BREW 110V', '44520.00', '39750.00', '0.00', 'giving/coffee-tech.png', 3),
(32, 3448, 4, '4PC UNIVERSAL 5-PLY STEAMER WOK', '42840.00', '38250.00', '0.00', 'living/owok.png', 0),
(33, 1153, 4, '2 QT SAUCEPAN - STARTER', '12320.00', '11000.00', '0.00', 'dining/2qtstarter.png', 0),
(34, 1892, 4, '2 QT SAUCEPAN - 5 PLY COOKWARE', '13580.00', '12125.00', '0.00', 'dining/2qt.png', 1),
(35, 3449, 4, '8PC JUMBO COOKWARE SET', '78680.00', '70250.00', '0.00', 'dining/8pc-jumbo.png', 3),
(36, 2913, 4, '7PC STARTER SET WITH JCS DOME COVER', '48440.00', '43250.00', '0.00', 'dining/touchofclass/7pcstarter/starterset.png', 4),
(37, 958, 4, '3PC COLANDER SET - 5-PLY', '36400.00', '32500.00', '0.00', 'dining/colander.png', 5),
(38, 1888, 4, '1.5 QT SAUCEPAN - 5 PLY COOKWARE', '12880.00', '11500.00', '0.00', 'dining/1.5qt.png', 7),
(39, 1887, 4, '11PC FAMILY COOKWARE SET - 5 PLY', '78680.00', '70250.00', '0.00', 'dining/touchofclass/11pc/11pc.png', 8),
(40, 2051, 4, '12QT DUTCH OVEN WITH WHISTLING KNOB COVER', '29700.00', '26510.00', '0.00', 'dining/touchofclass/12qt.png', 9),
(41, 972, 4, '24QTS STOCK POT WITH VENTED KNOB COVER', '36400.00', '32500.00', '0.00', 'dining/24qt.png', 10),
(42, 2914, 4, '3PC JUNIOR COLANDER SET W/ COVER - STARTER', '26460.00', '23625.00', '0.00', 'dining/jcs.png', 11),
(43, 1901, 4, '6QT DUTCH OVEN W/ COVER - 5 PLY COOKWARE', '29700.00', '26510.00', '0.00', 'dining/6qt.png', 12),
(44, 1904, 4, '9 1/2\" FRYING PAN WITH COVER - 5 PLY COOKWARE', '17500.00', '15625.00', '0.00', 'dining/9fyringpan.png', 13),
(45, 1741, 5, 'CRYSTAL FLUTE - LUDOVICA FRANCIS', '2240.00', '2000.00', '0.00', 'dining/flute.png', 1),
(46, 1740, 5, 'CRYSTAL GOBLET - LUDOVICA FRANCIS', '2240.00', '2000.00', '0.00', 'dining/goblet.png', 2),
(47, 1742, 5, 'CRYSTAL WINE - LUDOVICA FRANCIS', '2240.00', '2000.00', '0.00', 'dining/wine.png', 3),
(48, 1739, 5, 'CRYSTAL GLASS - LUDOVICA FRANCIS', '2240.00', '2000.00', '0.00', 'dining/glass.png', 4),
(49, 3700, 5, 'CRYSTAL DECANTER BOTTLE - LUDOVICA FRANCIS', '20860.00', '18625.00', '0.00', 'dining/decanter.png', 5),
(50, 1672, 5, '1X4 LUDOVICA FRANCIS FINE CRYSTAL COLLECTION', '7980.00', '7125.00', '0.00', 'dining/1x4.png', 6),
(51, 1687, 5, '4X4 LUDOVICA FRANCIS FINE CRYSTAL COLLECTION', '28140.00', '25125.00', '0.00', 'dining/4x4.png', 7),
(52, 1647, 6, 'COMPLETER SET I PACKAGE - PRINCE THOBIAN', '37940.00', '33875.00', '0.00', 'dining/completers1package.png', 0),
(53, 3457, 6, 'COMPLETER SET I PACKAGE - BARON FRANCIS', '39900.00', '35625.00', '0.00', 'dining/completers1package.png', 0),
(54, 3456, 6, 'COMPLETER SET I INDIVIDUAL - BARON FRANCIS', '11620.00', '10375.00', '0.00', 'dining/completers1.png', 1),
(55, 1666, 6, 'COMPLETER SET I INDIVIDUAL - PRINCE THOBIAN', '10780.00', '9625.00', '0.00', 'dining/completers1.png', 1),
(56, 1648, 6, 'COMPLETER SET II INDIVIDUAL - PRINCE THOBIAN', '66920.00', '59750.00', '0.00', 'dining/completers2.png', 3),
(57, 3458, 6, 'COMPLETER SET II INDIVIDUAL - BARON FRANCIS', '70840.00', '63250.00', '0.00', 'dining/completers2.png', 3),
(58, 3455, 6, '5PC BASIC SERVING SET BARON FRANCIS', '29400.00', '26250.00', '0.00', 'dining/5basic.png', 4),
(59, 1646, 6, '5PC BASIC SERVING SET PRINCE THOBIAN', '27860.00', '24875.00', '0.00', 'dining/5basic.png', 4),
(60, 1645, 6, '4X3 PC SETTING - PRINCE THOBIAN', '37940.00', '33875.00', '0.00', 'dining/4x3.png', 5),
(61, 3454, 6, '4X3 PC SETTING - BARON FRANCIS', '39900.00', '35625.00', '0.00', 'dining/4x3.png', 5),
(62, 2140, 7, '72PC ADRIAN FINE TABLEWARE SET', '70420.00', '62875.00', '0.00', 'dining/72pc.png', 0),
(63, 3371, 7, '4X5 PC PLACE SETTING ADRIAN TABLEWARE W/ INLAID GOLD', '24220.00', '21625.00', '0.00', 'dining/4x5.png', 0),
(64, 3372, 7, '12 SERVING PCS ADRIAN TABLEWARE WITH INLAID GOLD', '27720.00', '24750.00', '0.00', 'dining/12pc.png', 0),
(65, 3452, 7, '3PC BASIC GIFT SET - ADRIAN FINE TABLEWARE INLAID GOLD COLLECTION', '5600.00', '5000.00', '0.00', 'giving/3pcs.png', 12),
(66, 2915, 8, '10\" CERAMIC WATER FILTER W/ CARBON CARTRIDGE', '29700.00', '26510.00', '0.00', 'living/cwf.png', 0),
(67, 2113, 12, '6PC STEAK KNIFE WITH WOODEN CASE (4.5\")', '14560.00', '13000.00', '0.00', 'dining/6pcsteak.png', 0),
(68, 962, 12, '9 PC BASIC GOURMET SET WITH KNIFE BLOCK', '36400.00', '32500.00', '0.00', 'dining/9pc.png', 1),
(69, 961, 12, '16PC GOURMET SET W/ KNIFE BLOCK', '45500.00', '40625.00', '0.00', 'dining/16pc.png', 3),
(70, 960, 12, '19PC HOMEMAKER SET', '56140.00', '50125.00', '0.00', 'dining/19pc.png', 5),
(71, 2917, 12, 'CHOP & DROP CUTTING BOARD - RECTANGLE', '8540.00', '7625.00', '0.00', 'dining/cb_rec.png', 6),
(72, 3441, 14, 'AIRTECH PURIFIER WITH GWMX - 220V', '114800.00', '102500.00', '0.00', 'living/atech.png', 0),
(73, 3442, 14, 'AIRTECH PURIFIER WITH GWMX - 110V', '119840.00', '107000.00', '0.00', 'living/atech.png', 0),
(74, 3443, 14, 'AIRTECH - CARTRIDGE SET W/ GWMX', '11850.00', '10580.00', '2500.00', 'living/atech_filter.png', 0),
(75, 3451, 14, 'OUTDOOR MIST FAN HUMIDIFIER 220V', '39760.00', '35500.00', '0.00', 'living/mist_fan.png', 0),
(76, 3505, 14, 'OUTDOOR MIST FAN HUMIDIFIER 110V', '41440.00', '37000.00', '0.00', 'living/mist_fan.png', 0);

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
  `promo_type_id` int(11) NOT NULL,
  `promo_code` varchar(50) NOT NULL,
  `promo_description` varchar(255) NOT NULL,
  `promo_period_from` datetime NOT NULL,
  `promo_period_to` datetime NOT NULL,
  `pse` decimal(18,2) NOT NULL,
  `tsp` decimal(18,2) NOT NULL,
  `nsp` decimal(18,2) NOT NULL,
  `item_package_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promo_items`
--

INSERT INTO `promo_items` (`id`, `promo_id`, `promo_type_id`, `promo_code`, `promo_description`, `promo_period_from`, `promo_period_to`, `pse`, `tsp`, `nsp`, `item_package_id`) VALUES
(1, 7657, 1, 'M-10\" CWF', 'MONTHLY PROMO - 10\" CWF', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '29700.00', '26510.00', 0),
(2, 7615, 1, 'M-11PC COOKWARE', 'MONTHLY PROMO - 11PC COOKWARE', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '78680.00', '70250.00', 0),
(3, 7658, 1, 'M-12QT', 'MONTHLY PROMO - 12QT DUTCH OVEN ', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '29700.00', '26510.00', 0),
(4, 7629, 1, 'M-19PC ', 'MONTHLY PROMO - 19PC HOMEMAKER', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '56140.00', '50125.00', 0),
(5, 7643, 1, 'M-24QT', 'MONTHLY PROMO - 24QT STOCK POT', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '36400.00', '32500.00', 0),
(6, 7683, 1, 'M-31PC', 'MONTHLY - 31PC MASTER COOKWARE SET', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '248220.00', '221625.00', 11),
(7, 7637, 1, 'M-4PC STEAMRWOK', 'MONTHLY PROMO - 4PC STEAMER WOK ', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '42840.00', '38250.00', 0),
(8, 7651, 1, 'M-4X3 BARON', 'MONTHLY PROMO - 4X3 PC PLACE SETTING BARON', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '39900.00', '35625.00', 0),
(9, 7652, 1, 'M-4X3 PRINCE', 'MONTHLY PROMO - 4X3 PC PLACE SETTING PRINCE', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '37940.00', '33875.00', 0),
(10, 7655, 1, 'M-4X4 LUDOVICA', 'MONTHLY PROMO - 4X4 PC PLACE SETTING LUDOVICA FRANCIS FINE CRYSTALS', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '28140.00', '25125.00', 0),
(11, 7653, 1, 'M-5PC BASIC BRN', 'MONTHLY PROMO - 5PC BASIC SERVING SET BARON', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '29400.00', '26250.00', 0),
(12, 7654, 1, 'M-5PC BASIC PRN', 'MONTHLY PROMO - 5PC BASIC SERVING SET PRINCE', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '27860.00', '24875.00', 0),
(13, 7671, 1, 'M-6PC STRAINER ', 'MONTHLY PROMO - 6 PC STRAINER SET', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '9968.00', '8900.00', 0),
(14, 7619, 1, 'M-72PC ADRIAN', 'MONTHLY PROMO - 72PC ADRIAN TABLEWARE', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '70420.00', '62875.00', 0),
(15, 7630, 1, 'M-7PC STARTER', 'MONTHLY PROMO - 7PC STARTER SET', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '48440.00', '43250.00', 0),
(16, 7616, 1, 'M-8PC JUMBO', 'MONTHLY PROMO - 8PC JUMBO COOKWARE SET', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '78680.00', '70250.00', 0),
(17, 7661, 1, 'M-8PC KSI', 'MONTHLY PROMO - 8PC KITCHEN SPECIALTY ITEMS', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '23380.00', '20875.00', 0),
(18, 7644, 1, 'M-9PC BASIC', 'MONTHLY PROMO - 9PC BASIC GOURMET SET', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '36400.00', '32500.00', 0),
(19, 7680, 1, 'M-ATLANTIC BARON', 'MONTHLY - ATLANTIC BARON FRANCIS', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '222600.00', '198750.00', 7),
(20, 7679, 1, 'M-ATLANTIC PRINCE', 'MONTHLY - ATLANTIC PRINCE THOBIAN', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '218820.00', '195375.00', 6),
(21, 7675, 1, 'M-BABY GRAND', 'MONTHLY PROMO - BABY GRAND SLAM PACKAGE', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '481320.00', '429750.00', 2),
(22, 7645, 1, 'M-CD', 'MONTHLY PROMO - CHAFING DISH', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '37940.00', '33875.00', 0),
(23, 7642, 1, 'M-COFP', 'MONTHLY PROMO - COLOSSAL OVAL FISH POACHER', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '37940.00', '33875.00', 0),
(24, 7649, 1, 'M-COM SET1 BRN', 'MONTHLY PROMO - COMPLETER SET 1 BARON FRANCIS FINE BONE CHINA', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '39900.00', '35625.00', 0),
(25, 7650, 1, 'M-COM SET1 PRN', 'MONTHLY PROMO - COMPLETER SET 1 PRINCE THOBIAN FINE BONE CHINA', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '37940.00', '33875.00', 0),
(26, 7647, 1, 'M-COM SET2 BRN', 'MONTHLY PROMO - COMPLETER SET 2 BARON FRANCIS FINE BONE CHINA', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '70840.00', '63250.00', 0),
(27, 7648, 1, 'M-COM SET2 PRN', 'MONTHLY PROMO - COMPLETER SET 2 PRINCE THOBIAN FINE BONE CHINA', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '66920.00', '59750.00', 0),
(28, 7640, 1, 'M-CTECH 110V', 'MONTHLY PROMO - COFFEETECH 110V', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '44520.00', '39750.00', 0),
(29, 7641, 1, 'M-CTECH 220V', 'MONTHLY PROMO - COFFEETECH 220V', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '42840.00', '38250.00', 0),
(30, 7660, 1, 'M-DTIC 220V', 'MONTHLY PROMO - DIGITAL TITANIUM INDUCTION COOKER 220V', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '27860.00', '24875.00', 0),
(31, 7677, 1, 'M-EASTERN BARON', 'MONTHLY - EASTERN BARON FRANCIS', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '199920.00', '178500.00', 5),
(32, 7678, 1, 'M-EASTERN PRINC', 'MONTHLY - EASTERN PRINCE THOBIAN', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '191100.00', '170625.00', 4),
(33, 7669, 1, 'M-EMK', 'MONTHLY PROMO - ELEGANT MEAL KIT', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '13580.00', '12125.00', 0),
(34, 7674, 1, 'M-GRAND SLAM', 'MONTHLY PROMO - GRAND SLAM PACKAGE', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '895020.00', '799125.00', 1),
(35, 7625, 1, 'M-JM 110V', 'MONTHLY PROMO - JUICE MASTER 110V', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '59920.00', '53500.00', 0),
(36, 7626, 1, 'M-JM 220V', 'MONTHLY PROMO - JUICE MASTER 220V', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '57960.00', '51750.00', 0),
(37, 7673, 1, 'M-JM+MC', 'MONTHLY - JUICE MASTER + MAGIC COOKER', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '132860.00', '118625.00', 0),
(38, 7624, 1, 'M-JM+UC', 'MONTHLY - JUICE MASTER + ULTRA CORE', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '127820.00', '114125.00', 0),
(39, 7662, 1, 'M-LOTC', 'MONTHLY PROMO - LARGE STAINLESS STEEL OVAL TRAY W/ COVER', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '19800.00', '17670.00', 0),
(40, 7664, 1, 'M-LPC', 'MONTHLY PROMO - LIFESTYLE PAN WITH COVER', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '14560.00', '13000.00', 0),
(41, 7617, 1, 'M-MC 110V', 'MONTHLY PROMO - MAGIC COOKER 110V', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '76636.00', '68425.00', 0),
(42, 7618, 1, 'M-MC 220V', 'MONTHLY PROMO - MAGIC COOKER 220V', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '74900.00', '66875.00', 0),
(43, 7672, 1, 'M-MC+UC', 'MONTHLY - MAGIC COOKER + ULTRA CORE', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '144760.00', '129250.00', 0),
(44, 7639, 1, 'M-MCGT 220V', 'MONTHLY PROMO - MCGT 220V', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '42840.00', '38250.00', 0),
(45, 7634, 1, 'M-MIST FAN 110V', 'MONTHLY - OUTDOOR MIST FAN 110V', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '41440.00', '37000.00', 0),
(46, 7635, 1, 'M-MIST FAN 220V', 'MONTHLY - OUTDOOR MIST FAN 220V', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '39760.00', '35500.00', 0),
(47, 7682, 1, 'M-NORTHERN', 'MONTHLY PROMO - NORTHERN BONANZA', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '207060.00', '184875.00', 9),
(48, 7681, 1, 'M-PACIFIC', 'MONTHLY PROMO - PACIFIC BONANZA', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '207060.00', '184875.00', 8),
(49, 7668, 1, 'M-PRGP', 'MONTHLY PROMO - PRESIDENTS ROUND GRILL PAN', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '19800.00', '17670.00', 0),
(50, 7656, 1, 'M-RC', 'MONTHLY PROMO - 10.5QT RAPID COOKWARE', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '30940.00', '27625.00', 0),
(51, 7633, 1, 'M-RCK 110V', 'MONTHLY PROMO - AUTOMATIC S/S RICE COOKER 110V', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '46480.00', '41500.00', 0),
(52, 7632, 1, 'M-RCK 220V', 'MONTHLY PROMO - AUTOMATIC S/S RICE COOKER 220V', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '44800.00', '40000.00', 0),
(53, 7666, 1, 'M-SBTA 110V', 'MONTHLY PROMO - SUPER BREAD TOASTER ADVANCED 110V', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '21280.00', '19000.00', 0),
(54, 7667, 1, 'M-SBTA 220V', 'MONTHLY PROMO - SUPER BREAD TOASTER ADVANCED 220V', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '19800.00', '17670.00', 0),
(55, 7506, 1, 'M-SOUTHERN', 'MONTHLY PROMO - SOUTHERN BONANZA WELLNESS PACKAGE', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '290640.00', '259500.00', 10),
(56, 7670, 1, 'M-THERMOTECH', 'MONTHLY PROMO - THERMOTECH', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '9968.00', '8900.00', 0),
(57, 7620, 1, 'M-UC 110V', 'MONTHLY PROMO - ULTRACORE 110V', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '71470.00', '63812.50', 0),
(58, 7621, 1, 'M-UC 220V', 'MONTHLY PROMO - ULTRACORE 220V', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '69860.00', '62375.00', 0),
(59, 7627, 1, 'M-UTECH 110V', 'MONTHLY PROMO - ULTRATECH 110V', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '59920.00', '53500.00', 0),
(60, 7628, 1, 'M-UTECH 220V', 'MONTHLY PROMO - ULTRATECH 220V', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '57960.00', '51750.00', 0),
(61, 7665, 1, 'M-UWK', 'MONTHLY PROMO - ULTIMATE WHISTLING KETTLE', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '13580.00', '12125.00', 0),
(62, 7663, 1, 'M-VFS', 'MONTHLY PROMO - VACUUM FRESH SET', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '20860.00', '18625.00', 0),
(63, 7676, 1, 'M-WESTERN', 'MONTHLY - WESTERN BONANZA', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '0.00', '316680.00', '282750.00', 3),
(64, 7739, 2, 'B-11PC COOKWARE', ' BOOSTER - 11PC FAMILY COOKWARE SET', '2019-01-29 00:00:00', '2019-02-04 00:00:00', '0.00', '78680.00', '70250.00', 0),
(65, 7748, 2, 'B-4PC STEAMRWOK', ' BOOSTER - 4PC STEAMER WOK', '2019-01-29 00:00:00', '2019-02-04 00:00:00', '0.00', '42840.00', '38250.00', 0),
(66, 7743, 2, 'B-72PC ADRIAN ', ' BOOSTER - 72 ADRIAN FLATWARE SET', '2019-01-29 00:00:00', '2019-02-04 00:00:00', '0.00', '70420.00', '62875.00', 0),
(67, 7740, 2, 'B-8PC JUMBO', ' BOOSTER - 8PC JUMBO COOKWARE SET', '2019-01-29 00:00:00', '2019-02-04 00:00:00', '0.00', '78680.00', '70250.00', 0),
(68, 7737, 2, 'B-AIRTECH 110V', 'BOOSTER - AIRTECH 110V', '2019-01-29 00:00:00', '2019-02-04 00:00:00', '0.00', '119840.00', '107000.00', 0),
(69, 7738, 2, 'B-AIRTECH 220V', 'BOOSTER - AIRTECH 220V', '2019-01-29 00:00:00', '2019-02-04 00:00:00', '0.00', '114800.00', '102500.00', 0),
(70, 7749, 2, 'B-CTECH 110V', 'BOOSTER - COFFEETECH 110V', '2019-01-29 00:00:00', '2019-02-04 00:00:00', '0.00', '44520.00', '39750.00', 0),
(71, 7750, 2, 'B-CTECH 220V', 'BOOSTER - COFFEETECH 220V', '2019-01-29 00:00:00', '2019-02-04 00:00:00', '0.00', '42840.00', '38250.00', 0),
(72, 7751, 2, 'B-MCGT 110V', ' BOOSTER - MEGA CONTACT GRILL TOASTER 110V', '2019-01-29 00:00:00', '2019-02-04 00:00:00', '0.00', '44520.00', '39750.00', 0),
(73, 7752, 2, 'B-MCGT 220V', ' BOOSTER - MEGA CONTACT GRILL TOASTER 220V', '2019-01-29 00:00:00', '2019-02-04 00:00:00', '0.00', '42840.00', '38250.00', 0),
(74, 7736, 2, 'B-PACIFIC', ' BOOSTER - PACIFIC BONANZA', '2019-01-29 00:00:00', '2019-02-04 00:00:00', '0.00', '207060.00', '184875.00', 8),
(75, 7746, 2, 'B-RCK 110V', 'BOOSTER-RICE COOKWARE 110V', '2019-01-29 00:00:00', '2019-02-04 00:00:00', '0.00', '46480.00', '41500.00', 0),
(76, 7747, 2, 'B-RCK 220V', 'BOOSTER-RICE COOKWARE 220V', '2019-01-29 00:00:00', '2019-02-04 00:00:00', '0.00', '44800.00', '40000.00', 0),
(77, 7742, 2, 'B-UC 110V', ' BOOSTER - ULTRACORE 110V', '2019-01-29 00:00:00', '2019-02-04 00:00:00', '0.00', '71470.00', '63812.50', 0),
(78, 7741, 2, 'B-UC 220V', ' BOOSTER - ULTRACORE 220V', '2019-01-29 00:00:00', '2019-02-04 00:00:00', '0.00', '69860.00', '62375.00', 0),
(79, 7735, 2, 'B-WESTERN', 'BOOSTER - WESTERN BONANZA', '2019-01-29 00:00:00', '2019-02-04 00:00:00', '0.00', '316680.00', '287750.00', 3),
(80, 7745, 3, 'B-FBTECH 110V', ' BOOSTER - FOODBLENDERTECH 110V', '2019-01-29 00:00:00', '2019-02-04 00:00:00', '15000.00', '62720.00', '56000.00', 0),
(81, 7744, 3, 'B-FBTECH 220V', ' BOOSTER - FOODBLENDERTECH 220V', '2019-01-29 00:00:00', '2019-02-04 00:00:00', '15000.00', '59920.00', '53500.00', 0),
(82, 7622, 3, 'M-FBTECH 110V', 'MONTHLY PROMO - FOODBLENDERTECH 110V', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '15000.00', '62720.00', '56000.00', 0),
(83, 7623, 3, 'M-FBTECH 220V', 'MONTHLY PROMO - FOOD BLENDERTECH 220V', '2019-01-08 00:00:00', '2019-02-04 00:00:00', '15000.00', '59920.00', '53500.00', 0),
(84, 7756, 3, 'SPL-MCGT 110V', 'SPECIALS PROMO - MEGA CONTACT GRILL TOASTER 110V', '2019-01-29 00:00:00', '2019-02-04 00:00:00', '11000.00', '44520.00', '39750.00', 0),
(85, 7755, 3, 'SPL-MCGT 220V', 'SPECIALS PROMO - MEGA CONTACT GRILL TOASTER 220V', '2019-01-29 00:00:00', '2019-02-04 00:00:00', '11000.00', '42840.00', '38250.00', 0),
(86, 7754, 3, 'SPL-UC 110V', 'SPECIALS PROMO - ULTRA CORE 110V', '2019-01-29 00:00:00', '2019-02-04 00:00:00', '21000.00', '71470.00', '63812.50', 0),
(87, 7753, 3, 'SPL-UC 220V', 'SPECIALS PROMO - ULTRA CORE 220V', '2019-01-29 00:00:00', '2019-02-04 00:00:00', '21000.00', '69860.00', '62375.00', 0),
(88, 7592, 8, 'CONVENTION-JM', '2020 CONVENTION - JM', '2019-01-08 15:43:04', '2019-02-04 00:00:00', '0.00', '46900.00', '0.00', 0),
(89, 7591, 8, 'CONVENTION-MCGT', '2020 CONVENTION - MCGT', '2019-01-08 15:41:16', '2019-02-04 00:00:00', '0.00', '26900.00', '0.00', 0),
(90, 7590, 8, 'CONVENTION-RCK', '2020 CONVENTION - RCK', '2019-01-08 15:40:05', '2019-02-04 00:00:00', '0.00', '26900.00', '0.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `promo_item_breakdown`
--

CREATE TABLE `promo_item_breakdown` (
  `id` int(11) NOT NULL,
  `con_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `distribution_type_id` int(11) NOT NULL,
  `transaction_qty` int(11) NOT NULL,
  `unit_price` decimal(18,2) NOT NULL,
  `nsp` decimal(18,2) NOT NULL,
  `recipient` varchar(5) NOT NULL,
  `item_bundle_id` int(11) NOT NULL,
  `is_price_per_unit` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promo_item_breakdown`
--

INSERT INTO `promo_item_breakdown` (`id`, `con_id`, `item_id`, `distribution_type_id`, `transaction_qty`, `unit_price`, `nsp`, `recipient`, `item_bundle_id`, `is_price_per_unit`) VALUES
(1, 7657, 2915, 1, 1, '29700.00', '26510.00', 'CU', 0, 'N'),
(2, 7657, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(3, 7657, 3537, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(4, 7615, 1888, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(5, 7615, 1892, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(6, 7615, 1904, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(7, 7615, 1901, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(8, 7615, 958, 1, 1, '78680.00', '70250.00', 'CU', 1887, 'N'),
(9, 7615, 2915, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(10, 7615, 2915, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(11, 7658, 2051, 1, 1, '29700.00', '26510.00', 'CU', 0, 'N'),
(12, 7658, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(13, 7658, 3537, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(14, 7629, 962, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(15, 7629, 2113, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(16, 7629, 4059, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(17, 7629, 1632, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(18, 7629, 2917, 1, 1, '56140.00', '50125.00', 'CU', 960, 'N'),
(19, 7629, 2013, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(20, 7629, 2908, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(21, 7643, 972, 1, 1, '36400.00', '32500.00', 'CU', 0, 'N'),
(22, 7643, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(23, 7643, 2916, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(24, 7643, 3321, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(25, 7643, 2916, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(26, 7683, 1888, 1, 1, '248220.00', '221625.00', 'CU', 1887, 'N'),
(27, 7683, 1892, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(28, 7683, 1904, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(29, 7683, 1901, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(30, 7683, 958, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(31, 7683, 2051, 1, 1, '0.00', '0.00', 'CU', 3449, 'N'),
(32, 7683, 972, 1, 1, '0.00', '0.00', 'CU', 3449, 'N'),
(33, 7683, 3448, 1, 1, '0.00', '0.00', 'CU', 3449, 'N'),
(34, 7683, 1143, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(35, 7683, 3537, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(36, 7683, 1153, 1, 1, '0.00', '0.00', 'CU', 2913, 'N'),
(37, 7683, 1154, 1, 1, '0.00', '0.00', 'CU', 2913, 'N'),
(38, 7683, 2914, 1, 1, '0.00', '0.00', 'CU', 2913, 'N'),
(39, 7683, 3450, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(40, 7683, 4026, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(41, 7683, 2910, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(42, 7683, 2916, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(43, 7683, 1688, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(44, 7683, 2013, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(45, 7683, 3416, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(46, 7683, 1632, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(47, 7683, 1155, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(48, 7683, 2916, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(49, 7683, 963, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(50, 7683, 4026, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(51, 7683, 2910, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(52, 7683, 2013, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(53, 7637, 3448, 1, 1, '42840.00', '38250.00', 'CU', 0, 'N'),
(54, 7637, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(55, 7637, 2916, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(56, 7637, 3321, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(57, 7637, 2916, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(58, 7651, 3575, 1, 4, '39900.00', '35625.00', 'CU', 3454, 'N'),
(59, 7651, 3577, 1, 4, '0.00', '0.00', 'CU', 3454, 'N'),
(60, 7651, 3576, 1, 4, '0.00', '0.00', 'CU', 3454, 'N'),
(61, 7651, 2908, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(62, 7651, 3450, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(63, 7652, 1650, 1, 4, '37940.00', '33875.00', 'CU', 1645, 'N'),
(64, 7652, 1649, 1, 4, '0.00', '0.00', 'CU', 1645, 'N'),
(65, 7652, 1651, 1, 4, '0.00', '0.00', 'CU', 1645, 'N'),
(66, 7652, 2908, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(67, 7652, 3450, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(68, 7655, 1742, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(69, 7655, 1741, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(70, 7655, 1740, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(71, 7655, 1739, 1, 4, '28140.00', '25125.00', 'CU', 1687, 'N'),
(72, 7655, 2908, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(73, 7655, 3450, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(74, 7653, 3572, 1, 1, '0.00', '0.00', 'CU', 3455, 'N'),
(75, 7653, 3570, 1, 1, '0.00', '0.00', 'CU', 3455, 'N'),
(76, 7653, 3573, 1, 1, '0.00', '0.00', 'CU', 3455, 'N'),
(77, 7653, 3574, 1, 1, '29400.00', '26250.00', 'CU', 3455, 'N'),
(78, 7653, 2908, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(79, 7653, 3450, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(80, 7654, 1655, 1, 1, '0.00', '0.00', 'CU', 1646, 'N'),
(81, 7654, 1652, 1, 1, '0.00', '0.00', 'CU', 1646, 'N'),
(82, 7654, 1653, 1, 1, '0.00', '0.00', 'CU', 1646, 'N'),
(83, 7654, 3440, 1, 1, '27860.00', '24875.00', 'CU', 1646, 'N'),
(84, 7654, 2908, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(85, 7654, 3450, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(86, 7671, 2910, 1, 1, '9968.00', '8900.00', 'CU', 0, 'N'),
(87, 7671, 1632, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(88, 7671, 1632, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(89, 7619, 3371, 1, 3, '0.00', '0.00', 'CU', 2140, 'N'),
(90, 7619, 3372, 1, 1, '0.00', '0.00', 'CU', 2140, 'N'),
(91, 7619, 985, 1, 1, '70420.00', '62875.00', 'CU', 2140, 'N'),
(92, 7619, 2915, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(93, 7619, 2915, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(94, 7630, 1153, 1, 1, '0.00', '0.00', 'CU', 2913, 'N'),
(95, 7630, 1154, 1, 1, '0.00', '0.00', 'CU', 2913, 'N'),
(96, 7630, 2914, 1, 1, '48440.00', '43250.00', 'CU', 2913, 'N'),
(97, 7630, 2013, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(98, 7630, 2908, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(99, 7616, 2051, 1, 1, '0.00', '0.00', 'CU', 3449, 'N'),
(100, 7616, 972, 1, 1, '0.00', '0.00', 'CU', 3449, 'N'),
(101, 7616, 3448, 1, 1, '78680.00', '70250.00', 'CU', 3449, 'N'),
(102, 7616, 2915, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(103, 7616, 2915, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(104, 7661, 2013, 1, 1, '23380.00', '20875.00', 'CU', 0, 'N'),
(105, 7661, 2910, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(106, 7661, 4059, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(107, 7644, 962, 1, 1, '36400.00', '32500.00', 'CU', 0, 'N'),
(108, 7644, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(109, 7644, 2916, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(110, 7644, 3321, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(111, 7644, 2916, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(112, 7680, 3555, 1, 4, '0.00', '0.00', 'CU', 3457, 'N'),
(113, 7680, 3556, 1, 4, '0.00', '0.00', 'CU', 3457, 'N'),
(114, 7680, 3557, 1, 4, '0.00', '0.00', 'CU', 3457, 'N'),
(115, 7680, 3558, 1, 4, '0.00', '0.00', 'CU', 3457, 'N'),
(116, 7680, 3576, 1, 4, '0.00', '0.00', 'CU', 3454, 'N'),
(117, 7680, 3577, 1, 4, '0.00', '0.00', 'CU', 3454, 'N'),
(118, 7680, 3575, 1, 4, '0.00', '0.00', 'CU', 3454, 'N'),
(119, 7680, 1742, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(120, 7680, 1741, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(121, 7680, 1740, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(122, 7680, 1739, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(123, 7680, 3371, 1, 3, '0.00', '0.00', 'CU', 2140, 'N'),
(124, 7680, 985, 1, 1, '0.00', '0.00', 'CU', 2140, 'N'),
(125, 7680, 962, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(126, 7680, 2113, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(127, 7680, 2116, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(128, 7680, 1632, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(129, 7680, 2917, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(130, 7680, 3372, 1, 1, '222600.00', '198750.00', 'CU', 2140, 'N'),
(131, 7680, 1153, 2, 1, '0.00', '0.00', 'CU', 2913, 'N'),
(132, 7680, 1154, 2, 1, '0.00', '0.00', 'CU', 2913, 'N'),
(133, 7680, 2914, 2, 1, '0.00', '0.00', 'CU', 2913, 'N'),
(134, 7680, 3206, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(135, 7680, 4026, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(136, 7680, 1688, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(137, 7680, 3371, 2, 3, '0.00', '0.00', 'SD', 2140, 'N'),
(138, 7680, 3372, 2, 1, '0.00', '0.00', 'SD', 2140, 'N'),
(139, 7680, 985, 2, 1, '0.00', '0.00', 'SD', 2140, 'N'),
(140, 7680, 1155, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(141, 7680, 1147, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(142, 7680, 3452, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(143, 7680, 2910, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(144, 7679, 1657, 1, 4, '0.00', '0.00', 'CU', 1647, 'N'),
(145, 7679, 1656, 1, 4, '0.00', '0.00', 'CU', 1647, 'N'),
(146, 7679, 1654, 1, 4, '0.00', '0.00', 'CU', 1647, 'N'),
(147, 7679, 3554, 1, 4, '0.00', '0.00', 'CU', 1647, 'N'),
(148, 7679, 1649, 1, 4, '0.00', '0.00', 'CU', 1645, 'N'),
(149, 7679, 1650, 1, 4, '0.00', '0.00', 'CU', 1645, 'N'),
(150, 7679, 1742, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(151, 7679, 1741, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(152, 7679, 1740, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(153, 7679, 1739, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(154, 7679, 3371, 1, 3, '0.00', '0.00', 'CU', 2140, 'N'),
(155, 7679, 3372, 1, 1, '218820.00', '195375.00', 'CU', 2140, 'N'),
(156, 7679, 985, 1, 1, '0.00', '0.00', 'CU', 2140, 'N'),
(157, 7679, 962, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(158, 7679, 2113, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(159, 7679, 2116, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(160, 7679, 1632, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(161, 7679, 2917, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(162, 7679, 1688, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(163, 7679, 1651, 1, 4, '0.00', '0.00', 'CU', 1645, 'N'),
(164, 7679, 1655, 2, 1, '0.00', '0.00', 'CU', 1646, 'N'),
(165, 7679, 1652, 2, 1, '0.00', '0.00', 'CU', 1646, 'N'),
(166, 7679, 1653, 2, 1, '0.00', '0.00', 'CU', 1646, 'N'),
(167, 7679, 3440, 2, 1, '0.00', '0.00', 'CU', 1646, 'N'),
(168, 7679, 4026, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(169, 7679, 1143, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(170, 7679, 2113, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(171, 7679, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(172, 7679, 3416, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(173, 7679, 1076, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(174, 7679, 1143, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(175, 7679, 2910, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(176, 7679, 963, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(177, 7675, 3448, 1, 1, '481320.00', '429750.00', 'CU', 0, 'N'),
(178, 7675, 3948, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(179, 7675, 1827, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(180, 7675, 3998, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(181, 7675, 3441, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(182, 7675, 1888, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(183, 7675, 1892, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(184, 7675, 1904, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(185, 7675, 1901, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(186, 7675, 958, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(187, 7675, 2005, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(188, 7675, 1153, 1, 1, '0.00', '0.00', 'CU', 2913, 'N'),
(189, 7675, 1154, 1, 1, '0.00', '0.00', 'CU', 2913, 'N'),
(190, 7675, 2914, 1, 1, '0.00', '0.00', 'CU', 2913, 'N'),
(191, 7675, 3527, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(192, 7675, 3451, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(193, 7675, 1076, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(194, 7675, 2013, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(195, 7675, 1143, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(196, 7675, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(197, 7675, 1632, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(198, 7675, 1827, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(199, 7675, 3416, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(200, 7675, 2051, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(201, 7675, 1155, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(202, 7675, 962, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(203, 7675, 2910, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(204, 7675, 963, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(205, 7645, 3542, 1, 1, '37940.00', '33875.00', 'CU', 0, 'N'),
(206, 7645, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(207, 7645, 2916, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(208, 7645, 3321, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(209, 7645, 2916, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(210, 7642, 1076, 1, 1, '37940.00', '33875.00', 'CU', 0, 'N'),
(211, 7642, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(212, 7642, 2916, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(213, 7642, 3321, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(214, 7642, 2916, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(215, 7649, 3555, 1, 4, '0.00', '0.00', 'CU', 3457, 'N'),
(216, 7649, 3556, 1, 4, '0.00', '0.00', 'CU', 3457, 'N'),
(217, 7649, 3557, 1, 4, '0.00', '0.00', 'CU', 3457, 'N'),
(218, 7649, 3558, 1, 4, '39900.00', '35625.00', 'CU', 3457, 'N'),
(219, 7649, 2908, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(220, 7649, 3450, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(221, 7650, 1657, 1, 4, '0.00', '0.00', 'CU', 1647, 'N'),
(222, 7650, 1656, 1, 4, '0.00', '0.00', 'CU', 1647, 'N'),
(223, 7650, 1654, 1, 4, '0.00', '0.00', 'CU', 1647, 'N'),
(224, 7650, 3554, 1, 4, '37940.00', '33875.00', 'CU', 1647, 'N'),
(225, 7650, 2908, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(226, 7650, 3450, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(227, 7647, 3561, 1, 1, '0.00', '0.00', 'CU', 3458, 'N'),
(228, 7647, 3563, 1, 1, '0.00', '0.00', 'CU', 3458, 'N'),
(229, 7647, 3564, 1, 1, '0.00', '0.00', 'CU', 3458, 'N'),
(230, 7647, 3566, 1, 1, '0.00', '0.00', 'CU', 3458, 'N'),
(231, 7647, 3567, 1, 1, '0.00', '0.00', 'CU', 3458, 'N'),
(232, 7647, 3568, 1, 1, '0.00', '0.00', 'CU', 3458, 'N'),
(233, 7647, 3569, 1, 1, '70840.00', '63250.00', 'CU', 3458, 'N'),
(234, 7647, 2908, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(235, 7647, 3450, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(236, 7648, 1661, 1, 1, '0.00', '0.00', 'CU', 1648, 'N'),
(237, 7648, 1660, 1, 1, '0.00', '0.00', 'CU', 1648, 'N'),
(238, 7648, 3207, 1, 1, '0.00', '0.00', 'CU', 1648, 'N'),
(239, 7648, 1664, 1, 1, '0.00', '0.00', 'CU', 1648, 'N'),
(240, 7648, 1659, 1, 1, '0.00', '0.00', 'CU', 1648, 'N'),
(241, 7648, 1662, 1, 1, '0.00', '0.00', 'CU', 1648, 'N'),
(242, 7648, 2906, 1, 1, '66920.00', '59750.00', 'CU', 1648, 'N'),
(243, 7648, 2908, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(244, 7648, 3450, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(245, 7640, 3531, 1, 1, '44520.00', '39750.00', 'CU', 0, 'N'),
(246, 7640, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(247, 7640, 2916, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(248, 7640, 3321, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(249, 7640, 2916, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(250, 7641, 3527, 1, 1, '42840.00', '38250.00', 'CU', 0, 'N'),
(251, 7641, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(252, 7641, 2916, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(253, 7641, 3321, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(254, 7641, 2916, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(255, 7660, 3416, 1, 1, '27860.00', '24875.00', 'CU', 0, 'N'),
(256, 7660, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(257, 7660, 3537, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(258, 7677, 3576, 1, 4, '0.00', '0.00', 'CU', 3454, 'N'),
(259, 7677, 3577, 1, 4, '0.00', '0.00', 'CU', 3454, 'N'),
(260, 7677, 3575, 1, 4, '0.00', '0.00', 'CU', 3454, 'N'),
(261, 7677, 1742, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(262, 7677, 1741, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(263, 7677, 1740, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(264, 7677, 1739, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(265, 7677, 3555, 1, 4, '0.00', '0.00', 'CU', 3457, 'N'),
(266, 7677, 3556, 1, 4, '0.00', '0.00', 'CU', 3457, 'N'),
(267, 7677, 3557, 1, 4, '0.00', '0.00', 'CU', 3457, 'N'),
(268, 7677, 3558, 1, 4, '0.00', '0.00', 'CU', 3457, 'N'),
(269, 7677, 3561, 1, 1, '199920.00', '178500.00', 'CU', 3458, 'N'),
(270, 7677, 3563, 1, 1, '0.00', '0.00', 'CU', 3458, 'N'),
(271, 7677, 3564, 1, 1, '0.00', '0.00', 'CU', 3458, 'N'),
(272, 7677, 3566, 1, 1, '0.00', '0.00', 'CU', 3458, 'N'),
(273, 7677, 3567, 1, 1, '0.00', '0.00', 'CU', 3458, 'N'),
(274, 7677, 3568, 1, 1, '0.00', '0.00', 'CU', 3458, 'N'),
(275, 7677, 3569, 1, 1, '0.00', '0.00', 'CU', 3458, 'N'),
(276, 7677, 3572, 1, 1, '0.00', '0.00', 'CU', 3455, 'N'),
(277, 7677, 3570, 1, 1, '0.00', '0.00', 'CU', 3455, 'N'),
(278, 7677, 3573, 1, 1, '0.00', '0.00', 'CU', 3455, 'N'),
(279, 7677, 3574, 1, 1, '0.00', '0.00', 'CU', 3455, 'N'),
(280, 7677, 3416, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(281, 7677, 1076, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(282, 7677, 2013, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(283, 7677, 2113, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(284, 7677, 1143, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(285, 7677, 3452, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(286, 7677, 1688, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(287, 7677, 962, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(288, 7678, 1650, 1, 4, '0.00', '0.00', 'CU', 1645, 'N'),
(289, 7678, 1651, 1, 4, '0.00', '0.00', 'CU', 1645, 'N'),
(290, 7678, 1742, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(291, 7678, 1741, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(292, 7678, 1740, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(293, 7678, 1649, 1, 4, '0.00', '0.00', 'CU', 1645, 'N'),
(294, 7678, 1657, 1, 4, '0.00', '0.00', 'CU', 1647, 'N'),
(295, 7678, 1656, 1, 4, '0.00', '0.00', 'CU', 1647, 'N'),
(296, 7678, 1654, 1, 4, '0.00', '0.00', 'CU', 1647, 'N'),
(297, 7678, 3554, 1, 4, '0.00', '0.00', 'CU', 1647, 'N'),
(298, 7678, 1739, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(299, 7678, 1661, 1, 1, '191100.00', '170625.00', 'CU', 1648, 'N'),
(300, 7678, 1655, 1, 1, '0.00', '0.00', 'CU', 1646, 'N'),
(301, 7678, 3207, 1, 1, '0.00', '0.00', 'CU', 1648, 'N'),
(302, 7678, 1664, 1, 1, '0.00', '0.00', 'CU', 1648, 'N'),
(303, 7678, 1659, 1, 1, '0.00', '0.00', 'CU', 1648, 'N'),
(304, 7678, 1662, 1, 1, '0.00', '0.00', 'CU', 1648, 'N'),
(305, 7678, 2906, 1, 1, '0.00', '0.00', 'CU', 1648, 'N'),
(306, 7678, 1660, 1, 1, '0.00', '0.00', 'CU', 1648, 'N'),
(307, 7678, 1652, 1, 1, '0.00', '0.00', 'CU', 1646, 'N'),
(308, 7678, 1653, 1, 1, '0.00', '0.00', 'CU', 1646, 'N'),
(309, 7678, 3440, 1, 1, '0.00', '0.00', 'CU', 1646, 'N'),
(310, 7678, 962, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(311, 7678, 3371, 2, 3, '0.00', '0.00', 'CU', 2140, 'N'),
(312, 7678, 3372, 2, 1, '0.00', '0.00', 'CU', 2140, 'N'),
(313, 7678, 985, 2, 1, '0.00', '0.00', 'CU', 2140, 'N'),
(314, 7678, 1632, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(315, 7678, 962, 2, 1, '0.00', '0.00', 'SD', 960, 'N'),
(316, 7678, 2113, 2, 1, '0.00', '0.00', 'SD', 960, 'N'),
(317, 7678, 4059, 2, 1, '0.00', '0.00', 'SD', 960, 'N'),
(318, 7678, 1632, 2, 1, '0.00', '0.00', 'SD', 960, 'N'),
(319, 7678, 2917, 2, 1, '0.00', '0.00', 'SD', 960, 'N'),
(320, 7678, 1155, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(321, 7678, 2910, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(322, 7678, 963, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(323, 7669, 3545, 1, 1, '13580.00', '12125.00', 'CU', 0, 'N'),
(324, 7669, 2910, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(325, 7669, 4059, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(326, 7674, 455, 1, 1, '895020.00', '799125.00', 'CU', 0, 'N'),
(327, 7674, 1827, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(328, 7674, 2005, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(329, 7674, 3441, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(330, 7674, 3948, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(331, 7674, 3548, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(332, 7674, 3998, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(333, 7674, 2915, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(334, 7674, 3416, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(335, 7674, 3451, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(336, 7674, 962, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(337, 7674, 2113, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(338, 7674, 2116, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(339, 7674, 1632, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(340, 7674, 2917, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(341, 7674, 1076, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(342, 7674, 1153, 1, 1, '0.00', '0.00', 'CU', 2913, 'N'),
(343, 7674, 1154, 1, 1, '0.00', '0.00', 'CU', 2913, 'N'),
(344, 7674, 2914, 1, 1, '0.00', '0.00', 'CU', 2913, 'N'),
(345, 7674, 1888, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(346, 7674, 1892, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(347, 7674, 1904, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(348, 7674, 1901, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(349, 7674, 958, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(350, 7674, 3450, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(351, 7674, 3201, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(352, 7674, 2051, 1, 1, '0.00', '0.00', 'CU', 3449, 'N'),
(353, 7674, 972, 1, 1, '0.00', '0.00', 'CU', 3449, 'N'),
(354, 7674, 3448, 1, 1, '0.00', '0.00', 'CU', 3449, 'N'),
(355, 7674, 3451, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(356, 7674, 3452, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(357, 7674, 3542, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(358, 7674, 2907, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(359, 7674, 1147, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(360, 7674, 1143, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(361, 7674, 3206, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(362, 7674, 4026, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(363, 7674, 1632, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(364, 7674, 2910, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(365, 7674, 963, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(366, 7674, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(367, 7674, 1827, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(368, 7674, 1688, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(369, 7674, 1143, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(370, 7674, 2005, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(371, 7674, 963, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(372, 7674, 2916, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(373, 7674, 3998, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(374, 7674, 1076, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(375, 7674, 2113, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(376, 7674, 1632, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(377, 7674, 2013, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(378, 7625, 969, 1, 1, '59920.00', '53500.00', 'CU', 0, 'N'),
(379, 7625, 3673, 1, 1, '0.00', '0.00', 'SD', 0, 'N'),
(380, 7625, 2013, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(381, 7625, 2908, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(382, 7626, 1827, 1, 1, '57960.00', '51750.00', 'CU', 0, 'N'),
(383, 7626, 2013, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(384, 7626, 2908, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(385, 7673, 1827, 1, 1, '57960.00', '51750.00', 'CU', 0, 'N'),
(386, 7673, 455, 1, 1, '74900.00', '66875.00', 'CU', 0, 'N'),
(387, 7673, 2907, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(388, 7673, 962, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(389, 7624, 1827, 1, 1, '57960.00', '51750.00', 'CU', 0, 'N'),
(390, 7624, 3948, 1, 1, '69860.00', '62375.00', 'CU', 0, 'N'),
(391, 7624, 2907, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(392, 7624, 962, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(393, 7662, 3202, 1, 1, '0.00', '0.00', 'CU', 3370, 'N'),
(394, 7662, 3203, 1, 1, '19800.00', '17670.00', 'CU', 3370, 'N'),
(395, 7662, 2910, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(396, 7662, 4059, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(397, 7664, 3537, 1, 1, '14560.00', '13000.00', 'CU', 0, 'N'),
(398, 7664, 2910, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(399, 7664, 4059, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(400, 7617, 2538, 1, 1, '76636.00', '68425.00', 'CU', 0, 'N'),
(401, 7617, 2915, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(402, 7617, 2915, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(403, 7618, 455, 1, 1, '74900.00', '66875.00', 'CU', 0, 'N'),
(404, 7618, 2915, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(405, 7618, 2915, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(406, 7672, 455, 1, 1, '74900.00', '66875.00', 'CU', 0, 'N'),
(407, 7672, 3948, 1, 1, '69860.00', '62375.00', 'CU', 0, 'N'),
(408, 7672, 2907, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(409, 7672, 962, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(410, 7639, 2005, 1, 1, '42840.00', '38250.00', 'CU', 0, 'N'),
(411, 7639, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(412, 7639, 2916, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(413, 7639, 3321, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(414, 7639, 2916, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(415, 7634, 3505, 1, 1, '41440.00', '37000.00', 'CU', 0, 'N'),
(416, 7634, 3673, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(417, 7634, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(418, 7634, 2916, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(419, 7634, 3321, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(420, 7634, 2916, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(421, 7635, 3451, 1, 1, '39760.00', '35500.00', 'CU', 0, 'N'),
(422, 7635, 3673, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(423, 7635, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(424, 7635, 2916, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(425, 7635, 3321, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(426, 7635, 2916, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(427, 7682, 3548, 1, 1, '207060.00', '184875.00', 'CU', 0, 'N'),
(428, 7682, 1827, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(429, 7682, 3527, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(430, 7682, 962, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(431, 7682, 2113, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(432, 7682, 2116, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(433, 7682, 1632, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(434, 7682, 2917, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(435, 7682, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(436, 7682, 2910, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(437, 7682, 1143, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(438, 7682, 3416, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(439, 7682, 1688, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(440, 7682, 1076, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(441, 7682, 1155, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(442, 7682, 3542, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(443, 7682, 1632, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(444, 7681, 2005, 1, 1, '207060.00', '184875.00', 'CU', 0, 'N'),
(445, 7681, 1827, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(446, 7681, 3998, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(447, 7681, 3948, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(448, 7681, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(449, 7681, 3416, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(450, 7681, 2910, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(451, 7681, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(452, 7681, 1155, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(453, 7681, 2915, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(454, 7681, 1076, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(455, 7681, 2916, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(456, 7668, 2908, 1, 1, '19800.00', '17670.00', 'CU', 0, 'N'),
(457, 7668, 2910, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(458, 7668, 4059, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(459, 7656, 2907, 1, 1, '30940.00', '27625.00', 'CU', 0, 'N'),
(460, 7656, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(461, 7656, 3537, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(462, 7633, 4001, 1, 1, '46480.00', '41500.00', 'CU', 0, 'N'),
(463, 7633, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(464, 7633, 2916, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(465, 7633, 3321, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(466, 7633, 2916, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(467, 7632, 3998, 1, 1, '44800.00', '40000.00', 'CU', 0, 'N'),
(468, 7632, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(469, 7632, 2916, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(470, 7632, 3321, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(471, 7632, 2916, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(472, 7666, 936, 1, 1, '21280.00', '19000.00', 'CU', 0, 'N'),
(473, 7666, 2910, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(474, 7666, 4059, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(475, 7667, 891, 1, 1, '19800.00', '17670.00', 'CU', 0, 'N'),
(476, 7667, 2910, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(477, 7667, 4059, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(478, 7506, 3451, 1, 1, '290640.00', '259500.00', 'CU', 0, 'N'),
(479, 7506, 3441, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(480, 7506, 2915, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(481, 7506, 1827, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(482, 7506, 3548, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(483, 7506, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(484, 7506, 1076, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(485, 7506, 3416, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(486, 7506, 2113, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(487, 7506, 1143, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(488, 7506, 2910, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(489, 7506, 1153, 2, 1, '0.00', '0.00', 'SD', 2913, 'N'),
(490, 7506, 1154, 2, 1, '0.00', '0.00', 'SD', 2913, 'N'),
(491, 7506, 2914, 2, 1, '0.00', '0.00', 'SD', 2913, 'N'),
(492, 7506, 1155, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(493, 7506, 1147, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(494, 7506, 1632, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(495, 7506, 963, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(496, 7670, 1155, 1, 1, '9968.00', '8900.00', 'CU', 0, 'N'),
(497, 7670, 1632, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(498, 7670, 1632, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(499, 7620, 3949, 1, 1, '71470.00', '63812.50', 'CU', 0, 'N'),
(500, 7620, 2915, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(501, 7620, 2915, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(502, 7621, 3948, 1, 1, '69860.00', '62375.00', 'CU', 0, 'N'),
(503, 7621, 2915, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(504, 7621, 2915, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(505, 7627, 3253, 1, 1, '59920.00', '53500.00', 'CU', 0, 'N'),
(506, 7627, 2013, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(507, 7627, 2908, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(508, 7628, 2013, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(509, 7628, 3201, 1, 1, '57960.00', '51750.00', 'CU', 0, 'N'),
(510, 7628, 2908, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(511, 7665, 3450, 1, 1, '13580.00', '12125.00', 'CU', 0, 'N'),
(512, 7665, 2910, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(513, 7665, 4059, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(514, 7663, 1147, 1, 1, '20860.00', '18625.00', 'CU', 0, 'N'),
(515, 7663, 2910, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(516, 7663, 4059, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(517, 7676, 2005, 1, 1, '316680.00', '282750.00', 'CU', 0, 'N'),
(518, 7676, 1827, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(519, 7676, 3998, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(520, 7676, 3948, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(521, 7676, 3448, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(522, 7676, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(523, 7676, 1076, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(524, 7676, 2910, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(525, 7676, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(526, 7676, 1632, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(527, 7676, 891, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(528, 7676, 1155, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(529, 7676, 2916, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(530, 7676, 2910, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(531, 7676, 2013, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(532, 7676, 962, 2, 1, '0.00', '0.00', 'SD', 960, 'N'),
(533, 7676, 4026, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(534, 7676, 2113, 2, 1, '0.00', '0.00', 'SD', 960, 'N'),
(535, 7676, 2116, 2, 1, '0.00', '0.00', 'SD', 960, 'N'),
(536, 7676, 1632, 2, 1, '0.00', '0.00', 'SD', 960, 'N'),
(537, 7676, 2917, 2, 1, '0.00', '0.00', 'SD', 960, 'N'),
(538, 7676, 455, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(539, 7739, 1888, 1, 1, '78680.00', '70250.00', 'CU', 1887, 'N'),
(540, 7739, 1904, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(541, 7739, 958, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(542, 7739, 1892, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(543, 7739, 1901, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(544, 7739, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(545, 7739, 2908, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(546, 7739, 4055, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(547, 7748, 3448, 1, 1, '42840.00', '38250.00', 'CU', 0, 'N'),
(548, 7748, 2908, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(549, 7748, 3450, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(550, 7743, 3371, 1, 3, '0.00', '0.00', 'CU', 2140, 'N'),
(551, 7743, 3372, 1, 1, '70420.00', '62875.00', 'CU', 2140, 'N'),
(552, 7743, 985, 1, 1, '0.00', '0.00', 'CU', 2140, 'N'),
(553, 7743, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(554, 7743, 2908, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(555, 7743, 4055, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(556, 7740, 2051, 1, 1, '78680.00', '70250.00', 'CU', 3449, 'N'),
(557, 7740, 3448, 1, 1, '0.00', '0.00', 'CU', 3449, 'N'),
(558, 7740, 972, 1, 1, '0.00', '0.00', 'CU', 3449, 'N'),
(559, 7740, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(560, 7740, 2908, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(561, 7740, 4055, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(562, 7737, 3442, 1, 1, '119840.00', '107000.00', 'CU', 0, 'N'),
(563, 7737, 2915, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(564, 7737, 2915, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(565, 7738, 3441, 1, 1, '114800.00', '102500.00', 'CU', 0, 'N'),
(566, 7738, 2915, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(567, 7738, 2915, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(568, 7749, 3531, 1, 1, '44520.00', '39750.00', 'CU', 0, 'N'),
(569, 7749, 2908, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(570, 7749, 3450, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(571, 7750, 3527, 1, 1, '42840.00', '38250.00', 'CU', 0, 'N'),
(572, 7750, 2908, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(573, 7750, 3450, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(574, 7751, 2016, 1, 1, '44520.00', '39750.00', 'CU', 0, 'N'),
(575, 7751, 2908, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(576, 7751, 3450, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(577, 7752, 2005, 1, 1, '42840.00', '38250.00', 'CU', 0, 'N'),
(578, 7752, 2908, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(579, 7752, 3450, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(580, 7736, 2005, 1, 1, '207060.00', '184875.00', 'CU', 0, 'N'),
(581, 7736, 1827, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(582, 7736, 3948, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(583, 7736, 3998, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(584, 7736, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(585, 7736, 2910, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(586, 7736, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(587, 7736, 4055, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(588, 7736, 2915, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(589, 7736, 2916, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(590, 7736, 3996, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(591, 7736, 1155, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(592, 7736, 2013, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(593, 7736, 962, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(594, 7746, 4001, 1, 1, '46480.00', '41500.00', 'CU', 0, 'N'),
(595, 7746, 2908, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(596, 7746, 3450, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(597, 7747, 3998, 1, 1, '44800.00', '40000.00', 'CU', 0, 'N'),
(598, 7747, 2908, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(599, 7747, 3450, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(600, 7742, 3949, 1, 1, '71470.00', '63812.50', 'CU', 0, 'N'),
(601, 7742, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(602, 7742, 2908, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(603, 7742, 4055, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(604, 7741, 3948, 1, 1, '69860.00', '62375.00', 'CU', 0, 'N'),
(605, 7741, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(606, 7741, 2908, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(607, 7741, 4055, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(608, 7735, 2005, 1, 1, '316680.00', '287750.00', 'CU', 0, 'N'),
(609, 7735, 1827, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(610, 7735, 3948, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(611, 7735, 3998, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(612, 7735, 3448, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(613, 7735, 455, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(614, 7735, 1076, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(615, 7735, 1632, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(616, 7735, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(617, 7735, 2910, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(618, 7735, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(619, 7735, 891, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(620, 7735, 962, 2, 1, '0.00', '0.00', 'SD', 960, 'N'),
(621, 7735, 2113, 2, 1, '0.00', '0.00', 'SD', 960, 'N'),
(622, 7735, 4059, 2, 1, '0.00', '0.00', 'SD', 960, 'N'),
(623, 7735, 1632, 2, 1, '0.00', '0.00', 'SD', 960, 'N'),
(624, 7735, 2917, 2, 1, '0.00', '0.00', 'SD', 960, 'N'),
(625, 7735, 2910, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(626, 7735, 2916, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(627, 7735, 2013, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(628, 7735, 4026, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(629, 7735, 1155, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(630, 7735, 3371, 2, 3, '0.00', '0.00', 'SD', 2140, 'N'),
(631, 7735, 3372, 2, 1, '0.00', '0.00', 'SD', 2140, 'N'),
(632, 7735, 985, 2, 1, '0.00', '0.00', 'SD', 2140, 'N'),
(633, 7745, 3549, 1, 1, '62720.00', '56000.00', 'CU', 0, 'N'),
(634, 7745, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(635, 7745, 2908, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(636, 7745, 4055, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(637, 7744, 3548, 1, 1, '59920.00', '53500.00', 'CU', 0, 'N'),
(638, 7744, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(639, 7744, 2908, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(640, 7744, 4055, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(641, 7622, 3549, 1, 1, '62720.00', '56000.00', 'CU', 0, 'N'),
(642, 7622, 2013, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(643, 7622, 2908, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(644, 7623, 3548, 1, 1, '59920.00', '53500.00', 'CU', 0, 'N'),
(645, 7623, 2013, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(646, 7623, 2908, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(647, 7756, 2016, 1, 1, '44520.00', '39750.00', 'CU', 0, 'N'),
(648, 7756, 3450, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(649, 7756, 2013, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(650, 7755, 2005, 1, 1, '42840.00', '38250.00', 'CU', 0, 'N'),
(651, 7755, 3450, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(652, 7755, 2013, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(653, 7754, 3949, 1, 1, '71470.00', '63812.50', 'CU', 0, 'N'),
(654, 7754, 962, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(655, 7754, 4055, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(656, 7753, 3948, 1, 1, '69860.00', '62375.00', 'CU', 0, 'N'),
(657, 7753, 4055, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(658, 7753, 962, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(659, 7592, 1827, 1, 1, '46900.00', '0.00', 'SD', 0, 'N'),
(660, 7592, 3545, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(661, 7591, 2005, 1, 1, '26900.00', '0.00', 'SD', 0, 'N'),
(662, 7591, 3545, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(663, 7590, 3998, 1, 1, '26900.00', '0.00', 'SD', 0, 'N'),
(664, 7590, 3545, 2, 1, '0.00', '0.00', 'SD', 0, 'N');

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
-- Indexes for table `promo_item_breakdown`
--
ALTER TABLE `promo_item_breakdown`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `promo_item_breakdown`
--
ALTER TABLE `promo_item_breakdown`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=665;

--
-- AUTO_INCREMENT for table `promo_type`
--
ALTER TABLE `promo_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
