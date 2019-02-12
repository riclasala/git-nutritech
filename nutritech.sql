-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2019 at 10:46 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

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
  `usd_rate` decimal(8,6) NOT NULL,
  `api_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency_rates`
--

INSERT INTO `currency_rates` (`id`, `usd_rate`, `api_date`) VALUES
(1, '52.470113', '2019-02-04 16:51:16');

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
  `sequence` int(11) NOT NULL,
  `main_item` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_id`, `item_class_id`, `item_description`, `unit_price`, `nsp`, `pse`, `item_photo`, `sequence`, `main_item`) VALUES
(1, 1897, 0, 'RPM DIGITAL PROFESSIONAL BLENDER  - 110V', '51240.00', '45750.00', '0.00', 'noimage.png', 0, 'n'),
(2, 3550, 0, 'LEISURE INTELLIGENT MASSAGE CHAIR', '88480.00', '79000.00', '0.00', 'noimage.png', 0, 'n'),
(3, 3628, 0, 'UNIVERSAL GRILL PAN', '0.00', '0.00', '0.00', 'noimage.png', 0, 'n'),
(4, 3996, 1, 'COLOSSAL OVAL FISH POACHER W/ SS COVER', '37940.00', '33875.00', '0.00', 'noimage.png', 0, 'n'),
(5, 4055, 1, 'DIGITAL TITANIUM INDUCTION COOKER W/ HANDLE - 220V', '27860.00', '24875.00', '0.00', 'noimage.png', 0, 'y'),
(6, 4057, 1, 'DIGITAL TITANIUM INDUCTION COOKER W/ HANDLE - 110V', '29540.00', '26375.00', '0.00', 'noimage.png', 0, 'y'),
(7, 3409, 1, 'ROUND GRIDDLE WITH SS & GLASS COVER', '31920.00', '28500.00', '0.00', 'noimage.png', 0, 'n'),
(8, 1016, 1, '3PC JUNIOR COLANDER SET WITH LOW COVER', '19800.00', '17670.00', '0.00', 'noimage.png', 0, 'n'),
(9, 1473, 1, 'RICE COOKER 110V', '0.00', '0.00', '0.00', 'noimage.png', 0, 'n'),
(10, 3253, 1, 'ULTRA TECH OIL SKILLET - 110V', '59920.00', '53500.00', '0.00', 'dining/cookwarespecials/ut/ut.png', 1, 'y'),
(11, 3201, 1, 'ULTRA TECH OIL SKILLET - 220V', '57960.00', '51750.00', '0.00', 'dining/cookwarespecials/ut/ut.png', 1, 'y'),
(12, 1210, 1, 'ULTRA CORE OIL SKILLET WITH DOME COVER - 110V', '70336.00', '62800.00', '0.00', 'dining/cookwarespecials/uc/uc.png', 3, 'n'),
(13, 1193, 1, 'ULTRA CORE OIL SKILLET WITH DOME COVER - 220V', '68600.00', '61250.00', '0.00', 'dining/cookwarespecials/uc/uc.png', 4, 'n'),
(14, 3948, 1, 'ADVANCED ULTRA CORE ELECTRIC OIL SKILLET W/ GLASS COVER - 220V', '69860.00', '62375.00', '0.00', 'dining/cookwarespecials/uc/ucglass.png', 4, 'y'),
(15, 3949, 1, 'ADVANCED ULTRA CORE ELECTRIC OIL SKILLET W/ GLASS COVER - 110V', '71470.00', '63812.50', '0.00', 'dining/cookwarespecials/uc/ucglass.png', 4, 'y'),
(16, 2538, 1, 'MAGIC COOKER - 110V', '76636.00', '68425.00', '0.00', 'dining/cookwarespecials/mc/mc.png', 5, 'y'),
(17, 455, 1, 'MAGIC COOKER - 220V', '74900.00', '66875.00', '0.00', 'dining/cookwarespecials/mc/mc.png', 6, 'y'),
(18, 2005, 1, 'MEGA CONTACT GRILL TOASTER - 220V', '42840.00', '38250.00', '0.00', 'dining/cookwarespecials/mcgt/mcgt.png', 7, 'y'),
(19, 2016, 1, 'MEGA CONTACT GRILL TOASTER - 110V', '44520.00', '39750.00', '0.00', 'dining/cookwarespecials/mcgt/mcgt.png', 8, 'y'),
(20, 4001, 1, 'AUTOMATIC MAGIC ALL S/S MULTI-RICE COOKWARE - 110V', '46480.00', '41500.00', '0.00', 'dining/rck.png', 9, 'y'),
(21, 3998, 1, 'AUTOMATIC MAGIC ALL S/S MULTI-RICE COOKWARE - 220V', '44800.00', '40000.00', '0.00', 'dining/rck.png', 10, 'y'),
(22, 10, 1, 'AUTOMATIC S/S RICE COOKER - 220V', '44800.00', '40000.00', '0.00', 'dining/rck.png', 10, 'n'),
(23, 1006, 1, 'CHAFING DISH W/ GLASS COVER', '37940.00', '33875.00', '0.00', 'dining/cookwarespecials/cd/cd.png', 11, 'n'),
(24, 1076, 1, 'COLOSSAL OVAL FISH POACHER ', '36400.00', '32500.00', '0.00', 'dining/cookwarespecials/cofp/cofp.png', 12, 'y'),
(25, 3542, 1, 'CHAFING DISH WITH S/S COVER', '37940.00', '33875.00', '0.00', 'dining/cookwarespecials/cd/cd.png', 12, 'y'),
(26, 2908, 1, 'PRESIDENT ROUND GRILL PAN W/ SPOUT', '19800.00', '17670.00', '0.00', 'dining/cookwarespecials/prgp/prgp.png', 13, 'y'),
(27, 3175, 1, 'LIFESTYLE PAN WITH COVER', '13580.00', '12125.00', '0.00', 'dining/cookwarespecials/lifestylepan/lifestylepan.png', 14, 'n'),
(28, 3537, 1, 'LIFESTYLE PAN WITH COVER - MARBLE COATING', '14560.00', '13000.00', '0.00', 'dining/cookwarespecials/lifestylepan/lpcmc.png', 14, 'y'),
(29, 1143, 1, 'FIESTA PAELLA PAN', '24920.00', '22250.00', '0.00', 'dining/cookwarespecials/paella/paella.png', 15, 'n'),
(30, 2907, 1, 'RAPID COOKWARE WITH GLASS COVER - 10.5QT', '30940.00', '27625.00', '0.00', 'dining/cookwarespecials/rc/rc.png', 17, 'y'),
(31, 3202, 2, 'LARGE OVAL TRAY', '10500.00', '9375.00', '0.00', 'noimage.png', 0, 'n'),
(32, 3203, 2, 'LARGE OVAL DOME COVER ', '12040.00', '10750.00', '0.00', 'noimage.png', 0, 'n'),
(33, 2909, 2, 'LIFESTYLE PAN', '9968.00', '8900.00', '2000.00', 'noimage.png', 0, 'n'),
(34, 3177, 2, 'LIFESTYLE PAN GLASS COVER', '4500.00', '4017.86', '0.00', 'noimage.png', 0, 'n'),
(35, 3405, 2, 'TABLE TOP GRILL', '23520.00', '21000.00', '0.00', 'noimage.png', 0, 'n'),
(36, 959, 2, 'HERBAL SHEAR', '3920.00', '3500.00', '1000.00', 'noimage.png', 0, 'n'),
(37, 891, 2, 'SUPER BREAD TOASTER ADVANCE - 220V', '19800.00', '17670.00', '0.00', 'giving/sbta.png', 0, 'n'),
(38, 2022, 2, 'VFS - 4.5L VACUUM FRESH', '9968.00', '8900.00', '0.00', 'noimage.png', 0, 'n'),
(39, 2023, 2, 'VFS - 3.0L VACUUM FRESH', '8540.00', '7625.00', '0.00', 'noimage.png', 0, 'n'),
(40, 2024, 2, 'VFS - 1.4L VACUUM FRESH', '7140.00', '6375.00', '0.00', 'noimage.png', 0, 'n'),
(41, 4103, 2, 'BLEISURE LUGGAGE BAG - BLACK', '0.00', '0.00', '0.00', 'noimage.png', 0, 'n'),
(42, 4104, 2, 'BLEISURE LUGGAGE BAG - SILVER', '0.00', '0.00', '0.00', 'noimage.png', 0, 'n'),
(43, 3545, 2, 'ELEGANT MEAL KIT', '13580.00', '12125.00', '0.00', 'giving/emk.png', 0, 'y'),
(44, 4008, 2, 'RECHARGEABLE WINE OPENER AND VACUUM ACCESSORIES', '16380.00', '14625.00', '0.00', 'noimage.png', 0, 'y'),
(45, 4019, 2, 'LED FLASHLIGHT', '2940.00', '2625.00', '500.00', 'noimage.png', 0, 'n'),
(46, 4021, 2, 'MULTI-TOOL ULTILITY', '3920.00', '3500.00', '0.00', 'noimage.png', 0, 'n'),
(47, 4023, 2, 'KITCHEN TOOL SET WOODEN 7PC - 2018', '23380.00', '20875.00', '0.00', 'noimage.png', 0, 'n'),
(48, 4026, 2, 'SUPER BREAD TOASTER ADVANCED 2018 - 220V', '19800.00', '17670.00', '0.00', 'noimage.png', 0, 'n'),
(49, 4027, 2, 'SUPER BREAD TOASTER ADVANCED 2018 - 110V', '21280.00', '19000.00', '0.00', 'noimage.png', 0, 'n'),
(50, 4028, 2, 'BARBECUE AND SEWING SHEARS', '4760.00', '4250.00', '1000.00', 'noimage.png', 0, 'n'),
(51, 936, 2, 'SUPER BREAD TOASTER ADVANCE - 110V', '21280.00', '19000.00', '0.00', 'giving/sbta.png', 1, 'n'),
(52, 3085, 2, 'STAR COFFEE MASTER - 110V', '16800.00', '15000.00', '0.00', 'giving/scm.png', 3, 'n'),
(53, 892, 2, 'STAR COFFEE MASTER - 220V', '15680.00', '14000.00', '0.00', 'giving/scm.png', 4, 'n'),
(54, 1155, 2, 'THERMOTECH ', '9968.00', '8900.00', '2000.00', 'giving/ttech.png', 5, 'y'),
(55, 3321, 2, 'TUMBLERTECH', '3920.00', '3500.00', '1000.00', 'giving/tblr.png', 6, 'y'),
(56, 3370, 2, 'LARGE OVAL TRAY WITH DOME COVER', '19800.00', '17670.00', '0.00', 'giving/lotc.png', 7, 'y'),
(57, 3450, 2, 'ULTIMATE WHISTLING KETTLE', '13580.00', '12125.00', '0.00', 'dining/uwk.png', 8, 'y'),
(58, 2910, 2, '6PC MULTI-FUNCTIONAL MESH STRAINER SET', '9968.00', '8900.00', '2000.00', 'giving/strainer.png', 9, 'y'),
(59, 2013, 2, '8PC KITCHEN SPECIALTY ITEMS', '23380.00', '20875.00', '0.00', 'giving/ksi.png', 10, 'y'),
(60, 963, 2, 'CAN OPENER S/S', '1960.00', '1750.00', '500.00', 'giving/co.png', 11, 'y'),
(61, 2912, 2, 'CERAMIC PEELER', '840.00', '750.00', '200.00', 'giving/cp.png', 12, 'y'),
(62, 2911, 2, 'SALAD SHEARS ', '3920.00', '3500.00', '1000.00', 'giving/ss.png', 13, 'n'),
(63, 1632, 2, 'SUPREME MULTI-FUNCTION KITCHEN SHEAR ', '3920.00', '3500.00', '1000.00', 'giving/ks.png', 14, 'y'),
(64, 1688, 2, 'KITCHEN TOOL SET - NEW 7PC', '19800.00', '17670.00', '0.00', 'giving/kts.png', 15, 'n'),
(65, 1147, 2, 'VACUUM FRESH SET', '20860.00', '18625.00', '0.00', 'giving/vfs.png', 17, 'y'),
(66, 969, 3, 'JUICE MASTER PROFESSIONAL - 110V', '59920.00', '53500.00', '0.00', 'living/jm1_a.png', 0, 'y'),
(67, 1689, 3, 'RPM DIGITAL PROFESSIONAL BLENDER', '56140.00', '50125.00', '0.00', 'noimage.png', 0, 'n'),
(68, 1827, 3, 'JUICE MASTER PROFESSIONAL - 220V', '57960.00', '51750.00', '0.00', 'living/jm1_a.png', 0, 'y'),
(69, 3548, 3, 'FOOD BLENDER TECH - 220V', '59920.00', '53500.00', '15000.00', 'living/fbtech.png', 0, 'y'),
(70, 3549, 3, 'FOOD BLENDER TECH - 110V', '62720.00', '56000.00', '15000.00', 'living/fbtech.png', 0, 'y'),
(71, 2033, 3, 'BLENDERTECH W/ SOUND SHIELD - 220V', '88480.00', '79000.00', '0.00', 'living/btech.png', 1, 'n'),
(72, 3024, 3, 'BLENDERTECH W/ SOUND SHIELD - 110V', '91280.00', '81500.00', '0.00', 'living/btech.png', 1, 'n'),
(73, 2971, 3, 'FOOD PRO WITH MINCING AND GRINDING CUP - 110V', '70336.00', '62800.00', '0.00', 'living/fpro.png', 3, 'n'),
(74, 3527, 3, 'COFFEETECH DELUXE - FRESH BREW 220V', '42840.00', '38250.00', '0.00', 'giving/coffee-tech.png', 3, 'y'),
(75, 3531, 3, 'COFFEETECH DELUXE - FRESH BREW 110V', '44520.00', '39750.00', '0.00', 'giving/coffee-tech.png', 3, 'y'),
(76, 2035, 3, 'FOOD PRO WITH MINCING AND GRINDING CUP - 220V', '68600.00', '61250.00', '0.00', 'living/fpro.png', 4, 'n'),
(77, 1153, 4, '2 QT SAUCEPAN - STARTER', '12320.00', '11000.00', '0.00', 'dining/2qtstarter.png', 0, 'y'),
(78, 1154, 4, '9 1/2\"  FRYING PAN W/ COVER - STARTER', '13580.00', '12125.00', '0.00', 'noimage.png', 0, 'n'),
(79, 3448, 4, '4PC UNIVERSAL 5-PLY STEAMER WOK', '42840.00', '38250.00', '0.00', 'living/owok.png', 0, 'y'),
(80, 4064, 4, 'ORIENTAL WOK W/ GLASS LID', '36400.00', '32500.00', '0.00', 'noimage.png', 0, 'n'),
(81, 4088, 4, '5PLY ORIENTAL WOK WITH GLASS COVER', '0.00', '0.00', '0.00', 'noimage.png', 0, 'n'),
(82, 1892, 4, '2 QT SAUCEPAN - 5 PLY COOKWARE', '13580.00', '12125.00', '0.00', 'dining/2qt.png', 1, 'y'),
(83, 3449, 4, '8PC JUMBO COOKWARE SET', '78680.00', '70250.00', '0.00', 'dining/8pc-jumbo.png', 3, 'y'),
(84, 2913, 4, '7PC STARTER SET WITH JCS DOME COVER', '48440.00', '43250.00', '0.00', 'dining/touchofclass/7pcstarter/starterset.png', 4, 'y'),
(85, 958, 4, '3PC COLANDER SET - 5-PLY', '36400.00', '32500.00', '0.00', 'dining/colander.png', 5, 'y'),
(86, 1017, 4, '3PC 5-PLY ORIENTAL WOK', '36400.00', '32500.00', '0.00', 'dining/wok.png', 6, 'n'),
(87, 1888, 4, '1.5 QT SAUCEPAN - 5 PLY COOKWARE', '12880.00', '11500.00', '0.00', 'dining/1.5qt.png', 7, 'y'),
(88, 1887, 4, '11PC FAMILY COOKWARE SET - 5 PLY', '78680.00', '70250.00', '0.00', 'dining/touchofclass/11pc/11pc.png', 8, 'y'),
(89, 2051, 4, '12QT DUTCH OVEN WITH WHISTLING KNOB COVER', '29700.00', '26510.00', '0.00', 'dining/touchofclass/12qt.png', 9, 'y'),
(90, 972, 4, '24QTS STOCK POT WITH VENTED KNOB COVER', '36400.00', '32500.00', '0.00', 'dining/24qt.png', 10, 'y'),
(91, 2914, 4, '3PC JUNIOR COLANDER SET W/ COVER - STARTER', '26460.00', '23625.00', '0.00', 'dining/jcs.png', 11, 'y'),
(92, 1901, 4, '6QT DUTCH OVEN W/ COVER - 5 PLY COOKWARE', '29700.00', '26510.00', '0.00', 'dining/6qt.png', 12, 'y'),
(93, 1904, 4, '9 1/2\" FRYING PAN WITH COVER - 5 PLY COOKWARE', '17500.00', '15625.00', '0.00', 'dining/9fyringpan.png', 13, 'y'),
(94, 1741, 5, 'CRYSTAL FLUTE - LUDOVICA FRANCIS', '2240.00', '2000.00', '0.00', 'dining/flute.png', 1, 'y'),
(95, 1740, 5, 'CRYSTAL GOBLET - LUDOVICA FRANCIS', '2240.00', '2000.00', '0.00', 'dining/goblet.png', 2, 'y'),
(96, 1742, 5, 'CRYSTAL WINE - LUDOVICA FRANCIS', '2240.00', '2000.00', '0.00', 'dining/wine.png', 3, 'y'),
(97, 1739, 5, 'CRYSTAL GLASS - LUDOVICA FRANCIS', '2240.00', '2000.00', '0.00', 'dining/glass.png', 4, 'y'),
(98, 3700, 5, 'CRYSTAL DECANTER BOTTLE - LUDOVICA FRANCIS', '20860.00', '18625.00', '0.00', 'dining/decanter.png', 5, 'y'),
(99, 1672, 5, '1X4 LUDOVICA FRANCIS FINE CRYSTAL COLLECTION', '7980.00', '7125.00', '0.00', 'dining/1x4.png', 6, 'y'),
(100, 1687, 5, '4X4 LUDOVICA FRANCIS FINE CRYSTAL COLLECTION', '28140.00', '25125.00', '0.00', 'dining/4x4.png', 7, 'y'),
(101, 1647, 6, 'COMPLETER SET I PACKAGE - PRINCE THOBIAN', '37940.00', '33875.00', '0.00', 'dining/completers1package.png', 0, 'y'),
(102, 2906, 6, 'CHINAWARES - PEPPER SHAKER - PRINCE THOBIAN', '1610.00', '1437.50', '0.00', 'dining/completers25.png', 0, 'n'),
(103, 1644, 6, '1X3 PC SETTING - PRINCE THOBIAN', '9800.00', '8750.00', '0.00', 'noimage.png', 0, 'n'),
(104, 1649, 6, 'CHINAWARES - COFFEE CUP - PRINCE THOBIAN', '2940.00', '2625.00', '0.00', 'noimage.png', 0, 'n'),
(105, 1650, 6, 'CHINAWARES - COFFEE SAUCER - PRINCE THOBIAN', '2940.00', '2625.00', '0.00', 'noimage.png', 0, 'n'),
(106, 1651, 6, 'CHINAWARES - DINNER PLATE - PRINCE THOBIAN', '5880.00', '5250.00', '0.00', 'noimage.png', 0, 'n'),
(107, 1652, 6, 'CHINAWARES - SUGAR BOWL & COVER - PRINCE THOBIAN', '5740.00', '5125.00', '0.00', 'dining/5basic3.png', 0, 'n'),
(108, 1653, 6, 'CHINAWARES - CREAMER - PRINCE THOBIAN', '5180.00', '4625.00', '0.00', 'dining/5basic4.png', 0, 'n'),
(109, 1654, 6, 'CHINAWARES - SOUP BOWL 23CM - PRINCE THOBIAN', '5180.00', '4625.00', '0.00', 'dining/5basic2.png', 0, 'n'),
(110, 1655, 6, 'CHINAWARES - MEDIUM PLATTER 31CM - PRINCE THOBIAN', '10920.00', '9750.00', '0.00', 'dining/5basic1.png', 0, 'n'),
(111, 1656, 6, 'CHINAWARES - RICE BOWL 4.5\" - PRINCE THOBIAN', '3220.00', '2875.00', '0.00', 'noimage.png', 0, 'n'),
(112, 1657, 6, 'CHINAWARES - SALAD PLATE 20CM - PRINCE THOBIAN', '3360.00', '3000.00', '0.00', 'noimage.png', 0, 'n'),
(113, 1659, 6, 'CHINAWARES - COVERED SOUP TUREEN - PRINCE THOBIAN', '19880.00', '17750.00', '0.00', 'dining/completers22.png', 0, 'n'),
(114, 1660, 6, 'CHINAWARES - GRAVY BOAT & SAUCER - PRINCE THOBIAN', '10920.00', '9750.00', '0.00', 'dining/completers23.png', 0, 'n'),
(115, 1661, 6, 'CHINAWARES - TEA / COFFEE SERVER - PRINCE THOBIAN', '12880.00', '11500.00', '0.00', 'dining/completers21.png', 0, 'n'),
(116, 1662, 6, 'CHINAWARES - SALT SHAKER - PRINCE THOBIAN', '1610.00', '1437.50', '0.00', 'dining/completers25.png', 0, 'n'),
(117, 1664, 6, 'CHINAWARES - COVERED BUTTER DISH - PRINCE THOBIAN', '10920.00', '9750.00', '0.00', 'dining/completers24.png', 0, 'n'),
(118, 3207, 6, 'CHINAWARES - LARGE PLATTER 36CM - PRINCE THOBIAN', '19880.00', '17750.00', '0.00', 'noimage.png', 0, 'n'),
(119, 3440, 6, 'CHINAWARES - ROUND VEGETABLE DISH - PRINCE THOBIAN', '8960.00', '8000.00', '0.00', 'noimage.png', 0, 'n'),
(120, 3453, 6, '1X3 PC SETTING - BARON FRANCIS', '11200.00', '10000.00', '0.00', 'noimage.png', 0, 'n'),
(121, 3457, 6, 'COMPLETER SET I PACKAGE - BARON FRANCIS', '39900.00', '35625.00', '0.00', 'dining/completers1package.png', 0, 'y'),
(122, 3554, 6, 'CHINAWARES - RICE SPOON - PRINCE THOBIAN', '0.00', '0.00', '0.00', 'noimage.png', 0, 'n'),
(123, 3555, 6, 'CHINAWARES - SALAD PLATE 20CM - BARON FRANCIS', '3920.00', '3500.00', '0.00', 'noimage.png', 0, 'n'),
(124, 3556, 6, 'CHINAWARES - RICE BOWL 4.5\" - BARON FRANCIS', '3360.00', '3000.00', '0.00', 'noimage.png', 0, 'n'),
(125, 3557, 6, 'CHINAWARES - RICE SPOON - BARON FRANCIS', '0.00', '0.00', '0.00', 'noimage.png', 0, 'n'),
(126, 3558, 6, 'CHINAWARES - SOUP BOWL 23CM - BARON FRANCIS', '5740.00', '5125.00', '0.00', 'noimage.png', 0, 'n'),
(127, 3559, 6, 'CHINAWARES - GRAVY SAUCER - PRINCE THOBIAN', '0.00', '0.00', '0.00', 'noimage.png', 0, 'n'),
(128, 3560, 6, 'CHINAWARES - BUTTER COVER ONLY - PRINCE THOBIAN', '0.00', '0.00', '0.00', 'noimage.png', 0, 'n'),
(129, 3561, 6, 'CHINAWARES - TEA / COFFEE SERVER - BARON FRANCIS', '13720.00', '12250.00', '0.00', 'noimage.png', 0, 'n'),
(130, 3562, 6, 'CHINAWARES - GRAVY SAUCER - BARON FRANCIS', '0.00', '0.00', '0.00', 'noimage.png', 0, 'n'),
(131, 3563, 6, 'CHINAWARES - GRAVY BOAT & SAUCER - BARON FRANCIS', '11620.00', '10375.00', '0.00', 'noimage.png', 0, 'n'),
(132, 3564, 6, 'CHINAWARES - LARGE PLATTER 36CM - BARON FRANCIS', '20440.00', '18250.00', '0.00', 'noimage.png', 0, 'n'),
(133, 3565, 6, 'CHINAWARES - BUTTER COVER ONLY - BARON FRANCIS', '0.00', '0.00', '0.00', 'noimage.png', 0, 'n'),
(134, 3566, 6, 'CHINAWARES - COVERED BUTTER DISH - BARON FRANCIS', '11620.00', '10375.00', '0.00', 'noimage.png', 0, 'n'),
(135, 3567, 6, 'CHINAWARES - COVERED SOUP TUREEN - BARON FRANCIS', '20440.00', '18250.00', '0.00', 'noimage.png', 0, 'n'),
(136, 3568, 6, 'CHINAWARES - PEPPER SHAKER - BARON FRANCIS', '1680.00', '1500.00', '0.00', 'noimage.png', 0, 'n'),
(137, 3569, 6, 'CHINAWARES - SALT SHAKER - BARON FRANCIS', '1680.00', '1500.00', '0.00', 'noimage.png', 0, 'n'),
(138, 3570, 6, 'CHINAWARES - MEDIUM PLATTER 31CM - BARON FRANCIS', '10920.00', '9750.00', '0.00', 'noimage.png', 0, 'n'),
(139, 3572, 6, 'CHINAWARES - ROUND VEGETABLE DISH - BARON FRANCIS', '9240.00', '8250.00', '0.00', 'noimage.png', 0, 'n'),
(140, 3573, 6, 'CHINAWARES - SUGAR BOWL & COVER - BARON FRANCIS', '6300.00', '5625.00', '0.00', 'noimage.png', 0, 'n'),
(141, 3574, 6, 'CHINAWARES - CREAMER - BARON FRANCIS', '5320.00', '4750.00', '0.00', 'noimage.png', 0, 'n'),
(142, 3575, 6, 'CHINAWARES - DINNER PLATE - BARON FRANCIS', '6300.00', '5625.00', '0.00', 'noimage.png', 0, 'n'),
(143, 3576, 6, 'CHINAWARES - COFFEE CUP - BARON FRANCIS', '2800.00', '2500.00', '0.00', 'noimage.png', 0, 'n'),
(144, 3577, 6, 'CHINAWARES - COFFEE SAUCER -  BARON FRANCIS', '2800.00', '2500.00', '0.00', 'noimage.png', 0, 'n'),
(145, 3597, 6, 'CHINAWARES - OVAL PLATTER', '0.00', '0.00', '0.00', 'noimage.png', 0, 'n'),
(146, 3456, 6, 'COMPLETER SET I INDIVIDUAL - BARON FRANCIS', '11620.00', '10375.00', '0.00', 'dining/completers1.png', 1, 'y'),
(147, 1666, 6, 'COMPLETER SET I INDIVIDUAL - PRINCE THOBIAN', '10780.00', '9625.00', '0.00', 'dining/completers1.png', 1, 'y'),
(148, 1648, 6, 'COMPLETER SET II INDIVIDUAL - PRINCE THOBIAN', '66920.00', '59750.00', '0.00', 'dining/completers2.png', 3, 'y'),
(149, 3458, 6, 'COMPLETER SET II INDIVIDUAL - BARON FRANCIS', '70840.00', '63250.00', '0.00', 'dining/completers2.png', 3, 'y'),
(150, 3455, 6, '5PC BASIC SERVING SET BARON FRANCIS', '29400.00', '26250.00', '0.00', 'dining/5basic.png', 4, 'y'),
(151, 1646, 6, '5PC BASIC SERVING SET PRINCE THOBIAN', '27860.00', '24875.00', '0.00', 'dining/5basic.png', 4, 'y'),
(152, 1645, 6, '4X3 PC SETTING - PRINCE THOBIAN', '37940.00', '33875.00', '0.00', 'dining/4x3.png', 5, 'y'),
(153, 3454, 6, '4X3 PC SETTING - BARON FRANCIS', '39900.00', '35625.00', '0.00', 'dining/4x3.png', 5, 'y'),
(154, 3520, 7, 'SERVING FORK - ADRIAN TABLEWARE WITH INLAID GOLD', '0.00', '0.00', '0.00', 'noimage.png', 0, 'n'),
(155, 3371, 7, '4X5 PC PLACE SETTING ADRIAN TABLEWARE W/ INLAID GOLD', '24220.00', '21625.00', '0.00', 'dining/4x5.png', 0, 'y'),
(156, 3372, 7, '12 SERVING PCS ADRIAN TABLEWARE WITH INLAID GOLD', '27720.00', '24750.00', '0.00', 'dining/12pc.png', 0, 'y'),
(157, 3432, 7, '1X5 PC PLACE BASIC SERVING SET ADRIAN W/ INLAID GOLD', '5600.00', '5000.00', '0.00', 'noimage.png', 0, 'n'),
(158, 3433, 7, 'DINNER KNIFE - ADRIAN TABLEWARE INLAID GOLD', '0.00', '0.00', '0.00', 'noimage.png', 0, 'n'),
(159, 3434, 7, 'DINNER SPOON - ADRIAN TABLEWARE INLAID GOLD', '0.00', '0.00', '0.00', 'noimage.png', 0, 'n'),
(160, 3435, 7, 'DINNER FORK - ADRIAN TABLEWARE INLAID GOLD', '0.00', '0.00', '0.00', 'noimage.png', 0, 'n'),
(161, 3436, 7, 'TEASPOON - ADRIAN TABLEWARE INLAID GOLD', '0.00', '0.00', '0.00', 'noimage.png', 0, 'n'),
(162, 3437, 7, 'SALAD FORK - ADRIAN TABLEWARE INLAID GOLD', '0.00', '0.00', '0.00', 'noimage.png', 0, 'n'),
(163, 985, 7, 'WOODEN CHEST DRAWER - ADRIAN TABLEWARE', '0.00', '0.00', '0.00', 'noimage.png', 0, 'n'),
(164, 2140, 7, '72PC ADRIAN FINE TABLEWARE SET', '70420.00', '62875.00', '0.00', 'dining/72pc.png', 0, 'y'),
(165, 3452, 7, '3PC BASIC GIFT SET - ADRIAN FINE TABLEWARE INLAID GOLD COLLECTION', '5600.00', '5000.00', '0.00', 'giving/3pcs.png', 12, 'y'),
(166, 2925, 8, 'CWF - 10\" CERAMIC CARBON CARTRIDGE', '2500.00', '0.00', '800.00', 'noimage.png', 0, 'n'),
(167, 2915, 8, '10\" CERAMIC WATER FILTER W/ CARBON CARTRIDGE', '29700.00', '26510.00', '0.00', 'living/cwf.png', 0, 'y'),
(168, 3410, 9, 'RG - DRIP KNOB FOR GLASS COVER', '0.00', '0.00', '0.00', 'noimage.png', 0, 'n'),
(169, 3411, 9, 'RG - GLASS COVER', '0.00', '0.00', '0.00', 'noimage.png', 0, 'n'),
(170, 3412, 9, 'RG - SS DOME COVER', '0.00', '0.00', '0.00', 'noimage.png', 0, 'n'),
(171, 3413, 9, 'RG - INSTRUCTION MANUAL', '0.00', '0.00', '0.00', 'noimage.png', 0, 'n'),
(172, 3414, 9, 'RG - COLORED BOX', '0.00', '0.00', '0.00', 'noimage.png', 0, 'n'),
(173, 4061, 11, 'NUTRITECH PACKAGING TAPE', '0.00', '0.00', '0.00', 'noimage.png', 0, 'n'),
(174, 3672, 11, 'MIPRO SPEAKER WITH STAND', '0.00', '0.00', '0.00', 'noimage.png', 0, 'n'),
(175, 4059, 12, 'MEAT CLEAVER W/ ELEGANT CASE', '9968.00', '8900.00', '0.00', 'noimage.png', 0, 'n'),
(176, 2916, 12, 'CHOP & DROP CUTTING BOARD - SQUARE', '8540.00', '7625.00', '0.00', 'noimage.png', 0, 'n'),
(177, 2105, 12, '6\" BONING KNIFE', '0.00', '0.00', '0.00', 'noimage.png', 0, 'n'),
(178, 2113, 12, '6PC STEAK KNIFE WITH WOODEN CASE (4.5\")', '14560.00', '13000.00', '0.00', 'dining/6pcsteak.png', 0, 'y'),
(179, 962, 12, '9 PC BASIC GOURMET SET WITH KNIFE BLOCK', '36400.00', '32500.00', '0.00', 'dining/9pc.png', 1, 'y'),
(180, 961, 12, '16PC GOURMET SET W/ KNIFE BLOCK', '45500.00', '40625.00', '0.00', 'dining/16pc.png', 3, 'y'),
(181, 960, 12, '19PC HOMEMAKER SET', '56140.00', '50125.00', '0.00', 'dining/19pc.png', 5, 'y'),
(182, 2917, 12, 'CHOP & DROP CUTTING BOARD - RECTANGLE', '8540.00', '7625.00', '0.00', 'dining/cb_rec.png', 6, 'y'),
(183, 3505, 14, 'OUTDOOR MIST FAN HUMIDIFIER 110V', '41440.00', '37000.00', '0.00', 'living/mist_fan.png', 0, 'y'),
(184, 3441, 14, 'AIRTECH PURIFIER WITH GWMX - 220V', '114800.00', '102500.00', '0.00', 'living/atech.png', 0, 'y'),
(185, 3442, 14, 'AIRTECH PURIFIER WITH GWMX - 110V', '119840.00', '107000.00', '0.00', 'living/atech.png', 0, 'y'),
(186, 3443, 14, 'AIRTECH - CARTRIDGE SET W/ GWMX', '11850.00', '10580.00', '2500.00', 'living/atech_filter.png', 0, 'y'),
(187, 3451, 14, 'OUTDOOR MIST FAN HUMIDIFIER 220V', '39760.00', '35500.00', '0.00', 'living/mist_fan.png', 0, 'y');

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
(1, 7823, 1, 'M-10\" CWF', 'MONTHLY PROMO - 10\" CWF', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '29700.00', '26510.00', 0),
(2, 7785, 1, 'M-11PC COOKWARE', 'MONTHLY PROMO - 11PC COOKWARE', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '78680.00', '70250.00', 0),
(3, 7824, 1, 'M-12QT', 'MONTHLY PROMO - 12QT DUTCH OVEN ', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '29700.00', '26510.00', 0),
(4, 7798, 1, 'M-19PC ', 'MONTHLY PROMO - 19PC HOMEMAKER', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '56140.00', '50125.00', 0),
(5, 7810, 1, 'M-24QT', 'MONTHLY PROMO - 24QT STOCK POT', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '36400.00', '32500.00', 0),
(6, 7851, 1, 'M-31PC', 'MONTHLY - 31PC MASTER COOKWARE SET', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '248220.00', '221625.00', 11),
(7, 7817, 1, 'M-4X3 BARON', 'MONTHLY PROMO - 4X3 PC PLACE SETTING BARON', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '39900.00', '35625.00', 0),
(8, 7818, 1, 'M-4X3 PRINCE', 'MONTHLY PROMO - 4X3 PC PLACE SETTING PRINCE', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '37940.00', '33875.00', 0),
(9, 7819, 1, 'M-4X4 LUDOVICA', 'MONTHLY PROMO - 4X4 PC PLACE SETTING LUDOVICA FRANCIS FINE CRYSTALS', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '28140.00', '25125.00', 0),
(10, 7820, 1, 'M-5PC BASIC BRN', 'MONTHLY PROMO - 5PC BASIC SERVING SET BARON', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '29400.00', '26250.00', 0),
(11, 7821, 1, 'M-5PC BASIC PRN', 'MONTHLY PROMO - 5PC BASIC SERVING SET PRINCE', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '27860.00', '24875.00', 0),
(12, 7837, 1, 'M-6PC STRAINER ', 'MONTHLY PROMO - 6 PC STRAINER SET', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '9968.00', '8900.00', 0),
(13, 7789, 1, 'M-72PC ADRIAN', 'MONTHLY PROMO - 72PC ADRIAN TABLEWARE', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '70420.00', '62875.00', 0),
(14, 7799, 1, 'M-7PC STARTER', 'MONTHLY PROMO - 7PC STARTER SET', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '48440.00', '43250.00', 0),
(15, 7758, 1, 'M-8PC JUMBO', 'MONTHLY PROMO - 8PC JUMBO COOKWARE SET', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '78680.00', '70250.00', 0),
(16, 7827, 1, 'M-8PC KSI', 'MONTHLY PROMO - 8PC KITCHEN SPECIALTY ITEMS', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '23380.00', '20875.00', 0),
(17, 7811, 1, 'M-9PC BASIC', 'MONTHLY PROMO - 9PC BASIC GOURMET SET', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '36400.00', '32500.00', 0),
(18, 7847, 1, 'M-ATLANTIC BARON', 'MONTHLY - ATLANTIC BARON FRANCIS', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '222600.00', '198750.00', 7),
(19, 7846, 1, 'M-ATLANTIC PRINCE', 'MONTHLY - ATLANTIC PRINCE THOBIAN', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '218820.00', '195375.00', 6),
(20, 7842, 1, 'M-BABY GRAND', 'MONTHLY PROMO - BABY GRAND SLAM PACKAGE', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '481320.00', '429750.00', 2),
(21, 7812, 1, 'M-CD', 'MONTHLY PROMO - CHAFING DISH', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '37940.00', '33875.00', 0),
(22, 7809, 1, 'M-COFP', 'MONTHLY PROMO - COLOSSAL OVAL FISH POACHER', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '37940.00', '33875.00', 0),
(23, 7815, 1, 'M-COM SET1 BRN', 'MONTHLY PROMO - COMPLETER SET 1 BARON FRANCIS FINE BONE CHINA', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '39900.00', '35625.00', 0),
(24, 7816, 1, 'M-COM SET1 PRN', 'MONTHLY PROMO - COMPLETER SET 1 PRINCE THOBIAN FINE BONE CHINA', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '37940.00', '33875.00', 0),
(25, 7813, 1, 'M-COM SET2 BRN', 'MONTHLY PROMO - COMPLETER SET 2 BARON FRANCIS FINE BONE CHINA', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '70840.00', '63250.00', 0),
(26, 7814, 1, 'M-COM SET2 PRN', 'MONTHLY PROMO - COMPLETER SET 2 PRINCE THOBIAN FINE BONE CHINA', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '66920.00', '59750.00', 0),
(27, 7807, 1, 'M-CTECH 110V', 'MONTHLY PROMO - COFFEETECH 110V', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '44520.00', '39750.00', 0),
(28, 7808, 1, 'M-CTECH 220V', 'MONTHLY PROMO - COFFEETECH 220V', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '42840.00', '38250.00', 0),
(29, 7825, 1, 'M-DTIC 110V', 'MONTHLY PROMO - DIGITAL TITANIUM INDUCTION COOKER 110V', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '29540.00', '26375.00', 0),
(30, 7826, 1, 'M-DTIC 220V', 'MONTHLY PROMO - DIGITAL TITANIUM INDUCTION COOKER 220V', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '27860.00', '24875.00', 0),
(31, 7845, 1, 'M-EASTERN BARON', 'MONTHLY - EASTERN BARON FRANCIS', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '199920.00', '178500.00', 5),
(32, 7844, 1, 'M-EASTERN PRINC', 'MONTHLY - EASTERN PRINCE THOBIAN', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '191100.00', '170625.00', 4),
(33, 7834, 1, 'M-EMK', 'MONTHLY PROMO - ELEGANT MEAL KIT', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '13580.00', '12125.00', 0),
(34, 7792, 1, 'M-FBTECH 110V', 'MONTHLY PROMO - FOODBLENDERTECH 110V', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '15000.00', '62720.00', '56000.00', 0),
(35, 7793, 1, 'M-FBTECH 220V', 'MONTHLY PROMO - FOOD BLENDERTECH 220V', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '15000.00', '59920.00', '53500.00', 0),
(36, 7841, 1, 'M-GRAND SLAM', 'MONTHLY PROMO - GRAND SLAM PACKAGE', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '895020.00', '799125.00', 1),
(37, 7794, 1, 'M-JM 110V', 'MONTHLY PROMO - JUICE MASTER 110V', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '59920.00', '53500.00', 0),
(38, 7795, 1, 'M-JM 220V', 'MONTHLY PROMO - JUICE MASTER 220V', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '57960.00', '51750.00', 0),
(39, 7839, 1, 'M-JM+MC', 'MONTHLY - JUICE MASTER + MAGIC COOKER', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '132860.00', '118625.00', 0),
(40, 7840, 1, 'M-JM+UC', 'MONTHLY - JUICE MASTER + ULTRA CORE', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '127820.00', '114125.00', 0),
(41, 7835, 1, 'M-LOTC', 'MONTHLY PROMO - LARGE STAINLESS STEEL OVAL TRAY W/ COVER', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '19800.00', '17670.00', 0),
(42, 7828, 1, 'M-LPC', 'MONTHLY PROMO - LIFESTYLE PAN WITH COVER', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '14560.00', '13000.00', 0),
(43, 7788, 1, 'M-MC 110V', 'MONTHLY PROMO - MAGIC COOKER 110V', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '76636.00', '68425.00', 0),
(44, 7787, 1, 'M-MC 220V', 'MONTHLY PROMO - MAGIC COOKER 220V', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '74900.00', '66875.00', 0),
(45, 7838, 1, 'M-MC+UC', 'MONTHLY - MAGIC COOKER + ULTRA CORE', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '144760.00', '129250.00', 0),
(46, 7806, 1, 'M-MCGT 110V', 'MONTHLY PROMO - MCGT 110V', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '44520.00', '39750.00', 0),
(47, 7805, 1, 'M-MCGT 220V', 'MONTHLY PROMO - MCGT 220V', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '42840.00', '38250.00', 0),
(48, 7802, 1, 'M-MIST FAN 110V', 'MONTHLY - OUTDOOR MIST FAN 110V', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '41440.00', '37000.00', 0),
(49, 7803, 1, 'M-MIST FAN 220V', 'MONTHLY - OUTDOOR MIST FAN 220V', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '39760.00', '35500.00', 0),
(50, 7849, 1, 'M-NORTHERN', 'MONTHLY PROMO - NORTHERN BONANZA', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '207060.00', '184875.00', 9),
(51, 7848, 1, 'M-PACIFIC', 'MONTHLY PROMO - PACIFIC BONANZA', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '207060.00', '184875.00', 8),
(52, 7833, 1, 'M-PRGP', 'MONTHLY PROMO - PRESIDENTS ROUND GRILL PAN', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '19800.00', '17670.00', 0),
(53, 7822, 1, 'M-RC', 'MONTHLY PROMO - 10.5QT RAPID COOKWARE', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '30940.00', '27625.00', 0),
(54, 7800, 1, 'M-RCK 110V', 'MONTHLY PROMO - AUTOMATIC S/S RICE COOKER 110V', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '46480.00', '41500.00', 0),
(55, 7801, 1, 'M-RCK 220V', 'MONTHLY PROMO - AUTOMATIC S/S RICE COOKER 220V', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '44800.00', '40000.00', 0),
(56, 7831, 1, 'M-SBTA 110V', 'MONTHLY PROMO - SUPER BREAD TOASTER ADVANCED 110V', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '21280.00', '19000.00', 0),
(57, 7832, 1, 'M-SBTA 220V', 'MONTHLY PROMO - SUPER BREAD TOASTER ADVANCED 220V', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '19800.00', '17670.00', 0),
(58, 7850, 1, 'M-SOUTHERN', 'MONTHLY PROMO - SOUTHERN BONANZA WELLNESS PACKAGE', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '290640.00', '259500.00', 10),
(59, 7836, 1, 'M-THERMOTECH', 'MONTHLY PROMO - THERMOTECH', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '9968.00', '8900.00', 0),
(60, 7790, 1, 'M-UC 110V', 'MONTHLY PROMO - ULTRACORE 110V', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '71470.00', '63812.50', 0),
(61, 7791, 1, 'M-UC 220V', 'MONTHLY PROMO - ULTRACORE 220V', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '69860.00', '62375.00', 0),
(62, 7796, 1, 'M-UTECH 110V', 'MONTHLY PROMO - ULTRATECH 110V', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '59920.00', '53500.00', 0),
(63, 7797, 1, 'M-UTECH 220V', 'MONTHLY PROMO - ULTRATECH 220V', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '57960.00', '51750.00', 0),
(64, 7830, 1, 'M-UWK', 'MONTHLY PROMO - ULTIMATE WHISTLING KETTLE', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '13580.00', '12125.00', 0),
(65, 7829, 1, 'M-VFS', 'MONTHLY PROMO - VACUUM FRESH SET', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '20860.00', '18625.00', 0),
(66, 7843, 1, 'M-WESTERN', 'MONTHLY - WESTERN BONANZA', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '316680.00', '282750.00', 3),
(67, 7773, 2, 'B-11PC COOKWARE', ' BOOSTER - 11PC FAMILY COOKWARE SET', '2019-02-05 00:00:00', '2019-02-11 00:00:00', '0.00', '78680.00', '70250.00', 0),
(68, 7780, 2, 'B-4PC STEAMRWOK', ' BOOSTER - 4PC STEAMER WOK', '2019-02-05 00:00:00', '2019-02-11 00:00:00', '0.00', '42840.00', '38250.00', 0),
(69, 7777, 2, 'B-72PC ADRIAN ', ' BOOSTER - 72 ADRIAN FLATWARE SET', '2019-02-05 00:00:00', '2019-02-11 00:00:00', '0.00', '70420.00', '62875.00', 0),
(70, 7774, 2, 'B-8PC JUMBO', ' BOOSTER - 8PC JUMBO COOKWARE SET', '2019-02-05 00:00:00', '2019-02-11 00:00:00', '0.00', '78680.00', '70250.00', 0),
(71, 7772, 2, 'B-AIRTECH 110V', 'BOOSTER - AIRTECH 110V', '2019-02-05 00:00:00', '2019-02-11 00:00:00', '0.00', '119840.00', '107000.00', 0),
(72, 7771, 2, 'B-AIRTECH 220V', 'BOOSTER - AIRTECH 220V', '2019-02-05 00:00:00', '2019-02-11 00:00:00', '0.00', '114800.00', '102500.00', 0),
(73, 7782, 2, 'B-CTECH 110V', 'BOOSTER - COFFEETECH 110V', '2019-02-05 00:00:00', '2019-02-11 00:00:00', '0.00', '44520.00', '39750.00', 0),
(74, 7781, 2, 'B-CTECH 220V', 'BOOSTER - COFFEETECH 220V', '2019-02-05 00:00:00', '2019-02-11 00:00:00', '0.00', '42840.00', '38250.00', 0),
(75, 7779, 2, 'B-FBTECH 110V', ' BOOSTER - FOODBLENDERTECH 110V', '2019-02-05 00:00:00', '2019-02-11 00:00:00', '15000.00', '62720.00', '56000.00', 0),
(76, 7778, 2, 'B-FBTECH 220V', ' BOOSTER - FOODBLENDERTECH 220V', '2019-02-05 00:00:00', '2019-02-11 00:00:00', '15000.00', '59920.00', '53500.00', 0),
(77, 7784, 2, 'B-MCGT 110V', ' BOOSTER - MEGA CONTACT GRILL TOASTER 110V', '2019-02-05 00:00:00', '2019-02-11 00:00:00', '0.00', '44520.00', '39750.00', 0),
(78, 7783, 2, 'B-MCGT 220V', ' BOOSTER - MEGA CONTACT GRILL TOASTER 220V', '2019-02-05 00:00:00', '2019-02-11 00:00:00', '0.00', '42840.00', '38250.00', 0),
(79, 7770, 2, 'B-PACIFIC', ' BOOSTER - PACIFIC BONANZA', '2019-02-05 00:00:00', '2019-02-11 00:00:00', '0.00', '207060.00', '184875.00', 8),
(80, 7631, 2, 'B-RCK 110V', 'BOOSTER-RICE COOKWARE 110V', '2019-02-05 00:00:00', '2019-02-11 00:00:00', '0.00', '46480.00', '41500.00', 0),
(81, 7767, 2, 'B-RCK 220V', 'BOOSTER-RICE COOKWARE 220V', '2019-02-05 00:00:00', '2019-02-11 00:00:00', '0.00', '44800.00', '40000.00', 0),
(82, 7776, 2, 'B-UC 110V', ' BOOSTER - ULTRACORE 110V', '2019-02-05 00:00:00', '2019-02-11 00:00:00', '0.00', '71470.00', '63812.50', 0),
(83, 7775, 2, 'B-UC 220V', ' BOOSTER - ULTRACORE 220V', '2019-02-05 00:00:00', '2019-02-11 00:00:00', '0.00', '69860.00', '62375.00', 0),
(84, 7769, 2, 'B-WESTERN', 'BOOSTER - WESTERN BONANZA', '2019-02-05 00:00:00', '2019-02-11 00:00:00', '0.00', '316680.00', '287750.00', 3),
(85, 7852, 3, 'SPL-RCK 110V', 'SPECIALS-RICE COOKWARE 110V ', '2019-02-05 00:00:00', '2019-02-11 00:00:00', '11000.00', '46480.00', '41500.00', 0),
(86, 7768, 3, 'SPL-RCK 220V', 'SPECIALS-RICE COOKWARE 220V ', '2019-02-05 00:00:00', '2019-02-11 00:00:00', '11000.00', '44800.00', '40000.00', 0),
(87, 7761, 4, 'SLASH-JM', 'SLASH - JM', '2019-02-05 00:00:00', '2019-02-11 00:00:00', '0.00', '37900.00', '0.00', 0),
(88, 7759, 4, 'SLASH-RWOVA', 'SLASH - RWOVA 5 + 1', '2019-02-05 00:00:00', '2019-02-11 00:00:00', '0.00', '9900.00', '0.00', 0),
(89, 7760, 4, 'SLASH-RWOVA', 'SLASH - RWOVA', '2019-02-05 00:00:00', '2019-02-11 00:00:00', '0.00', '9900.00', '0.00', 0),
(90, 7763, 7, 'MG-CO', 'MANAGERS GATHERING - CAN OPENER', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '2500.00', '0.00', 0),
(91, 7762, 7, 'MG-KS', 'MANAGERS GATHERING - KITCHEN SHEARS', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '3500.00', '0.00', 0),
(92, 7766, 8, 'CONVENTION-JM', '2020 CONVENTION - JM', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '50900.00', '0.00', 0),
(93, 7764, 8, 'CONVENTION-MCGT', '2020 CONVENTION - MCGT', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '30000.00', '0.00', 0),
(94, 7765, 8, 'CONVENTION-RCK', '2020 CONVENTION - RCK', '2019-02-05 00:00:00', '2019-03-04 00:00:00', '0.00', '30000.00', '0.00', 0);

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
(1, 7823, 2915, 1, 1, '29700.00', '26510.00', 'CU', 0, 'N'),
(2, 7823, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(3, 7823, 3537, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(4, 7823, 1632, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(5, 7785, 1888, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(6, 7785, 1892, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(7, 7785, 1904, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(8, 7785, 1901, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(9, 7785, 958, 1, 1, '78680.00', '70250.00', 'CU', 1887, 'N'),
(10, 7785, 3996, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(11, 7785, 2907, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(12, 7824, 2051, 1, 1, '29700.00', '26510.00', 'CU', 0, 'N'),
(13, 7824, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(14, 7824, 3537, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(15, 7824, 1632, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(16, 7798, 2917, 1, 1, '56140.00', '50125.00', 'CU', 960, 'N'),
(17, 7798, 1632, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(18, 7798, 962, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(19, 7798, 4059, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(20, 7798, 2113, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(21, 7798, 2915, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(22, 7798, 4055, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(23, 7810, 972, 1, 1, '36400.00', '32500.00', 'CU', 0, 'N'),
(24, 7810, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(25, 7810, 4059, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(26, 7810, 2908, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(27, 7851, 4055, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(28, 7851, 1888, 1, 1, '248220.00', '221625.00', 'CU', 1887, 'N'),
(29, 7851, 1892, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(30, 7851, 1904, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(31, 7851, 1901, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(32, 7851, 958, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(33, 7851, 2051, 1, 1, '0.00', '0.00', 'CU', 3449, 'N'),
(34, 7851, 972, 1, 1, '0.00', '0.00', 'CU', 3449, 'N'),
(35, 7851, 1143, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(36, 7851, 3537, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(37, 7851, 3448, 1, 1, '0.00', '0.00', 'CU', 3449, 'N'),
(38, 7851, 1153, 1, 1, '0.00', '0.00', 'CU', 2913, 'N'),
(39, 7851, 1154, 1, 1, '0.00', '0.00', 'CU', 2913, 'N'),
(40, 7851, 2914, 1, 1, '0.00', '0.00', 'CU', 2913, 'N'),
(41, 7851, 3450, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(42, 7851, 4026, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(43, 7851, 2910, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(44, 7851, 2916, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(45, 7851, 1688, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(46, 7851, 2013, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(47, 7851, 1632, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(48, 7851, 1155, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(49, 7851, 2916, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(50, 7851, 963, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(51, 7851, 4026, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(52, 7851, 2910, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(53, 7851, 2013, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(54, 7817, 3575, 1, 4, '39900.00', '35625.00', 'CU', 3454, 'N'),
(55, 7817, 3577, 1, 4, '0.00', '0.00', 'CU', 3454, 'N'),
(56, 7817, 3576, 1, 4, '0.00', '0.00', 'CU', 3454, 'N'),
(57, 7817, 3450, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(58, 7817, 2013, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(59, 7818, 1650, 1, 4, '37940.00', '33875.00', 'CU', 1645, 'N'),
(60, 7818, 1649, 1, 4, '0.00', '0.00', 'CU', 1645, 'N'),
(61, 7818, 1651, 1, 4, '0.00', '0.00', 'CU', 1645, 'N'),
(62, 7818, 3450, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(63, 7818, 2013, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(64, 7819, 1742, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(65, 7819, 1741, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(66, 7819, 1740, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(67, 7819, 1739, 1, 4, '28140.00', '25125.00', 'CU', 1687, 'N'),
(68, 7819, 3450, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(69, 7819, 2013, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(70, 7820, 3572, 1, 1, '0.00', '0.00', 'CU', 3455, 'N'),
(71, 7820, 3570, 1, 1, '0.00', '0.00', 'CU', 3455, 'N'),
(72, 7820, 3573, 1, 1, '0.00', '0.00', 'CU', 3455, 'N'),
(73, 7820, 3574, 1, 1, '29400.00', '26250.00', 'CU', 3455, 'N'),
(74, 7820, 3450, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(75, 7820, 2013, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(76, 7821, 1655, 1, 1, '0.00', '0.00', 'CU', 1646, 'N'),
(77, 7821, 1652, 1, 1, '0.00', '0.00', 'CU', 1646, 'N'),
(78, 7821, 1653, 1, 1, '0.00', '0.00', 'CU', 1646, 'N'),
(79, 7821, 3440, 1, 1, '27860.00', '24875.00', 'CU', 1646, 'N'),
(80, 7821, 3450, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(81, 7821, 2013, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(82, 7837, 2910, 1, 1, '9968.00', '8900.00', 'CU', 0, 'N'),
(83, 7837, 1632, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(84, 7837, 3321, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(85, 7789, 3371, 1, 3, '0.00', '0.00', 'CU', 2140, 'N'),
(86, 7789, 3372, 1, 1, '0.00', '0.00', 'CU', 2140, 'N'),
(87, 7789, 985, 1, 1, '70420.00', '62875.00', 'CU', 2140, 'N'),
(88, 7789, 3996, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(89, 7789, 2907, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(90, 7799, 1153, 1, 1, '0.00', '0.00', 'CU', 2913, 'N'),
(91, 7799, 1154, 1, 1, '0.00', '0.00', 'CU', 2913, 'N'),
(92, 7799, 2914, 1, 1, '48440.00', '43250.00', 'CU', 2913, 'N'),
(93, 7799, 2915, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(94, 7799, 4055, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(95, 7758, 2051, 1, 1, '0.00', '0.00', 'CU', 3449, 'N'),
(96, 7758, 972, 1, 1, '0.00', '0.00', 'CU', 3449, 'N'),
(97, 7758, 3448, 1, 1, '78680.00', '70250.00', 'CU', 3449, 'N'),
(98, 7758, 3996, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(99, 7758, 2907, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(100, 7827, 2013, 1, 1, '23380.00', '20875.00', 'CU', 0, 'N'),
(101, 7827, 2916, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(102, 7827, 3452, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(103, 7811, 962, 1, 1, '36400.00', '32500.00', 'CU', 0, 'N'),
(104, 7811, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(105, 7811, 4059, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(106, 7811, 2908, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(107, 7847, 3371, 1, 3, '0.00', '0.00', 'CU', 2140, 'N'),
(108, 7847, 1739, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(109, 7847, 2116, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(110, 7847, 3372, 1, 1, '222600.00', '198750.00', 'CU', 2140, 'N'),
(111, 7847, 1741, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(112, 7847, 3575, 1, 4, '0.00', '0.00', 'CU', 3454, 'N'),
(113, 7847, 3577, 1, 4, '0.00', '0.00', 'CU', 3454, 'N'),
(114, 7847, 1632, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(115, 7847, 3576, 1, 4, '0.00', '0.00', 'CU', 3454, 'N'),
(116, 7847, 3557, 1, 4, '0.00', '0.00', 'CU', 3457, 'N'),
(117, 7847, 2113, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(118, 7847, 2917, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(119, 7847, 962, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(120, 7847, 3555, 1, 4, '0.00', '0.00', 'CU', 3457, 'N'),
(121, 7847, 1742, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(122, 7847, 3558, 1, 4, '0.00', '0.00', 'CU', 3457, 'N'),
(123, 7847, 3556, 1, 4, '0.00', '0.00', 'CU', 3457, 'N'),
(124, 7847, 985, 1, 1, '0.00', '0.00', 'CU', 2140, 'N'),
(125, 7847, 1740, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(126, 7847, 3372, 2, 1, '0.00', '0.00', 'SD', 2140, 'N'),
(127, 7847, 3371, 2, 3, '0.00', '0.00', 'SD', 2140, 'N'),
(128, 7847, 1688, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(129, 7847, 4026, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(130, 7847, 2914, 2, 1, '0.00', '0.00', 'CU', 2913, 'N'),
(131, 7847, 1154, 2, 1, '0.00', '0.00', 'CU', 2913, 'N'),
(132, 7847, 1153, 2, 1, '0.00', '0.00', 'CU', 2913, 'N'),
(133, 7847, 3452, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(134, 7847, 1147, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(135, 7847, 1155, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(136, 7847, 985, 2, 1, '0.00', '0.00', 'SD', 2140, 'N'),
(137, 7847, 2910, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(138, 7847, 4008, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(139, 7846, 4055, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(140, 7846, 1650, 1, 4, '0.00', '0.00', 'CU', 1645, 'N'),
(141, 7846, 1739, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(142, 7846, 962, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(143, 7846, 2113, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(144, 7846, 3371, 1, 3, '0.00', '0.00', 'CU', 2140, 'N'),
(145, 7846, 1632, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(146, 7846, 985, 1, 1, '0.00', '0.00', 'CU', 2140, 'N'),
(147, 7846, 1654, 1, 4, '0.00', '0.00', 'CU', 1647, 'N'),
(148, 7846, 1649, 1, 4, '0.00', '0.00', 'CU', 1645, 'N'),
(149, 7846, 1742, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(150, 7846, 1740, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(151, 7846, 3372, 1, 1, '218820.00', '195375.00', 'CU', 2140, 'N'),
(152, 7846, 2917, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(153, 7846, 1657, 1, 4, '0.00', '0.00', 'CU', 1647, 'N'),
(154, 7846, 3554, 1, 4, '0.00', '0.00', 'CU', 1647, 'N'),
(155, 7846, 1656, 1, 4, '0.00', '0.00', 'CU', 1647, 'N'),
(156, 7846, 1741, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(157, 7846, 2116, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(158, 7846, 1651, 1, 4, '0.00', '0.00', 'CU', 1645, 'N'),
(159, 7846, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(160, 7846, 1143, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(161, 7846, 4026, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(162, 7846, 3440, 2, 1, '0.00', '0.00', 'CU', 1646, 'N'),
(163, 7846, 1653, 2, 1, '0.00', '0.00', 'CU', 1646, 'N'),
(164, 7846, 1652, 2, 1, '0.00', '0.00', 'CU', 1646, 'N'),
(165, 7846, 2113, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(166, 7846, 1655, 2, 1, '0.00', '0.00', 'CU', 1646, 'N'),
(167, 7846, 1688, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(168, 7846, 963, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(169, 7846, 2910, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(170, 7846, 1143, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(171, 7846, 1076, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(172, 7842, 3448, 1, 1, '481320.00', '429750.00', 'CU', 0, 'N'),
(173, 7842, 3948, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(174, 7842, 1827, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(175, 7842, 3998, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(176, 7842, 3441, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(177, 7842, 1888, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(178, 7842, 1892, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(179, 7842, 1904, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(180, 7842, 1901, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(181, 7842, 958, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(182, 7842, 2005, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(183, 7842, 1153, 1, 1, '0.00', '0.00', 'CU', 2913, 'N'),
(184, 7842, 1154, 1, 1, '0.00', '0.00', 'CU', 2913, 'N'),
(185, 7842, 2914, 1, 1, '0.00', '0.00', 'CU', 2913, 'N'),
(186, 7842, 3527, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(187, 7842, 3451, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(188, 7842, 1076, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(189, 7842, 2013, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(190, 7842, 1143, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(191, 7842, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(192, 7842, 1632, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(193, 7842, 1827, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(194, 7842, 4055, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(195, 7842, 2051, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(196, 7842, 1155, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(197, 7842, 962, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(198, 7842, 2910, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(199, 7842, 963, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(200, 7812, 3542, 1, 1, '37940.00', '33875.00', 'CU', 0, 'N'),
(201, 7812, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(202, 7812, 4059, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(203, 7812, 2908, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(204, 7809, 1076, 1, 1, '37940.00', '33875.00', 'CU', 0, 'N'),
(205, 7809, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(206, 7809, 4059, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(207, 7809, 2908, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(208, 7815, 3555, 1, 4, '0.00', '0.00', 'CU', 3457, 'N'),
(209, 7815, 3556, 1, 4, '0.00', '0.00', 'CU', 3457, 'N'),
(210, 7815, 3557, 1, 4, '0.00', '0.00', 'CU', 3457, 'N'),
(211, 7815, 3558, 1, 4, '39900.00', '35625.00', 'CU', 3457, 'N'),
(212, 7815, 3450, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(213, 7815, 2013, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(214, 7816, 1657, 1, 4, '0.00', '0.00', 'CU', 1647, 'N'),
(215, 7816, 1656, 1, 4, '0.00', '0.00', 'CU', 1647, 'N'),
(216, 7816, 1654, 1, 4, '0.00', '0.00', 'CU', 1647, 'N'),
(217, 7816, 3554, 1, 4, '37940.00', '33875.00', 'CU', 1647, 'N'),
(218, 7816, 3450, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(219, 7816, 2013, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(220, 7813, 3561, 1, 1, '0.00', '0.00', 'CU', 3458, 'N'),
(221, 7813, 3563, 1, 1, '0.00', '0.00', 'CU', 3458, 'N'),
(222, 7813, 3564, 1, 1, '0.00', '0.00', 'CU', 3458, 'N'),
(223, 7813, 3566, 1, 1, '0.00', '0.00', 'CU', 3458, 'N'),
(224, 7813, 3567, 1, 1, '0.00', '0.00', 'CU', 3458, 'N'),
(225, 7813, 3568, 1, 1, '0.00', '0.00', 'CU', 3458, 'N'),
(226, 7813, 3569, 1, 1, '70840.00', '63250.00', 'CU', 3458, 'N'),
(227, 7813, 2013, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(228, 7813, 3450, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(229, 7814, 1661, 1, 1, '0.00', '0.00', 'CU', 1648, 'N'),
(230, 7814, 1660, 1, 1, '0.00', '0.00', 'CU', 1648, 'N'),
(231, 7814, 3207, 1, 1, '0.00', '0.00', 'CU', 1648, 'N'),
(232, 7814, 1664, 1, 1, '0.00', '0.00', 'CU', 1648, 'N'),
(233, 7814, 1659, 1, 1, '0.00', '0.00', 'CU', 1648, 'N'),
(234, 7814, 1662, 1, 1, '0.00', '0.00', 'CU', 1648, 'N'),
(235, 7814, 2906, 1, 1, '66920.00', '59750.00', 'CU', 1648, 'N'),
(236, 7814, 3450, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(237, 7814, 2013, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(238, 7807, 3531, 1, 1, '44520.00', '39750.00', 'CU', 0, 'N'),
(239, 7807, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(240, 7807, 4059, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(241, 7807, 2908, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(242, 7808, 3527, 1, 1, '42840.00', '38250.00', 'CU', 0, 'N'),
(243, 7808, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(244, 7808, 4059, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(245, 7808, 2908, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(246, 7825, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(247, 7825, 3537, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(248, 7825, 4057, 1, 1, '29540.00', '26375.00', 'CU', 0, 'N'),
(249, 7825, 1632, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(250, 7826, 4055, 1, 1, '27860.00', '24875.00', 'CU', 0, 'N'),
(251, 7826, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(252, 7826, 3537, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(253, 7826, 1632, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(254, 7845, 3576, 1, 4, '0.00', '0.00', 'CU', 3454, 'N'),
(255, 7845, 3577, 1, 4, '0.00', '0.00', 'CU', 3454, 'N'),
(256, 7845, 3575, 1, 4, '0.00', '0.00', 'CU', 3454, 'N'),
(257, 7845, 1742, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(258, 7845, 1741, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(259, 7845, 1740, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(260, 7845, 1739, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(261, 7845, 3555, 1, 4, '0.00', '0.00', 'CU', 3457, 'N'),
(262, 7845, 3556, 1, 4, '0.00', '0.00', 'CU', 3457, 'N'),
(263, 7845, 3557, 1, 4, '0.00', '0.00', 'CU', 3457, 'N'),
(264, 7845, 3558, 1, 4, '0.00', '0.00', 'CU', 3457, 'N'),
(265, 7845, 3561, 1, 1, '199920.00', '178500.00', 'CU', 3458, 'N'),
(266, 7845, 3563, 1, 1, '0.00', '0.00', 'CU', 3458, 'N'),
(267, 7845, 3564, 1, 1, '0.00', '0.00', 'CU', 3458, 'N'),
(268, 7845, 3566, 1, 1, '0.00', '0.00', 'CU', 3458, 'N'),
(269, 7845, 3567, 1, 1, '0.00', '0.00', 'CU', 3458, 'N'),
(270, 7845, 3568, 1, 1, '0.00', '0.00', 'CU', 3458, 'N'),
(271, 7845, 3569, 1, 1, '0.00', '0.00', 'CU', 3458, 'N'),
(272, 7845, 3572, 1, 1, '0.00', '0.00', 'CU', 3455, 'N'),
(273, 7845, 3570, 1, 1, '0.00', '0.00', 'CU', 3455, 'N'),
(274, 7845, 3573, 1, 1, '0.00', '0.00', 'CU', 3455, 'N'),
(275, 7845, 3574, 1, 1, '0.00', '0.00', 'CU', 3455, 'N'),
(276, 7845, 4055, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(277, 7845, 1076, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(278, 7845, 2013, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(279, 7845, 2113, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(280, 7845, 1143, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(281, 7845, 3452, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(282, 7845, 1688, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(283, 7845, 962, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(284, 7844, 1741, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(285, 7844, 1740, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(286, 7844, 1649, 1, 4, '0.00', '0.00', 'CU', 1645, 'N'),
(287, 7844, 1651, 1, 4, '0.00', '0.00', 'CU', 1645, 'N'),
(288, 7844, 1657, 1, 4, '0.00', '0.00', 'CU', 1647, 'N'),
(289, 7844, 1656, 1, 4, '0.00', '0.00', 'CU', 1647, 'N'),
(290, 7844, 1654, 1, 4, '0.00', '0.00', 'CU', 1647, 'N'),
(291, 7844, 3554, 1, 4, '0.00', '0.00', 'CU', 1647, 'N'),
(292, 7844, 1739, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(293, 7844, 1661, 1, 1, '191100.00', '170625.00', 'CU', 1648, 'N'),
(294, 7844, 1655, 1, 1, '0.00', '0.00', 'CU', 1646, 'N'),
(295, 7844, 3207, 1, 1, '0.00', '0.00', 'CU', 1648, 'N'),
(296, 7844, 1664, 1, 1, '0.00', '0.00', 'CU', 1648, 'N'),
(297, 7844, 1659, 1, 1, '0.00', '0.00', 'CU', 1648, 'N'),
(298, 7844, 1662, 1, 1, '0.00', '0.00', 'CU', 1648, 'N'),
(299, 7844, 2906, 1, 1, '0.00', '0.00', 'CU', 1648, 'N'),
(300, 7844, 1660, 1, 1, '0.00', '0.00', 'CU', 1648, 'N'),
(301, 7844, 1650, 1, 4, '0.00', '0.00', 'CU', 1645, 'N'),
(302, 7844, 1652, 1, 1, '0.00', '0.00', 'CU', 1646, 'N'),
(303, 7844, 1653, 1, 1, '0.00', '0.00', 'CU', 1646, 'N'),
(304, 7844, 3440, 1, 1, '0.00', '0.00', 'CU', 1646, 'N'),
(305, 7844, 962, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(306, 7844, 1742, 1, 4, '0.00', '0.00', 'CU', 1687, 'N'),
(307, 7844, 3371, 2, 3, '0.00', '0.00', 'CU', 2140, 'N'),
(308, 7844, 3372, 2, 1, '0.00', '0.00', 'CU', 2140, 'N'),
(309, 7844, 985, 2, 1, '0.00', '0.00', 'CU', 2140, 'N'),
(310, 7844, 1632, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(311, 7844, 962, 2, 1, '0.00', '0.00', 'SD', 960, 'N'),
(312, 7844, 2113, 2, 1, '0.00', '0.00', 'SD', 960, 'N'),
(313, 7844, 4059, 2, 1, '0.00', '0.00', 'SD', 960, 'N'),
(314, 7844, 1632, 2, 1, '0.00', '0.00', 'SD', 960, 'N'),
(315, 7844, 2917, 2, 1, '0.00', '0.00', 'SD', 960, 'N'),
(316, 7844, 1155, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(317, 7844, 2910, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(318, 7844, 963, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(319, 7834, 3545, 1, 1, '13580.00', '12125.00', 'CU', 0, 'N'),
(320, 7834, 2916, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(321, 7834, 3452, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(322, 7792, 3549, 1, 1, '62720.00', '56000.00', 'CU', 0, 'N'),
(323, 7792, 2915, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(324, 7792, 4055, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(325, 7793, 3548, 1, 1, '59920.00', '53500.00', 'CU', 0, 'N'),
(326, 7793, 2915, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(327, 7793, 4055, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(328, 7841, 455, 1, 1, '895020.00', '799125.00', 'CU', 0, 'N'),
(329, 7841, 1827, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(330, 7841, 2005, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(331, 7841, 3441, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(332, 7841, 3948, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(333, 7841, 3548, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(334, 7841, 3998, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(335, 7841, 2915, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(336, 7841, 4055, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(337, 7841, 3451, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(338, 7841, 962, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(339, 7841, 2113, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(340, 7841, 2116, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(341, 7841, 1632, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(342, 7841, 2917, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(343, 7841, 1076, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(344, 7841, 1153, 1, 1, '0.00', '0.00', 'CU', 2913, 'N'),
(345, 7841, 1154, 1, 1, '0.00', '0.00', 'CU', 2913, 'N'),
(346, 7841, 2914, 1, 1, '0.00', '0.00', 'CU', 2913, 'N'),
(347, 7841, 1888, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(348, 7841, 1892, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(349, 7841, 1904, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(350, 7841, 1901, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(351, 7841, 958, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(352, 7841, 3450, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(353, 7841, 3201, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(354, 7841, 2051, 1, 1, '0.00', '0.00', 'CU', 3449, 'N'),
(355, 7841, 972, 1, 1, '0.00', '0.00', 'CU', 3449, 'N'),
(356, 7841, 3448, 1, 1, '0.00', '0.00', 'CU', 3449, 'N'),
(357, 7841, 3451, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(358, 7841, 3452, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(359, 7841, 3542, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(360, 7841, 2907, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(361, 7841, 1147, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(362, 7841, 1143, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(363, 7841, 3206, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(364, 7841, 4026, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(365, 7841, 1632, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(366, 7841, 2910, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(367, 7841, 963, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(368, 7841, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(369, 7841, 1827, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(370, 7841, 1688, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(371, 7841, 1143, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(372, 7841, 2005, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(373, 7841, 963, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(374, 7841, 2916, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(375, 7841, 3998, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(376, 7841, 1076, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(377, 7841, 2113, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(378, 7841, 1632, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(379, 7841, 2013, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(380, 7794, 969, 1, 1, '59920.00', '53500.00', 'CU', 0, 'N'),
(381, 7794, 3673, 1, 1, '0.00', '0.00', 'SD', 0, 'N'),
(382, 7794, 2915, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(383, 7794, 4055, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(384, 7795, 1827, 1, 1, '57960.00', '51750.00', 'CU', 0, 'N'),
(385, 7795, 2915, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(386, 7795, 4055, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(387, 7839, 1827, 1, 1, '57960.00', '51750.00', 'CU', 0, 'N'),
(388, 7839, 455, 1, 1, '74900.00', '66875.00', 'CU', 0, 'N'),
(389, 7839, 2907, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(390, 7839, 962, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(391, 7840, 1827, 1, 1, '57960.00', '51750.00', 'CU', 0, 'N'),
(392, 7840, 3948, 1, 1, '69860.00', '62375.00', 'CU', 0, 'N'),
(393, 7840, 2907, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(394, 7840, 962, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(395, 7835, 3202, 1, 1, '0.00', '0.00', 'CU', 3370, 'N'),
(396, 7835, 3203, 1, 1, '19800.00', '17670.00', 'CU', 3370, 'N'),
(397, 7835, 2916, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(398, 7835, 3452, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(399, 7828, 3537, 1, 1, '14560.00', '13000.00', 'CU', 0, 'N'),
(400, 7828, 2916, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(401, 7828, 3452, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(402, 7788, 2538, 1, 1, '76636.00', '68425.00', 'CU', 0, 'N'),
(403, 7788, 3996, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(404, 7788, 2907, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(405, 7787, 455, 1, 1, '74900.00', '66875.00', 'CU', 0, 'N'),
(406, 7787, 2907, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(407, 7787, 3996, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(408, 7838, 3948, 1, 1, '69860.00', '62375.00', 'CU', 0, 'N'),
(409, 7838, 455, 1, 1, '74900.00', '66875.00', 'CU', 0, 'N'),
(410, 7838, 2907, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(411, 7838, 962, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(412, 7806, 2016, 1, 1, '44520.00', '39750.00', 'CU', 0, 'N'),
(413, 7806, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(414, 7806, 4059, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(415, 7806, 2908, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(416, 7805, 2005, 1, 1, '42840.00', '38250.00', 'CU', 0, 'N'),
(417, 7805, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(418, 7805, 4059, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(419, 7805, 2908, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(420, 7802, 3505, 1, 1, '41440.00', '37000.00', 'CU', 0, 'N'),
(421, 7802, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(422, 7802, 4059, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(423, 7802, 2908, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(424, 7803, 3451, 1, 1, '39760.00', '35500.00', 'CU', 0, 'N'),
(425, 7803, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(426, 7803, 4059, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(427, 7803, 2908, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(428, 7849, 4055, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(429, 7849, 3548, 1, 1, '207060.00', '184875.00', 'CU', 0, 'N'),
(430, 7849, 1827, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(431, 7849, 3527, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(432, 7849, 962, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(433, 7849, 2113, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(434, 7849, 2116, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(435, 7849, 1632, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(436, 7849, 2917, 1, 1, '0.00', '0.00', 'CU', 960, 'N'),
(437, 7849, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(438, 7849, 2910, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(439, 7849, 1143, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(440, 7849, 1688, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(441, 7849, 1076, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(442, 7849, 1155, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(443, 7849, 3542, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(444, 7849, 1632, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(445, 7848, 4055, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(446, 7848, 2005, 1, 1, '207060.00', '184875.00', 'CU', 0, 'N'),
(447, 7848, 1827, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(448, 7848, 3998, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(449, 7848, 3948, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(450, 7848, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(451, 7848, 2910, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(452, 7848, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(453, 7848, 1155, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(454, 7848, 2915, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(455, 7848, 1076, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(456, 7848, 2916, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(457, 7833, 2908, 1, 1, '19800.00', '17670.00', 'CU', 0, 'N'),
(458, 7833, 2916, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(459, 7833, 3452, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(460, 7822, 2907, 1, 1, '30940.00', '27625.00', 'CU', 0, 'N'),
(461, 7822, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(462, 7822, 3537, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(463, 7822, 1632, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(464, 7800, 4001, 1, 1, '46480.00', '41500.00', 'CU', 0, 'N'),
(465, 7800, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(466, 7800, 4059, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(467, 7800, 2908, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(468, 7801, 3998, 1, 1, '44800.00', '40000.00', 'CU', 0, 'N'),
(469, 7801, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(470, 7801, 4059, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(471, 7801, 2908, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(472, 7831, 936, 1, 1, '21280.00', '19000.00', 'CU', 0, 'N'),
(473, 7831, 2916, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(474, 7831, 3452, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(475, 7832, 891, 1, 1, '19800.00', '17670.00', 'CU', 0, 'N'),
(476, 7832, 2916, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(477, 7832, 3452, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(478, 7850, 4055, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(479, 7850, 3451, 1, 1, '290640.00', '259500.00', 'CU', 0, 'N'),
(480, 7850, 3441, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(481, 7850, 2915, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(482, 7850, 1827, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(483, 7850, 3548, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(484, 7850, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(485, 7850, 1076, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(486, 7850, 2113, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(487, 7850, 1143, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(488, 7850, 2910, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(489, 7850, 1153, 2, 1, '0.00', '0.00', 'SD', 2913, 'N'),
(490, 7850, 1154, 2, 1, '0.00', '0.00', 'SD', 2913, 'N'),
(491, 7850, 2914, 2, 1, '0.00', '0.00', 'SD', 2913, 'N'),
(492, 7850, 1155, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(493, 7850, 1147, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(494, 7850, 1632, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(495, 7850, 963, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(496, 7836, 1155, 1, 1, '9968.00', '8900.00', 'CU', 0, 'N'),
(497, 7836, 3321, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(498, 7836, 1632, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(499, 7790, 3949, 1, 1, '71470.00', '63812.50', 'CU', 0, 'N'),
(500, 7790, 3996, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(501, 7790, 2907, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(502, 7791, 3948, 1, 1, '69860.00', '62375.00', 'CU', 0, 'N'),
(503, 7791, 3996, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(504, 7791, 2907, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(505, 7796, 3253, 1, 1, '59920.00', '53500.00', 'CU', 0, 'N'),
(506, 7796, 2915, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(507, 7796, 4055, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(508, 7797, 3201, 1, 1, '57960.00', '51750.00', 'CU', 0, 'N'),
(509, 7797, 2915, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(510, 7797, 4055, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(511, 7830, 3450, 1, 1, '13580.00', '12125.00', 'CU', 0, 'N'),
(512, 7830, 2916, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(513, 7830, 3452, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(514, 7829, 1147, 1, 1, '20860.00', '18625.00', 'CU', 0, 'N'),
(515, 7829, 2916, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(516, 7829, 3452, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(517, 7843, 2005, 1, 1, '316680.00', '282750.00', 'CU', 0, 'N'),
(518, 7843, 1827, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(519, 7843, 3998, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(520, 7843, 3948, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(521, 7843, 3448, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(522, 7843, 455, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(523, 7843, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(524, 7843, 1076, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(525, 7843, 2910, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(526, 7843, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(527, 7843, 1632, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(528, 7843, 891, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(529, 7843, 1155, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(530, 7843, 2916, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(531, 7843, 2910, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(532, 7843, 2013, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(533, 7843, 962, 2, 1, '0.00', '0.00', 'SD', 960, 'N'),
(534, 7843, 4026, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(535, 7843, 2113, 2, 1, '0.00', '0.00', 'SD', 960, 'N'),
(536, 7843, 2116, 2, 1, '0.00', '0.00', 'SD', 960, 'N'),
(537, 7843, 1632, 2, 1, '0.00', '0.00', 'SD', 960, 'N'),
(538, 7843, 2917, 2, 1, '0.00', '0.00', 'SD', 960, 'N'),
(539, 7773, 1888, 1, 1, '78680.00', '70250.00', 'CU', 1887, 'N'),
(540, 7773, 1904, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(541, 7773, 958, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(542, 7773, 1892, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(543, 7773, 1901, 1, 1, '0.00', '0.00', 'CU', 1887, 'N'),
(544, 7773, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(545, 7773, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(546, 7773, 4055, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(547, 7780, 3448, 1, 1, '42840.00', '38250.00', 'CU', 0, 'N'),
(548, 7780, 3450, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(549, 7780, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(550, 7780, 2916, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(551, 7777, 3371, 1, 3, '0.00', '0.00', 'CU', 2140, 'N'),
(552, 7777, 3372, 1, 1, '70420.00', '62875.00', 'CU', 2140, 'N'),
(553, 7777, 985, 1, 1, '0.00', '0.00', 'CU', 2140, 'N'),
(554, 7777, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(555, 7777, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(556, 7777, 4055, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(557, 7774, 2051, 1, 1, '78680.00', '70250.00', 'CU', 3449, 'N'),
(558, 7774, 3448, 1, 1, '0.00', '0.00', 'CU', 3449, 'N'),
(559, 7774, 972, 1, 1, '0.00', '0.00', 'CU', 3449, 'N'),
(560, 7774, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(561, 7774, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(562, 7774, 4055, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(563, 7772, 2915, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(564, 7772, 3996, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(565, 7772, 3442, 1, 1, '119840.00', '107000.00', 'CU', 0, 'N'),
(566, 7771, 3441, 1, 1, '114800.00', '102500.00', 'CU', 0, 'N'),
(567, 7771, 2915, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(568, 7771, 3996, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(569, 7782, 3531, 1, 1, '44520.00', '39750.00', 'CU', 0, 'N'),
(570, 7782, 3450, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(571, 7782, 2916, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(572, 7782, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(573, 7781, 3527, 1, 1, '42840.00', '38250.00', 'CU', 0, 'N'),
(574, 7781, 3450, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(575, 7781, 2916, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(576, 7781, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(577, 7779, 3549, 1, 1, '62720.00', '56000.00', 'CU', 0, 'N'),
(578, 7779, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(579, 7779, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(580, 7779, 4055, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(581, 7778, 3548, 1, 1, '59920.00', '53500.00', 'CU', 0, 'N'),
(582, 7778, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(583, 7778, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(584, 7778, 4055, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(585, 7784, 2016, 1, 1, '44520.00', '39750.00', 'CU', 0, 'N'),
(586, 7784, 3450, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(587, 7784, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(588, 7784, 2916, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(589, 7783, 2005, 1, 1, '42840.00', '38250.00', 'CU', 0, 'N'),
(590, 7783, 3450, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(591, 7783, 2916, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(592, 7783, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(593, 7770, 2005, 1, 1, '207060.00', '184875.00', 'CU', 0, 'N'),
(594, 7770, 1827, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(595, 7770, 3948, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(596, 7770, 3998, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(597, 7770, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(598, 7770, 2910, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(599, 7770, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(600, 7770, 4055, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(601, 7770, 2915, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(602, 7770, 2916, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(603, 7770, 3996, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(604, 7770, 1155, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(605, 7770, 2907, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(606, 7631, 4001, 1, 1, '46480.00', '41500.00', 'CU', 0, 'N'),
(607, 7631, 3450, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(608, 7631, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(609, 7631, 2916, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(610, 7767, 3998, 1, 1, '44800.00', '40000.00', 'CU', 0, 'N'),
(611, 7767, 3450, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(612, 7767, 2916, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(613, 7767, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(614, 7776, 3949, 1, 1, '71470.00', '63812.50', 'CU', 0, 'N'),
(615, 7776, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(616, 7776, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(617, 7776, 4055, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(618, 7775, 3948, 1, 1, '69860.00', '62375.00', 'CU', 0, 'N'),
(619, 7775, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(620, 7775, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(621, 7775, 4055, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(622, 7769, 2005, 1, 1, '316680.00', '287750.00', 'CU', 0, 'N'),
(623, 7769, 1827, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(624, 7769, 3948, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(625, 7769, 3998, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(626, 7769, 3448, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(627, 7769, 455, 1, 1, '0.00', '0.00', 'CU', 0, 'N'),
(628, 7769, 1076, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(629, 7769, 1632, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(630, 7769, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(631, 7769, 2910, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(632, 7769, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(633, 7769, 891, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(634, 7769, 962, 2, 1, '0.00', '0.00', 'SD', 960, 'N'),
(635, 7769, 2113, 2, 1, '0.00', '0.00', 'SD', 960, 'N'),
(636, 7769, 4059, 2, 1, '0.00', '0.00', 'SD', 960, 'N'),
(637, 7769, 1632, 2, 1, '0.00', '0.00', 'SD', 960, 'N'),
(638, 7769, 2917, 2, 1, '0.00', '0.00', 'SD', 960, 'N'),
(639, 7769, 2910, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(640, 7769, 2916, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(641, 7769, 2013, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(642, 7769, 4026, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(643, 7769, 1155, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(644, 7769, 2005, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(645, 7769, 2908, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(646, 7852, 4055, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(647, 7852, 2908, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(648, 7852, 4001, 1, 1, '46480.00', '41500.00', 'CU', 0, 'N'),
(649, 7768, 3998, 1, 1, '44800.00', '40000.00', 'CU', 0, 'N'),
(650, 7768, 2908, 2, 1, '0.00', '0.00', 'SD', 0, 'N'),
(651, 7768, 4055, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(652, 7761, 1827, 1, 1, '37900.00', '0.00', 'CU', 0, 'N'),
(653, 7761, 3537, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(654, 7761, 1155, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(655, 7759, 4008, 1, 5, '9900.00', '0.00', 'CU', 0, 'Y'),
(656, 7759, 4008, 2, 1, '0.00', '0.00', 'CU', 0, 'N'),
(657, 7760, 4008, 1, 1, '9900.00', '0.00', 'CU', 0, 'N'),
(658, 7763, 963, 1, 1, '2500.00', '0.00', 'CU', 0, 'N'),
(659, 7762, 1632, 1, 1, '3500.00', '0.00', 'CU', 0, 'N'),
(660, 7766, 1827, 1, 1, '50900.00', '0.00', 'SD', 0, 'N'),
(661, 7764, 2005, 1, 1, '30000.00', '0.00', 'SD', 0, 'N'),
(662, 7765, 3998, 1, 1, '30000.00', '0.00', 'SD', 0, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `shop_cart_tmp`
--

CREATE TABLE `shop_cart_tmp` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `promo_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `date_cart` datetime NOT NULL,
  `promo_expire` char(1) NOT NULL DEFAULT 'N',
  `tmp_user_id` varchar(255) NOT NULL,
  `amount_retained` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_cart_tmp`
--

INSERT INTO `shop_cart_tmp` (`id`, `user_id`, `promo_id`, `item_id`, `quantity`, `amount`, `date_cart`, `promo_expire`, `tmp_user_id`, `amount_retained`) VALUES
(1, 0, 7759, 0, 1, '49500.00', '2019-02-07 13:59:03', 'N', '', 'N'),
(2, 0, 7768, 0, 1, '44800.00', '2019-02-07 13:59:13', 'N', '', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `shop_idcf`
--

CREATE TABLE `shop_idcf` (
  `id` bigint(20) NOT NULL,
  `sponsor_id` bigint(20) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `n_address` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `civil_status` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `n_mobile_no` varchar(255) NOT NULL,
  `tin` varchar(255) NOT NULL,
  `sss_no` varchar(255) NOT NULL,
  `nick_name` varchar(255) NOT NULL,
  `home_tel_no` varchar(255) NOT NULL,
  `office_tel_no` varchar(255) NOT NULL,
  `admin_fee` decimal(10,0) NOT NULL,
  `s_last_name` varchar(255) NOT NULL,
  `s_first_name` varchar(255) NOT NULL,
  `s_middle_name` varchar(255) NOT NULL,
  `s_mobile_no` varchar(255) NOT NULL,
  `s_address` varchar(255) NOT NULL,
  `shop_idcf_status` varchar(255) NOT NULL,
  `tmp_user_id` varchar(255) NOT NULL,
  `remarks` varchar(255) NOT NULL,
  `img_path` varchar(255) NOT NULL,
  `img_file_type` varchar(255) NOT NULL,
  `cash_payment` varchar(1) NOT NULL,
  `member` varchar(1) NOT NULL,
  `depositing_bank` varchar(255) NOT NULL,
  `deposit_ref_no` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indexes for table `shop_cart_tmp`
--
ALTER TABLE `shop_cart_tmp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_idcf`
--
ALTER TABLE `shop_idcf`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `promo_item_breakdown`
--
ALTER TABLE `promo_item_breakdown`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=663;

--
-- AUTO_INCREMENT for table `shop_cart_tmp`
--
ALTER TABLE `shop_cart_tmp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shop_idcf`
--
ALTER TABLE `shop_idcf`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
