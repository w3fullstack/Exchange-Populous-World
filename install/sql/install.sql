-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2018 at 08:07 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tradebox_blank`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `about` text,
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `password_reset_token` varchar(20) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `ip_address` varchar(14) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`) VALUES
(1, 'Johan', 'Doye', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'admin@demo.com', '827ccb0eea8a706c4c34a16891f84e7b', '', 'upload/settings/2d4a7288b79c471455b6b0bdd1be02fe.png', '2018-11-03 06:08:45', '2018-10-09 10:56:58', '::1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `page` int(11) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `script` text,
  `url` varchar(255) DEFAULT NULL,
  `serial_position` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`id`, `name`, `page`, `image`, `script`, `url`, `serial_position`, `status`, `date`) VALUES
(1, 'coinmarket-top', 2, 'upload/advertisement/ff5a204fdd1722068e78222fd1d24a82.png', NULL, 'https://www.bdtask.com/', 1, 1, '2018-10-09 08:54:37'),
(2, 'coinmarket-bottom', 2, 'upload/advertisement/ff5a204fdd1722068e78222fd1d24a82.png', NULL, 'https://www.bdtask.com/', 2, 1, '2018-10-09 08:54:40'),
(3, 'exchange-top', 4, 'upload/advertisement/ff5a204fdd1722068e78222fd1d24a82.png', NULL, 'https://www.bdtask.com/', 1, 1, '2018-10-09 08:54:44'),
(4, 'exchange-bottom', 4, 'upload/advertisement/ff5a204fdd1722068e78222fd1d24a82.png', NULL, 'https://www.bdtask.com/', 2, 1, '2018-10-09 08:54:49'),
(5, 'news-sidebar-top', 9, 'upload/advertisement/dff78ee612b37fc12c9e7fa94839d855.jpg', NULL, 'https://www.bdtask.com/', 1, 1, '2018-07-10 07:00:40'),
(6, 'news-sidebar-bottom', 9, 'upload/advertisement/7fabc49dd69e0a0d6e111f3fcae0118a.jpg', NULL, 'https://www.bdtask.com/', 2, 1, '2018-07-10 07:02:18'),
(7, 'news-top', 9, 'upload/advertisement/ff5a204fdd1722068e78222fd1d24a82.jpg', NULL, 'https://www.bdtask.com/', 3, 1, '2018-07-10 06:54:51'),
(8, 'news-bottom', 9, 'upload/advertisement/515c86dd13ace9254f792fadc1efd026.png', NULL, 'https://www.bdtask.com/', 4, 1, '2018-04-09 06:23:18'),
(9, 'news details-top', 26, 'upload/advertisement/515c86dd13ace9254f792fadc1efd026.png', NULL, 'https://www.bdtask.com/', 3, 1, '2018-04-09 06:23:18'),
(10, 'news details-bottom', 26, 'upload/advertisement/515c86dd13ace9254f792fadc1efd026.png', NULL, 'https://www.bdtask.com/', 4, 1, '2018-04-09 06:23:18'),
(11, 'news details-sidebar-top', 26, 'upload/advertisement/a8ebbac00256de66da640053639f5644.png', NULL, 'https://www.bdtask.com/', 1, 1, '2018-04-09 06:22:19'),
(12, 'news details-sidebar-bottom', 26, 'upload/advertisement/a8ebbac00256de66da640053639f5644.png', NULL, 'https://www.bdtask.com/', 2, 1, '2018-04-09 06:20:40'),
(13, 'Price-bottom', 18, 'upload/advertisement/515c86dd13ace9254f792fadc1efd026.png', NULL, 'https://www.bdtask.com/', 5, 1, '2018-04-09 06:23:18'),
(14, 'Price-top', 18, 'upload/advertisement/515c86dd13ace9254f792fadc1efd026.png', NULL, 'https://www.bdtask.com/', 3, 1, '2018-04-09 06:23:18'),
(15, 'Price-middle', 18, 'upload/advertisement/515c86dd13ace9254f792fadc1efd026.png', NULL, 'https://www.bdtask.com/', 4, 1, '2018-04-09 06:23:18'),
(16, 'Price-sidebar-top', 18, 'upload/advertisement/a8ebbac00256de66da640053639f5644.png', NULL, 'https://www.bdtask.com/', 1, 1, '2018-04-09 06:22:19'),
(17, 'Price-sidebar-bottom', 18, 'upload/advertisement/a8ebbac00256de66da640053639f5644.png', NULL, 'https://www.bdtask.com/', 2, 1, '2018-04-09 06:20:40');

-- --------------------------------------------------------

--
-- Table structure for table `crypto_payments`
--

CREATE TABLE `crypto_payments` (
  `paymentID` int(11) UNSIGNED NOT NULL,
  `boxID` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `boxType` enum('paymentbox','captchabox') NOT NULL,
  `orderID` varchar(50) NOT NULL DEFAULT '',
  `userID` varchar(50) NOT NULL DEFAULT '',
  `countryID` varchar(3) NOT NULL DEFAULT '',
  `coinLabel` varchar(6) NOT NULL DEFAULT '',
  `amount` double(20,8) NOT NULL DEFAULT '0.00000000',
  `amountUSD` double(20,8) NOT NULL DEFAULT '0.00000000',
  `unrecognised` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `addr` varchar(34) NOT NULL DEFAULT '',
  `txID` char(64) NOT NULL DEFAULT '',
  `txDate` datetime DEFAULT NULL,
  `txConfirmed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `txCheckDate` datetime DEFAULT NULL,
  `processed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `processedDate` datetime DEFAULT NULL,
  `recordCreated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_affiliation`
--

CREATE TABLE `dbt_affiliation` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `commission` double(19,8) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbt_affiliation`
--

INSERT INTO `dbt_affiliation` (`id`, `type`, `commission`, `status`) VALUES
(1, 'PERCENT', 1.00000000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dbt_balance`
--

CREATE TABLE `dbt_balance` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `currency_symbol` varchar(100) NOT NULL,
  `balance` double(19,8) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_balance_log`
--

CREATE TABLE `dbt_balance_log` (
  `log_id` bigint(22) NOT NULL,
  `balance_id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `currency_symbol` varchar(100) NOT NULL,
  `transaction_type` varchar(100) NOT NULL,
  `transaction_amount` double(19,8) NOT NULL,
  `transaction_fees` double(19,8) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_biding`
--

CREATE TABLE `dbt_biding` (
  `id` bigint(22) NOT NULL,
  `bid_type` varchar(50) NOT NULL,
  `bid_price` double(19,8) NOT NULL,
  `bid_qty` double(19,8) NOT NULL,
  `bid_qty_available` double(19,8) NOT NULL,
  `total_amount` double(19,8) NOT NULL,
  `amount_available` double(19,8) NOT NULL,
  `coin_id` varchar(50) DEFAULT NULL,
  `currency_symbol` varchar(100) NOT NULL,
  `market_id` int(100) DEFAULT NULL,
  `market_symbol` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `open_order` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fees_amount` double(19,8) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '"1=Complete, 2=Running"'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_biding_log`
--

CREATE TABLE `dbt_biding_log` (
  `log_id` bigint(22) NOT NULL,
  `bid_id` bigint(22) NOT NULL,
  `bid_type` varchar(10) NOT NULL,
  `bid_price` double(19,8) NOT NULL,
  `complete_qty` double(19,8) NOT NULL,
  `complete_amount` double(19,8) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `coin_id` varchar(100) DEFAULT NULL,
  `currency_symbol` varchar(100) NOT NULL,
  `market_id` int(11) DEFAULT NULL,
  `market_symbol` varchar(100) NOT NULL,
  `success_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fees_amount` double(19,8) NOT NULL,
  `available_amount` double(19,8) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_chat`
--

CREATE TABLE `dbt_chat` (
  `id` bigint(21) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_coinhistory`
--

CREATE TABLE `dbt_coinhistory` (
  `id` int(11) NOT NULL,
  `coin_symbol` varchar(100) NOT NULL,
  `market_symbol` varchar(100) NOT NULL,
  `last_price` double(19,8) NOT NULL,
  `total_coin_supply` double(19,8) NOT NULL,

  `price_high_1min` double(19,8) NOT NULL,
  `price_low_1min` double(19,8) NOT NULL,
  `price_high_15min` double(19,8) NOT NULL,
  `price_low_15min` double(19,8) NOT NULL,  
  `price_high_30min` double(19,8) NOT NULL,
  `price_low_30min` double(19,8) NOT NULL,  
  `price_high_45min` double(19,8) NOT NULL,
  `price_low_45min` double(19,8) NOT NULL,  

  `price_high_1h` double(19,8) NOT NULL,
  `price_low_1h` double(19,8) NOT NULL,
  `price_change_1h` double(19,8) NOT NULL,
  `volume_1h` double(19,8) NOT NULL,

  `price_high_24h` double(19,8) NOT NULL,
  `price_low_24h` double(19,8) NOT NULL,
  `price_change_24h` double(19,8) NOT NULL,
  `volume_24h` double(19,8) NOT NULL,
  `open` double(19,8) NOT NULL,
  `close` double(19,8) NOT NULL,
  `volumefrom` double(19,8) NOT NULL,
  `volumeto` double(19,8) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_coinpair`
--

CREATE TABLE `dbt_coinpair` (
  `id` int(11) NOT NULL,
  `market_id` int(11) DEFAULT NULL,
  `market_symbol` varchar(100) NOT NULL,
  `coin_id` int(11) DEFAULT NULL,
  `currency_symbol` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `symbol` varchar(100) NOT NULL,
  `initial_price` double(19,8) DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbt_coinpair`
--

INSERT INTO `dbt_coinpair` (`id`, `market_id`, `market_symbol`, `coin_id`, `currency_symbol`, `name`, `full_name`, `symbol`, `initial_price`, `status`) VALUES
(1, NULL, 'BTC', NULL, 'LTC', 'BTC/ LTC', 'Litecoin Exchange', 'LTC_BTC', NULL, 1),
(2, NULL, 'BTC', NULL, 'DASH', 'BTC/ DASH', 'DASH Exchange', 'DASH_BTC', NULL, 1),
(3, NULL, 'BTC', NULL, 'ADA', 'BTC/ ADA', 'ADA Exchange', 'ADA_BTC', NULL, 1),
(4, NULL, 'USD', NULL, 'BTC', 'USDT/ BTC', 'Bitcoin (BTC) Exchange', 'BTC_USD', NULL, 1),
(5, NULL, 'USD', NULL, 'LTC', 'USDT/ LTC', 'Litecoin (LTC) Exchange', 'LTC_USD', NULL, 1),
(6, NULL, 'USD', NULL, 'DASH', 'USDT/ DASH', 'DigitalCash (DASH) Exchange', 'DASH_USD', NULL, 1),
(7, NULL, 'USD', NULL, 'DOGE', 'USDT/ DOGE', 'Dogecoin (DOGE) Exchange', 'DOGE_USD', NULL, 1),
(8, NULL, 'LTC', NULL, 'BTC', 'LTC/ BTC', 'Bitcoin (BTC) Exchange', 'BTC_LTC', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dbt_country`
--

CREATE TABLE `dbt_country` (
  `id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbt_country`
--

INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', 'ATA', NULL, 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', 'IOT', NULL, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', 'CXR', NULL, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', 'CCK', NULL, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D''IVOIRE', 'Cote D''Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF', 'Korea, Democratic People''s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE''S DEMOCRATIC REPUBLIC', 'Lao People''s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263),
(240, 'RS', 'SERBIA', 'Serbia', 'SRB', 688, 381),
(241, 'AP', 'ASIA PACIFIC REGION', 'Asia / Pacific Region', '0', 0, 0),
(242, 'ME', 'MONTENEGRO', 'Montenegro', 'MNE', 499, 382),
(243, 'AX', 'ALAND ISLANDS', 'Aland Islands', 'ALA', 248, 358),
(244, 'BQ', 'BONAIRE, SINT EUSTATIUS AND SABA', 'Bonaire, Sint Eustatius and Saba', 'BES', 535, 599),
(245, 'CW', 'CURACAO', 'Curacao', 'CUW', 531, 599),
(246, 'GG', 'GUERNSEY', 'Guernsey', 'GGY', 831, 44),
(247, 'IM', 'ISLE OF MAN', 'Isle of Man', 'IMN', 833, 44),
(248, 'JE', 'JERSEY', 'Jersey', 'JEY', 832, 44),
(249, 'XK', 'KOSOVO', 'Kosovo', '---', 0, 381),
(250, 'BL', 'SAINT BARTHELEMY', 'Saint Barthelemy', 'BLM', 652, 590),
(251, 'MF', 'SAINT MARTIN', 'Saint Martin', 'MAF', 663, 590),
(252, 'SX', 'SINT MAARTEN', 'Sint Maarten', 'SXM', 534, 1),
(253, 'SS', 'SOUTH SUDAN', 'South Sudan', 'SSD', 728, 211);

-- --------------------------------------------------------

--
-- Table structure for table `dbt_cryptocoin`
--

CREATE TABLE `dbt_cryptocoin` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `url` varchar(300) DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `symbol` varchar(100) NOT NULL,
  `coin_name` varchar(100) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `algorithm` varchar(100) DEFAULT NULL,
  `proof_type` varchar(100) DEFAULT NULL,
  `show_home` int(11) DEFAULT '0',
  `coin_position` int(11) DEFAULT '0',
  `premined_value` varchar(100) DEFAULT NULL,
  `total_coins_freefloat` varchar(100) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `sponsored` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dbt_cryptocoin`
--

INSERT INTO `dbt_cryptocoin` (`id`, `cid`, `url`, `image`, `name`, `symbol`, `coin_name`, `full_name`, `algorithm`, `proof_type`, `show_home`, `coin_position`, `premined_value`, `total_coins_freefloat`, `rank`, `sponsored`, `status`) VALUES
(1, 4321, '/coins/42/overview', './upload/coinlist/42.png', '42', '42', '42 Coin', '42 Coin (42)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 34, '0', 0),
(2, 749869, '/coins/300/overview', './upload/coinlist/300.png', '300', '300', '300 token', '300 token (300)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2212, '0', 0),
(3, 33639, '/coins/365/overview', './upload/coinlist/365.png', '365', '365', '365Coin', '365Coin (365)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 916, '0', 0),
(4, 21227, '/coins/404/overview', './upload/coinlist/404.png', '404', '404', '404Coin', '404Coin (404)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 602, '0', 0),
(5, 20909, '/coins/611/overview', './upload/coinlist/611.png', '611', '611', 'SixEleven', 'SixEleven (611)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 586, '0', 0),
(6, 28223, '/coins/808/overview', './upload/coinlist/808.png', '808', '808', '808', '808 (808)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 750, '0', 0),
(7, 29462, '/coins/888/overview', './upload/coinlist/888.png', '888', '888', 'Octocoin', 'Octocoin (888)', 'N/A', 'PoW', 0, 2000, 'N/A', 'N/A', 811, '0', 0),
(8, 20824, '/coins/1337/overview', './upload/coinlist/1337.png', '1337', '1337', '1337', '1337 (1337)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 577, '0', 0),
(9, 3744, '/coins/2015/overview', './upload/coinlist/2015.png', '2015', '2015', '2015 coin', '2015 coin (2015)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 33, '0', 0),
(10, 7605, '/coins/eth/overview', './upload/coinlist/eth_logo.png', 'ETH', 'ETH', 'Ethereum', 'Ethereum (ETH)', '', 'PoW', 0, 2000, 'N/A', 'N/A', 2, '0', 0),
(11, 5038, '/coins/xmr/overview', './upload/coinlist/xmr.png', 'XMR', 'XMR', 'Monero', 'Monero (XMR)', 'CryptoNight', 'PoW', 0, 2000, 'N/A', 'N/A', 5, '0', 0),
(12, 1183, '/coins/nxt/overview', './upload/coinlist/nxt.png', 'NXT', 'NXT', 'Nxt', 'Nxt (NXT)', 'PoS', 'PoS/LPoS', 0, 2000, 'N/A', 'N/A', 6, '0', 0),
(13, 5324, '/coins/etc/overview', './upload/coinlist/etc2.png', 'ETC', 'ETC', 'Ethereum Classic', 'Ethereum Classic (ETC)', 'Ethash', 'PoW', 0, 2000, 'N/A', 'N/A', 7, '0', 0),
(14, 4432, '/coins/doge/overview', './upload/coinlist/doge.png', 'DOGE', 'DOGE', 'Dogecoin', 'Dogecoin (DOGE)', '', 'PoW', 1, 5, 'N/A', 'N/A', 8, '0', 1),
(15, 24854, '/coins/zec/overview', './upload/coinlist/zec.png', 'ZEC', 'ZEC', 'ZCash', 'ZCash (ZEC)', 'Equihash', 'PoW', 0, 2000, 'N/A', 'N/A', 9, '0', 0),
(16, 5039, '/coins/bts/overview', './upload/coinlist/bts.png', 'BTS', 'BTS', 'Bitshares', 'Bitshares (BTS)', 'SHA-512', 'PoS', 0, 2000, 'N/A', 'N/A', 10, '0', 0),
(17, 4430, '/coins/dgb/overview', './upload/coinlist/7638-nty_400x400.jpg', 'DGB', 'DGB', 'DigiByte', 'DigiByte (DGB)', 'Multiple', 'PoW', 0, 2000, 'N/A', 'N/A', 11, '0', 0),
(18, 4400, '/coins/btcd/overview', './upload/coinlist/btcd_1.png', 'BTCD', 'BTCD', 'BitcoinDark', 'BitcoinDark (BTCD)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 13, '0', 0),
(19, 2349, '/coins/ppc/overview', './upload/coinlist/peercoin-logo.png', 'PPC', 'PPC', 'PeerCoin', 'PeerCoin (PPC)', '', 'N/A', 1, 11, 'N/A', 'N/A', 14, '0', 1),
(20, 4425, '/coins/craig/overview', './upload/coinlist/craig.png', 'CRAIG', 'CRAIG', 'CraigsCoin', 'CraigsCoin (CRAIG)', 'X11', 'PoS', 0, 2000, 'N/A', 'N/A', 15, '0', 0),
(21, 5023, '/coins/xbs/overview', './upload/coinlist/xbs_1.png', 'XBS', 'XBS', 'Bitstake', 'Bitstake (XBS)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 16, '0', 0),
(22, 5030, '/coins/xpy/overview', './upload/coinlist/xpy_1.png', 'XPY', 'XPY', 'PayCoin', 'PayCoin (XPY)', 'SHA256', 'PoS', 0, 2000, 'N/A', 'N/A', 17, '0', 0),
(23, 3638, '/coins/prc/overview', './upload/coinlist/prc.png', 'PRC', 'PRC', 'ProsperCoin', 'ProsperCoin (PRC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 18, '0', 0),
(24, 3639, '/coins/ybc/overview', './upload/coinlist/ybc.png', 'YBC', 'YBC', 'YbCoin', 'YbCoin (YBC)', 'Multiple', 'N/A', 0, 2000, 'N/A', 'N/A', 19, '0', 0),
(25, 3640, '/coins/dank/overview', './upload/coinlist/dank.png', 'DANK', 'DANK', 'DarkKush', 'DarkKush (DANK)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 20, '0', 0),
(26, 3641, '/coins/give/overview', './upload/coinlist/give.png', 'GIVE', 'GIVE', 'GiveCoin', 'GiveCoin (GIVE)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 21, '0', 0),
(27, 3642, '/coins/kobo/overview', './upload/coinlist/kobo.png', 'KOBO', 'KOBO', 'KoboCoin', 'KoboCoin (KOBO)', 'X15', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 22, '0', 0),
(28, 3643, '/coins/dt/overview', './upload/coinlist/dt.png', 'DT', 'DT', 'DarkToken', 'DarkToken (DT)', 'NIST5', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 23, '0', 0),
(29, 3644, '/coins/ceti/overview', './upload/coinlist/ceti.png', 'CETI', 'CETI', 'CETUS Coin', 'CETUS Coin (CETI)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 24, '0', 0),
(30, 3645, '/coins/sup/overview', './upload/coinlist/sup.png', 'SUP', 'SUP', 'Supcoin', 'Supcoin (SUP)', 'N/A', 'PoW', 0, 2000, 'N/A', 'N/A', 25, '0', 0),
(31, 3646, '/coins/xpd/overview', './upload/coinlist/xpd.png', 'XPD', 'XPD', 'PetroDollar', 'PetroDollar (XPD)', 'SHA256D', 'N/A', 0, 2000, 'N/A', 'N/A', 26, '0', 0),
(32, 3647, '/coins/geo/overview', './upload/coinlist/geo.png', 'GEO', 'GEO', 'GeoCoin', 'GeoCoin (GEO)', 'Scrypt', 'N/A', 0, 2000, 'N/A', 'N/A', 27, '0', 0),
(33, 3648, '/coins/chash/overview', './upload/coinlist/chash.png', 'CHASH', 'CHASH', 'CleverHash', 'CleverHash (CHASH)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 28, '0', 0),
(34, 3649, '/coins/spr/overview', './upload/coinlist/spr.png', 'SPR', 'SPR', 'Spreadcoin', 'Spreadcoin (SPR)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 29, '0', 0),
(35, 3650, '/coins/nxti/overview', './upload/coinlist/nxti.png', 'NXTI', 'NXTI', 'NXTI', 'NXTI (NXTI)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 30, '0', 0),
(36, 3653, '/coins/wolf/overview', './upload/coinlist/wolf.png', 'WOLF', 'WOLF', 'Insanity Coin', 'Insanity Coin (WOLF)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 31, '0', 0),
(37, 3655, '/coins/xdp/overview', './upload/coinlist/xdp.png', 'XDP', 'XDP', 'DogeParty', 'DogeParty (XDP)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 32, '0', 0),
(38, 4322, '/coins/ac/overview', './upload/coinlist/ac.png', 'AC', 'AC', 'Asia Coin', 'Asia Coin (AC)', 'Scrypt', 'PoS', 0, 2000, 'N/A', 'N/A', 35, '0', 0),
(39, 4323, '/coins/acoin/overview', './upload/coinlist/acoin.png', 'ACOIN', 'ACOIN', 'ACoin', 'ACoin (ACOIN)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 36, '0', 0),
(40, 4324, '/coins/aero/overview', './upload/coinlist/aero.png', 'AERO', 'AERO', 'Aero Coin', 'Aero Coin (AERO)', 'X13', 'PoS', 0, 2000, 'N/A', 'N/A', 37, '0', 0),
(41, 4325, '/coins/alf/overview', './upload/coinlist/alf.png', 'ALF', 'ALF', 'AlphaCoin', 'AlphaCoin (ALF)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 38, '0', 0),
(42, 4326, '/coins/ags/overview', './upload/coinlist/ags.png', 'AGS', 'AGS', 'Aegis', 'Aegis (AGS)', 'X13', 'PoS', 0, 2000, 'N/A', 'N/A', 39, '0', 0),
(43, 4327, '/coins/amc/overview', './upload/coinlist/amc.png', 'AMC', 'AMC', 'AmericanCoin', 'AmericanCoin (AMC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 40, '0', 0),
(44, 4328, '/coins/aln/overview', './upload/coinlist/aln.png', 'ALN', 'ALN', 'AlienCoin', 'AlienCoin (ALN)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 41, '0', 0),
(45, 4330, '/coins/apex/overview', './upload/coinlist/apex.png', 'APEX', 'APEX', 'ApexCoin', 'ApexCoin (APEX)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 43, '0', 0),
(46, 4331, '/coins/arch/overview', './upload/coinlist/arch.png', 'ARCH', 'ARCH', 'ArchCoin', 'ArchCoin (ARCH)', 'Scrypt', 'PoS', 0, 2000, 'N/A', 'N/A', 44, '0', 0),
(47, 4371, '/coins/arg/overview', './upload/coinlist/arg.png', 'ARG', 'ARG', 'Argentum', 'Argentum (ARG)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 45, '0', 0),
(48, 4332, '/coins/ari/overview', './upload/coinlist/ari.png', 'ARI', 'ARI', 'AriCoin', 'AriCoin (ARI)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 46, '0', 0),
(49, 4333, '/coins/aur/overview', './upload/coinlist/aur.png', 'AUR', 'AUR', 'Aurora Coin', 'Aurora Coin (AUR)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 47, '0', 0),
(50, 4334, '/coins/axr/overview', './upload/coinlist/axr.png', 'AXR', 'AXR', 'AXRON', 'AXRON (AXR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 48, '0', 0),
(51, 4335, '/coins/bcx/overview', './upload/coinlist/bcx.png', 'BCX', 'BCX', 'BattleCoin', 'BattleCoin (BCX)', 'SHA256', 'PoS', 0, 2000, 'N/A', 'N/A', 49, '0', 0),
(52, 4336, '/coins/ben/overview', './upload/coinlist/ben.png', 'BEN', 'BEN', 'Benjamins', 'Benjamins (BEN)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 50, '0', 0),
(53, 4337, '/coins/bet/overview', './upload/coinlist/bet.png', 'BET', 'BET', 'BetaCoin', 'BetaCoin (BET)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 51, '0', 0),
(54, 4338, '/coins/bitb/overview', './upload/coinlist/bitb.png', 'BITB', 'BITB', 'BitBean', 'BitBean (BITB)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 52, '0', 0),
(55, 4340, '/coins/blu/overview', './upload/coinlist/blu.png', 'BLU', 'BLU', 'BlueCoin', 'BlueCoin (BLU)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 53, '0', 0),
(56, 4339, '/coins/blk/overview', './upload/coinlist/blk.png', 'BLK', 'BLK', 'BlackCoin', 'BlackCoin (BLK)', 'Scrypt', 'PoS', 0, 2000, 'N/A', 'N/A', 54, '0', 0),
(57, 4342, '/coins/bost/overview', './upload/coinlist/bost.png', 'BOST', 'BOST', 'BoostCoin', 'BoostCoin (BOST)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 56, '0', 0),
(58, 4343, '/coins/bqc/overview', './upload/coinlist/bqc.png', 'BQC', 'BQC', 'BQCoin', 'BQCoin (BQC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 57, '0', 0),
(59, 4345, '/coins/xmy/overview', './upload/coinlist/myr.png', 'XMY', 'XMY', 'MyriadCoin', 'MyriadCoin (XMY)', 'Multiple', 'PoW', 0, 2000, 'N/A', 'N/A', 58, '0', 0),
(60, 4346, '/coins/moon/overview', './upload/coinlist/moon.png', 'MOON', 'MOON', 'MoonCoin', 'MoonCoin (MOON)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 59, '0', 0),
(61, 4347, '/coins/zet/overview', './upload/coinlist/zet.png', 'ZET', 'ZET', 'ZetaCoin', 'ZetaCoin (ZET)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 60, '0', 0),
(62, 4349, '/coins/qtl/overview', './upload/coinlist/qtl.png', 'QTL', 'QTL', 'Quatloo', 'Quatloo (QTL)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 62, '0', 0),
(63, 4350, '/coins/enrg/overview', './upload/coinlist/enrg.png', 'ENRG', 'ENRG', 'EnergyCoin', 'EnergyCoin (ENRG)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 63, '0', 0),
(64, 4351, '/coins/qrk/overview', './upload/coinlist/qrk.png', 'QRK', 'QRK', 'QuarkCoin', 'QuarkCoin (QRK)', 'Multiple', 'PoW', 0, 2000, 'N/A', 'N/A', 64, '0', 0),
(65, 4352, '/coins/ric/overview', './upload/coinlist/ric.jpg', 'RIC', 'RIC', 'Riecoin', 'Riecoin (RIC)', 'Groestl', 'PoW', 0, 2000, 'N/A', 'N/A', 65, '0', 0),
(66, 4353, '/coins/dgc/overview', './upload/coinlist/dgc.png', 'DGC', 'DGC', 'DigiCoin', 'DigiCoin (DGC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 66, '0', 0),
(67, 4354, '/coins/limx/overview', './upload/coinlist/limx.png', 'LIMX', 'LIMX', 'LimeCoinX', 'LimeCoinX (LIMX)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 67, '0', 0),
(68, 4399, '/coins/btb/overview', './upload/coinlist/bitb.png', 'BTB', 'BTB', 'BitBar', 'BitBar (BTB)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 69, '0', 0),
(69, 4406, '/coins/caix/overview', './upload/coinlist/caix.png', 'CAIx', 'CAIX', 'CAIx', 'CAIx (CAIx)', 'Scrypt', 'PoS', 0, 2000, 'N/A', 'N/A', 70, '0', 0),
(70, 4401, '/coins/bte/overview', './upload/coinlist/bte.png', 'BTE', 'BTE', 'ByteCoin', 'ByteCoin (BTE)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 71, '0', 0),
(71, 4402, '/coins/btgstar/overview', './upload/coinlist/btg.png', 'BTG*', 'BTG*', 'BitGem', 'BitGem (BTG*)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 72, '0', 0),
(72, 4403, '/coins/btm/overview', './upload/coinlist/btm.png', 'BTM', 'BTM', 'BitMark', 'BitMark (BTM)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 73, '0', 0),
(73, 4404, '/coins/buk/overview', './upload/coinlist/buk.png', 'BUK', 'BUK', 'CryptoBuk', 'CryptoBuk (BUK)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 74, '0', 0),
(74, 4405, '/coins/cach/overview', './upload/coinlist/cach.png', 'CACH', 'CACH', 'Cachecoin', 'Cachecoin (CACH)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 75, '0', 0),
(75, 4407, '/coins/cann/overview', './upload/coinlist/cann.png', 'CANN', 'CANN', 'CannabisCoin', 'CannabisCoin (CANN)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 76, '0', 0),
(76, 4408, '/coins/cap/overview', './upload/coinlist/cap.png', 'CAP', 'CAP', 'BottleCaps', 'BottleCaps (CAP)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 77, '0', 0),
(77, 4409, '/coins/cash/overview', './upload/coinlist/cash.png', 'CASH', 'CASH', 'CashCoin', 'CashCoin (CASH)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 78, '0', 0),
(78, 4410, '/coins/cat1/overview', './upload/coinlist/cat.png', 'CAT1', 'CAT1', 'Catcoin', 'Catcoin (CAT1)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 79, '0', 0),
(79, 4411, '/coins/cbx/overview', './upload/coinlist/cbx.png', 'CBX', 'CBX', 'CryptoBullion', 'CryptoBullion (CBX)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 80, '0', 0),
(80, 4412, '/coins/ccn/overview', './upload/coinlist/ccn.png', 'CCN', 'CCN', 'CannaCoin', 'CannaCoin (CCN)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 81, '0', 0),
(81, 4413, '/coins/cin/overview', './upload/coinlist/cinder.png', 'CIN', 'CIN', 'CinderCoin', 'CinderCoin (CIN)', 'Multiple', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 82, '0', 0),
(82, 4414, '/coins/cinni/overview', './upload/coinlist/cinni.jpeg', 'CINNI', 'CINNI', 'CINNICOIN', 'CINNICOIN (CINNI)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 83, '0', 0),
(83, 4415, '/coins/cxc/overview', './upload/coinlist/cxc.png', 'CXC', 'CXC', 'CheckCoin', 'CheckCoin (CXC)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 84, '0', 0),
(84, 4416, '/coins/clam/overview', './upload/coinlist/clam.png', 'CLAM', 'CLAM', 'CLAMS', 'CLAMS (CLAM)', 'N/A', 'PoW', 0, 2000, 'N/A', 'N/A', 85, '0', 0),
(85, 4417, '/coins/cloak/overview', './upload/coinlist/cloak.png', 'CLOAK', 'CLOAK', 'CloakCoin', 'CloakCoin (CLOAK)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 86, '0', 0),
(86, 4418, '/coins/clr/overview', './upload/coinlist/clr.png', 'CLR', 'CLR', 'CopperLark', 'CopperLark (CLR)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 87, '0', 0),
(87, 4419, '/coins/cmc/overview', './upload/coinlist/cmc.png', 'CMC', 'CMC', 'CosmosCoin', 'CosmosCoin (CMC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 88, '0', 0),
(88, 4420, '/coins/cnc/overview', './upload/coinlist/cnc.png', 'CNC', 'CNC', 'ChinaCoin', 'ChinaCoin (CNC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 89, '0', 0),
(89, 4421, '/coins/cnl/overview', './upload/coinlist/cnl.png', 'CNL', 'CNL', 'ConcealCoin', 'ConcealCoin (CNL)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 90, '0', 0),
(90, 4422, '/coins/comm/overview', './upload/coinlist/comm.png', 'COMM', 'COMM', 'Community Coin', 'Community Coin (COMM)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 91, '0', 0),
(91, 4423, '/coins/cool/overview', './upload/coinlist/cool.png', 'COOL', 'COOL', 'CoolCoin', 'CoolCoin (COOL)', 'Scrypt', 'PoS', 0, 2000, 'N/A', 'N/A', 92, '0', 0),
(92, 4424, '/coins/crack/overview', './upload/coinlist/crack.png', 'CRACK', 'CRACK', 'CrackCoin', 'CrackCoin (CRACK)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 93, '0', 0),
(93, 4426, '/coins/crcstar/overview', './upload/coinlist/crc.png', 'CRC*', 'CRC*', 'CraftCoin', 'CraftCoin (CRC*)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 94, '0', 0),
(94, 4427, '/coins/crypt/overview', './upload/coinlist/crypt.png', 'CRYPT', 'CRYPT', 'CryptCoin', 'CryptCoin (CRYPT)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 95, '0', 0),
(95, 4429, '/coins/dem/overview', './upload/coinlist/dem.png', 'DEM', 'DEM', 'eMark', 'eMark (DEM)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 97, '0', 0),
(96, 4431, '/coins/dmd/overview', './upload/coinlist/dmd.png', 'DMD', 'DMD', 'Diamond', 'Diamond (DMD)', 'Groestl', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 98, '0', 0),
(97, 4434, '/coins/drkc/overview', './upload/coinlist/drkc.png', 'DRKC', 'DRKC', 'DarkCash', 'DarkCash (DRKC)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 100, '0', 0),
(98, 4435, '/coins/dsb/overview', './upload/coinlist/dsb.png', 'DSB', 'DSB', 'DarkShibe', 'DarkShibe (DSB)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 101, '0', 0),
(99, 4436, '/coins/dvc/overview', './upload/coinlist/dvc.png', 'DVC', 'DVC', 'DevCoin', 'DevCoin (DVC)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 102, '0', 0),
(100, 4437, '/coins/eac/overview', './upload/coinlist/eac.png', 'EAC', 'EAC', 'EarthCoin', 'EarthCoin (EAC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 103, '0', 0),
(101, 4438, '/coins/efl/overview', './upload/coinlist/efl.png', 'EFL', 'EFL', 'E-Gulden', 'E-Gulden (EFL)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 104, '0', 0),
(102, 4439, '/coins/elc/overview', './upload/coinlist/elc.png', 'ELC', 'ELC', 'Elacoin', 'Elacoin (ELC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 105, '0', 0),
(103, 4440, '/coins/emc2/overview', './upload/coinlist/emc2.png', 'EMC2', 'EMC2', 'Einsteinium', 'Einsteinium (EMC2)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 106, '0', 0),
(104, 4441, '/coins/emd/overview', './upload/coinlist/emd.png', 'EMD', 'EMD', 'Emerald', 'Emerald (EMD)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 107, '0', 0),
(105, 4442, '/coins/excl/overview', './upload/coinlist/excl.png', 'EXCL', 'EXCL', 'Exclusive Coin', 'Exclusive Coin (EXCL)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 108, '0', 0),
(106, 4443, '/coins/exe/overview', './upload/coinlist/exe.png', 'EXE', 'EXE', 'ExeCoin', 'ExeCoin (EXE)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 109, '0', 0),
(107, 4444, '/coins/ezc/overview', './upload/coinlist/ezc.png', 'EZC', 'EZC', 'EZCoin', 'EZCoin (EZC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 110, '0', 0),
(108, 4445, '/coins/flap/overview', './upload/coinlist/flap.png', 'FLAP', 'FLAP', 'Flappy Coin', 'Flappy Coin (FLAP)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 111, '0', 0),
(109, 4446, '/coins/fc2/overview', './upload/coinlist/fuel.png', 'FC2', 'FC2', 'Fuel2Coin', 'Fuel2Coin (FC2)', 'X11', 'PoS', 0, 2000, 'N/A', 'N/A', 112, '0', 0),
(110, 4447, '/coins/ffc/overview', './upload/coinlist/ffc.png', 'FFC', 'FFC', 'FireflyCoin', 'FireflyCoin (FFC)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 113, '0', 0),
(111, 4448, '/coins/fibre/overview', './upload/coinlist/fibre.png', 'FIBRE', 'FIBRE', 'FIBRE', 'FIBRE (FIBRE)', 'NIST5', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 114, '0', 0),
(112, 4521, '/coins/frc/overview', './upload/coinlist/frc.png', 'FRC', 'FRC', 'FireRoosterCoin', 'FireRoosterCoin (FRC)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 115, '0', 0),
(113, 4449, '/coins/flt/overview', './upload/coinlist/flt.png', 'FLT', 'FLT', 'FlutterCoin', 'FlutterCoin (FLT)', 'Scrypt', 'PoS/PoW/PoT', 0, 2000, 'N/A', 'N/A', 116, '0', 0),
(114, 4522, '/coins/frk/overview', './upload/coinlist/frk.png', 'FRK', 'FRK', 'Franko', 'Franko (FRK)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 117, '0', 0),
(115, 4450, '/coins/frac/overview', './upload/coinlist/frac.png', 'FRAC', 'FRAC', 'FractalCoin', 'FractalCoin (FRAC)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 118, '0', 0),
(116, 4523, '/coins/fst/overview', './upload/coinlist/fst.png', 'FST', 'FST', 'FastCoin', 'FastCoin (FST)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 119, '0', 0),
(117, 4524, '/coins/ftc/overview', './upload/coinlist/ftc.png', 'FTC', 'FTC', 'FeatherCoin', 'FeatherCoin (FTC)', '', 'PoW', 1, 9, 'N/A', 'N/A', 120, '0', 1),
(118, 4526, '/coins/gdc/overview', './upload/coinlist/gdc.png', 'GDC', 'GDC', 'GrandCoin', 'GrandCoin (GDC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 122, '0', 0),
(119, 4527, '/coins/glc/overview', './upload/coinlist/glc.png', 'GLC', 'GLC', 'GlobalCoin', 'GlobalCoin (GLC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 123, '0', 0),
(120, 4528, '/coins/gld/overview', './upload/coinlist/gld.png', 'GLD', 'GLD', 'GoldCoin', 'GoldCoin (GLD)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 124, '0', 0),
(121, 4529, '/coins/glx/overview', './upload/coinlist/glx.png', 'GLX', 'GLX', 'GalaxyCoin', 'GalaxyCoin (GLX)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 125, '0', 0),
(122, 4530, '/coins/glyph/overview', './upload/coinlist/glyph.png', 'GLYPH', 'GLYPH', 'GlyphCoin', 'GlyphCoin (GLYPH)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 126, '0', 0),
(123, 4531, '/coins/gml/overview', './upload/coinlist/gml.png', 'GML', 'GML', 'GameLeagueCoin', 'GameLeagueCoin (GML)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 127, '0', 0),
(124, 4532, '/coins/gue/overview', './upload/coinlist/gue.png', 'GUE', 'GUE', 'GuerillaCoin', 'GuerillaCoin (GUE)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 128, '0', 0),
(125, 4533, '/coins/hal/overview', './upload/coinlist/hal.png', 'HAL', 'HAL', 'Halcyon', 'Halcyon (HAL)', 'X15', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 129, '0', 0),
(126, 4534, '/coins/hbn/overview', './upload/coinlist/hbn.png', 'HBN', 'HBN', 'HoboNickels', 'HoboNickels (HBN)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 130, '0', 0),
(127, 4535, '/coins/huc/overview', './upload/coinlist/hun.png', 'HUC', 'HUC', 'HunterCoin', 'HunterCoin (HUC)', 'Multiple', 'PoW', 0, 2000, 'N/A', 'N/A', 131, '0', 0),
(128, 4536, '/coins/hvc/overview', './upload/coinlist/hvc.png', 'HVC', 'HVC', 'HeavyCoin', 'HeavyCoin (HVC)', 'Multiple', 'PoW', 0, 2000, 'N/A', 'N/A', 132, '0', 0),
(129, 4537, '/coins/hyp/overview', './upload/coinlist/hyp.png', 'HYP', 'HYP', 'Hyperstake', 'Hyperstake (HYP)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 133, '0', 0),
(130, 4538, '/coins/icb/overview', './upload/coinlist/icb.png', 'ICB', 'ICB', 'IceBergCoin', 'IceBergCoin (ICB)', 'NIST5', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 134, '0', 0),
(131, 4539, '/coins/ifc/overview', './upload/coinlist/ifc.png', 'IFC', 'IFC', 'Infinite Coin', 'Infinite Coin (IFC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 135, '0', 0),
(132, 4540, '/coins/ioc/overview', './upload/coinlist/ioc.png', 'IOC', 'IOC', 'IOCoin', 'IOCoin (IOC)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 136, '0', 0),
(133, 4541, '/coins/ixc/overview', './upload/coinlist/ixc.png', 'IXC', 'IXC', 'IXcoin', 'IXcoin (IXC)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 137, '0', 0),
(134, 4542, '/coins/jbs/overview', './upload/coinlist/jbs.png', 'JBS', 'JBS', 'JumBucks Coin', 'JumBucks Coin (JBS)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 138, '0', 0),
(135, 4543, '/coins/jkc/overview', './upload/coinlist/jkc.png', 'JKC', 'JKC', 'JunkCoin', 'JunkCoin (JKC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 139, '0', 0),
(136, 4544, '/coins/judge/overview', './upload/coinlist/judge.png', 'JUDGE', 'JUDGE', 'JudgeCoin', 'JudgeCoin (JUDGE)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 140, '0', 0),
(137, 4545, '/coins/kdc/overview', './upload/coinlist/kdc.png', 'KDC', 'KDC', 'Klondike Coin', 'Klondike Coin (KDC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 141, '0', 0),
(138, 4546, '/coins/keystar/overview', './upload/coinlist/key.png', 'KEY*', 'KEY*', 'KeyCoin', 'KeyCoin (KEY*)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 142, '0', 0),
(139, 4547, '/coins/kgc/overview', './upload/coinlist/kgc.png', 'KGC', 'KGC', 'KrugerCoin', 'KrugerCoin (KGC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 143, '0', 0),
(140, 4548, '/coins/labstar/overview', './upload/coinlist/lab.png', 'LAB*', 'LAB*', 'CoinWorksCoin', 'CoinWorksCoin (LAB*)', 'Multiple', 'PoW', 0, 2000, 'N/A', 'N/A', 144, '0', 0),
(141, 4549, '/coins/lgdstar/overview', './upload/coinlist/lgd.png', 'LGD*', 'LGD*', 'Legendary Coin', 'Legendary Coin (LGD*)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 145, '0', 0),
(142, 4550, '/coins/lk7/overview', './upload/coinlist/lk7.png', 'LK7', 'LK7', 'Lucky7Coin', 'Lucky7Coin (LK7)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 146, '0', 0),
(143, 4551, '/coins/lky/overview', './upload/coinlist/lky.png', 'LKY', 'LKY', 'LuckyCoin', 'LuckyCoin (LKY)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 147, '0', 0),
(144, 4552, '/coins/lsd/overview', './upload/coinlist/lsd.png', 'LSD', 'LSD', 'LightSpeedCoin', 'LightSpeedCoin (LSD)', 'NIST5', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 148, '0', 0),
(145, 4553, '/coins/ltb/overview', './upload/coinlist/ltb.png', 'LTB', 'LTB', 'Litebar ', 'Litebar  (LTB)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 149, '0', 0),
(146, 4554, '/coins/ltcd/overview', './upload/coinlist/ltcd.png', 'LTCD', 'LTCD', 'LitecoinDark', 'LitecoinDark (LTCD)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 150, '0', 0),
(147, 4555, '/coins/ltcx/overview', './upload/coinlist/ltcx.png', 'LTCX', 'LTCX', 'LitecoinX', 'LitecoinX (LTCX)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 151, '0', 0),
(148, 4556, '/coins/lxc/overview', './upload/coinlist/lxc.png', 'LXC', 'LXC', 'LibrexCoin', 'LibrexCoin (LXC)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 152, '0', 0),
(149, 4557, '/coins/lyc/overview', './upload/coinlist/lyc.png', 'LYC', 'LYC', 'LycanCoin', 'LycanCoin (LYC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 153, '0', 0),
(150, 4558, '/coins/max/overview', './upload/coinlist/max.png', 'MAX', 'MAX', 'MaxCoin', 'MaxCoin (MAX)', 'SHA3', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 154, '0', 0),
(151, 4559, '/coins/mec/overview', './upload/coinlist/mec.png', 'MEC', 'MEC', 'MegaCoin', 'MegaCoin (MEC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 155, '0', 0),
(152, 4560, '/coins/med/overview', './upload/coinlist/med.png', 'MED', 'MED', 'MediterraneanCoin', 'MediterraneanCoin (MED)', 'HybridScryptHash256', 'PoW', 0, 2000, 'N/A', 'N/A', 156, '0', 0),
(153, 4561, '/coins/min/overview', './upload/coinlist/min.png', 'MIN', 'MIN', 'Minerals Coin', 'Minerals Coin (MIN)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 157, '0', 0),
(154, 4562, '/coins/mint/overview', './upload/coinlist/mint.png', 'MINT', 'MINT', 'MintCoin', 'MintCoin (MINT)', 'Scrypt', 'PoS', 0, 2000, 'N/A', 'N/A', 158, '0', 0),
(155, 4563, '/coins/mn/overview', './upload/coinlist/mn1.png', 'MN', 'MN', 'Cryptsy Mining Contract', 'Cryptsy Mining Contract (MN)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 159, '0', 0),
(156, 4564, '/coins/mnc/overview', './upload/coinlist/mincoin.png', 'MNC', 'MNC', 'MinCoin', 'MinCoin (MNC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 160, '0', 0),
(157, 4566, '/coins/mry/overview', './upload/coinlist/mry.jpg', 'MRY', 'MRY', 'MurrayCoin', 'MurrayCoin (MRY)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 162, '0', 0),
(158, 4567, '/coins/myststar/overview', './upload/coinlist/myst.png', 'MYST*', 'MYST*', 'MysteryCoin', 'MysteryCoin (MYST*)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 163, '0', 0),
(159, 4568, '/coins/mzc/overview', './upload/coinlist/mzc.png', 'MZC', 'MZC', 'MazaCoin', 'MazaCoin (MZC)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 164, '0', 0),
(160, 4569, '/coins/nan/overview', './upload/coinlist/nan.png', 'NAN', 'NAN', 'NanoToken', 'NanoToken (NAN)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 165, '0', 0),
(161, 4570, '/coins/naut/overview', './upload/coinlist/naut.png', 'NAUT', 'NAUT', 'Nautilus Coin', 'Nautilus Coin (NAUT)', 'Scrypt', 'PoS', 0, 2000, 'N/A', 'N/A', 166, '0', 0),
(162, 4571, '/coins/nav/overview', './upload/coinlist/nav.png', 'NAV', 'NAV', 'NavCoin', 'NavCoin (NAV)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 167, '0', 0),
(163, 4572, '/coins/nbl/overview', './upload/coinlist/nbl.png', 'NBL', 'NBL', 'Nybble', 'Nybble (NBL)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 168, '0', 0),
(164, 4573, '/coins/nec/overview', './upload/coinlist/nec.png', 'NEC', 'NEC', 'NeoCoin', 'NeoCoin (NEC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 169, '0', 0),
(165, 4574, '/coins/net/overview', './upload/coinlist/net.png', 'NET', 'NET', 'NetCoin', 'NetCoin (NET)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 170, '0', 0),
(166, 4575, '/coins/nmb/overview', './upload/coinlist/nmb.png', 'NMB', 'NMB', 'Nimbus Coin', 'Nimbus Coin (NMB)', 'X15', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 171, '0', 0),
(167, 4576, '/coins/nrb/overview', './upload/coinlist/nrb.png', 'NRB', 'NRB', 'NoirBits', 'NoirBits (NRB)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 172, '0', 0),
(168, 4577, '/coins/nobl/overview', './upload/coinlist/nobl.png', 'NOBL', 'NOBL', 'NobleCoin', 'NobleCoin (NOBL)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 173, '0', 0),
(169, 4578, '/coins/nrs/overview', './upload/coinlist/nrs.png', 'NRS', 'NRS', 'NoirShares', 'NoirShares (NRS)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 174, '0', 0),
(170, 4579, '/coins/nvc/overview', './upload/coinlist/nvc.png', 'NVC', 'NVC', 'NovaCoin', 'NovaCoin (NVC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 175, '0', 0),
(171, 4580, '/coins/nmc/overview', './upload/coinlist/nmc.png', 'NMC', 'NMC', 'NameCoin', 'NameCoin (NMC)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 176, '0', 0),
(172, 4581, '/coins/nyan/overview', './upload/coinlist/nyan.png', 'NYAN', 'NYAN', 'NyanCoin', 'NyanCoin (NYAN)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 177, '0', 0),
(173, 4582, '/coins/opal/overview', './upload/coinlist/opal.png', 'OPAL', 'OPAL', 'OpalCoin', 'OpalCoin (OPAL)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 178, '0', 0),
(174, 4583, '/coins/orb/overview', './upload/coinlist/orb.png', 'ORB', 'ORB', 'Orbitcoin', 'Orbitcoin (ORB)', 'NeoScrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 179, '0', 0),
(175, 4584, '/coins/osc/overview', './upload/coinlist/osc.png', 'OSC', 'OSC', 'OpenSourceCoin', 'OpenSourceCoin (OSC)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 180, '0', 0),
(176, 4585, '/coins/phs/overview', './upload/coinlist/phs.png', 'PHS', 'PHS', 'PhilosophersStone', 'PhilosophersStone (PHS)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 181, '0', 0),
(177, 4586, '/coins/points/overview', './upload/coinlist/points.png', 'POINTS', 'POINTS', 'Cryptsy Points', 'Cryptsy Points (POINTS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 182, '0', 0),
(178, 4587, '/coins/pot/overview', './upload/coinlist/pot.png', 'POT', 'POT', 'PotCoin', 'PotCoin (POT)', '', 'PoW', 0, 8, 'N/A', 'N/A', 183, '0', 1),
(179, 4588, '/coins/pseud/overview', './upload/coinlist/pseud.png', 'PSEUD', 'PSEUD', 'PseudoCash', 'PseudoCash (PSEUD)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 184, '0', 0),
(180, 4589, '/coins/ptsstar/overview', './upload/coinlist/pts.png', 'PTS*', 'PTS*', 'Protoshares', 'Protoshares (PTS*)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 185, '0', 0),
(181, 4590, '/coins/pxc/overview', './upload/coinlist/pxc.png', 'PXC', 'PXC', 'PhoenixCoin', 'PhoenixCoin (PXC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 186, '0', 0),
(182, 4591, '/coins/pyc/overview', './upload/coinlist/pyc.png', 'PYC', 'PYC', 'PayCoin', 'PayCoin (PYC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 187, '0', 0),
(183, 4592, '/coins/rdd/overview', './upload/coinlist/rdd.png', 'RDD', 'RDD', 'ReddCoin', 'ReddCoin (RDD)', '', 'PoW/PoS', 1, 7, 'N/A', 'N/A', 188, '0', 1),
(184, 4593, '/coins/ripo/overview', './upload/coinlist/ripo.png', 'RIPO', 'RIPO', 'RipOffCoin', 'RipOffCoin (RIPO)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 189, '0', 0),
(185, 4594, '/coins/rpc/overview', './upload/coinlist/rpc-2.png', 'RPC', 'RPC', 'RonPaulCoin', 'RonPaulCoin (RPC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 190, '0', 0),
(186, 4595, '/coins/rt2/overview', './upload/coinlist/rt2.png', 'RT2', 'RT2', 'RotoCoin', 'RotoCoin (RT2)', 'Scrypt-n', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 191, '0', 0),
(187, 4596, '/coins/ryc/overview', './upload/coinlist/ryc.png', 'RYC', 'RYC', 'RoyalCoin', 'RoyalCoin (RYC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 192, '0', 0),
(188, 4597, '/coins/rzr/overview', './upload/coinlist/rzr.png', 'RZR', 'RZR', 'RazorCoin', 'RazorCoin (RZR)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 193, '0', 0),
(189, 4598, '/coins/sat2/overview', './upload/coinlist/sat2.png', 'SAT2', 'SAT2', 'Saturn2Coin', 'Saturn2Coin (SAT2)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 194, '0', 0),
(190, 4599, '/coins/sbc/overview', './upload/coinlist/sbc.png', 'SBC', 'SBC', 'StableCoin', 'StableCoin (SBC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 195, '0', 0),
(191, 4600, '/coins/sdc/overview', './upload/coinlist/sdc.png', 'SDC', 'SDC', 'ShadowCash', 'ShadowCash (SDC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 196, '0', 0),
(192, 4601, '/coins/sfr/overview', './upload/coinlist/sfr.png', 'SFR', 'SFR', 'SaffronCoin', 'SaffronCoin (SFR)', 'Multiple', 'PoW', 0, 2000, 'N/A', 'N/A', 197, '0', 0),
(193, 4602, '/coins/shade/overview', './upload/coinlist/shade.png', 'SHADE', 'SHADE', 'ShadeCoin', 'ShadeCoin (SHADE)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 198, '0', 0),
(194, 4603, '/coins/shld/overview', './upload/coinlist/shld.png', 'SHLD', 'SHLD', 'ShieldCoin', 'ShieldCoin (SHLD)', 'X15', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 199, '0', 0),
(195, 4604, '/coins/silk/overview', './upload/coinlist/silk.png', 'SILK', 'SILK', 'SilkCoin', 'SilkCoin (SILK)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 200, '0', 0),
(196, 4605, '/coins/slg/overview', './upload/coinlist/slg.png', 'SLG', 'SLG', 'SterlingCoin', 'SterlingCoin (SLG)', 'X13', 'PoS', 0, 2000, 'N/A', 'N/A', 201, '0', 0),
(197, 4606, '/coins/smc/overview', './upload/coinlist/smc.png', 'SMC', 'SMC', 'SmartCoin', 'SmartCoin (SMC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 202, '0', 0),
(198, 4607, '/coins/sole/overview', './upload/coinlist/sole.png', 'SOLE', 'SOLE', 'SoleCoin', 'SoleCoin (SOLE)', 'X15', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 203, '0', 0),
(199, 4609, '/coins/spt/overview', './upload/coinlist/spt.png', 'SPT', 'SPT', 'Spots', 'Spots (SPT)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 205, '0', 0),
(200, 4611, '/coins/src/overview', './upload/coinlist/src.png', 'SRC', 'SRC', 'SecureCoin', 'SecureCoin (SRC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 206, '0', 0),
(201, 4613, '/coins/ssv/overview', './upload/coinlist/ssv.png', 'SSV', 'SSV', 'SSVCoin', 'SSVCoin (SSV)', 'X13', 'PoW', 0, 2000, 'N/A', 'N/A', 207, '0', 0),
(202, 4614, '/coins/xlm/overview', './upload/coinlist/str.png', 'XLM', 'XLM', 'Stellar', 'Stellar (XLM)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 208, '0', 0),
(203, 4615, '/coins/super/overview', './upload/coinlist/super.png', 'SUPER', 'SUPER', 'SuperCoin', 'SuperCoin (SUPER)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 209, '0', 0),
(204, 4616, '/coins/swift/overview', './upload/coinlist/swift.png', 'SWIFT', 'SWIFT', 'BitSwift', 'BitSwift (SWIFT)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 210, '0', 0),
(205, 4617, '/coins/sync/overview', './upload/coinlist/sync.png', 'SYNC', 'SYNC', 'SyncCoin', 'SyncCoin (SYNC)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 211, '0', 0),
(206, 4618, '/coins/sys/overview', './upload/coinlist/sys.png', 'SYS', 'SYS', 'SysCoin', 'SysCoin (SYS)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 212, '0', 0),
(207, 4619, '/coins/tag/overview', './upload/coinlist/tag.png', 'TAG', 'TAG', 'TagCoin', 'TagCoin (TAG)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 213, '0', 0),
(208, 4620, '/coins/tak/overview', './upload/coinlist/tak.png', 'TAK', 'TAK', 'TakCoin', 'TakCoin (TAK)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 214, '0', 0),
(209, 4623, '/coins/tgc/overview', './upload/coinlist/tgc.png', 'TGC', 'TGC', 'TigerCoin', 'TigerCoin (TGC)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 216, '0', 0),
(210, 4624, '/coins/tit/overview', './upload/coinlist/tit.png', 'TIT', 'TIT', 'TitCoin', 'TitCoin (TIT)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 217, '0', 0),
(211, 4625, '/coins/tor/overview', './upload/coinlist/tor.png', 'TOR', 'TOR', 'TorCoin', 'TorCoin (TOR)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 218, '0', 0),
(212, 4626, '/coins/trc/overview', './upload/coinlist/terracoin.png', 'TRC', 'TRC', 'TerraCoin', 'TerraCoin (TRC)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 219, '0', 0),
(213, 4627, '/coins/ttc/overview', './upload/coinlist/ttc.png', 'TTC', 'TTC', 'TittieCoin', 'TittieCoin (TTC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 220, '0', 0),
(214, 4628, '/coins/ultc/overview', './upload/coinlist/ultc.png', 'ULTC', 'ULTC', 'Umbrella', 'Umbrella (ULTC)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 221, '0', 0),
(215, 4629, '/coins/unb/overview', './upload/coinlist/unb.png', 'UNB', 'UNB', 'UnbreakableCoin', 'UnbreakableCoin (UNB)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 222, '0', 0),
(216, 4630, '/coins/uno/overview', './upload/coinlist/uno.png', 'UNO', 'UNO', 'Unobtanium', 'Unobtanium (UNO)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 223, '0', 0),
(217, 4631, '/coins/uro/overview', './upload/coinlist/uro.png', 'URO', 'URO', 'UroCoin', 'UroCoin (URO)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 224, '0', 0),
(218, 5011, '/coins/usde/overview', './upload/coinlist/usde.png', 'USDE', 'USDE', 'UnitaryStatus Dollar', 'UnitaryStatus Dollar (USDE)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 225, '0', 0),
(219, 5012, '/coins/utc/overview', './upload/coinlist/utc.png', 'UTC', 'UTC', 'UltraCoin', 'UltraCoin (UTC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 226, '0', 0),
(220, 5013, '/coins/util/overview', './upload/coinlist/util.png', 'UTIL', 'UTIL', 'Utility Coin', 'Utility Coin (UTIL)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 227, '0', 0),
(221, 5014, '/coins/vdo/overview', './upload/coinlist/vdo.png', 'VDO', 'VDO', 'VidioCoin', 'VidioCoin (VDO)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 228, '0', 0),
(222, 5015, '/coins/via/overview', './upload/coinlist/via.png', 'VIA', 'VIA', 'ViaCoin', 'ViaCoin (VIA)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 229, '0', 0),
(223, 5016, '/coins/voot/overview', './upload/coinlist/voot.png', 'VOOT', 'VOOT', 'VootCoin', 'VootCoin (VOOT)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 230, '0', 0),
(224, 5017, '/coins/vrc/overview', './upload/coinlist/vrc.png', 'VRC', 'VRC', 'VeriCoin', 'VeriCoin (VRC)', 'Scrypt', 'PoST', 0, 2000, 'N/A', 'N/A', 231, '0', 0),
(225, 5018, '/coins/vtc/overview', './upload/coinlist/vtc.png', 'VTC', 'VTC', 'VertCoin', 'VertCoin (VTC)', '', 'PoW', 1, 10, 'N/A', 'N/A', 232, '0', 1),
(226, 5019, '/coins/wc/overview', './upload/coinlist/wc.png', 'WC', 'WC', 'WhiteCoin', 'WhiteCoin (WC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 233, '0', 0),
(227, 5020, '/coins/wdc/overview', './upload/coinlist/wdc.png', 'WDC', 'WDC', 'WorldCoin', 'WorldCoin (WDC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 234, '0', 0),
(228, 5021, '/coins/xai/overview', './upload/coinlist/xai.png', 'XAI', 'XAI', 'SapienceCoin', 'SapienceCoin (XAI)', 'X11', 'PoB/PoS', 0, 2000, 'N/A', 'N/A', 235, '0', 0),
(229, 5022, '/coins/xbot/overview', './upload/coinlist/xbot.png', 'XBOT', 'XBOT', 'SocialXbotCoin', 'SocialXbotCoin (XBOT)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 236, '0', 0),
(230, 5024, '/coins/xc/overview', './upload/coinlist/xc.png', 'XC', 'XC', 'X11 Coin', 'X11 Coin (XC)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 237, '0', 0),
(231, 5025, '/coins/xcash/overview', './upload/coinlist/xcash.png', 'XCASH', 'XCASH', 'Xcash', 'Xcash (XCASH)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 238, '0', 0),
(232, 5026, '/coins/xcr/overview', './upload/coinlist/frac.png', 'XCR', 'XCR', 'Crypti', 'Crypti (XCR)', 'Multiple', 'PoS', 0, 2000, 'N/A', 'N/A', 239, '0', 0),
(233, 5027, '/coins/xjo/overview', './upload/coinlist/xjo.png', 'XJO', 'XJO', 'JouleCoin', 'JouleCoin (XJO)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 240, '0', 0),
(234, 5028, '/coins/xlb/overview', './upload/coinlist/xlb.png', 'XLB', 'XLB', 'LibertyCoin', 'LibertyCoin (XLB)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 241, '0', 0),
(235, 5029, '/coins/xpm/overview', './upload/coinlist/xpm.png', 'XPM', 'XPM', 'PrimeCoin', 'PrimeCoin (XPM)', 'Multiple', 'PoW', 0, 2000, 'N/A', 'N/A', 242, '0', 0),
(236, 5032, '/coins/xst/overview', './upload/coinlist/xst.png', 'XST', 'XST', 'StealthCoin', 'StealthCoin (XST)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 243, '0', 0),
(237, 5033, '/coins/xxx/overview', './upload/coinlist/xxx.png', 'XXX', 'XXX', 'XXXCoin', 'XXXCoin (XXX)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 244, '0', 0),
(238, 5034, '/coins/yac/overview', './upload/coinlist/yac.png', 'YAC', 'YAC', 'YAcCoin', 'YAcCoin (YAC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 245, '0', 0),
(239, 5035, '/coins/zcc/overview', './upload/coinlist/zcc.png', 'ZCC', 'ZCC', 'ZCC Coin', 'ZCC Coin (ZCC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 246, '0', 0),
(240, 5036, '/coins/zed/overview', './upload/coinlist/zed.png', 'ZED', 'ZED', 'ZedCoins', 'ZedCoins (ZED)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 247, '0', 0),
(241, 5037, '/coins/zrcstar/overview', './upload/coinlist/zrc.png', 'ZRC*', 'ZRC*', 'ZiftrCoin', 'ZiftrCoin (ZRC*)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 248, '0', 0),
(242, 5280, '/coins/bcn/overview', './upload/coinlist/bcn.png', 'BCN', 'BCN', 'ByteCoin', 'ByteCoin (BCN)', 'CryptoNight', 'PoW', 0, 2000, 'N/A', 'N/A', 249, '0', 0),
(243, 5281, '/coins/ekn/overview', './upload/coinlist/ekn.png', 'EKN', 'EKN', 'Elektron', 'Elektron (EKN)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 250, '0', 0),
(244, 5282, '/coins/xdn/overview', './upload/coinlist/xdn.jpg', 'XDN', 'XDN', 'DigitalNote ', 'DigitalNote  (XDN)', 'CryptoNight', 'PoW', 0, 2000, 'N/A', 'N/A', 251, '0', 0),
(245, 5283, '/coins/xau/overview', './upload/coinlist/xau.png', 'XAU', 'XAU', 'XauCoin', 'XauCoin (XAU)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 252, '0', 0),
(246, 5284, '/coins/tmc/overview', './upload/coinlist/tmc.png', 'TMC', 'TMC', 'TimesCoin', 'TimesCoin (TMC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 253, '0', 0),
(247, 5285, '/coins/xem/overview', './upload/coinlist/xem.png', 'XEM', 'XEM', 'NEM', 'NEM (XEM)', 'N/A', 'PoI', 0, 2000, 'N/A', 'N/A', 254, '0', 0),
(248, 5286, '/coins/burst/overview', './upload/coinlist/burst.png', 'BURST', 'BURST', 'BurstCoin', 'BurstCoin (BURST)', 'Shabal256', 'PoC', 0, 2000, 'N/A', 'N/A', 255, '0', 0),
(249, 5287, '/coins/nbt/overview', './upload/coinlist/nbt.png', 'NBT', 'NBT', 'NuBits', 'NuBits (NBT)', 'SHA256', 'PoS', 0, 2000, 'N/A', 'N/A', 256, '0', 0),
(250, 5288, '/coins/sjcx/overview', './upload/coinlist/sjcx.png', 'SJCX', 'SJCX', 'StorjCoin', 'StorjCoin (SJCX)', 'Counterparty', 'PoS', 0, 2000, 'N/A', 'N/A', 257, '0', 0),
(251, 5289, '/coins/start/overview', './upload/coinlist/start.png', 'START', 'START', 'StartCoin', 'StartCoin (START)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 258, '0', 0),
(252, 5290, '/coins/huge/overview', './upload/coinlist/huge.png', 'HUGE', 'HUGE', 'BigCoin', 'BigCoin (HUGE)', 'Blake', 'PoW', 0, 2000, 'N/A', 'N/A', 259, '0', 0),
(253, 5292, '/coins/xcp/overview', './upload/coinlist/xcp.png', 'XCP', 'XCP', 'CounterParty', 'CounterParty (XCP)', 'N/A', 'PoW', 0, 2000, 'N/A', 'N/A', 261, '0', 0),
(254, 5293, '/coins/maid/overview', './upload/coinlist/maid.png', 'MAID', 'MAID', 'MaidSafe Coin', 'MaidSafe Coin (MAID)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 262, '0', 0),
(255, 5294, '/coins/007/overview', './upload/coinlist/007.png', '007', '007', '007 coin', '007 coin (007)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 263, '0', 0),
(256, 5295, '/coins/nsr/overview', './upload/coinlist/nsr.png', 'NSR', 'NSR', 'NuShares', 'NuShares (NSR)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 264, '0', 0),
(257, 5296, '/coins/mona/overview', './upload/coinlist/mona.png', 'MONA', 'MONA', 'MonaCoin', 'MonaCoin (MONA)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 265, '0', 0),
(258, 5297, '/coins/cell/overview', './upload/coinlist/cell.png', 'CELL', 'CELL', 'SolarFarm', 'SolarFarm (CELL)', 'N/A', 'PoW', 0, 2000, 'N/A', 'N/A', 266, '0', 0),
(259, 5298, '/coins/tek/overview', './upload/coinlist/tek.png', 'TEK', 'TEK', 'TekCoin', 'TekCoin (TEK)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 267, '0', 0),
(260, 5299, '/coins/tron/overview', './upload/coinlist/tron.png', 'TRON', 'TRON', 'Positron', 'Positron (TRON)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 268, '0', 0),
(261, 5300, '/coins/bay/overview', './upload/coinlist/bay1.png', 'BAY', 'BAY', 'BitBay', 'BitBay (BAY)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 269, '0', 0),
(262, 5301, '/coins/ntrn/overview', './upload/coinlist/ntrn.png', 'NTRN', 'NTRN', 'Neutron', 'Neutron (NTRN)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 270, '0', 0),
(263, 5302, '/coins/sling/overview', './upload/coinlist/sling.png', 'SLING', 'SLING', 'Sling Coin', 'Sling Coin (SLING)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 271, '0', 0),
(264, 5303, '/coins/xvc/overview', './upload/coinlist/xvc.png', 'XVC', 'XVC', 'Vcash', 'Vcash (XVC)', 'Whirlpool', 'PoS', 0, 2000, 'N/A', 'N/A', 272, '0', 0),
(265, 5304, '/coins/crave/overview', './upload/coinlist/crave.png', 'CRAVE', 'CRAVE', 'CraveCoin', 'CraveCoin (CRAVE)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 273, '0', 0),
(266, 5305, '/coins/block/overview', './upload/coinlist/block.png', 'BLOCK', 'BLOCK', 'BlockNet', 'BlockNet (BLOCK)', 'N/A', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 274, '0', 0),
(267, 5306, '/coins/xsi/overview', './upload/coinlist/xsi.png', 'XSI', 'XSI', 'Stability Shares', 'Stability Shares (XSI)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 275, '0', 0),
(268, 5307, '/coins/ghs/overview', './upload/coinlist/cexio.png', 'GHS', 'GHS', 'Giga Hash', 'Giga Hash (GHS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 276, '0', 0),
(269, 5308, '/coins/byc/overview', './upload/coinlist/byc.png', 'BYC', 'BYC', 'ByteCent', 'ByteCent (BYC)', 'N/A', 'PoW', 0, 2000, 'N/A', 'N/A', 277, '0', 0),
(270, 5309, '/coins/grc/overview', './upload/coinlist/grc.png', 'GRC', 'GRC', 'GridCoin', 'GridCoin (GRC)', 'Scrypt', 'DPoR', 0, 2000, 'N/A', 'N/A', 278, '0', 0),
(271, 5310, '/coins/gemz/overview', './upload/coinlist/frac.png', 'GEMZ', 'GEMZ', 'Gemz Social', 'Gemz Social (GEMZ)', 'N/A', 'PoW', 0, 2000, 'N/A', 'N/A', 279, '0', 0),
(272, 5311, '/coins/ktk/overview', './upload/coinlist/ktk.png', 'KTK', 'KTK', 'KryptCoin', 'KryptCoin (KTK)', 'Scrypt', 'PoS', 0, 2000, 'N/A', 'N/A', 280, '0', 0),
(273, 5312, '/coins/hz/overview', './upload/coinlist/hz.png', 'HZ', 'HZ', 'Horizon', 'Horizon (HZ)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 281, '0', 0),
(274, 5313, '/coins/fair/overview', './upload/coinlist/fair.png', 'FAIR', 'FAIR', 'FairCoin', 'FairCoin (FAIR)', 'Groestl', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 282, '0', 0),
(275, 5314, '/coins/qora/overview', './upload/coinlist/qora.png', 'QORA', 'QORA', 'QoraCoin', 'QoraCoin (QORA)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 283, '0', 0),
(276, 5316, '/coins/rby/overview', './upload/coinlist/rby.png', 'RBY', 'RBY', 'RubyCoin', 'RubyCoin (RBY)', 'Scrypt', 'PoS', 0, 2000, 'N/A', 'N/A', 285, '0', 0),
(277, 5318, '/coins/kore/overview', './upload/coinlist/kore.png', 'KORE', 'KORE', 'Kore', 'Kore (KORE)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 287, '0', 0),
(278, 5319, '/coins/wbb/overview', './upload/coinlist/wbb.png', 'WBB', 'WBB', 'Wild Beast Coin', 'Wild Beast Coin (WBB)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 288, '0', 0),
(279, 5320, '/coins/ssd/overview', './upload/coinlist/ssd.png', 'SSD', 'SSD', 'Sonic Screw Driver Coin', 'Sonic Screw Driver Coin (SSD)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 289, '0', 0),
(280, 5321, '/coins/xtc/overview', './upload/coinlist/xtc.png', 'XTC', 'XTC', 'TileCoin', 'TileCoin (XTC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 290, '0', 0),
(281, 5322, '/coins/note/overview', './upload/coinlist/note.png', 'NOTE', 'NOTE', 'Dnotes', 'Dnotes (NOTE)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 291, '0', 0),
(282, 5323, '/coins/gridstar/overview', './upload/coinlist/grid.png', 'GRID*', 'GRID*', 'GridPay', 'GridPay (GRID*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 292, '0', 0),
(283, 5325, '/coins/flo/overview', './upload/coinlist/flo1.png', 'FLO', 'FLO', 'FlorinCoin', 'FlorinCoin (FLO)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 293, '0', 0),
(284, 5326, '/coins/mmxiv/overview', './upload/coinlist/mmxiv.png', 'MMXIV', 'MMXIV', 'MaieutiCoin', 'MaieutiCoin (MMXIV)', 'SHA256', 'PoS', 0, 2000, 'N/A', 'N/A', 294, '0', 0),
(285, 5327, '/coins/8bit/overview', './upload/coinlist/8bit.png', '8BIT', '8BIT', '8BIT Coin', '8BIT Coin (8BIT)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 295, '0', 0),
(286, 5328, '/coins/stv/overview', './upload/coinlist/stv.png', 'STV', 'STV', 'Sativa Coin', 'Sativa Coin (STV)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 296, '0', 0),
(287, 5329, '/coins/ebs/overview', './upload/coinlist/ebs.png', 'EBS', 'EBS', 'EbolaShare', 'EbolaShare (EBS)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 297, '0', 0),
(288, 5330, '/coins/am/overview', './upload/coinlist/am.png', 'AM', 'AM', 'AeroMe', 'AeroMe (AM)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 298, '0', 0),
(289, 5331, '/coins/xmg/overview', './upload/coinlist/xmg.png', 'XMG', 'XMG', 'Coin Magi', 'Coin Magi (XMG)', 'M7M', 'PoW/PoM/PoSII', 0, 2000, 'N/A', 'N/A', 299, '0', 0),
(290, 5332, '/coins/amber/overview', './upload/coinlist/amber.png', 'AMBER', 'AMBER', 'AmberCoin', 'AmberCoin (AMBER)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 300, '0', 0),
(291, 5333, '/coins/jpc/overview', './upload/coinlist/jpc.png', 'JPC', 'JPC', 'JackPotCoin', 'JackPotCoin (JPC)', 'SHA3', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 301, '0', 0),
(292, 5334, '/coins/nkt/overview', './upload/coinlist/nkt.png', 'NKT', 'NKT', 'NakomotoDark', 'NakomotoDark (NKT)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 302, '0', 0),
(293, 5335, '/coins/j/overview', './upload/coinlist/j.png', 'J', 'J', 'JoinCoin', 'JoinCoin (J)', 'Multiple', 'PoW', 0, 2000, 'N/A', 'N/A', 303, '0', 0),
(294, 5336, '/coins/ghc/overview', './upload/coinlist/ghc.png', 'GHC', 'GHC', 'GhostCoin', 'GhostCoin (GHC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 304, '0', 0),
(295, 5337, '/coins/dtc/overview', './upload/coinlist/dtc.png', 'DTC', 'DTC*', 'DayTrader Coin', 'DayTrader Coin (DTC)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 305, '0', 0),
(296, 5338, '/coins/aby/overview', './upload/coinlist/aby.png', 'ABY', 'ABY', 'ArtByte', 'ArtByte (ABY)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 306, '0', 0),
(297, 5339, '/coins/ldoge/overview', './upload/coinlist/ldoge.png', 'LDOGE', 'LDOGE', 'LiteDoge', 'LiteDoge (LDOGE)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 307, '0', 0),
(298, 5340, '/coins/mtr/overview', './upload/coinlist/frac.png', 'MTR', 'MTR', 'MasterTraderCoin', 'MasterTraderCoin (MTR)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 308, '0', 0),
(299, 5341, '/coins/tri/overview', './upload/coinlist/tri.png', 'TRI', 'TRI', 'Triangles Coin', 'Triangles Coin (TRI)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 309, '0', 0),
(300, 5342, '/coins/swarm/overview', './upload/coinlist/swarm.png', 'SWARM', 'SWARM', 'SwarmCoin', 'SwarmCoin (SWARM)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 310, '0', 0),
(301, 5343, '/coins/bbr/overview', './upload/coinlist/bbr.png', 'BBR', 'BBR', 'Boolberry', 'Boolberry (BBR)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 311, '0', 0),
(302, 5344, '/coins/btcry/overview', './upload/coinlist/btcry.png', 'BTCRY', 'BTCRY', 'BitCrystal', 'BitCrystal (BTCRY)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 312, '0', 0);
INSERT INTO `dbt_cryptocoin` (`id`, `cid`, `url`, `image`, `name`, `symbol`, `coin_name`, `full_name`, `algorithm`, `proof_type`, `show_home`, `coin_position`, `premined_value`, `total_coins_freefloat`, `rank`, `sponsored`, `status`) VALUES
(303, 5345, '/coins/bcr/overview', './upload/coinlist/bcr.png', 'BCR', 'BCR', 'BitCredit', 'BitCredit (BCR)', 'Momentum', 'PoW', 0, 2000, 'N/A', 'N/A', 313, '0', 0),
(304, 5346, '/coins/xpb/overview', './upload/coinlist/xpb.png', 'XPB', 'XPB', 'Pebble Coin', 'Pebble Coin (XPB)', 'CryptoNight', 'PoW', 0, 2000, 'N/A', 'N/A', 314, '0', 0),
(305, 5347, '/coins/xdq/overview', './upload/coinlist/xdq.png', 'XDQ', 'XDQ', 'Dirac Coin', 'Dirac Coin (XDQ)', 'Blake', 'PoW', 0, 2000, 'N/A', 'N/A', 315, '0', 0),
(306, 5348, '/coins/fldc/overview', './upload/coinlist/fldc.png', 'FLDC', 'FLDC', 'Folding Coin', 'Folding Coin (FLDC)', 'Stanford Folding', 'PoW', 0, 2000, 'N/A', 'N/A', 316, '0', 0),
(307, 5349, '/coins/slr/overview', './upload/coinlist/slr.png', 'SLR', 'SLR', 'SolarCoin', 'SolarCoin (SLR)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 317, '0', 0),
(308, 5350, '/coins/smac/overview', './upload/coinlist/smac.png', 'SMAC', 'SMAC', 'Social Media Coin', 'Social Media Coin (SMAC)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 318, '0', 0),
(309, 5351, '/coins/trk/overview', './upload/coinlist/trk.png', 'TRK', 'TRK', 'TruckCoin', 'TruckCoin (TRK)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 319, '0', 0),
(310, 5352, '/coins/u/overview', './upload/coinlist/u.jpg', 'U', 'U', 'Ucoin', 'Ucoin (U)', 'X11', 'PoS', 0, 2000, 'N/A', 'N/A', 320, '0', 0),
(311, 5353, '/coins/uis/overview', './upload/coinlist/uis.png', 'UIS', 'UIS', 'Unitus', 'Unitus (UIS)', 'Multiple', 'PoW', 0, 2000, 'N/A', 'N/A', 321, '0', 0),
(312, 5354, '/coins/cyp/overview', './upload/coinlist/cyp.png', 'CYP', 'CYP', 'CypherPunkCoin', 'CypherPunkCoin (CYP)', 'QuBit', 'PoW', 0, 2000, 'N/A', 'N/A', 322, '0', 0),
(313, 5355, '/coins/ufo/overview', './upload/coinlist/ufo1.png', 'UFO', 'UFO', 'UFO Coin', 'UFO Coin (UFO)', 'NeoScrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 323, '0', 0),
(314, 5356, '/coins/asn/overview', './upload/coinlist/asn.png', 'ASN', 'ASN', 'Ascension Coin', 'Ascension Coin (ASN)', 'QuBit', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 324, '0', 0),
(315, 5357, '/coins/oc/overview', './upload/coinlist/oc.png', 'OC', 'OC', 'OrangeCoin', 'OrangeCoin (OC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 325, '0', 0),
(316, 5358, '/coins/gsm/overview', './upload/coinlist/gsm.png', 'GSM', 'GSM', 'GSM Coin', 'GSM Coin (GSM)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 326, '0', 0),
(317, 5359, '/coins/fsc2/overview', './upload/coinlist/fsc.png', 'FSC2', 'FSC2', 'FriendshipCoin', 'FriendshipCoin (FSC2)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 327, '0', 0),
(318, 5360, '/coins/nxtty/overview', './upload/coinlist/nxtty.png', 'NXTTY', 'NXTTY', 'NXTTY', 'NXTTY (NXTTY)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 328, '0', 0),
(319, 5361, '/coins/qbk/overview', './upload/coinlist/qbk.png', 'QBK', 'QBK', 'QuBuck Coin', 'QuBuck Coin (QBK)', 'X13', 'PoS/PoB', 0, 2000, 'N/A', 'N/A', 329, '0', 0),
(320, 5362, '/coins/blc/overview', './upload/coinlist/blc.png', 'BLC', 'BLC', 'BlakeCoin', 'BlakeCoin (BLC)', 'Blake', 'PoW', 0, 2000, 'N/A', 'N/A', 330, '0', 0),
(321, 5363, '/coins/maryj/overview', './upload/coinlist/maryj.png', 'MARYJ', 'MARYJ', 'MaryJane Coin', 'MaryJane Coin (MARYJ)', 'X15', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 331, '0', 0),
(322, 5365, '/coins/omc/overview', './upload/coinlist/omc.png', 'OMC', 'OMC', 'OmniCron', 'OmniCron (OMC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 333, '0', 0),
(323, 5366, '/coins/gig/overview', './upload/coinlist/gig.png', 'GIG', 'GIG', 'GigCoin', 'GigCoin (GIG)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 334, '0', 0),
(324, 5367, '/coins/cc/overview', './upload/coinlist/cc.png', 'CC', 'CC', 'CyberCoin', 'CyberCoin (CC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 335, '0', 0),
(325, 5368, '/coins/bits/overview', './upload/coinlist/bits.png', 'BITS', 'BITS', 'BitstarCoin', 'BitstarCoin (BITS)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 336, '0', 0),
(326, 5369, '/coins/ltbc/overview', './upload/coinlist/ltb.png', 'LTBC', 'LTBC', 'LTBCoin', 'LTBCoin (LTBC)', 'N/A', 'PoP/PoV/PoQ', 0, 2000, 'N/A', 'N/A', 337, '0', 0),
(327, 5370, '/coins/neos/overview', './upload/coinlist/neos1.png', 'NEOS', 'NEOS', 'NeosCoin', 'NeosCoin (NEOS)', 'SHA256', 'PoS', 0, 2000, 'N/A', 'N/A', 338, '0', 0),
(328, 5371, '/coins/hyper/overview', './upload/coinlist/hyper.png', 'HYPER', 'HYPER', 'HyperCoin', 'HyperCoin (HYPER)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 339, '0', 0),
(329, 5372, '/coins/vtr/overview', './upload/coinlist/vtr.png', 'VTR', 'VTR', 'Vtorrent', 'Vtorrent (VTR)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 340, '0', 0),
(330, 5373, '/coins/metal/overview', './upload/coinlist/metal.png', 'METAL', 'METAL', 'MetalCoin', 'MetalCoin (METAL)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 341, '0', 0),
(331, 5374, '/coins/pink/overview', './upload/coinlist/pinkcoin-logo.png', 'PINK', 'PINK', 'PinkCoin', 'PinkCoin (PINK)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 342, '0', 0),
(332, 5375, '/coins/gre/overview', './upload/coinlist/grn.png', 'GRE', 'GRE', 'GreenCoin', 'GreenCoin (GRE)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 343, '0', 0),
(333, 5376, '/coins/xg/overview', './upload/coinlist/xg.png', 'XG', 'XG', 'XG Sports', 'XG Sports (XG)', 'XG Hash', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 344, '0', 0),
(334, 5377, '/coins/child/overview', './upload/coinlist/child.png', 'CHILD', 'CHILD', 'ChildCoin', 'ChildCoin (CHILD)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 345, '0', 0),
(335, 5378, '/coins/boom/overview', './upload/coinlist/boom.png', 'BOOM', 'BOOM', 'BOOM Coin', 'BOOM Coin (BOOM)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 346, '0', 0),
(336, 5379, '/coins/mine/overview', './upload/coinlist/mine.png', 'MINE', 'MINE', 'Instamine Nuggets', 'Instamine Nuggets (MINE)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 347, '0', 0),
(337, 5380, '/coins/ros/overview', '', 'ROS', 'ROS', 'ROS Coin', 'ROS Coin (ROS)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 348, '0', 0),
(338, 5381, '/coins/unat/overview', './upload/coinlist/unat.png', 'UNAT', 'UNAT', 'Unattanium', 'Unattanium (UNAT)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 349, '0', 0),
(339, 5382, '/coins/slm/overview', './upload/coinlist/slm.png', 'SLM', 'SLM', 'SlimCoin', 'SlimCoin (SLM)', 'N/A', 'PoB', 0, 2000, 'N/A', 'N/A', 350, '0', 0),
(340, 5383, '/coins/gaia/overview', './upload/coinlist/gaia.png', 'GAIA', 'GAIA', 'GAIA Platform', 'GAIA Platform (GAIA)', 'X11', 'PoS', 0, 2000, 'N/A', 'N/A', 351, '0', 0),
(341, 5384, '/coins/trust/overview', './upload/coinlist/trust.png', 'TRUST', 'TRUST', 'TrustPlus', 'TrustPlus (TRUST)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 352, '0', 0),
(342, 5385, '/coins/fcn/overview', './upload/coinlist/fcn.png', 'FCN', 'FCN', 'FantomCoin ', 'FantomCoin  (FCN)', 'CryptoNight', 'PoW', 0, 2000, 'N/A', 'N/A', 353, '0', 0),
(343, 5386, '/coins/xcn/overview', './upload/coinlist/xcn.png', 'XCN', 'XCN', 'Cryptonite', 'Cryptonite (XCN)', 'M7 POW', 'PoW', 0, 2000, 'N/A', 'N/A', 354, '0', 0),
(344, 5387, '/coins/cure/overview', './upload/coinlist/cure.png', 'CURE', 'CURE', 'Curecoin', 'Curecoin (CURE)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 355, '0', 0),
(345, 5388, '/coins/gmc/overview', './upload/coinlist/gmc.png', 'GMC', 'GMC', 'Gridmaster', 'Gridmaster (GMC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 356, '0', 0),
(346, 5389, '/coins/mmc/overview', './upload/coinlist/mmc.png', 'MMC', 'MMC', 'MemoryCoin', 'MemoryCoin (MMC)', 'Multiple', 'PoW', 0, 2000, 'N/A', 'N/A', 357, '0', 0),
(347, 5391, '/coins/xbc/overview', './upload/coinlist/xbc.png', 'XBC', 'XBC', 'BitcoinPlus', 'BitcoinPlus (XBC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 359, '0', 0),
(348, 5392, '/coins/cyc/overview', './upload/coinlist/cyc.png', 'CYC', 'CYC', 'ConSpiracy Coin ', 'ConSpiracy Coin  (CYC)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 360, '0', 0),
(349, 5393, '/coins/octo/overview', './upload/coinlist/888.png', 'OCTO', 'OCTO', 'OctoCoin', 'OctoCoin (OCTO)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 361, '0', 0),
(350, 5394, '/coins/msc/overview', './upload/coinlist/mst.png', 'MSC', 'MSC', 'MasterCoin', 'MasterCoin (MSC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 362, '0', 0),
(351, 5395, '/coins/egg/overview', './upload/coinlist/egg.png', 'EGG', 'EGG', 'EggCoin', 'EggCoin (EGG)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 363, '0', 0),
(352, 5396, '/coins/c2/overview', './upload/coinlist/c2.png', 'C2', 'C2', 'Coin.2', 'Coin.2 (C2)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 364, '0', 0),
(353, 5397, '/coins/gsx/overview', './upload/coinlist/gsxjpeg.png', 'GSX', 'GSX', 'GlowShares', 'GlowShares (GSX)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 365, '0', 0),
(354, 5398, '/coins/cam/overview', './upload/coinlist/cam.png', 'CAM', 'CAM', 'Camcoin', 'Camcoin (CAM)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 366, '0', 0),
(355, 5399, '/coins/rbr/overview', './upload/coinlist/rbr.png', 'RBR', 'RBR', 'Ribbit Rewards', 'Ribbit Rewards (RBR)', 'Multiple', 'PoW', 0, 2000, 'N/A', 'N/A', 367, '0', 0),
(356, 5400, '/coins/xqn/overview', './upload/coinlist/xqn.png', 'XQN', 'XQN', 'Quotient', 'Quotient (XQN)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 368, '0', 0),
(357, 5401, '/coins/icash/overview', './upload/coinlist/icash.png', 'ICASH', 'ICASH', 'ICASH', 'ICASH (ICASH)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 369, '0', 0),
(358, 5402, '/coins/node/overview', './upload/coinlist/node.png', 'NODE', 'NODE', 'Node', 'Node (NODE)', 'Curve25519', 'PoA', 0, 2000, 'N/A', 'N/A', 370, '0', 0),
(359, 5403, '/coins/soon/overview', './upload/coinlist/soon.png', 'SOON', 'SOON', 'SoonCoin', 'SoonCoin (SOON)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 371, '0', 0),
(360, 5404, '/coins/btmi/overview', './upload/coinlist/btmi.png', 'BTMI', 'BTMI', 'BitMiles', 'BitMiles (BTMI)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 372, '0', 0),
(361, 5405, '/coins/event/overview', './upload/coinlist/event.png', 'EVENT', 'EVENT', 'Event Token', 'Event Token (EVENT)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 373, '0', 0),
(362, 5406, '/coins/1cr/overview', './upload/coinlist/1cr.png', '1CR', '1CR', '1Credit', '1Credit (1CR)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 374, '0', 0),
(363, 5407, '/coins/vior/overview', './upload/coinlist/viorjpeg.png', 'VIOR', 'VIOR', 'ViorCoin', 'ViorCoin (VIOR)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 375, '0', 0),
(364, 5408, '/coins/xco/overview', './upload/coinlist/xco.png', 'XCO', 'XCO', 'XCoin', 'XCoin (XCO)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 376, '0', 0),
(365, 5409, '/coins/vmc/overview', './upload/coinlist/vmc.png', 'VMC', 'VMC', 'VirtualMining Coin', 'VirtualMining Coin (VMC)', 'Scrypt-n', 'PoW', 0, 2000, 'N/A', 'N/A', 377, '0', 0),
(366, 5410, '/coins/mrs/overview', './upload/coinlist/mrs.png', 'MRS', 'MRS', 'MarsCoin', 'MarsCoin (MRS)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 378, '0', 0),
(367, 6088, '/coins/viral/overview', './upload/coinlist/viral.png', 'VIRAL', 'VIRAL', 'Viral Coin', 'Viral Coin (VIRAL)', 'Scrypt', 'PoS', 0, 2000, 'N/A', 'N/A', 379, '0', 0),
(368, 6093, '/coins/eqm/overview', './upload/coinlist/mrs.png', 'EQM', 'EQM', 'Equilibrium Coin', 'Equilibrium Coin (EQM)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 380, '0', 0),
(369, 6094, '/coins/isl/overview', './upload/coinlist/mrs.png', 'ISL', 'ISL', 'IslaCoin', 'IslaCoin (ISL)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 381, '0', 0),
(370, 6095, '/coins/qslv/overview', './upload/coinlist/qslv.png', 'QSLV', 'QSLV', 'Quicksilver coin', 'Quicksilver coin (QSLV)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 382, '0', 0),
(371, 6096, '/coins/xwt/overview', './upload/coinlist/mrs.png', 'XWT', 'XWT', 'World Trade Funds', 'World Trade Funds (XWT)', 'X15', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 383, '0', 0),
(372, 6097, '/coins/xna/overview', './upload/coinlist/mrs.png', 'XNA', 'XNA', 'DeOxyRibose', 'DeOxyRibose (XNA)', 'X11', 'PoS', 0, 2000, 'N/A', 'N/A', 384, '0', 0),
(373, 6098, '/coins/rdn/overview', './upload/coinlist/mrs.png', 'RDN', 'RDN', 'RadonPay', 'RadonPay (RDN)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 385, '0', 0),
(374, 6099, '/coins/skb/overview', './upload/coinlist/mrs.png', 'SKB', 'SKB', 'SkullBuzz', 'SkullBuzz (SKB)', 'SHA256', 'PoS', 0, 2000, 'N/A', 'N/A', 386, '0', 0),
(375, 6100, '/coins/bsty/overview', './upload/coinlist/bsty.png', 'BSTY', 'BSTY', 'GlobalBoost', 'GlobalBoost (BSTY)', 'yescript', 'PoW', 0, 2000, 'N/A', 'N/A', 387, '0', 0),
(376, 6101, '/coins/fcs/overview', './upload/coinlist/mrs.png', 'FCS', 'FCS', 'CryptoFocus', 'CryptoFocus (FCS)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 388, '0', 0),
(377, 6102, '/coins/gam/overview', './upload/coinlist/gam.png', 'GAM', 'GAM', 'Gambit coin', 'Gambit coin (GAM)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 389, '0', 0),
(378, 6103, '/coins/nxs/overview', './upload/coinlist/nexus.jpg', 'NXS', 'NXS', 'Nexus', 'Nexus (NXS)', 'SHA3', 'PoW/nPoS', 0, 2000, 'N/A', 'N/A', 390, '0', 0),
(379, 6104, '/coins/cesc/overview', './upload/coinlist/cesc.png', 'CESC', 'CESC', 'Crypto Escudo', 'Crypto Escudo (CESC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 391, '0', 0),
(380, 6105, '/coins/twlv/overview', './upload/coinlist/viral.png', 'TWLV', 'TWLV', 'Twelve Coin', 'Twelve Coin (TWLV)', 'T-Inside', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 392, '0', 0),
(381, 6106, '/coins/eags/overview', './upload/coinlist/mrs.png', 'EAGS', 'EAGS', 'EagsCoin', 'EagsCoin (EAGS)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 393, '0', 0),
(382, 6107, '/coins/mwc/overview', './upload/coinlist/mrs.png', 'MWC', 'MWC', 'MultiWallet Coin', 'MultiWallet Coin (MWC)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 394, '0', 0),
(383, 6108, '/coins/adc/overview', './upload/coinlist/adc.png', 'ADC', 'ADC', 'AudioCoin', 'AudioCoin (ADC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 395, '0', 0),
(384, 6109, '/coins/mars/overview', './upload/coinlist/mrs.png', 'MARS', 'MARS', 'MarsCoin ', 'MarsCoin  (MARS)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 396, '0', 0),
(385, 6110, '/coins/xms/overview', './upload/coinlist/mrs.png', 'XMS', 'XMS', 'Megastake', 'Megastake (XMS)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 397, '0', 0),
(386, 6111, '/coins/sphr/overview', './upload/coinlist/mrs.png', 'SPHR', 'SPHR', 'Sphere Coin', 'Sphere Coin (SPHR)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 398, '0', 0),
(387, 6112, '/coins/sigu/overview', './upload/coinlist/mrs.png', 'SIGU', 'SIGU', 'Singular', 'Singular (SIGU)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 399, '0', 0),
(388, 6113, '/coins/btxstar/overview', './upload/coinlist/btx.png', 'BTX*', 'BTX*', 'BitcoinTX', 'BitcoinTX (BTX*)', 'X11', 'PoS', 0, 2000, 'N/A', 'N/A', 400, '0', 0),
(389, 6114, '/coins/dcc/overview', './upload/coinlist/mrs.png', 'DCC', 'DCC', 'DarkCrave', 'DarkCrave (DCC)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 401, '0', 0),
(390, 6115, '/coins/m1/overview', './upload/coinlist/mrs.png', 'M1', 'M1', 'SupplyShock', 'SupplyShock (M1)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 402, '0', 0),
(391, 6116, '/coins/db/overview', './upload/coinlist/mrs.png', 'DB', 'DB', 'DarkBit', 'DarkBit (DB)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 403, '0', 0),
(392, 6117, '/coins/cto/overview', './upload/coinlist/mrs.png', 'CTO', 'CTO', 'Crypto', 'Crypto (CTO)', 'Lyra2RE', 'PoW', 0, 2000, 'N/A', 'N/A', 404, '0', 0),
(393, 6339, '/coins/edge/overview', './upload/coinlist/edge.png', 'EDGE', 'EDGE', 'EdgeCoin', 'EdgeCoin (EDGE)', 'SHA256', 'PoW/HiPoS', 0, 2000, 'N/A', 'N/A', 405, '0', 0),
(394, 6341, '/coins/luxstar/overview', './upload/coinlist/lux.png', 'LUX*', 'LUX*', 'BitLux', 'BitLux (LUX*)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 406, '0', 0),
(395, 6343, '/coins/futc/overview', './upload/coinlist/futc.png', 'FUTC', 'FUTC', 'FutCoin', 'FutCoin (FUTC)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 407, '0', 0),
(396, 6393, '/coins/globe/overview', './upload/coinlist/globe.png', 'GLOBE', 'GLOBE', 'Global', 'Global (GLOBE)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 408, '0', 0),
(397, 6411, '/coins/tam/overview', './upload/coinlist/tam.png', 'TAM', 'TAM', 'TamaGucci', 'TamaGucci (TAM)', 'Scrypt', 'PoW/PoS/PoC', 0, 2000, 'N/A', 'N/A', 409, '0', 0),
(398, 6412, '/coins/mrp/overview', './upload/coinlist/mrp.png', 'MRP', 'MRP', 'MorpheusCoin', 'MorpheusCoin (MRP)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 410, '0', 0),
(399, 6451, '/coins/creva/overview', './upload/coinlist/creva.png', 'CREVA', 'CREVA', 'Creva Coin', 'Creva Coin (CREVA)', 'X11', 'N/A', 0, 2000, 'N/A', 'N/A', 411, '0', 0),
(400, 6452, '/coins/xfc/overview', './upload/coinlist/xfc.png', 'XFC', 'XFC', 'Forever Coin', 'Forever Coin (XFC)', 'X11', 'PoS', 0, 2000, 'N/A', 'N/A', 412, '0', 0),
(401, 6453, '/coins/nanas/overview', './upload/coinlist/nanas.png', 'NANAS', 'NANAS', 'BananaBits', 'BananaBits (NANAS)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 413, '0', 0),
(402, 6454, '/coins/log/overview', './upload/coinlist/log.png', 'LOG', 'LOG', 'Wood Coin', 'Wood Coin (LOG)', 'N/A', 'PoW', 0, 2000, 'N/A', 'N/A', 414, '0', 0),
(403, 6455, '/coins/xce/overview', './upload/coinlist/xce.png', 'XCE', 'XCE', 'Cerium', 'Cerium (XCE)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 415, '0', 0),
(404, 6476, '/coins/acp/overview', './upload/coinlist/acp.png', 'ACP', 'ACP', 'Anarchists Prime', 'Anarchists Prime (ACP)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 416, '0', 0),
(405, 7480, '/coins/drz/overview', './upload/coinlist/drz.png', 'DRZ', 'DRZ', 'Droidz', 'Droidz (DRZ)', 'QUAIT', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 417, '0', 0),
(406, 7481, '/coins/bucksstar/overview', './upload/coinlist/bucks.png', 'BUCKS*', 'BUCKS*', 'GorillaBucks', 'GorillaBucks (BUCKS*)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 418, '0', 0),
(407, 7482, '/coins/bsc/overview', './upload/coinlist/bsc.png', 'BSC', 'BSC', 'BowsCoin', 'BowsCoin (BSC)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 419, '0', 0),
(408, 7483, '/coins/drkt/overview', './upload/coinlist/drkt.png', 'DRKT', 'DRKT', 'DarkTron', 'DarkTron (DRKT)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 420, '0', 0),
(409, 7484, '/coins/circ/overview', './upload/coinlist/circ.png', 'CIRC', 'CIRC', 'CryptoCircuits', 'CryptoCircuits (CIRC)', 'vDPOS', 'PoS', 0, 2000, 'N/A', 'N/A', 421, '0', 0),
(410, 7559, '/coins/nka/overview', './upload/coinlist/nka.png', 'NKA', 'NKA', 'IncaKoin', 'IncaKoin (NKA)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 422, '0', 0),
(411, 7562, '/coins/versa/overview', './upload/coinlist/versa.png', 'VERSA', 'VERSA', 'Versa Token', 'Versa Token (VERSA)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 423, '0', 0),
(412, 7564, '/coins/epy/overview', './upload/coinlist/epy.png', 'EPY', 'EPY', 'Empyrean', 'Empyrean (EPY)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 424, '0', 0),
(413, 7565, '/coins/sql/overview', './upload/coinlist/sql.png', 'SQL', 'SQL', 'Squall Coin', 'Squall Coin (SQL)', 'X11', 'PoS', 0, 2000, 'N/A', 'N/A', 425, '0', 0),
(414, 7567, '/coins/poly/overview', './upload/coinlist/poly.png', 'POLY', 'POLY', 'PolyBit', 'PolyBit (POLY)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 426, '0', 0),
(415, 7577, '/coins/piggy/overview', './upload/coinlist/piggy.png', 'PIGGY', 'PIGGY', 'Piggy Coin', 'Piggy Coin (PIGGY)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 427, '0', 0),
(416, 7580, '/coins/cha/overview', './upload/coinlist/a3c.png', 'CHA', 'CHA', 'Charity Coin', 'Charity Coin (CHA)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 428, '0', 0),
(417, 7581, '/coins/mil/overview', './upload/coinlist/mil.png', 'MIL', 'MIL', 'Milllionaire Coin', 'Milllionaire Coin (MIL)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 429, '0', 0),
(418, 7586, '/coins/crw/overview', './upload/coinlist/crw1.png', 'CRW', 'CRW', 'Crown Coin', 'Crown Coin (CRW)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 430, '0', 0),
(419, 7588, '/coins/gen/overview', './upload/coinlist/gen.png', 'GEN', 'GEN', 'Genstake', 'Genstake (GEN)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 431, '0', 0),
(420, 7590, '/coins/xph/overview', './upload/coinlist/xph.png', 'XPH', 'XPH', 'PharmaCoin', 'PharmaCoin (XPH)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 432, '0', 0),
(421, 7592, '/coins/grm/overview', './upload/coinlist/grm.png', 'GRM', 'GRM', 'GridMaster', 'GridMaster (GRM)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 433, '0', 0),
(422, 7595, '/coins/qtz/overview', './upload/coinlist/qtz.png', 'QTZ', 'QTZ', 'Quartz', 'Quartz (QTZ)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 434, '0', 0),
(423, 7599, '/coins/arb/overview', './upload/coinlist/arb.png', 'ARB', 'ARB', 'Arbit Coin', 'Arbit Coin (ARB)', 'N/A', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 435, '0', 0),
(424, 7600, '/coins/lts/overview', './upload/coinlist/lts.png', 'LTS', 'LTS', 'Litestar Coin', 'Litestar Coin (LTS)', 'N/A', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 436, '0', 0),
(425, 7624, '/coins/spc/overview', './upload/coinlist/spc.png', 'SPC', 'SPC', 'SpinCoin', 'SpinCoin (SPC)', 'NIST5', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 437, '0', 0),
(426, 7625, '/coins/gp/overview', './upload/coinlist/gp.png', 'GP', 'GP', 'GoldPieces', 'GoldPieces (GP)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 438, '0', 0),
(427, 7626, '/coins/bitz/overview', './upload/coinlist/bitz.png', 'BITZ', 'BITZ', 'Bitz Coin', 'Bitz Coin (BITZ)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 439, '0', 0),
(428, 7627, '/coins/dub/overview', './upload/coinlist/a3c.png', 'DUB', 'DUB', 'DubCoin', 'DubCoin (DUB)', 'X15', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 440, '0', 0),
(429, 7634, '/coins/grav/overview', './upload/coinlist/grav.png', 'GRAV', 'GRAV', 'Graviton', 'Graviton (GRAV)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 441, '0', 0),
(430, 7635, '/coins/bob/overview', './upload/coinlist/bob.png', 'BOB', 'BOB', 'Bob Coin', 'Bob Coin (BOB)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 442, '0', 0),
(431, 7636, '/coins/mcn/overview', './upload/coinlist/mcn.png', 'MCN', 'MCN', 'MonetaVerde', 'MonetaVerde (MCN)', 'CryptoNight', 'PoW', 0, 2000, 'N/A', 'N/A', 443, '0', 0),
(432, 7650, '/coins/qcn/overview', './upload/coinlist/qcn.png', 'QCN', 'QCN', 'Quazar Coin', 'Quazar Coin (QCN)', 'CryptoNight', 'PoW', 0, 2000, 'N/A', 'N/A', 444, '0', 0),
(433, 7653, '/coins/hedg/overview', './upload/coinlist/hedg.png', 'HEDG', 'HEDG', 'Hedgecoin', 'Hedgecoin (HEDG)', 'X13', 'PoW', 0, 2000, 'N/A', 'N/A', 445, '0', 0),
(434, 8682, '/coins/song/overview', './upload/coinlist/song.png', 'SONG', 'SONG', 'Song Coin', 'Song Coin (SONG)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 446, '0', 0),
(435, 8683, '/coins/xseed/overview', './upload/coinlist/xseed.png', 'XSEED', 'XSEED', 'BitSeeds', 'BitSeeds (XSEED)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 447, '0', 0),
(436, 8692, '/coins/cre/overview', './upload/coinlist/cre.png', 'CRE', 'CRE', 'Credits', 'Credits (CRE)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 448, '0', 0),
(437, 8693, '/coins/axiom/overview', './upload/coinlist/axiom.png', 'AXIOM', 'AXIOM', 'Axiom Coin', 'Axiom Coin (AXIOM)', 'N/A', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 449, '0', 0),
(438, 8694, '/coins/smly/overview', './upload/coinlist/smly.png', 'SMLY', 'SMLY', 'SmileyCoin', 'SmileyCoin (SMLY)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 450, '0', 0),
(439, 8695, '/coins/rbt/overview', './upload/coinlist/rbt.png', 'RBT', 'RBT', 'Rimbit', 'Rimbit (RBT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 451, '0', 0),
(440, 8696, '/coins/chip/overview', './upload/coinlist/chip.png', 'CHIP', 'CHIP', 'Chip', 'Chip (CHIP)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 452, '0', 0),
(441, 8716, '/coins/spec/overview', './upload/coinlist/spec.png', 'SPEC', 'SPEC', 'SpecCoin', 'SpecCoin (SPEC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 453, '0', 0),
(442, 8717, '/coins/gram/overview', './upload/coinlist/gram.png', 'GRAM', 'GRAM', 'Gram Coin', 'Gram Coin (GRAM)', 'N/A', 'PoW', 0, 2000, 'N/A', 'N/A', 454, '0', 0),
(443, 8760, '/coins/unc/overview', './upload/coinlist/unc.png', 'UNC', 'UNC', 'UnCoin', 'UnCoin (UNC)', 'X11', 'N/A', 0, 2000, 'N/A', 'N/A', 455, '0', 0),
(444, 8761, '/coins/sprts/overview', './upload/coinlist/sprts.png', 'SPRTS', 'SPRTS', 'Sprouts', 'Sprouts (SPRTS)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 456, '0', 0),
(445, 8762, '/coins/zny/overview', './upload/coinlist/zny.png', 'ZNY', 'ZNY', 'BitZeny', 'BitZeny (ZNY)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 457, '0', 0),
(446, 8763, '/coins/btq/overview', './upload/coinlist/btq.png', 'BTQ', 'BTQ', 'BitQuark', 'BitQuark (BTQ)', 'Multiple', 'PoW', 0, 2000, 'N/A', 'N/A', 458, '0', 0),
(447, 8764, '/coins/pkb/overview', './upload/coinlist/pkb.png', 'PKB', 'PKB', 'ParkByte', 'ParkByte (PKB)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 459, '0', 0),
(448, 8767, '/coins/strstar/overview', './upload/coinlist/str.png', 'STR*', 'STR*', 'StarCoin', 'StarCoin (STR*)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 460, '0', 0),
(449, 8825, '/coins/snrg/overview', './upload/coinlist/snrg.png', 'SNRG', 'SNRG', 'Synergy', 'Synergy (SNRG)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 461, '0', 0),
(450, 8832, '/coins/ghoul/overview', './upload/coinlist/ghoul.png', 'GHOUL', 'GHOUL', 'Ghoul Coin', 'Ghoul Coin (GHOUL)', 'N/A', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 462, '0', 0),
(451, 8846, '/coins/hnc/overview', './upload/coinlist/hnc.png', 'HNC', 'HNC', 'Hellenic Coin', 'Hellenic Coin (HNC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 463, '0', 0),
(452, 12192, '/coins/digs/overview', './upload/coinlist/digs.png', 'DIGS', 'DIGS', 'Diggits', 'Diggits (DIGS)', 'Scrypt', 'PoS', 0, 2000, 'N/A', 'N/A', 464, '0', 0),
(453, 12194, '/coins/exp/overview', './upload/coinlist/exp.png', 'EXP', 'EXP', 'Expanse', 'Expanse (EXP)', 'Ethash', 'PoW', 0, 2000, 'N/A', 'N/A', 465, '0', 0),
(454, 12217, '/coins/gcr/overview', './upload/coinlist/gcr.png', 'GCR', 'GCR', 'Global Currency Reserve', 'Global Currency Reserve (GCR)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 466, '0', 0),
(455, 12223, '/coins/mapc/overview', './upload/coinlist/mapc.png', 'MAPC', 'MAPC', 'MapCoin', 'MapCoin (MAPC)', 'X11', 'PoS', 0, 2000, 'N/A', 'N/A', 467, '0', 0),
(456, 12225, '/coins/mi/overview', './upload/coinlist/mi.png', 'MI', 'MI', 'XiaoMiCoin', 'XiaoMiCoin (MI)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 468, '0', 0),
(457, 12985, '/coins/con_/overview', './upload/coinlist/con_.png', 'CON_', 'CON', 'Paycon', 'Paycon (CON_)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 469, '0', 0),
(458, 13044, '/coins/neustar/overview', './upload/coinlist/neu.png', 'NEU*', 'NEU*', 'NeuCoin', 'NeuCoin (NEU*)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 470, '0', 0),
(459, 13045, '/coins/tx/overview', './upload/coinlist/tx.png', 'TX', 'TX', 'Transfer', 'Transfer (TX)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 471, '0', 0),
(460, 13070, '/coins/grs/overview', './upload/coinlist/grs.png', 'GRS', 'GRS', 'Groestlcoin ', 'Groestlcoin  (GRS)', 'Groestl', 'PoW', 0, 2000, 'N/A', 'N/A', 472, '0', 0),
(461, 13074, '/coins/clv/overview', './upload/coinlist/clv.png', 'CLV', 'CLV', 'CleverCoin', 'CleverCoin (CLV)', 'N/A', 'PoS/PoW', 0, 2000, 'N/A', 'N/A', 474, '0', 0),
(462, 13280, '/coins/fct/overview', './upload/coinlist/fct1.png', 'FCT', 'FCT', 'Factoids', 'Factoids (FCT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 475, '0', 0),
(463, 13281, '/coins/lyb/overview', './upload/coinlist/lyb.png', 'LYB', 'LYB', 'LyraBar', 'LyraBar (LYB)', 'Lyra2RE', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 476, '0', 0),
(464, 15272, '/coins/bst/overview', './upload/coinlist/bst.png', 'BST', 'BST', 'BitStone', 'BitStone (BST)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 477, '0', 0),
(465, 15274, '/coins/pxi/overview', './upload/coinlist/pxi.png', 'PXI', 'PXI', 'Prime-X1', 'Prime-X1 (PXI)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 478, '0', 0),
(466, 15282, '/coins/cpc/overview', './upload/coinlist/cpc.png', 'CPC', 'CPC', 'CapriCoin', 'CapriCoin (CPC)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 479, '0', 0),
(467, 15284, '/coins/ams/overview', './upload/coinlist/ams.png', 'AMS', 'AMS', 'Amsterdam Coin', 'Amsterdam Coin (AMS)', 'Quark', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 480, '0', 0),
(468, 15323, '/coins/obits/overview', './upload/coinlist/obits.png', 'OBITS', 'OBITS', 'Obits Coin', 'Obits Coin (OBITS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 481, '0', 0),
(469, 15869, '/coins/club/overview', './upload/coinlist/club.png', 'CLUB', 'CLUB', ' ClubCoin', ' ClubCoin (CLUB)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 482, '0', 0),
(470, 15870, '/coins/rads/overview', './upload/coinlist/rads.png', 'RADS', 'RADS', 'Radium', 'Radium (RADS)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 483, '0', 0),
(471, 15876, '/coins/emc/overview', './upload/coinlist/emc.png', 'EMC', 'EMC', 'Emercoin', 'Emercoin (EMC)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 484, '0', 0),
(472, 15879, '/coins/blitz/overview', './upload/coinlist/blitz.png', 'BLITZ', 'BLITZ', 'BlitzCoin', 'BlitzCoin (BLITZ)', 'X13', 'PoS', 0, 2000, 'N/A', 'N/A', 485, '0', 0),
(473, 15882, '/coins/hirestar/overview', './upload/coinlist/hire.png', 'HIRE*', 'HIRE*', 'BitHIRE', 'BitHIRE (HIRE*)', 'Scrypt', 'PoS', 0, 2000, 'N/A', 'N/A', 486, '0', 0),
(474, 15885, '/coins/egc/overview', './upload/coinlist/egc.png', 'EGC', 'EGC', 'EverGreenCoin', 'EverGreenCoin (EGC)', 'X15', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 487, '0', 0),
(475, 15888, '/coins/mnd/overview', './upload/coinlist/mnd.png', 'MND', 'MND', 'MindCoin', 'MindCoin (MND)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 488, '0', 0),
(476, 16123, '/coins/i0c/overview', './upload/coinlist/i0c.png', 'I0C', 'I0C', 'I0coin', 'I0coin (I0C)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 489, '0', 0),
(477, 16125, '/coins/bta/overview', './upload/coinlist/bta1.png', 'BTA', 'BTA', 'Bata', 'Bata (BTA)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 490, '0', 0),
(478, 16127, '/coins/karma/overview', './upload/coinlist/karm.png', 'KARMA', 'KARMA', 'Karmacoin', 'Karmacoin (KARMA)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 491, '0', 0),
(479, 16713, '/coins/dcr/overview', './upload/coinlist/decred.png', 'DCR', 'DCR', 'Decred', 'Decred (DCR)', 'BLAKE256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 492, '0', 0),
(480, 16717, '/coins/nas2/overview', './upload/coinlist/nas2.png', 'NAS2', 'NAS2', 'Nas2Coin', 'Nas2Coin (NAS2)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 493, '0', 0),
(481, 17006, '/coins/pak/overview', './upload/coinlist/pak.png', 'PAK', 'PAK', 'Pakcoin', 'Pakcoin (PAK)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 494, '0', 0),
(482, 17547, '/coins/crb/overview', './upload/coinlist/crbit1.png', 'CRB', 'CRB', 'Creditbit ', 'Creditbit  (CRB)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 495, '0', 0),
(483, 17549, '/coins/doged/overview', './upload/coinlist/doged.png', 'DOGED', 'DOGED', 'DogeCoinDark', 'DogeCoinDark (DOGED)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 496, '0', 0),
(484, 17778, '/coins/rep/overview', './upload/coinlist/augur-logo.png', 'REP', 'REP', 'Augur', 'Augur (REP)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 498, '0', 0),
(485, 17857, '/coins/ok/overview', './upload/coinlist/ok.png', 'OK', 'OK', 'OKCash', 'OKCash (OK)', 'N/A', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 499, '0', 0),
(486, 18180, '/coins/vox/overview', './upload/coinlist/vox.png', 'VOX', 'VOX', 'Voxels', 'Voxels (VOX)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 500, '0', 0),
(487, 18244, '/coins/amp/overview', './upload/coinlist/amp.png', 'AMP', 'AMP', 'Synereo', 'Synereo (AMP)', 'N/A', 'Pow/PoSC', 0, 2000, 'N/A', 'N/A', 501, '0', 0),
(488, 18670, '/coins/hodl/overview', './upload/coinlist/hodl.png', 'HODL', 'HODL', 'HOdlcoin', 'HOdlcoin (HODL)', '1GB AES Pattern Search', 'PoW', 0, 2000, 'N/A', 'N/A', 502, '0', 0),
(489, 18907, '/coins/dgd/overview', './upload/coinlist/dgd.png', 'DGD', 'DGD', 'Digix DAO', 'Digix DAO (DGD)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 503, '0', 0),
(490, 19051, '/coins/edrc/overview', './upload/coinlist/edrc.jpg', 'EDRC', 'EDRC', 'EDRCoin', 'EDRCoin (EDRC)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 504, '0', 0),
(491, 20131, '/coins/waves/overview', './upload/coinlist/waves2.png', 'WAVES', 'WAVES', 'Waves', 'Waves (WAVES)', 'Leased POS', 'LPoS', 0, 2000, 'N/A', 'N/A', 507, '0', 0),
(492, 20153, '/coins/htc/overview', './upload/coinlist/htc.png', 'HTC', 'HTC', 'Hitcoin', 'Hitcoin (HTC)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 508, '0', 0),
(493, 20157, '/coins/game/overview', './upload/coinlist/game.png', 'GAME', 'GAME', 'Gamecredits', 'Gamecredits (GAME)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 509, '0', 0),
(494, 20196, '/coins/dsh/overview', './upload/coinlist/dash.png', 'DSH', 'DSH', 'Dashcoin', 'Dashcoin (DSH)', 'CryptoNight', 'PoW', 0, 2000, 'N/A', 'N/A', 510, '0', 0),
(495, 20198, '/coins/dbic/overview', './upload/coinlist/dbic.png', 'DBIC', 'DBIC', 'DubaiCoin', 'DubaiCoin (DBIC)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 511, '0', 0),
(496, 20202, '/coins/xhi/overview', './upload/coinlist/xhi.png', 'XHI', 'XHI', 'HiCoin', 'HiCoin (XHI)', 'Scrypt', 'PoS', 0, 2000, 'N/A', 'N/A', 512, '0', 0),
(497, 20205, '/coins/spots/overview', './upload/coinlist/spots.png', 'SPOTS', 'SPOTS', 'Spots', 'Spots (SPOTS)', 'N/A', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 513, '0', 0),
(498, 20209, '/coins/bios/overview', './upload/coinlist/bios.png', 'BIOS', 'BIOS', 'BiosCrypto', 'BiosCrypto (BIOS)', 'Quark', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 514, '0', 0),
(499, 20211, '/coins/kncstar/overview', './upload/coinlist/knc.png', 'KNC*', 'KNC*', 'Khancoin', 'Khancoin (KNC*)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 515, '0', 0),
(500, 20212, '/coins/cab/overview', './upload/coinlist/cab.png', 'CAB', 'CAB', 'CabbageUnit', 'CabbageUnit (CAB)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 516, '0', 0),
(501, 20213, '/coins/diem/overview', './upload/coinlist/diem_1.png', 'DIEM', 'DIEM', 'CarpeDiemCoin', 'CarpeDiemCoin (DIEM)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 517, '0', 0),
(502, 20214, '/coins/gbt/overview', './upload/coinlist/gbt.png', 'GBT', 'GBT', 'GameBetCoin', 'GameBetCoin (GBT)', 'POS 3.0', 'PoS', 0, 2000, 'N/A', 'N/A', 518, '0', 0),
(503, 20215, '/coins/sar/overview', './upload/coinlist/sar.png', 'SAR', 'SAR', 'SARCoin', 'SARCoin (SAR)', 'SHA256', 'PoS', 0, 2000, 'N/A', 'N/A', 519, '0', 0),
(504, 20218, '/coins/rcx/overview', './upload/coinlist/rcx.png', 'RCX', 'RCX', 'RedCrowCoin', 'RedCrowCoin (RCX)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 520, '0', 0),
(505, 20236, '/coins/pwr/overview', './upload/coinlist/pwr.png', 'PWR', 'PWR', 'PowerCoin', 'PowerCoin (PWR)', 'NIST5', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 521, '0', 0),
(506, 20270, '/coins/trump/overview', './upload/coinlist/trump.png', 'TRUMP', 'TRUMP', 'TrumpCoin', 'TrumpCoin (TRUMP)', 'Blake', 'PoS', 0, 2000, 'N/A', 'N/A', 522, '0', 0),
(507, 20304, '/coins/prm/overview', './upload/coinlist/prm.png', 'PRM', 'PRM', 'PrismChain', 'PrismChain (PRM)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 523, '0', 0),
(508, 20315, '/coins/bcy/overview', './upload/coinlist/bcy.png', 'BCY', 'BCY', 'BitCrystals', 'BitCrystals (BCY)', 'Counterparty', 'N/A', 0, 2000, 'N/A', 'N/A', 524, '0', 0),
(509, 20320, '/coins/rbies/overview', './upload/coinlist/rbies.png', 'RBIES', 'RBIES', 'Rubies', 'Rubies (RBIES)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 525, '0', 0),
(510, 20333, '/coins/steem/overview', './upload/coinlist/steem.png', 'STEEM', 'STEEM', 'Steem', 'Steem (STEEM)', 'N/A', 'PoW', 0, 2000, 'N/A', 'N/A', 526, '0', 0),
(511, 20336, '/coins/blry/overview', './upload/coinlist/blry.png', 'BLRY', 'BLRY', 'BillaryCoin', 'BillaryCoin (BLRY)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 527, '0', 0),
(512, 20338, '/coins/xwc/overview', './upload/coinlist/xwc_1.png', 'XWC', 'XWC', 'WhiteCoin', 'WhiteCoin (XWC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 528, '0', 0),
(513, 20339, '/coins/dot/overview', './upload/coinlist/dot.png', 'DOT', 'DOT', 'Dotcoin', 'Dotcoin (DOT)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 529, '0', 0),
(514, 20342, '/coins/scot/overview', './upload/coinlist/scot_1.png', 'SCOT', 'SCOT', 'Scotcoin', 'Scotcoin (SCOT)', 'Counterparty', 'N/A', 0, 2000, 'N/A', 'N/A', 530, '0', 0),
(515, 20346, '/coins/dnet/overview', './upload/coinlist/dnet.png', 'DNET', 'DNET', 'Darknet', 'Darknet (DNET)', 'Quark', 'Pow/PoS', 0, 2000, 'N/A', 'N/A', 531, '0', 0),
(516, 20348, '/coins/bac/overview', './upload/coinlist/bac.png', 'BAC', 'BAC', 'BitalphaCoin', 'BitalphaCoin (BAC)', 'N/A', 'PoW', 0, 2000, 'N/A', 'N/A', 532, '0', 0),
(517, 20387, '/coins/xidstar/overview', './upload/coinlist/xid.png', 'XID*', 'XID*', 'International Diamond Coin', 'International Diamond Coin (XID*)', 'N/A', 'PoW', 0, 2000, 'N/A', 'N/A', 533, '0', 0),
(518, 20438, '/coins/grt/overview', './upload/coinlist/grt.png', 'GRT', 'GRT', 'Grantcoin', 'Grantcoin (GRT)', 'SHA256', 'Pow', 0, 2000, 'N/A', 'N/A', 535, '0', 0),
(519, 20441, '/coins/tcr/overview', './upload/coinlist/tcr.png', 'TCR', 'TCR', 'Thecreed', 'Thecreed (TCR)', 'QuBit', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 536, '0', 0),
(520, 20444, '/coins/post/overview', './upload/coinlist/post.png', 'POST', 'POST', 'PostCoin', 'PostCoin (POST)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 537, '0', 0),
(521, 20446, '/coins/infx/overview', './upload/coinlist/infx.png', 'INFX', 'INFX', 'Influxcoin', 'Influxcoin (INFX)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 538, '0', 0),
(522, 20448, '/coins/eths/overview', './upload/coinlist/eths.png', 'ETHS', 'ETHS', 'EthereumScrypt', 'EthereumScrypt (ETHS)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 539, '0', 0),
(523, 20580, '/coins/pxl/overview', './upload/coinlist/pxl.png', 'PXL', 'PXL', 'Phalanx', 'Phalanx (PXL)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 540, '0', 0),
(524, 20583, '/coins/num/overview', './upload/coinlist/num.png', 'NUM', 'NUM', 'NumbersCoin', 'NumbersCoin (NUM)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 541, '0', 0),
(525, 20585, '/coins/soul/overview', './upload/coinlist/pxl.png', 'SOUL', 'SOUL', 'SoulCoin', 'SoulCoin (SOUL)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 542, '0', 0),
(526, 20591, '/coins/ion/overview', './upload/coinlist/ion.jpg', 'ION', 'ION', 'Ionomy', 'Ionomy (ION)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 543, '0', 0),
(527, 20600, '/coins/grow/overview', './upload/coinlist/grow.png', 'GROW', 'GROW', 'GrownCoin', 'GrownCoin (GROW)', 'N/A', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 544, '0', 0),
(528, 20635, '/coins/unity/overview', './upload/coinlist/unity_1.png', 'UNITY', 'UNITY', 'SuperNET', 'SuperNET (UNITY)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 545, '0', 0),
(529, 20640, '/coins/oldsf/overview', './upload/coinlist/oldsf.png', 'OLDSF', 'OLDSF', 'OldSafeCoin', 'OldSafeCoin (OLDSF)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 546, '0', 0),
(530, 20644, '/coins/sstc/overview', './upload/coinlist/ssc.png', 'SSTC', 'SSTC', 'SunShotCoin', 'SunShotCoin (SSTC)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 547, '0', 0),
(531, 20647, '/coins/netc/overview', './upload/coinlist/netc.png', 'NETC', 'NETC', 'NetworkCoin', 'NetworkCoin (NETC)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 548, '0', 0),
(532, 20650, '/coins/gpu/overview', './upload/coinlist/gpu.png', 'GPU', 'GPU', 'GPU Coin', 'GPU Coin (GPU)', 'Scrypt', 'PoS', 0, 2000, 'N/A', 'N/A', 549, '0', 0),
(533, 20652, '/coins/tagr/overview', './upload/coinlist/tagr.png', 'TAGR', 'TAGR', 'Think And Get Rich Coin', 'Think And Get Rich Coin (TAGR)', 'X15', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 550, '0', 0),
(534, 20655, '/coins/hmp/overview', './upload/coinlist/hmp.png', 'HMP', 'HMP', 'HempCoin', 'HempCoin (HMP)', 'Scrypt-n', 'PoW', 0, 2000, 'N/A', 'N/A', 551, '0', 0),
(535, 20656, '/coins/adz/overview', './upload/coinlist/adz1.jpg', 'ADZ', 'ADZ', 'Adzcoin', 'Adzcoin (ADZ)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 552, '0', 0),
(536, 20659, '/coins/gap/overview', './upload/coinlist/gap.png', 'GAP', 'GAP', 'Gapcoin', 'Gapcoin (GAP)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 553, '0', 0),
(537, 20661, '/coins/myc/overview', './upload/coinlist/myc.png', 'MYC', 'MYC', 'MayaCoin', 'MayaCoin (MYC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 554, '0', 0),
(538, 20679, '/coins/ivz/overview', './upload/coinlist/ivz.png', 'IVZ', 'IVZ', 'InvisibleCoin', 'InvisibleCoin (IVZ)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 555, '0', 0),
(539, 20680, '/coins/vta/overview', './upload/coinlist/vta.png', 'VTA', 'VTA', 'VirtaCoin', 'VirtaCoin (VTA)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 556, '0', 0),
(540, 20681, '/coins/sls/overview', './upload/coinlist/sls.png', 'SLS', 'SLS', 'SaluS', 'SaluS (SLS)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 557, '0', 0),
(541, 20685, '/coins/soil/overview', './upload/coinlist/soil.png', 'SOIL', 'SOIL', 'SoilCoin', 'SoilCoin (SOIL)', 'Dagger', 'PoW', 0, 2000, 'N/A', 'N/A', 558, '0', 0),
(542, 20688, '/coins/cube/overview', './upload/coinlist/cube.png', 'CUBE', 'CUBE', 'DigiCube', 'DigiCube (CUBE)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 559, '0', 0),
(543, 20691, '/coins/yoc/overview', './upload/coinlist/yoc.png', 'YOC', 'YOC', 'YoCoin', 'YoCoin (YOC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 560, '0', 0),
(544, 20714, '/coins/coinstar/overview', './upload/coinlist/coin.png', 'COIN*', 'COIN*', 'Coin', 'Coin (COIN*)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 561, '0', 0),
(545, 20722, '/coins/apc/overview', './upload/coinlist/apc.png', 'APC', 'APC', 'AlpaCoin', 'AlpaCoin (APC)', 'N/A', 'PoW', 0, 2000, 'N/A', 'N/A', 563, '0', 0),
(546, 20724, '/coins/steps/overview', './upload/coinlist/steps.png', 'STEPS', 'STEPS', 'Steps', 'Steps (STEPS)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 564, '0', 0),
(547, 20726, '/coins/dbtc/overview', './upload/coinlist/dbtc.png', 'DBTC', 'DBTC', 'DebitCoin', 'DebitCoin (DBTC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 565, '0', 0),
(548, 20728, '/coins/unit/overview', './upload/coinlist/unit.png', 'UNIT', 'UNIT', 'Universal Currency', 'Universal Currency (UNIT)', '', 'PoW/PoS', 1, 13, 'N/A', 'N/A', 566, '0', 1),
(549, 20730, '/coins/aeon/overview', './upload/coinlist/aeon.png', 'AEON', 'AEON', 'AeonCoin', 'AeonCoin (AEON)', 'CryptoNight-Lite', 'PoW', 0, 2000, 'N/A', 'N/A', 567, '0', 0),
(550, 20744, '/coins/moin/overview', './upload/coinlist/moin.png', 'MOIN', 'MOIN', 'MoinCoin', 'MoinCoin (MOIN)', 'N/A', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 568, '0', 0),
(551, 20745, '/coins/sib/overview', './upload/coinlist/sib.png', 'SIB', 'SIB', 'SibCoin', 'SibCoin (SIB)', 'X11GOST', 'PoW', 0, 2000, 'N/A', 'N/A', 569, '0', 0),
(552, 20748, '/coins/erc/overview', './upload/coinlist/erc.png', 'ERC', 'ERC', 'EuropeCoin', 'EuropeCoin (ERC)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 570, '0', 0),
(553, 20806, '/coins/aib/overview', './upload/coinlist/aib.png', 'AIB', 'AIB', 'AdvancedInternetBlock', 'AdvancedInternetBlock (AIB)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 571, '0', 0),
(554, 20814, '/coins/prime/overview', './upload/coinlist/prime.png', 'PRIME', 'PRIME', 'PrimeChain', 'PrimeChain (PRIME)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 572, '0', 0),
(555, 20817, '/coins/bern/overview', './upload/coinlist/bern.png', 'BERN', 'BERN', 'BERNcash', 'BERNcash (BERN)', 'X14', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 573, '0', 0),
(556, 20819, '/coins/bigup/overview', './upload/coinlist/bigup.png', 'BIGUP', 'BIGUP', 'BigUp', 'BigUp (BIGUP)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 574, '0', 0),
(557, 20822, '/coins/kr/overview', './upload/coinlist/kr.png', 'KR', 'KR', 'Krypton', 'Krypton (KR)', 'Dagger-Hashimoto', 'PoW', 0, 2000, 'N/A', 'N/A', 575, '0', 0),
(558, 20823, '/coins/xre/overview', './upload/coinlist/xre.jpg', 'XRE', 'XRE', 'RevolverCoin', 'RevolverCoin (XRE)', 'X11Evo', 'PoW', 0, 2000, 'N/A', 'N/A', 576, '0', 0),
(559, 20825, '/coins/meme/overview', './upload/coinlist/pepecoin-512.png', 'MEME', 'MEME', 'Pepe', 'Pepe (MEME)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 578, '0', 0),
(560, 20826, '/coins/xdb/overview', './upload/coinlist/xdb.png', 'XDB', 'XDB', 'DragonSphere', 'DragonSphere (XDB)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 579, '0', 0),
(561, 20828, '/coins/anti/overview', './upload/coinlist/anti.png', 'ANTI', 'ANTI', 'Anti Bitcoin', 'Anti Bitcoin (ANTI)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 580, '0', 0),
(562, 20892, '/coins/brk/overview', './upload/coinlist/brk.png', 'BRK', 'BRK', 'BreakoutCoin', 'BreakoutCoin (BRK)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 581, '0', 0),
(563, 20903, '/coins/colx/overview', './upload/coinlist/colx.png', 'COLX', 'COLX', 'ColossusCoinXT', 'ColossusCoinXT (COLX)', 'X11', 'PoS', 0, 2000, 'N/A', 'N/A', 582, '0', 0),
(564, 20905, '/coins/mnm/overview', './upload/coinlist/mnm.png', 'MNM', 'MNM', 'Mineum', 'Mineum (MNM)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 583, '0', 0),
(565, 20907, '/coins/adcn/overview', './upload/coinlist/adcn.png', 'ADCN', 'ADCN', 'Asiadigicoin', 'Asiadigicoin (ADCN)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 584, '0', 0),
(566, 20908, '/coins/zeit/overview', './upload/coinlist/zeit.png', 'ZEIT', 'ZEIT', 'ZeitCoin', 'ZeitCoin (ZEIT)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 585, '0', 0),
(567, 20910, '/coins/2give/overview', './upload/coinlist/2give.png', '2GIVE', '2GIVE', '2GiveCoin', '2GiveCoin (2GIVE)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 587, '0', 0),
(568, 20911, '/coins/cga/overview', './upload/coinlist/cga.png', 'CGA', 'CGA', 'Cryptographic Anomaly', 'Cryptographic Anomaly (CGA)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 588, '0', 0),
(569, 20920, '/coins/swing/overview', './upload/coinlist/swing.png', 'SWING', 'SWING', 'SwingCoin', 'SwingCoin (SWING)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 589, '0', 0),
(570, 20594, '/coins/safex/overview', './upload/coinlist/safex.png', 'SAFEX', 'SAFEX', 'SafeExchangeCoin', 'SafeExchangeCoin (SAFEX)', 'Scrypt', 'PoC', 0, 2000, 'N/A', 'N/A', 590, '0', 0),
(571, 20980, '/coins/nebu/overview', './upload/coinlist/nebu.png', 'NEBU', 'NEBU', 'Nebuchadnezzar', 'Nebuchadnezzar (NEBU)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 591, '0', 0),
(572, 20986, '/coins/aec/overview', './upload/coinlist/aec.png', 'AEC', 'AEC', 'AcesCoin', 'AcesCoin (AEC)', 'X11', 'PoS', 0, 2000, 'N/A', 'N/A', 592, '0', 0),
(573, 20991, '/coins/frn/overview', './upload/coinlist/frn.png', 'FRN', 'FRN', 'Francs', 'Francs (FRN)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 593, '0', 0),
(574, 21007, '/coins/adn/overview', './upload/coinlist/adn.png', 'ADN', 'ADN', 'Aiden', 'Aiden (ADN)', 'ScryptOG', 'PoW', 0, 2000, 'N/A', 'N/A', 594, '0', 0),
(575, 21012, '/coins/pulse/overview', './upload/coinlist/pulse.jpg', 'PULSE', 'PULSE', 'Pulse', 'Pulse (PULSE)', 'SHA256D', 'PoS', 0, 2000, 'N/A', 'N/A', 595, '0', 0),
(576, 21017, '/coins/n7/overview', './upload/coinlist/n7.jpg', 'N7', 'N7', 'Number7', 'Number7 (N7)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 596, '0', 0),
(577, 21213, '/coins/cyg/overview', './upload/coinlist/cygnus.png', 'CYG', 'CYG', 'Cygnus', 'Cygnus (CYG)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 597, '0', 0),
(578, 21215, '/coins/lgbtq/overview', './upload/coinlist/lgbtq.png', 'LGBTQ', 'LGBTQ', 'LGBTQoin', 'LGBTQoin (LGBTQ)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 598, '0', 0),
(579, 21219, '/coins/uth/overview', './upload/coinlist/uth.png', 'UTH', 'UTH', 'Uther', 'Uther (UTH)', 'Dagger', 'PoW', 0, 2000, 'N/A', 'N/A', 599, '0', 0),
(580, 21222, '/coins/mpro/overview', './upload/coinlist/mpro.jpg', 'MPRO', 'MPRO', 'MediumProject', 'MediumProject (MPRO)', 'PoS', 'PoW', 0, 2000, 'N/A', 'N/A', 600, '0', 0),
(581, 21224, '/coins/kat/overview', './upload/coinlist/katz.png', 'KAT', 'KAT', 'KATZcoin', 'KATZcoin (KAT)', 'SHA256D', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 601, '0', 0),
(582, 21229, '/coins/spm/overview', './upload/coinlist/sup.png', 'SPM', 'SPM', 'Supreme', 'Supreme (SPM)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 603, '0', 0),
(583, 21232, '/coins/mojo/overview', './upload/coinlist/mojo.png', 'MOJO', 'MOJO', 'Mojocoin', 'Mojocoin (MOJO)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 604, '0', 0),
(584, 21239, '/coins/bela/overview', './upload/coinlist/bela.jpg', 'BELA', 'BELA', 'BelaCoin', 'BelaCoin (BELA)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 605, '0', 0),
(585, 21244, '/coins/flx/overview', './upload/coinlist/flx.png', 'FLX', 'FLX', 'Flash', 'Flash (FLX)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 606, '0', 0),
(586, 21357, '/coins/boli/overview', './upload/coinlist/boli.png', 'BOLI', 'BOLI', 'BolivarCoin', 'BolivarCoin (BOLI)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 607, '0', 0),
(587, 21359, '/coins/clud/overview', './upload/coinlist/clud.png', 'CLUD', 'CLUD', 'CludCoin', 'CludCoin (CLUD)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 608, '0', 0),
(588, 21365, '/coins/dime/overview', './upload/coinlist/dime.png', 'DIME', 'DIME', 'DimeCoin', 'DimeCoin (DIME)', 'Quark', 'PoW', 0, 2000, 'N/A', 'N/A', 609, '0', 0),
(589, 21370, '/coins/fly/overview', './upload/coinlist/fly.png', 'FLY', 'FLY', 'FlyCoin', 'FlyCoin (FLY)', 'X13', 'PoS', 0, 2000, 'N/A', 'N/A', 610, '0', 0),
(590, 21374, '/coins/hvco/overview', './upload/coinlist/hvco.png', 'HVCO', 'HVCO', 'High Voltage Coin', 'High Voltage Coin (HVCO)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 611, '0', 0),
(591, 21378, '/coins/giz/overview', './upload/coinlist/giz.png', 'GIZ', 'GIZ', 'GIZMOcoin', 'GIZMOcoin (GIZ)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 612, '0', 0),
(592, 21380, '/coins/grexit/overview', './upload/coinlist/grexit.png', 'GREXIT', 'GREXIT', 'GrexitCoin', 'GrexitCoin (GREXIT)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 613, '0', 0),
(593, 21382, '/coins/carbon/overview', './upload/coinlist/carbon.png', 'CARBON', 'CARBON', 'Carboncoin', 'Carboncoin (CARBON)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 614, '0', 0),
(594, 21384, '/coins/deur/overview', './upload/coinlist/deur.png', 'DEUR', 'DEUR', 'DigiEuro', 'DigiEuro (DEUR)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 615, '0', 0),
(595, 21626, '/coins/tur/overview', './upload/coinlist/tur.png', 'TUR', 'TUR', 'Turron', 'Turron (TUR)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 616, '0', 0),
(596, 21641, '/coins/lemon/overview', './upload/coinlist/lemon.png', 'LEMON', 'LEMON', 'LemonCoin', 'LemonCoin (LEMON)', 'N/A', 'PoW', 0, 2000, 'N/A', 'N/A', 617, '0', 0),
(597, 21650, '/coins/sts/overview', './upload/coinlist/sts.png', 'STS', 'STS', 'STRESScoin', 'STRESScoin (STS)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 618, '0', 0),
(598, 21652, '/coins/disk/overview', './upload/coinlist/disk.png', 'DISK', 'DISK', 'Dark Lisk', 'Dark Lisk (DISK)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 619, '0', 0),
(599, 21669, '/coins/neva/overview', './upload/coinlist/neva.png', 'NEVA', 'NEVA', 'NevaCoin', 'NevaCoin (NEVA)', 'N/A', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 620, '0', 0),
(600, 21706, '/coins/cyt/overview', './upload/coinlist/cyt.png', 'CYT', 'CYT', 'Cryptokenz', 'Cryptokenz (CYT)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 621, '0', 0);
INSERT INTO `dbt_cryptocoin` (`id`, `cid`, `url`, `image`, `name`, `symbol`, `coin_name`, `full_name`, `algorithm`, `proof_type`, `show_home`, `coin_position`, `premined_value`, `total_coins_freefloat`, `rank`, `sponsored`, `status`) VALUES
(601, 21708, '/coins/fuzz/overview', './upload/coinlist/fuzz.png', 'FUZZ', 'FUZZ', 'Fuzzballs', 'Fuzzballs (FUZZ)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 622, '0', 0),
(602, 21710, '/coins/nkc/overview', './upload/coinlist/nkc.png', 'NKC', 'NKC', 'Nukecoinz', 'Nukecoinz (NKC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 623, '0', 0),
(603, 21760, '/coins/scrt/overview', './upload/coinlist/scrt.png', 'SCRT', 'SCRT', 'SecretCoin', 'SecretCoin (SCRT)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 624, '0', 0),
(604, 21770, '/coins/xra/overview', './upload/coinlist/xra.png', 'XRA', 'XRA', 'Ratecoin', 'Ratecoin (XRA)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 625, '0', 0),
(605, 21773, '/coins/xnx/overview', './upload/coinlist/xnx.jpg', 'XNX', 'XNX', 'XanaxCoin', 'XanaxCoin (XNX)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 626, '0', 0),
(606, 21775, '/coins/starstar/overview', './upload/coinlist/star.jpg', 'STAR*', 'STAR*', 'StarCoin', 'StarCoin (STAR*)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 627, '0', 0),
(607, 21833, '/coins/sthr/overview', './upload/coinlist/sthr.png', 'STHR', 'STHR', 'Stakerush', 'Stakerush (STHR)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 628, '0', 0),
(608, 21859, '/coins/dbg/overview', './upload/coinlist/dbg.png', 'DBG', 'DBG', 'Digital Bullion Gold', 'Digital Bullion Gold (DBG)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 629, '0', 0),
(609, 21869, '/coins/bonstar/overview', './upload/coinlist/bon_1.png', 'BON*', 'BON', 'BonesCoin', 'BonesCoin (BON*)', 'Scrypt', 'PoS', 0, 2000, 'N/A', 'N/A', 630, '0', 0),
(610, 21871, '/coins/wmc/overview', './upload/coinlist/wmc.png', 'WMC', 'WMC', 'WMCoin', 'WMCoin (WMC)', 'X11', 'PoS', 0, 2000, 'N/A', 'N/A', 631, '0', 0),
(611, 21875, '/coins/gotx/overview', './upload/coinlist/gotx.png', 'GOTX', 'GOTX', 'GothicCoin', 'GothicCoin (GOTX)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 632, '0', 0),
(612, 21878, '/coins/flvr/overview', './upload/coinlist/2flav.png', 'FLVR', 'FLVR', 'FlavorCoin', 'FlavorCoin (FLVR)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 633, '0', 0),
(613, 21907, '/coins/shrek/overview', './upload/coinlist/shrek.png', 'SHREK', 'SHREK', 'ShrekCoin', 'ShrekCoin (SHREK)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 633, '0', 0),
(614, 21981, '/coins/stastar/overview', './upload/coinlist/sta.png', 'STA*', 'STA*', 'Stakers', 'Stakers (STA*)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 635, '0', 0),
(615, 22015, '/coins/rise/overview', './upload/coinlist/rise.png', 'RISE', 'RISE', 'Rise', 'Rise (RISE)', 'DPoS', 'PoS', 0, 2000, 'N/A', 'N/A', 636, '0', 0),
(616, 22169, '/coins/rev/overview', './upload/coinlist/rev.png', 'REV', 'REV', 'Revenu', 'Revenu (REV)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 637, '0', 0),
(617, 22171, '/coins/pbc/overview', './upload/coinlist/pbc.png', 'PBC', 'PBC', 'PabyosiCoin', 'PabyosiCoin (PBC)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 638, '0', 0),
(618, 22177, '/coins/obs/overview', './upload/coinlist/obs.png', 'OBS', 'OBS', 'Obscurebay', 'Obscurebay (OBS)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 639, '0', 0),
(619, 22180, '/coins/exit/overview', './upload/coinlist/exit.png', 'EXIT', 'EXIT', 'ExitCoin', 'ExitCoin (EXIT)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 640, '0', 0),
(620, 22185, '/coins/edc/overview', './upload/coinlist/edc.png', 'EDC', 'EDC', 'EducoinV', 'EducoinV (EDC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 641, '0', 0),
(621, 22191, '/coins/clint/overview', './upload/coinlist/clint.png', 'CLINT', 'CLINT', 'Clinton', 'Clinton (CLINT)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 642, '0', 0),
(622, 22207, '/coins/ckc/overview', './upload/coinlist/ckc.png', 'CKC', 'CKC', 'Clockcoin', 'Clockcoin (CKC)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 643, '0', 0),
(623, 22212, '/coins/vip/overview', './upload/coinlist/vip.png', 'VIP', 'VIP', 'VIP Tokens', 'VIP Tokens (VIP)', 'NIST5', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 644, '0', 0),
(624, 22240, '/coins/nxe/overview', './upload/coinlist/nxe.png', 'NXE', 'NXE', 'NXEcoin', 'NXEcoin (NXE)', 'NIST5', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 645, '0', 0),
(625, 22245, '/coins/zoom/overview', './upload/coinlist/zoom.png', 'ZOOM', 'ZOOM', 'ZoomCoin', 'ZoomCoin (ZOOM)', 'Lyra2RE', 'PoW', 0, 2000, 'N/A', 'N/A', 646, '0', 0),
(626, 22248, '/coins/draco/overview', './upload/coinlist/dt-token.png', 'DRACO', 'DRACO', 'DT Token', 'DT Token (DRACO)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 647, '0', 0),
(627, 22254, '/coins/yovi/overview', './upload/coinlist/yovi.png', 'YOVI', 'YOVI', 'YobitVirtualCoin', 'YobitVirtualCoin (YOVI)', 'SHA256', 'PoS', 0, 2000, 'N/A', 'N/A', 648, '0', 0),
(628, 22258, '/coins/orly/overview', './upload/coinlist/orly.png', 'ORLY', 'ORLY', 'OrlyCoin', 'OrlyCoin (ORLY)', 'X15', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 649, '0', 0),
(629, 22262, '/coins/kubo/overview', './upload/coinlist/kubo.png', 'KUBO', 'KUBO', 'KubosCoin', 'KubosCoin (KUBO)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 650, '0', 0),
(630, 22264, '/coins/incp/overview', './upload/coinlist/incp.png', 'INCP', 'INCP', 'InceptionCoin', 'InceptionCoin (INCP)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 651, '0', 0),
(631, 22268, '/coins/sak/overview', './upload/coinlist/sak.png', 'SAK', 'SAK', 'SharkCoin', 'SharkCoin (SAK)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 652, '0', 0),
(632, 22272, '/coins/evil/overview', './upload/coinlist/evil.png', 'EVIL', 'EVIL', 'EvilCoin', 'EvilCoin (EVIL)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 653, '0', 0),
(633, 22280, '/coins/oma/overview', './upload/coinlist/oma.png', 'OMA', 'OMA', 'OmegaCoin', 'OmegaCoin (OMA)', 'X15', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 654, '0', 0),
(634, 22325, '/coins/mue/overview', './upload/coinlist/mue.png', 'MUE', 'MUE', 'MonetaryUnit', 'MonetaryUnit (MUE)', '', 'PoW', 1, 12, 'N/A', 'N/A', 655, '0', 1),
(635, 22326, '/coins/cox/overview', './upload/coinlist/cox.png', 'COX', 'COX', 'CobraCoin', 'CobraCoin (COX)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 656, '0', 0),
(636, 22327, '/coins/bnt/overview', './upload/coinlist/bnt.jpg', 'BNT', 'BNT', 'Bancor Network Token', 'Bancor Network Token (BNT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 657, '0', 0),
(637, 22329, '/coins/bsd/overview', './upload/coinlist/bsd.png', 'BSD', 'BSD', 'BitSend', 'BitSend (BSD)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 659, '0', 0),
(638, 22330, '/coins/des/overview', './upload/coinlist/des.png', 'DES', 'DES', 'Destiny', 'Destiny (DES)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 660, '0', 0),
(639, 22333, '/coins/bit16/overview', './upload/coinlist/16bit.png', 'BIT16', 'BIT16', '16BitCoin', '16BitCoin (BIT16)', 'NIST5', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 661, '0', 0),
(640, 22352, '/coins/pdc/overview', './upload/coinlist/pdc.png', 'PDC', 'PDC', 'Project Decorum', 'Project Decorum (PDC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 662, '0', 0),
(641, 22354, '/coins/cmt/overview', './upload/coinlist/cmt.png', 'CMT', 'CMT', 'CometCoin', 'CometCoin (CMT)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 663, '0', 0),
(642, 22407, '/coins/chess/overview', './upload/coinlist/chess.jpg', 'CHESS', 'CHESS', 'ChessCoin', 'ChessCoin (CHESS)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 665, '0', 0),
(643, 22410, '/coins/space/overview', './upload/coinlist/space.png', 'SPACE', 'SPACE', 'SpaceCoin', 'SpaceCoin (SPACE)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 666, '0', 0),
(644, 22418, '/coins/ree/overview', './upload/coinlist/ree.png', 'REE', 'REE', 'ReeCoin', 'ReeCoin (REE)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 667, '0', 0),
(645, 22422, '/coins/lqd/overview', './upload/coinlist/lqd.png', 'LQD', 'LQD', 'Liquid', 'Liquid (LQD)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 668, '0', 0),
(646, 22428, '/coins/marv/overview', './upload/coinlist/marv.png', 'MARV', 'MARV', 'Marvelous', 'Marvelous (MARV)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 669, '0', 0),
(647, 22430, '/coins/xde2/overview', './upload/coinlist/xde2.png', 'XDE2', 'XDE2', 'XDE II', 'XDE II (XDE2)', 'SHA256', 'PoS', 0, 2000, 'N/A', 'N/A', 670, '0', 0),
(648, 22434, '/coins/vec2/overview', './upload/coinlist/vec2.png', 'VEC2', 'VEC2', 'VectorCoin 2.0 ', 'VectorCoin 2.0  (VEC2)', 'Dagger-Hashimoto', 'PoW', 0, 2000, 'N/A', 'N/A', 671, '0', 0),
(649, 22441, '/coins/omni/overview', './upload/coinlist/omni.png', 'OMNI', 'OMNI', 'Omni', 'Omni (OMNI)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 672, '0', 0),
(650, 22453, '/coins/gsy/overview', './upload/coinlist/gsy.png', 'GSY', 'GSY', 'GenesysCoin', 'GenesysCoin (GSY)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 673, '0', 0),
(651, 22458, '/coins/tknstar/overview', './upload/coinlist/tkn.png', 'TKN*', 'TKN*', 'TrollTokens', 'TrollTokens (TKN*)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 674, '0', 0),
(652, 23423, '/coins/lir/overview', './upload/coinlist/lir.png', 'LIR', 'LIR', 'Let it Ride', 'Let it Ride (LIR)', 'POS 3.0', 'PoS', 0, 2000, 'N/A', 'N/A', 675, '0', 0),
(653, 23425, '/coins/mmnxt/overview', './upload/coinlist/nxtasset.png', 'MMNXT', 'MMNXT', 'MMNXT ', 'MMNXT  (MMNXT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 676, '0', 0),
(654, 23429, '/coins/scrpt/overview', './upload/coinlist/scrpt.png', 'SCRPT', 'SCRPT', 'ScryptCoin', 'ScryptCoin (SCRPT)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 677, '0', 0),
(655, 23432, '/coins/lbc/overview', './upload/coinlist/lbc.png', 'LBC', 'LBC', 'LBRY Credits', 'LBRY Credits (LBC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 678, '0', 0),
(656, 23728, '/coins/sbd/overview', './upload/coinlist/steem.png', 'SBD', 'SBD', 'Steem Backed Dollars', 'Steem Backed Dollars (SBD)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 680, '0', 0),
(657, 23734, '/coins/cj/overview', './upload/coinlist/cj.png', 'CJ', 'CJ', 'CryptoJacks', 'CryptoJacks (CJ)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 681, '0', 0),
(658, 23737, '/coins/put/overview', './upload/coinlist/put1.png', 'PUT', 'PUT', 'PutinCoin', 'PutinCoin (PUT)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 682, '0', 0),
(659, 23741, '/coins/krak/overview', './upload/coinlist/krak.png', 'KRAK', 'KRAK', 'Kraken', 'Kraken (KRAK)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 683, '0', 0),
(660, 23743, '/coins/dlisk/overview', './upload/coinlist/dlisk.png', 'DLISK', 'DLISK', 'Dlisk', 'Dlisk (DLISK)', 'N/A', 'DPoS', 0, 2000, 'N/A', 'N/A', 684, '0', 0),
(661, 23745, '/coins/ibank/overview', './upload/coinlist/ibank.png', 'IBANK', 'IBANK', 'iBankCoin', 'iBankCoin (IBANK)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 685, '0', 0),
(662, 24294, '/coins/strat/overview', './upload/coinlist/stratis-logo.png', 'STRAT', 'STRAT', 'Stratis', 'Stratis (STRAT)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 687, '0', 0),
(663, 24305, '/coins/voya/overview', './upload/coinlist/voya.png', 'VOYA', 'VOYA', 'Voyacoin', 'Voyacoin (VOYA)', 'N/A', 'PoW', 0, 2000, 'N/A', 'N/A', 688, '0', 0),
(664, 24307, '/coins/enter/overview', './upload/coinlist/enter.png', 'ENTER', 'ENTER', 'EnterCoin (ENTER)', 'EnterCoin (ENTER) (ENTER)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 689, '0', 0),
(665, 24402, '/coins/wgc/overview', './upload/coinlist/wgc.png', 'WGC', 'WGC', 'World Gold Coin', 'World Gold Coin (WGC)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 690, '0', 0),
(666, 24405, '/coins/bm/overview', './upload/coinlist/bm.png', 'BM', 'BM', 'BitMoon', 'BitMoon (BM)', 'X13', 'PoS', 0, 2000, 'N/A', 'N/A', 691, '0', 0),
(667, 24866, '/coins/frwc/overview', './upload/coinlist/frwc.png', 'FRWC', 'FRWC', 'Frankywillcoin', 'Frankywillcoin (FRWC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 692, '0', 0),
(668, 24871, '/coins/psy/overview', './upload/coinlist/psy.png', 'PSY', 'PSY', 'Psilocybin', 'Psilocybin (PSY)', 'SHA256D', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 693, '0', 0),
(669, 24885, '/coins/xt/overview', './upload/coinlist/xt.png', 'XT', 'XT', 'ExtremeCoin', 'ExtremeCoin (XT)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 694, '0', 0),
(670, 24887, '/coins/rust/overview', './upload/coinlist/rust.png', 'RUST', 'RUST', 'RustCoin', 'RustCoin (RUST)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 695, '0', 0),
(671, 24892, '/coins/nzc/overview', './upload/coinlist/nzc.png', 'NZC', 'NZC', 'NewZealandCoin', 'NewZealandCoin (NZC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 696, '0', 0),
(672, 24926, '/coins/sngls/overview', './upload/coinlist/sngls.png', 'SNGLS', 'SNGLS', 'SingularDTV', 'SingularDTV (SNGLS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 697, '0', 0),
(673, 25082, '/coins/xaur/overview', './upload/coinlist/xaur.png', 'XAUR', 'XAUR', 'Xaurum', 'Xaurum (XAUR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 698, '0', 0),
(674, 25238, '/coins/bfx/overview', './upload/coinlist/bitfinex.png', 'BFX', 'BFX', 'BitFinex Tokens', 'BitFinex Tokens (BFX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 699, '0', 0),
(675, 25594, '/coins/uniq/overview', './upload/coinlist/uniq.png', 'UNIQ', 'UNIQ', 'Uniqredit', 'Uniqredit (UNIQ)', 'SHA256D', 'PoW', 0, 2000, 'N/A', 'N/A', 700, '0', 0),
(676, 25613, '/coins/crx/overview', './upload/coinlist/crx.png', 'CRX', 'CRX', 'ChronosCoin', 'ChronosCoin (CRX)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 701, '0', 0),
(677, 25721, '/coins/dct/overview', './upload/coinlist/dct.png', 'DCT', 'DCT', 'Decent', 'Decent (DCT)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 702, '0', 0),
(678, 25817, '/coins/xpoke/overview', './upload/coinlist/xpoke.png', 'XPOKE', 'XPOKE', 'PokeChain', 'PokeChain (XPOKE)', 'X13', 'PoS', 0, 2000, 'N/A', 'N/A', 703, '0', 0),
(679, 25820, '/coins/mudra/overview', './upload/coinlist/mudra.png', 'MUDRA', 'MUDRA', 'MudraCoin', 'MudraCoin (MUDRA)', 'X13', 'PoS', 0, 2000, 'N/A', 'N/A', 704, '0', 0),
(680, 25822, '/coins/warp/overview', './upload/coinlist/warp.png', 'WARP', 'WARP', 'WarpCoin', 'WarpCoin (WARP)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 705, '0', 0),
(681, 25825, '/coins/cnmt/overview', './upload/coinlist/cnmt.png', 'CNMT', 'CNMT', 'Coinomat', 'Coinomat (CNMT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 706, '0', 0),
(682, 25830, '/coins/pizza/overview', './upload/coinlist/pizza.png', 'PIZZA', 'PIZZA', 'PizzaCoin', 'PizzaCoin (PIZZA)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 707, '0', 0),
(683, 25916, '/coins/lc/overview', './upload/coinlist/lc.png', 'LC', 'LC', 'Lutetium Coin', 'Lutetium Coin (LC)', 'X11', 'PoS', 0, 2000, 'N/A', 'N/A', 708, '0', 0),
(684, 25917, '/coins/heat/overview', './upload/coinlist/heat.png', 'HEAT', 'HEAT', 'Heat Ledger', 'Heat Ledger (HEAT)', 'N/A', 'PoS/PoP', 0, 2000, 'N/A', 'N/A', 709, '0', 0),
(685, 25921, '/coins/icn/overview', './upload/coinlist/icn.png', 'ICN', 'ICN', 'Iconomi', 'Iconomi (ICN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 710, '0', 0),
(686, 25925, '/coins/exb/overview', './upload/coinlist/exb.png', 'EXB', 'EXB', 'ExaByte (EXB)', 'ExaByte (EXB) (EXB)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 711, '0', 0),
(687, 25946, '/coins/wings/overview', './upload/coinlist/1wings.png', 'WINGS', 'WINGS', 'Wings DAO', 'Wings DAO (WINGS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 712, '0', 0),
(688, 26113, '/coins/cdxstar/overview', './upload/coinlist/cdx.png', 'CDX*', 'CDX*', 'Cryptodex', 'Cryptodex (CDX*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 713, '0', 0),
(689, 26121, '/coins/rbit/overview', './upload/coinlist/rbit.png', 'RBIT', 'RBIT', 'ReturnBit', 'ReturnBit (RBIT)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 714, '0', 0),
(690, 26129, '/coins/dcs/overview', './upload/coinlist/cloud.png', 'DCS', 'DCS.', 'deCLOUDs', 'deCLOUDs (DCS)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 715, '0', 0),
(691, 26132, '/coins/kmd/overview', './upload/coinlist/kmd.png', 'KMD', 'KMD', 'Komodo', 'Komodo (KMD)', 'Equihash', 'dPoW/PoW', 0, 2000, 'N/A', 'N/A', 716, '0', 0),
(692, 26194, '/coins/gb/overview', './upload/coinlist/db.png', 'GB', 'GB', 'GoldBlocks', 'GoldBlocks (GB)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 717, '0', 0),
(693, 27370, '/coins/anc/overview', './upload/coinlist/anc.png', 'ANC', 'ANC', 'Anoncoin', 'Anoncoin (ANC)', 'N/A', 'PoW', 0, 2000, 'N/A', 'N/A', 719, '0', 0),
(694, 27591, '/coins/synx/overview', './upload/coinlist/synx.png', 'SYNX', 'SYNX', 'Syndicate', 'Syndicate (SYNX)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 720, '0', 0),
(695, 27594, '/coins/mc/overview', './upload/coinlist/mc.png', 'MC', 'MC', 'Mass Coin', 'Mass Coin (MC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 721, '0', 0),
(696, 27634, '/coins/edr/overview', './upload/coinlist/edc.png', 'EDR', 'EDR', 'E-Dinar Coin', 'E-Dinar Coin (EDR)', 'X11', 'DPoS', 0, 2000, 'N/A', 'N/A', 722, '0', 0),
(697, 27674, '/coins/jwl/overview', './upload/coinlist/jwl.png', 'JWL', 'JWL', 'Jewels', 'Jewels (JWL)', 'POS 3.0', 'N/A', 0, 2000, 'N/A', 'N/A', 723, '0', 0),
(698, 27681, '/coins/way/overview', './upload/coinlist/way.png', 'WAY', 'WAY', 'WayCoin', 'WayCoin (WAY)', 'X11', 'PoS', 0, 2000, 'N/A', 'N/A', 724, '0', 0),
(699, 27993, '/coins/tab/overview', './upload/coinlist/tab.png', 'TAB', 'TAB', 'MollyCoin', 'MollyCoin (TAB)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 725, '0', 0),
(700, 27996, '/coins/trig/overview', './upload/coinlist/trg.png', 'TRIG', 'TRIG', 'Trigger', 'Trigger (TRIG)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 726, '0', 0),
(701, 28019, '/coins/bitcny/overview', './upload/coinlist/bitcny.png', 'BITCNY', 'BITCNY', 'bitCNY', 'bitCNY (BITCNY)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 727, '0', 0),
(702, 28021, '/coins/bitusd/overview', './upload/coinlist/bitusd.png', 'BITUSD', 'BITUSD', 'bitUSD', 'bitUSD (BITUSD)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 728, '0', 0),
(703, 28023, '/coins/atmstar/overview', './upload/coinlist/atm.png', 'ATM*', 'ATM*', 'Autumncoin', 'Autumncoin (ATM*)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 729, '0', 0),
(704, 28025, '/coins/sto/overview', './upload/coinlist/sto.png', 'STO', 'STO', 'Save The Ocean', 'Save The Ocean (STO)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 730, '0', 0),
(705, 28027, '/coins/sns/overview', './upload/coinlist/sns.png', 'SNS', 'SNS', 'Sense', 'Sense (SNS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 731, '0', 0),
(706, 28081, '/coins/fsn/overview', './upload/coinlist/fsn.png', 'FSN', 'FSN', 'Fusion', 'Fusion (FSN)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 732, '0', 0),
(707, 28083, '/coins/ctc/overview', './upload/coinlist/ctc.png', 'CTC', 'CTC', 'CarterCoin', 'CarterCoin (CTC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 733, '0', 0),
(708, 28087, '/coins/tot/overview', '', 'TOT', 'TOT', 'TotCoin', 'TotCoin (TOT)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 734, '0', 0),
(709, 28089, '/coins/btd/overview', './upload/coinlist/btd.png', 'BTD', 'BTD', 'Bitcloud', 'Bitcloud (BTD)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 735, '0', 0),
(710, 28125, '/coins/bots/overview', './upload/coinlist/bot.png', 'BOTS', 'BOTS', 'ArkDAO', 'ArkDAO (BOTS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 736, '0', 0),
(711, 28128, '/coins/mdc/overview', './upload/coinlist/mdc.png', 'MDC', 'MDC', 'MedicCoin', 'MedicCoin (MDC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 737, '0', 0),
(712, 28131, '/coins/ftp/overview', './upload/coinlist/ftp.png', 'FTP', 'FTP', 'FuturePoints', 'FuturePoints (FTP)', 'X11', 'PoS', 0, 2000, 'N/A', 'N/A', 738, '0', 0),
(713, 28136, '/coins/zet2/overview', './upload/coinlist/zet2.png', 'ZET2', 'ZET2', 'Zeta2Coin', 'Zeta2Coin (ZET2)', 'Quark', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 739, '0', 0),
(714, 28151, '/coins/covstar/overview', './upload/coinlist/cov.png', 'COV*', 'COV*', 'CovenCoin', 'CovenCoin (COV*)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 740, '0', 0),
(715, 28154, '/coins/krb/overview', './upload/coinlist/krb.png', 'KRB', 'KRB', 'Karbo', 'Karbo (KRB)', 'CryptoNight', 'PoW', 0, 2000, 'N/A', 'N/A', 741, '0', 0),
(716, 28172, '/coins/tell/overview', './upload/coinlist/tell.png', 'TELL', 'TELL', 'Tellurion', 'Tellurion (TELL)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 742, '0', 0),
(717, 28174, '/coins/ene/overview', './upload/coinlist/ene.png', 'ENE', 'ENE', 'EneCoin', 'EneCoin (ENE)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 743, '0', 0),
(718, 28176, '/coins/tdfb/overview', './upload/coinlist/tdfb.png', 'TDFB', 'TDFB', 'TDFB', 'TDFB (TDFB)', 'SHA256D', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 744, '0', 0),
(719, 28204, '/coins/blockpay/overview', './upload/coinlist/blockpay.png', 'BLOCKPAY', 'BLOCKPAY', 'BlockPay', 'BlockPay (BLOCKPAY)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 745, '0', 0),
(720, 28208, '/coins/bxt/overview', './upload/coinlist/bxt.png', 'BXT', 'BXT', 'BitTokens', 'BitTokens (BXT)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 746, '0', 0),
(721, 28219, '/coins/mst/overview', './upload/coinlist/mst1.png', 'MST', 'MST', 'MustangCoin', 'MustangCoin (MST)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 748, '0', 0),
(722, 28221, '/coins/goon/overview', './upload/coinlist/goon.png', 'GOON', 'GOON', 'Goonies', 'Goonies (GOON)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 749, '0', 0),
(723, 28225, '/coins/vlt/overview', './upload/coinlist/vlt.png', 'VLT', 'VLT', 'Veltor', 'Veltor (VLT)', 'N/A', 'PoW', 0, 2000, 'N/A', 'N/A', 751, '0', 0),
(724, 28227, '/coins/zne/overview', './upload/coinlist/zne.jpg', 'ZNE', 'ZNE', 'ZoneCoin', 'ZoneCoin (ZNE)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 752, '0', 0),
(725, 28229, '/coins/dck/overview', './upload/coinlist/dck.png', 'DCK', 'DCK', 'DickCoin', 'DickCoin (DCK)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 753, '0', 0),
(726, 28276, '/coins/coval/overview', './upload/coinlist/coval.png', 'COVAL', 'COVAL', 'Circuits of Value', 'Circuits of Value (COVAL)', 'Multiple', 'PoW', 0, 2000, 'N/A', 'N/A', 754, '0', 0),
(727, 28278, '/coins/dgdc/overview', './upload/coinlist/dgd.png', 'DGDC', 'DGDC', 'DarkGold', 'DarkGold (DGDC)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 755, '0', 0),
(728, 28317, '/coins/today/overview', './upload/coinlist/today.png', 'TODAY', 'TODAY', 'TodayCoin', 'TodayCoin (TODAY)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 756, '0', 0),
(729, 28323, '/coins/vrm/overview', './upload/coinlist/vrm.png', 'VRM', 'VRM', 'Verium', 'Verium (VRM)', 'N/A', 'PoWT', 0, 2000, 'N/A', 'N/A', 757, '0', 0),
(730, 28326, '/coins/root/overview', './upload/coinlist/root.png', 'ROOT', 'ROOT', 'RootCoin', 'RootCoin (ROOT)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 758, '0', 0),
(731, 28328, '/coins/1st/overview', './upload/coinlist/1st.png', '1ST', '1ST', 'FirstBlood', 'FirstBlood (1ST)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 759, '0', 0),
(732, 28330, '/coins/gpl/overview', './upload/coinlist/gpl.png', 'GPL', 'GPL', 'Gold Pressed Latinum', 'Gold Pressed Latinum (GPL)', 'N/A', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 760, '0', 0),
(733, 28332, '/coins/dope/overview', './upload/coinlist/dope.png', 'DOPE', 'DOPE', 'DopeCoin', 'DopeCoin (DOPE)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 761, '0', 0),
(734, 28333, '/coins/b3/overview', './upload/coinlist/b3.png', 'B3', 'B3', 'B3 Coin', 'B3 Coin (B3)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 762, '0', 0),
(735, 28336, '/coins/fx/overview', './upload/coinlist/fx.png', 'FX', 'FX', 'FCoin', 'FCoin (FX)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 763, '0', 0),
(736, 28342, '/coins/pio/overview', './upload/coinlist/pio.png', 'PIO', 'PIO', 'Pioneershares', 'Pioneershares (PIO)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 764, '0', 0),
(737, 28431, '/coins/gay/overview', './upload/coinlist/gay.png', 'GAY', 'GAY', 'GayCoin', 'GayCoin (GAY)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 765, '0', 0),
(738, 28650, '/coins/smsr/overview', './upload/coinlist/smsr.png', 'SMSR', 'SMSR', 'Samsara Coin', 'Samsara Coin (SMSR)', 'QuBit', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 766, '0', 0),
(739, 28652, '/coins/ubiq/overview', './upload/coinlist/ubiq.png', 'UBIQ', 'UBIQ', 'Ubiqoin', 'Ubiqoin (UBIQ)', 'Progressive-n', 'PoS', 0, 2000, 'N/A', 'N/A', 767, '0', 0),
(740, 28654, '/coins/arm/overview', './upload/coinlist/arm.png', 'ARM', 'ARM', 'Armory Coin', 'Armory Coin (ARM)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 768, '0', 0),
(741, 28657, '/coins/ring/overview', './upload/coinlist/ring.png', 'RING', 'RING', 'RingCoin', 'RingCoin (RING)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 769, '0', 0),
(742, 28665, '/coins/erb/overview', './upload/coinlist/erb.png', 'ERB', 'ERB', 'ERBCoin', 'ERBCoin (ERB)', 'Scrypt', 'N/A', 0, 2000, 'N/A', 'N/A', 770, '0', 0),
(743, 28700, '/coins/laz/overview', './upload/coinlist/laz.png', 'LAZ', 'LAZ', 'Lazarus', 'Lazarus (LAZ)', 'DPoS', 'DPoS', 0, 2000, 'N/A', 'N/A', 771, '0', 0),
(744, 28703, '/coins/fonz/overview', './upload/coinlist/fonz.png', 'FONZ', 'FONZ', 'FonzieCoin', 'FonzieCoin (FONZ)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 772, '0', 0),
(745, 28764, '/coins/btcr/overview', './upload/coinlist/btr.png', 'BTCR', 'BTCR', 'BitCurrency', 'BitCurrency (BTCR)', 'Scrypt', 'PoS', 0, 2000, 'N/A', 'N/A', 773, '0', 0),
(746, 28767, '/coins/drop/overview', './upload/coinlist/drop.png', 'DROP', 'DROP', 'FaucetCoin', 'FaucetCoin (DROP)', 'X13', 'PoS', 0, 2000, 'N/A', 'N/A', 774, '0', 0),
(747, 28770, '/coins/sandg/overview', './upload/coinlist/sandt.png', 'SANDG', 'SANDG', 'Save and Gain', 'Save and Gain (SANDG)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 775, '0', 0),
(748, 28772, '/coins/pnk/overview', './upload/coinlist/pnk.png', 'PNK', 'PNK', 'SteamPunk', 'SteamPunk (PNK)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 776, '0', 0),
(749, 28774, '/coins/moond/overview', './upload/coinlist/moond.png', 'MOOND', 'MOOND', 'Dark Moon', 'Dark Moon (MOOND)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 777, '0', 0),
(750, 28776, '/coins/dlc/overview', './upload/coinlist/dlc.png', 'DLC', 'DLC', 'DollarCoin', 'DollarCoin (DLC)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 778, '0', 0),
(751, 28778, '/coins/sen/overview', './upload/coinlist/sen.png', 'SEN', 'SEN', 'Sentaro', 'Sentaro (SEN)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 779, '0', 0),
(752, 28880, '/coins/scn/overview', './upload/coinlist/scn.png', 'SCN', 'SCN', 'Swiscoin', 'Swiscoin (SCN)', 'Scrypt', 'PoW/PoW', 0, 2000, 'N/A', 'N/A', 781, '0', 0),
(753, 28882, '/coins/wex/overview', './upload/coinlist/wex.jpg', 'WEX', 'WEX', 'Wexcoin', 'Wexcoin (WEX)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 782, '0', 0),
(754, 28885, '/coins/lth/overview', './upload/coinlist/lth.png', 'LTH', 'LTH', 'Lathaan', 'Lathaan (LTH)', 'PoS', 'N/A', 0, 2000, 'N/A', 'N/A', 783, '0', 0),
(755, 28888, '/coins/bronz/overview', './upload/coinlist/bronz.png', 'BRONZ', 'BRONZ', 'BitBronze', 'BitBronze (BRONZ)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 784, '0', 0),
(756, 28890, '/coins/sh/overview', './upload/coinlist/sh.png', 'SH', 'SH', 'Shilling', 'Shilling (SH)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 785, '0', 0),
(757, 28893, '/coins/buzz/overview', './upload/coinlist/buzz.png', 'BUZZ', 'BUZZ', 'BuzzCoin', 'BuzzCoin (BUZZ)', 'SHA256D', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 786, '0', 0),
(758, 29001, '/coins/mg/overview', './upload/coinlist/mg.png', 'MG', 'MG', 'Mind Gene', 'Mind Gene (MG)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 788, '0', 0),
(759, 29004, '/coins/psi/overview', './upload/coinlist/psi.png', 'PSI', 'PSI', 'PSIcoin', 'PSIcoin (PSI)', 'X11', 'PoS', 0, 2000, 'N/A', 'N/A', 789, '0', 0),
(760, 29008, '/coins/xpo/overview', './upload/coinlist/xpo.png', 'XPO', 'XPO', 'Opair', 'Opair (XPO)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 790, '0', 0),
(761, 29010, '/coins/nlc/overview', './upload/coinlist/nlc.png', 'NLC', 'NLC', 'NoLimitCoin', 'NoLimitCoin (NLC)', 'SHA256D', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 791, '0', 0),
(762, 29041, '/coins/psb/overview', './upload/coinlist/psb.jpg', 'PSB', 'PSB', 'PesoBit', 'PesoBit (PSB)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 792, '0', 0),
(763, 29131, '/coins/xbts/overview', './upload/coinlist/beats.png', 'XBTS', 'XBTS', 'Beats', 'Beats (XBTS)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 793, '0', 0),
(764, 29133, '/coins/fit/overview', './upload/coinlist/fit.png', 'FIT', 'FIT', 'Fitcoin', 'Fitcoin (FIT)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 794, '0', 0),
(765, 29193, '/coins/pinkx/overview', './upload/coinlist/pinkx.png', 'PINKX', 'PINKX', 'PantherCoin', 'PantherCoin (PINKX)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 796, '0', 0),
(766, 29196, '/coins/fire/overview', './upload/coinlist/fire.png', 'FIRE', 'FIRE', 'FireCoin', 'FireCoin (FIRE)', 'X15', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 797, '0', 0),
(767, 29198, '/coins/unf/overview', './upload/coinlist/unf.png', 'UNF', 'UNF', 'Unfed Coin', 'Unfed Coin (UNF)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 798, '0', 0),
(768, 29200, '/coins/sport/overview', './upload/coinlist/sports.png', 'SPORT', 'SPORT', 'SportsCoin', 'SportsCoin (SPORT)', 'X11', 'PoS', 0, 2000, 'N/A', 'N/A', 799, '0', 0),
(769, 29348, '/coins/ppy/overview', './upload/coinlist/peerplays.png', 'PPY', 'PPY', 'Peerplays', 'Peerplays (PPY)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 801, '0', 0),
(770, 29366, '/coins/ntc/overview', './upload/coinlist/ntc.png', 'NTC', 'NTC', 'NineElevenTruthCoin', 'NineElevenTruthCoin (NTC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 802, '0', 0),
(771, 29368, '/coins/ego/overview', './upload/coinlist/ego.png', 'EGO', 'EGO', 'EGOcoin', 'EGOcoin (EGO)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 803, '0', 0),
(772, 29370, '/coins/btclstar/overview', './upload/coinlist/btlc.png', 'BTCL*', 'BTCL*', 'BitluckCoin', 'BitluckCoin (BTCL*)', 'Scrypt', 'PoS', 0, 2000, 'N/A', 'N/A', 804, '0', 0),
(773, 29374, '/coins/rcnstar/overview', './upload/coinlist/rcn.png', 'RCN*', 'RCN*', 'RCoin', 'RCoin (RCN*)', 'SHA256', 'N/A', 0, 2000, 'N/A', 'N/A', 805, '0', 0),
(774, 29376, '/coins/x2/overview', './upload/coinlist/x2.png', 'X2', 'X2', 'X2Coin', 'X2Coin (X2)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 806, '0', 0),
(775, 29378, '/coins/mt/overview', './upload/coinlist/mycelium.png', 'MT', 'MT', 'Mycelium Token', 'Mycelium Token (MT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 807, '0', 0),
(776, 29455, '/coins/tia/overview', './upload/coinlist/tia.png', 'TIA', 'TIA', 'Tianhe', 'Tianhe (TIA)', 'Lyra2RE', 'N/A', 0, 2000, 'N/A', 'N/A', 808, '0', 0),
(777, 29458, '/coins/gbrc/overview', './upload/coinlist/gbrc.png', 'GBRC', 'GBRC', 'GBR Coin', 'GBR Coin (GBRC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 809, '0', 0),
(778, 29460, '/coins/xup/overview', './upload/coinlist/xup.png', 'XUP', 'XUP', 'UPcoin', 'UPcoin (XUP)', 'X13', 'PoS', 0, 2000, 'N/A', 'N/A', 810, '0', 0),
(779, 29552, '/coins/hallo/overview', './upload/coinlist/hallo.png', 'HALLO', 'HALLO', 'Halloween Coin', 'Halloween Coin (HALLO)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 812, '0', 0),
(780, 29554, '/coins/bbcc/overview', './upload/coinlist/bbcc.png', 'BBCC', 'BBCC', 'BaseballCardCoin', 'BaseballCardCoin (BBCC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 813, '0', 0),
(781, 29556, '/coins/emigr/overview', './upload/coinlist/emirg.png', 'EMIGR', 'EMIGR', 'EmiratesGoldCoin', 'EmiratesGoldCoin (EMIGR)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 814, '0', 0),
(782, 29559, '/coins/bhc/overview', './upload/coinlist/bhc.png', 'BHC', 'BHC', 'BighanCoin', 'BighanCoin (BHC)', 'Quark', 'PoW', 0, 2000, 'N/A', 'N/A', 815, '0', 0),
(783, 29711, '/coins/craft/overview', './upload/coinlist/craft.png', 'CRAFT', 'CRAFT', 'Craftcoin', 'Craftcoin (CRAFT)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 816, '0', 0),
(784, 29713, '/coins/inv/overview', './upload/coinlist/inv.png', 'INV', 'INV', 'Invictus', 'Invictus (INV)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 817, '0', 0),
(785, 29715, '/coins/olymp/overview', './upload/coinlist/olymp.png', 'OLYMP', 'OLYMP', 'OlympCoin', 'OlympCoin (OLYMP)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 818, '0', 0),
(786, 29718, '/coins/dpay/overview', './upload/coinlist/dpay.png', 'DPAY', 'DPAY', 'DelightPay', 'DelightPay (DPAY)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 819, '0', 0),
(787, 29721, '/coins/atom/overview', './upload/coinlist/atom.png', 'ATOM', 'ATOM', 'Atomic Coin', 'Atomic Coin (ATOM)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 820, '0', 0),
(788, 29733, '/coins/hkg/overview', './upload/coinlist/hkg.jpg', 'HKG', 'HKG', 'Hacker Gold', 'Hacker Gold (HKG)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 821, '0', 0),
(789, 29758, '/coins/antc/overview', './upload/coinlist/antc.png', 'ANTC', 'ANTC', 'AntiLitecoin', 'AntiLitecoin (ANTC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 822, '0', 0),
(790, 29762, '/coins/jobs/overview', './upload/coinlist/jobs.png', 'JOBS', 'JOBS', 'JobsCoin', 'JobsCoin (JOBS)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 823, '0', 0),
(791, 29904, '/coins/dgore/overview', './upload/coinlist/dgore.png', 'DGORE', 'DGORE', 'DogeGoreCoin', 'DogeGoreCoin (DGORE)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 824, '0', 0),
(792, 29924, '/coins/thc/overview', './upload/coinlist/thc.png', 'THC', 'THC', 'The Hempcoin', 'The Hempcoin (THC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 825, '0', 0),
(793, 29926, '/coins/tra/overview', './upload/coinlist/tra.png', 'TRA', 'TRA', 'Tetra', 'Tetra (TRA)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 826, '0', 0),
(794, 29928, '/coins/rms/overview', './upload/coinlist/rms.png', 'RMS', 'RMS', 'Resumeo Shares', 'Resumeo Shares (RMS)', 'NIST5', 'PoS', 0, 2000, 'N/A', 'N/A', 827, '0', 0),
(795, 29935, '/coins/fjc/overview', './upload/coinlist/fjc.png', 'FJC', 'FJC', 'FujiCoin', 'FujiCoin (FJC)', 'Scrypt-n', 'PoW', 0, 2000, 'N/A', 'N/A', 828, '0', 0),
(796, 30016, '/coins/vapor/overview', './upload/coinlist/vapor.png', 'VAPOR', 'VAPOR', 'Vaporcoin', 'Vaporcoin (VAPOR)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 829, '0', 0),
(797, 30019, '/coins/sdp/overview', './upload/coinlist/sdp.jpg', 'SDP', 'SDP', 'SydPakCoin', 'SydPakCoin (SDP)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 830, '0', 0),
(798, 30020, '/coins/rrt/overview', './upload/coinlist/bitfinex.png', 'RRT', 'RRT', 'Recovery Right Tokens', 'Recovery Right Tokens (RRT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 831, '0', 0),
(799, 30022, '/coins/xzc/overview', './upload/coinlist/xzc1.png', 'XZC', 'XZC', 'ZCoin', 'ZCoin (XZC)', 'Lyra2RE', 'PoW', 0, 2000, 'N/A', 'N/A', 832, '0', 0),
(800, 30024, '/coins/pre/overview', './upload/coinlist/pre.png', 'PRE', 'PRE', 'Premium', 'Premium (PRE)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 833, '0', 0),
(801, 30029, '/coins/calc/overview', './upload/coinlist/calc.png', 'CALC', 'CALC', 'CaliphCoin', 'CaliphCoin (CALC)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 834, '0', 0),
(802, 30117, '/coins/lea/overview', './upload/coinlist/lea.png', 'LEA', 'LEA', 'LeaCoin', 'LeaCoin (LEA)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 835, '0', 0),
(803, 30119, '/coins/cf/overview', './upload/coinlist/cf.png', 'CF', 'CF', 'Californium', 'Californium (CF)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 836, '0', 0),
(804, 30121, '/coins/crnk/overview', './upload/coinlist/crnk.png', 'CRNK', 'CRNK', 'CrankCoin', 'CrankCoin (CRNK)', 'X11', 'PoS/PoW', 0, 2000, 'N/A', 'N/A', 837, '0', 0),
(805, 30123, '/coins/cfc/overview', './upload/coinlist/cfc.png', 'CFC', 'CFC', 'CoffeeCoin', 'CoffeeCoin (CFC)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 838, '0', 0),
(806, 30126, '/coins/vty/overview', './upload/coinlist/vty.png', 'VTY', 'VTY', 'Victoriouscoin', 'Victoriouscoin (VTY)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 839, '0', 0),
(807, 30169, '/coins/sfe/overview', './upload/coinlist/sfe.png', 'SFE', 'SFE', 'Safecoin', 'Safecoin (SFE)', 'N/A', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 841, '0', 0),
(808, 30173, '/coins/ardr/overview', './upload/coinlist/ardr.png', 'ARDR', 'ARDR', 'Ardor', 'Ardor (ARDR)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 842, '0', 0),
(809, 30175, '/coins/bs/overview', './upload/coinlist/bs.png', 'BS', 'BS', 'BlackShadowCoin', 'BlackShadowCoin (BS)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 843, '0', 0),
(810, 30177, '/coins/jif/overview', './upload/coinlist/jif.png', 'JIF', 'JIF', 'JiffyCoin', 'JiffyCoin (JIF)', 'SHA256D', 'PoW', 0, 2000, 'N/A', 'N/A', 844, '0', 0),
(811, 30179, '/coins/crab/overview', './upload/coinlist/crab.png', 'CRAB', 'CRAB', 'CrabCoin', 'CrabCoin (CRAB)', 'X15', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 845, '0', 0),
(812, 30182, '/coins/airstar/overview', './upload/coinlist/air.png', 'AIR*', 'AIR*', 'Aircoin', 'Aircoin (AIR*)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 846, '0', 0),
(813, 30359, '/coins/hill/overview', './upload/coinlist/hill.png', 'HILL', 'HILL', 'President Clinton', 'President Clinton (HILL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 847, '0', 0),
(814, 30361, '/coins/forex/overview', './upload/coinlist/forex.png', 'FOREX', 'FOREX', 'ForexCoin', 'ForexCoin (FOREX)', 'X15', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 848, '0', 0),
(815, 30364, '/coins/moneta/overview', './upload/coinlist/moneta.png', 'MONETA', 'MONETA', 'Moneta', 'Moneta (MONETA)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 849, '0', 0),
(816, 30367, '/coins/ec/overview', './upload/coinlist/ec.jpg', 'EC', 'EC', 'Eclipse', 'Eclipse (EC)', 'SHA256D', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 850, '0', 0),
(817, 30369, '/coins/rubit/overview', './upload/coinlist/rubit.png', 'RUBIT', 'RUBIT', 'Rublebit', 'Rublebit (RUBIT)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 851, '0', 0),
(818, 30371, '/coins/hcc/overview', './upload/coinlist/hcc.png', 'HCC', 'HCC', 'HappyCreatorCoin ', 'HappyCreatorCoin  (HCC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 852, '0', 0),
(819, 30373, '/coins/brain/overview', './upload/coinlist/brain.png', 'BRAIN', 'BRAIN', 'BrainCoin', 'BrainCoin (BRAIN)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 853, '0', 0),
(820, 30377, '/coins/vtx/overview', './upload/coinlist/vertex.png', 'VTX', 'VTX', 'Vertex', 'Vertex (VTX)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 854, '0', 0),
(821, 30379, '/coins/krc/overview', './upload/coinlist/krc.png', 'KRC', 'KRC', 'KRCoin', 'KRCoin (KRC)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 855, '0', 0),
(822, 30388, '/coins/lfc/overview', './upload/coinlist/lfc.png', 'LFC', 'LFC', 'BigLifeCoin', 'BigLifeCoin (LFC)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 857, '0', 0),
(823, 30391, '/coins/zur/overview', './upload/coinlist/zur.png', 'ZUR', 'ZUR', 'Zurcoin', 'Zurcoin (ZUR)', 'Quark', 'PoW', 0, 2000, 'N/A', 'N/A', 858, '0', 0),
(824, 30393, '/coins/nubis/overview', './upload/coinlist/nubis.png', 'NUBIS', 'NUBIS', 'NubisCoin', 'NubisCoin (NUBIS)', 'SHA256D', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 859, '0', 0),
(825, 30421, '/coins/tennet/overview', './upload/coinlist/tennet.png', 'TENNET', 'TENNET', 'Tennet', 'Tennet (TENNET)', 'SHA256D', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 860, '0', 0),
(826, 30423, '/coins/pec/overview', './upload/coinlist/pec.png', 'PEC', 'PEC', 'PeaceCoin', 'PeaceCoin (PEC)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 861, '0', 0),
(827, 30424, '/coins/gmx/overview', './upload/coinlist/gmx.jpg', 'GMX', 'GMX', 'Goldmaxcoin', 'Goldmaxcoin (GMX)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 862, '0', 0),
(828, 30428, '/coins/32bit/overview', './upload/coinlist/32bit.png', '32BIT', '32BIT', '32Bitcoin', '32Bitcoin (32BIT)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 863, '0', 0),
(829, 30521, '/coins/gnj/overview', './upload/coinlist/gnj.png', 'GNJ', 'GNJ', 'GanjaCoin V2', 'GanjaCoin V2 (GNJ)', 'X14', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 864, '0', 0),
(830, 30523, '/coins/team/overview', './upload/coinlist/team.png', 'TEAM', 'TEAM', 'TeamUP', 'TeamUP (TEAM)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 865, '0', 0),
(831, 30536, '/coins/sct/overview', './upload/coinlist/sct.png', 'SCT', 'SCT', 'ScryptToken', 'ScryptToken (SCT)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 866, '0', 0),
(832, 30544, '/coins/lana/overview', './upload/coinlist/lana.png', 'LANA', 'LANA', 'LanaCoin', 'LanaCoin (LANA)', 'SHA256D', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 867, '0', 0),
(833, 30550, '/coins/ele/overview', './upload/coinlist/ele.png', 'ELE', 'ELE', 'Elementrem', 'Elementrem (ELE)', 'Ethash', 'PoW', 0, 2000, 'N/A', 'N/A', 868, '0', 0),
(834, 30566, '/coins/gcc/overview', './upload/coinlist/gcc.jpg', 'GCC', 'GCC', 'GuccioneCoin', 'GuccioneCoin (GCC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 869, '0', 0),
(835, 30568, '/coins/and/overview', './upload/coinlist/and.png', 'AND', 'AND', 'AndromedaCoin', 'AndromedaCoin (AND)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 870, '0', 0),
(836, 30736, '/coins/gbyte/overview', './upload/coinlist/bytes.png', 'GBYTE', 'GBYTE', 'Byteball', 'Byteball (GBYTE)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 871, '0', 0),
(837, 30883, '/coins/equal/overview', './upload/coinlist/equal.png', 'EQUAL', 'EQUAL', 'EqualCoin', 'EqualCoin (EQUAL)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 872, '0', 0),
(838, 30887, '/coins/sweet/overview', './upload/coinlist/sweet.png', 'SWEET', 'SWEET', 'SweetStake', 'SweetStake (SWEET)', 'PoS', 'N/A', 0, 2000, 'N/A', 'N/A', 873, '0', 0),
(839, 30912, '/coins/2bacco/overview', './upload/coinlist/2bacco.png', '2BACCO', '2BACCO', '2BACCO Coin', '2BACCO Coin (2BACCO)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 874, '0', 0),
(840, 30920, '/coins/dkc/overview', './upload/coinlist/dkc.png', 'DKC', 'DKC', 'DarkKnightCoin', 'DarkKnightCoin (DKC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 875, '0', 0),
(841, 30925, '/coins/coc/overview', './upload/coinlist/coc.png', 'COC', 'COC', 'Community Coin', 'Community Coin (COC)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 876, '0', 0),
(842, 31002, '/coins/choof/overview', './upload/coinlist/choof.png', 'CHOOF', 'CHOOF', 'ChoofCoin', 'ChoofCoin (CHOOF)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 877, '0', 0),
(843, 31004, '/coins/csh/overview', './upload/coinlist/csh.png', 'CSH', 'CSH', 'CashOut', 'CashOut (CSH)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 878, '0', 0),
(844, 32544, '/coins/zcl/overview', './upload/coinlist/zcl.png', 'ZCL', 'ZCL', 'ZClassic', 'ZClassic (ZCL)', 'Equihash', 'PoW', 0, 2000, 'N/A', 'N/A', 879, '0', 0),
(845, 32548, '/coins/rycn/overview', './upload/coinlist/royal.png', 'RYCN', 'RYCN', 'RoyalCoin 2.0', 'RoyalCoin 2.0 (RYCN)', 'X13', 'PoS', 0, 2000, 'N/A', 'N/A', 880, '0', 0),
(846, 32686, '/coins/pcs/overview', './upload/coinlist/pabyosi.png', 'PCS', 'PCS', 'Pabyosi Coin', 'Pabyosi Coin (PCS)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 881, '0', 0),
(847, 32688, '/coins/nbit/overview', './upload/coinlist/nbit.png', 'NBIT', 'NBIT', 'NetBit', 'NetBit (NBIT)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 882, '0', 0),
(848, 32691, '/coins/wine/overview', './upload/coinlist/wine.png', 'WINE', 'WINE', 'WineCoin', 'WineCoin (WINE)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 883, '0', 0),
(849, 32694, '/coins/dar/overview', './upload/coinlist/dar.png', 'DAR', 'DAR', 'Darcrus', 'Darcrus (DAR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 884, '0', 0),
(850, 32699, '/coins/ark/overview', './upload/coinlist/ark.png', 'ARK', 'ARK', 'ARK', 'ARK (ARK)', 'DPoS', 'DPoS', 0, 2000, 'N/A', 'N/A', 885, '0', 0),
(851, 32775, '/coins/iflt/overview', './upload/coinlist/iflt.png', 'IFLT', 'IFLT', 'InflationCoin', 'InflationCoin (IFLT)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 886, '0', 0),
(852, 32777, '/coins/zecd/overview', './upload/coinlist/zecd.png', 'ZECD', 'ZECD', 'ZCashDarkCoin', 'ZCashDarkCoin (ZECD)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 887, '0', 0),
(853, 32785, '/coins/zxt/overview', './upload/coinlist/zxt.png', 'ZXT', 'ZXT', 'Zcrypt', 'Zcrypt (ZXT)', 'N/A', 'PoW/PoZ', 0, 2000, 'N/A', 'N/A', 888, '0', 0),
(854, 32870, '/coins/wash/overview', './upload/coinlist/wash.png', 'WASH', 'WASH', 'WashingtonCoin', 'WashingtonCoin (WASH)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 889, '0', 0),
(855, 32873, '/coins/tesla/overview', './upload/coinlist/tesla.png', 'TESLA', 'TESLA', 'TeslaCoilCoin', 'TeslaCoilCoin (TESLA)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 890, '0', 0),
(856, 32875, '/coins/lucky/overview', './upload/coinlist/lucky.png', 'LUCKY', 'LUCKY', 'LuckyBlocks (LUCKY)', 'LuckyBlocks (LUCKY) (LUCKY)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 891, '0', 0),
(857, 32880, '/coins/vsl/overview', './upload/coinlist/d5a4e4f0366d3ae8cdbc45ad097f664c2557a55f0c237c1710-pimgpsh_fullsize_distr.jpg', 'VSL', 'VSL', 'vSlice', 'vSlice (VSL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 892, '0', 0),
(858, 32882, '/coins/tpg/overview', './upload/coinlist/tpg.png', 'TPG', 'TPG', 'Troll Payment', 'Troll Payment (TPG)', 'PoS', 'N/A', 0, 2000, 'N/A', 'N/A', 893, '0', 0),
(859, 33001, '/coins/leo/overview', './upload/coinlist/leo.png', 'LEO', 'LEO', 'LEOcoin', 'LEOcoin (LEO)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 894, '0', 0),
(860, 33004, '/coins/mdt/overview', './upload/coinlist/mdt.png', 'MDT', 'MDT', 'Midnight', 'Midnight (MDT)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 895, '0', 0),
(861, 33008, '/coins/cbd/overview', './upload/coinlist/cbd.png', 'CBD', 'CBD', 'CBD Crystals', 'CBD Crystals (CBD)', 'PoS', 'N/A', 0, 2000, 'N/A', 'N/A', 896, '0', 0),
(862, 33010, '/coins/pex/overview', './upload/coinlist/pex.png', 'PEX', 'PEX', 'PosEx', 'PosEx (PEX)', 'SHA256D', 'N/A', 0, 2000, 'N/A', 'N/A', 897, '0', 0),
(863, 33017, '/coins/insane/overview', './upload/coinlist/insane.png', 'INSANE', 'INSANE', 'InsaneCoin', 'InsaneCoin (INSANE)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 898, '0', 0),
(864, 33127, '/coins/pen/overview', './upload/coinlist/pen.png', 'PEN', 'PEN', 'PenCoin', 'PenCoin (PEN)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 901, '0', 0),
(865, 33129, '/coins/bash/overview', './upload/coinlist/bash.png', 'BASH', 'BASH', 'LuckChain', 'LuckChain (BASH)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 902, '0', 0),
(866, 33268, '/coins/fame/overview', './upload/coinlist/fame.png', 'FAME', 'FAME', 'FameCoin', 'FameCoin (FAME)', 'QuBit', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 903, '0', 0),
(867, 33271, '/coins/liv/overview', './upload/coinlist/liv.png', 'LIV', 'LIV', 'LiviaCoin', 'LiviaCoin (LIV)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 904, '0', 0),
(868, 33332, '/coins/sp/overview', './upload/coinlist/sp.png', 'SP', 'SP', 'Sex Pistols', 'Sex Pistols (SP)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 905, '0', 0),
(869, 33393, '/coins/mega/overview', './upload/coinlist/mega.png', 'MEGA', 'MEGA', 'MegaFlash', 'MegaFlash (MEGA)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 906, '0', 0),
(870, 33399, '/coins/vrs/overview', './upload/coinlist/vrs.png', 'VRS', 'VRS', 'Veros', 'Veros (VRS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 907, '0', 0),
(871, 33401, '/coins/alc/overview', './upload/coinlist/alc.png', 'ALC', 'ALC', 'Arab League Coin', 'Arab League Coin (ALC)', 'X13', 'PoW', 0, 2000, 'N/A', 'N/A', 908, '0', 0),
(872, 33403, '/coins/dogeth/overview', './upload/coinlist/dogeth-2.png', 'DOGETH', 'DOGETH', 'EtherDoge', 'EtherDoge (DOGETH)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 909, '0', 0),
(873, 33405, '/coins/klc/overview', './upload/coinlist/klc.png', 'KLC', 'KLC', 'KiloCoin', 'KiloCoin (KLC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 910, '0', 0),
(874, 33460, '/coins/hush/overview', './upload/coinlist/thehush_300x300.png', 'HUSH', 'HUSH', 'Hush', 'Hush (HUSH)', 'Equihash', 'PoW', 0, 2000, 'N/A', 'N/A', 911, '0', 0),
(875, 33522, '/coins/btlc/overview', './upload/coinlist/btlc.png', 'BTLC', 'BTLC', 'BitLuckCoin', 'BitLuckCoin (BTLC)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 912, '0', 0),
(876, 33524, '/coins/drm8/overview', './upload/coinlist/drm8.png', 'DRM8', 'DRM8', 'Dream8Coin', 'Dream8Coin (DRM8)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 913, '0', 0),
(877, 33526, '/coins/fist/overview', './upload/coinlist/fist.png', 'FIST', 'FIST', 'FistBump', 'FistBump (FIST)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 914, '0', 0),
(878, 33636, '/coins/ebz/overview', './upload/coinlist/ebz.png', 'EBZ', 'EBZ', 'Ebitz', 'Ebitz (EBZ)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 915, '0', 0),
(879, 33645, '/coins/drs/overview', './upload/coinlist/drs.png', 'DRS', 'DRS', 'Digital Rupees', 'Digital Rupees (DRS)', 'Scrypt', 'PoS ', 0, 2000, 'N/A', 'N/A', 917, '0', 0),
(880, 33866, '/coins/fgz/overview', './upload/coinlist/fgz.png', 'FGZ', 'FGZ', 'Free Game Zone', 'Free Game Zone (FGZ)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 918, '0', 0),
(881, 33869, '/coins/boson/overview', './upload/coinlist/boson.png', 'BOSON', 'BOSON', 'BosonCoin', 'BosonCoin (BOSON)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 919, '0', 0),
(882, 33871, '/coins/atx/overview', './upload/coinlist/atx.png', 'ATX', 'ATX', 'ArtexCoin', 'ArtexCoin (ATX)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 920, '0', 0),
(883, 33873, '/coins/pnc/overview', './upload/coinlist/pnc.png', 'PNC', 'PNC', 'PlatiniumCoin', 'PlatiniumCoin (PNC)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 921, '0', 0),
(884, 33875, '/coins/brdd/overview', './upload/coinlist/brdd.png', 'BRDD', 'BRDD', 'BeardDollars', 'BeardDollars (BRDD)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 922, '0', 0),
(885, 33914, '/coins/time/overview', './upload/coinlist/time.png', 'TIME', 'TIME', 'Time', 'Time (TIME)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 923, '0', 0),
(886, 33936, '/coins/bip/overview', './upload/coinlist/bip.png', 'BIP', 'BIP', 'BipCoin', 'BipCoin (BIP)', 'CryptoNight', 'PoW', 0, 2000, 'N/A', 'N/A', 924, '0', 0),
(887, 33939, '/coins/xnc/overview', './upload/coinlist/xnc.png', 'XNC', 'XNC', 'XenCoin', 'XenCoin (XNC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 925, '0', 0),
(888, 33942, '/coins/emb/overview', './upload/coinlist/emb.png', 'EMB', 'EMB', 'EmberCoin', 'EmberCoin (EMB)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 926, '0', 0),
(889, 33945, '/coins/bttf/overview', './upload/coinlist/bttf.png', 'BTTF', 'BTTF', 'Coin to the Future', 'Coin to the Future (BTTF)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 927, '0', 0),
(890, 34213, '/coins/dlr/overview', './upload/coinlist/dollarcoin.png', 'DLR', 'DLR', 'DollarOnline', 'DollarOnline (DLR)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 928, '0', 0),
(891, 34215, '/coins/csmic/overview', './upload/coinlist/csmic.png', 'CSMIC', 'CSMIC', 'Cosmic', 'Cosmic (CSMIC)', 'SHA256D', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 929, '0', 0),
(892, 34223, '/coins/first/overview', './upload/coinlist/first.png', 'FIRST', 'FIRST', 'FirstCoin', 'FirstCoin (FIRST)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 930, '0', 0),
(893, 34225, '/coins/scash/overview', './upload/coinlist/scash.png', 'SCASH', 'SCASH', 'SpaceCash', 'SpaceCash (SCASH)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 931, '0', 0),
(894, 34324, '/coins/xen/overview', './upload/coinlist/xen.jpg', 'XEN', 'XEN', 'XenixCoin', 'XenixCoin (XEN)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 932, '0', 0),
(895, 34332, '/coins/jio/overview', './upload/coinlist/jio.png', 'JIO', 'JIO', 'JIO Token', 'JIO Token (JIO)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 933, '0', 0),
(896, 34334, '/coins/iw/overview', './upload/coinlist/iw.png', 'IW', 'IW', 'iWallet', 'iWallet (IW)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 934, '0', 0);
INSERT INTO `dbt_cryptocoin` (`id`, `cid`, `url`, `image`, `name`, `symbol`, `coin_name`, `full_name`, `algorithm`, `proof_type`, `show_home`, `coin_position`, `premined_value`, `total_coins_freefloat`, `rank`, `sponsored`, `status`) VALUES
(897, 34440, '/coins/jns/overview', './upload/coinlist/jns.png', 'JNS', 'JNS', 'Janus', 'Janus (JNS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 935, '0', 0),
(898, 34483, '/coins/trick/overview', './upload/coinlist/trick.png', 'TRICK', 'TRICK', 'TrickyCoin', 'TrickyCoin (TRICK)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 936, '0', 0),
(899, 34487, '/coins/dcre/overview', './upload/coinlist/dcre.png', 'DCRE', 'DCRE', 'DeltaCredits', 'DeltaCredits (DCRE)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 937, '0', 0),
(900, 34489, '/coins/fre/overview', './upload/coinlist/fre.png', 'FRE', 'FRE', 'FreeCoin', 'FreeCoin (FRE)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 938, '0', 0),
(901, 34491, '/coins/npc/overview', './upload/coinlist/npc.png', 'NPC', 'NPC', 'NPCcoin', 'NPCcoin (NPC)', 'SHA256D', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 939, '0', 0),
(902, 34493, '/coins/plnc/overview', './upload/coinlist/plnc.png', 'PLNC', 'PLNC', 'PLNCoin', 'PLNCoin (PLNC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 940, '0', 0),
(903, 34496, '/coins/dgms/overview', './upload/coinlist/dgms.png', 'DGMS', 'DGMS', 'Digigems', 'Digigems (DGMS)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 941, '0', 0),
(904, 34499, '/coins/icob/overview', './upload/coinlist/icb.png', 'ICOB', 'ICOB', 'Icobid', 'Icobid (ICOB)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 942, '0', 0),
(905, 34506, '/coins/arco/overview', './upload/coinlist/arco.png', 'ARCO', 'ARCO', 'AquariusCoin', 'AquariusCoin (ARCO)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 943, '0', 0),
(906, 34602, '/coins/kurt/overview', './upload/coinlist/kurt.png', 'KURT', 'KURT', 'Kurrent', 'Kurrent (KURT)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 944, '0', 0),
(907, 34604, '/coins/xcre/overview', './upload/coinlist/xcre.png', 'XCRE', 'XCRE', 'Creatio', 'Creatio (XCRE)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 945, '0', 0),
(908, 34609, '/coins/ent/overview', './upload/coinlist/ent.jpg', 'ENT', 'ENT', 'Eternity', 'Eternity (ENT)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 946, '0', 0),
(909, 34750, '/coins/ur/overview', './upload/coinlist/ur.jpg', 'UR', 'UR', 'UR', 'UR (UR)', 'Dagger', 'PoW', 0, 2000, 'N/A', 'N/A', 948, '0', 0),
(910, 34754, '/coins/mtlm3/overview', './upload/coinlist/mtmc3.png', 'MTLM3', 'MTLM3', 'Metal Music v3', 'Metal Music v3 (MTLM3)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 949, '0', 0),
(911, 34847, '/coins/odnt/overview', './upload/coinlist/odnt.png', 'ODNT', 'ODNT', 'Old Dogs New Tricks', 'Old Dogs New Tricks (ODNT)', 'SHA256D', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 950, '0', 0),
(912, 34849, '/coins/euc/overview', './upload/coinlist/euc.png', 'EUC', 'EUC', 'Eurocoin', 'Eurocoin (EUC)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 951, '0', 0),
(913, 34851, '/coins/ccx/overview', './upload/coinlist/ccx.png', 'CCX', 'CCX', 'CoolDarkCoin', 'CoolDarkCoin (CCX)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 952, '0', 0),
(914, 34854, '/coins/bcf/overview', './upload/coinlist/btf.png', 'BCF', 'BCF', 'BitcoinFast', 'BitcoinFast (BCF)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 953, '0', 0),
(915, 35027, '/coins/seeds/overview', './upload/coinlist/seeds.png', 'SEEDS', 'SEEDS', 'SeedShares', 'SeedShares (SEEDS)', 'SHA256D', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 954, '0', 0),
(916, 35030, '/coins/posw/overview', './upload/coinlist/posw.png', 'POSW', 'POSW', 'PoSWallet', 'PoSWallet (POSW)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 955, '0', 0),
(917, 35124, '/coins/tks/overview', './upload/coinlist/tks.jpg', 'TKS', 'TKS', 'Tokes', 'Tokes (TKS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 956, '0', 0),
(918, 35165, '/coins/bccoin/overview', './upload/coinlist/bccoin1.png', 'BCCOIN', 'BCCOIN', 'BitConnect Coin', 'BitConnect Coin (BCCOIN)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 957, '0', 0),
(919, 35226, '/coins/shorty/overview', './upload/coinlist/shorty.png', 'SHORTY', 'SHORTY', 'ShortyCoin', 'ShortyCoin (SHORTY)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 959, '0', 0),
(920, 35228, '/coins/pcm/overview', './upload/coinlist/pcm.png', 'PCM', 'PCM', 'Procom', 'Procom (PCM)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 960, '0', 0),
(921, 35230, '/coins/kc/overview', './upload/coinlist/kc.png', 'KC', 'KC', 'Kernalcoin', 'Kernalcoin (KC)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 961, '0', 0),
(922, 35232, '/coins/coral/overview', './upload/coinlist/coral.png', 'CORAL', 'CORAL', 'CoralPay', 'CoralPay (CORAL)', 'X13', 'PoS', 0, 2000, 'N/A', 'N/A', 962, '0', 0),
(923, 35407, '/coins/bam/overview', './upload/coinlist/bam.png', 'BAM', 'BamitCoin', 'BAM', 'BAM (BAM)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 963, '0', 0),
(924, 35678, '/coins/nxc/overview', './upload/coinlist/nxc.png', 'NXC', 'NXC', 'Nexium', 'Nexium (NXC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 964, '0', 0),
(925, 35681, '/coins/money/overview', './upload/coinlist/money.png', 'MONEY', 'MONEY', 'MoneyCoin', 'MoneyCoin (MONEY)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 965, '0', 0),
(926, 35684, '/coins/bstar/overview', './upload/coinlist/bstar.png', 'BSTAR', 'BSTAR', 'Blackstar', 'Blackstar (BSTAR)', 'X11', 'PoS', 0, 2000, 'N/A', 'N/A', 966, '0', 0),
(927, 35687, '/coins/hsp/overview', './upload/coinlist/hsp.png', 'HSP', 'HSP', 'Horse Power', 'Horse Power (HSP)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 967, '0', 0),
(928, 35811, '/coins/hzt/overview', './upload/coinlist/hzt.png', 'HZT', 'HZT', 'HazMatCoin', 'HazMatCoin (HZT)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 968, '0', 0),
(929, 35816, '/coins/xsp/overview', './upload/coinlist/xsp.png', 'XSP', 'XSP', 'PoolStamp', 'PoolStamp (XSP)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 970, '0', 0),
(930, 35821, '/coins/bulls/overview', './upload/coinlist/bulls.png', 'BULLS', 'BULLS', 'BullshitCoin', 'BullshitCoin (BULLS)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 972, '0', 0),
(931, 35823, '/coins/incnt/overview', './upload/coinlist/incnt.png', 'INCNT', 'INCNT', 'Incent', 'Incent (INCNT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 973, '0', 0),
(932, 35825, '/coins/icon/overview', './upload/coinlist/icon.png', 'ICON', 'ICON', 'Iconic', 'Iconic (ICON)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 974, '0', 0),
(933, 35947, '/coins/nic/overview', './upload/coinlist/nic.png', 'NIC', 'NIC', 'NewInvestCoin', 'NewInvestCoin (NIC)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 975, '0', 0),
(934, 35949, '/coins/acn/overview', './upload/coinlist/acn.png', 'ACN', 'ACN', 'AvonCoin', 'AvonCoin (ACN)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 976, '0', 0),
(935, 35953, '/coins/xng/overview', './upload/coinlist/xng.png', 'XNG', 'XNG', 'Enigma', 'Enigma (XNG)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 977, '0', 0),
(936, 35955, '/coins/xci/overview', './upload/coinlist/xci.png', 'XCI', 'XCI', 'Cannabis Industry Coin', 'Cannabis Industry Coin (XCI)', 'CryptoNight', 'PoW', 0, 2000, 'N/A', 'N/A', 978, '0', 0),
(937, 36984, '/coins/look/overview', './upload/coinlist/look.png', 'LOOK', 'LOOK', 'LookCoin', 'LookCoin (LOOK)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 979, '0', 0),
(938, 36988, '/coins/loc/overview', './upload/coinlist/loc.png', 'LOC', 'LOC', 'Loco', 'Loco (LOC)', 'Quark', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 980, '0', 0),
(939, 36992, '/coins/mmxvi/overview', './upload/coinlist/mmxvi.png', 'MMXVI', 'MMXVI', 'MMXVI', 'MMXVI (MMXVI)', 'N/A', 'PoW', 0, 2000, 'N/A', 'N/A', 981, '0', 0),
(940, 37040, '/coins/trst/overview', './upload/coinlist/trst.png', 'TRST', 'TRST', 'TrustCoin', 'TrustCoin (TRST)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 983, '0', 0),
(941, 37190, '/coins/mis/overview', './upload/coinlist/mis.png', 'MIS', 'MIS', 'MIScoin', 'MIScoin (MIS)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 984, '0', 0),
(942, 37191, '/coins/wop/overview', './upload/coinlist/wop.png', 'WOP', 'WOP', 'WorldPay', 'WorldPay (WOP)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 985, '0', 0),
(943, 37195, '/coins/cqst/overview', './upload/coinlist/cqst.png', 'CQST', 'CQST', 'ConquestCoin', 'ConquestCoin (CQST)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 986, '0', 0),
(944, 37204, '/coins/imps/overview', './upload/coinlist/imps.jpg', 'IMPS', 'IMPS', 'Impulse Coin', 'Impulse Coin (IMPS)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 987, '0', 0),
(945, 37210, '/coins/in/overview', './upload/coinlist/in.png', 'IN', 'IN', 'InCoin', 'InCoin (IN)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 988, '0', 0),
(946, 37214, '/coins/chief/overview', './upload/coinlist/chief.png', 'CHIEF', 'CHIEF', 'TheChiefCoin', 'TheChiefCoin (CHIEF)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 989, '0', 0),
(947, 37356, '/coins/goat/overview', './upload/coinlist/goat.png', 'GOAT', 'GOAT', 'Goat', 'Goat (GOAT)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 990, '0', 0),
(948, 37359, '/coins/anal/overview', './upload/coinlist/anal.jpg', 'ANAL', 'ANAL', 'AnalCoin', 'AnalCoin (ANAL)', 'SHA256', 'N/A', 0, 2000, 'N/A', 'N/A', 991, '0', 0),
(949, 37361, '/coins/rc/overview', './upload/coinlist/rc.png', 'RC', 'RC', 'Russiacoin', 'Russiacoin (RC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 992, '0', 0),
(950, 37366, '/coins/pnd/overview', './upload/coinlist/pnd.png', 'PND', 'PND', 'PandaCoin', 'PandaCoin (PND)', 'Scrypt', 'PoS', 0, 2000, 'N/A', 'N/A', 993, '0', 0),
(951, 37370, '/coins/px/overview', './upload/coinlist/px.png', 'PX', 'PX', 'PXcoin', 'PXcoin (PX)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 994, '0', 0),
(952, 37746, '/coins/cndstar/overview', './upload/coinlist/cnd.png', 'CND*', 'CND*', 'Canada eCoin', 'Canada eCoin (CND*)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 995, '0', 0),
(953, 37749, '/coins/option/overview', './upload/coinlist/option.png', 'OPTION', 'OPTION', 'OptionCoin', 'OptionCoin (OPTION)', 'X11', 'PoS', 0, 2000, 'N/A', 'N/A', 996, '0', 0),
(954, 38026, '/coins/av/overview', './upload/coinlist/av.png', 'AV', 'AV', 'Avatar Coin', 'Avatar Coin (AV)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 997, '0', 0),
(955, 38030, '/coins/ltd/overview', './upload/coinlist/ltd.png', 'LTD', 'LTD', 'Limited Coin', 'Limited Coin (LTD)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 998, '0', 0),
(956, 38032, '/coins/units/overview', './upload/coinlist/units.png', 'UNITS', 'UNITS', 'GameUnits', 'GameUnits (UNITS)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 999, '0', 0),
(957, 38035, '/coins/heel/overview', './upload/coinlist/heel.png', 'HEEL', 'HEEL', 'HeelCoin', 'HeelCoin (HEEL)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 1000, '0', 0),
(958, 38277, '/coins/gakh/overview', './upload/coinlist/gakh.png', 'GAKH', 'GAKH', 'GAKHcoin', 'GAKHcoin (GAKH)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1001, '0', 0),
(959, 38307, '/coins/shift/overview', './upload/coinlist/shift.png', 'SHIFT', 'SHIFT', 'Shift', 'Shift (SHIFT)', 'DPoS', 'DPoS', 0, 2000, 'N/A', 'N/A', 1003, '0', 0),
(960, 38310, '/coins/s8c/overview', './upload/coinlist/s8c.png', 'S8C', 'S8C', 'S88 Coin', 'S88 Coin (S8C)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1004, '0', 0),
(961, 38312, '/coins/lvg/overview', './upload/coinlist/lvg.png', 'LVG', 'LVG', 'Leverage Coin', 'Leverage Coin (LVG)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1005, '0', 0),
(962, 38360, '/coins/dra/overview', './upload/coinlist/dra.png', 'DRA', 'DRA', 'DraculaCoin', 'DraculaCoin (DRA)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1006, '0', 0),
(963, 38367, '/coins/asafe2/overview', './upload/coinlist/allsafe.jpg', 'ASAFE2', 'ASAFE2', 'Allsafe', 'Allsafe (ASAFE2)', 'Scrypt', 'PoS', 0, 2000, 'N/A', 'N/A', 1007, '0', 0),
(964, 38370, '/coins/ltcr/overview', './upload/coinlist/ltcr.png', 'LTCR', 'LTCR', 'LiteCreed', 'LiteCreed (LTCR)', 'QuBit', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1008, '0', 0),
(965, 38371, '/coins/qbc/overview', './upload/coinlist/qbc.png', 'QBC', 'QBC', 'Quebecoin', 'Quebecoin (QBC)', 'X11', 'N/A', 0, 2000, 'N/A', 'N/A', 1009, '0', 0),
(966, 38380, '/coins/xpro/overview', './upload/coinlist/xpro.png', 'XPRO', 'XPRO', 'ProCoin', 'ProCoin (XPRO)', 'X15', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1010, '0', 0),
(967, 38959, '/coins/aststar/overview', './upload/coinlist/ast.png', 'AST*', 'AST*', 'Astral', 'Astral (AST*)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1011, '0', 0),
(968, 38962, '/coins/gift/overview', './upload/coinlist/gift.png', 'GIFT', 'GIFT', 'GiftNet', 'GiftNet (GIFT)', 'X13', 'PoW', 0, 2000, 'N/A', 'N/A', 1012, '0', 0),
(969, 38964, '/coins/vidz/overview', './upload/coinlist/vidz.png', 'VIDZ', 'VIDZ', 'PureVidz', 'PureVidz (VIDZ)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 1013, '0', 0),
(970, 38967, '/coins/inc/overview', './upload/coinlist/inc.png', 'INC', 'INC', 'Incrementum', 'Incrementum (INC)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 1014, '0', 0),
(971, 39698, '/coins/pta/overview', './upload/coinlist/pta.png', 'PTA', 'PTA', 'PentaCoin', 'PentaCoin (PTA)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1015, '0', 0),
(972, 39700, '/coins/acid/overview', './upload/coinlist/acid.png', 'ACID', 'ACID', 'AcidCoin', 'AcidCoin (ACID)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 1016, '0', 0),
(973, 39704, '/coins/zlq/overview', './upload/coinlist/zlq.png', 'ZLQ', 'ZLQ', 'ZLiteQubit', 'ZLiteQubit (ZLQ)', 'QuBit', 'N/A', 0, 2000, 'N/A', 'N/A', 1017, '0', 0),
(974, 39707, '/coins/radi/overview', './upload/coinlist/rad.png', 'RADI', 'RADI', 'RadicalCoin', 'RadicalCoin (RADI)', 'X13', 'PoS', 0, 2000, 'N/A', 'N/A', 1018, '0', 0),
(975, 39710, '/coins/rnc/overview', './upload/coinlist/rnc.png', 'RNC', 'RNC', 'ReturnCoin', 'ReturnCoin (RNC)', 'X11', 'PoS', 0, 2000, 'N/A', 'N/A', 1019, '0', 0),
(976, 40806, '/coins/golos/overview', './upload/coinlist/golos.png', 'GOLOS', 'GOLOS', 'Golos', 'Golos (GOLOS)', 'N/A', 'PoW', 0, 2000, 'N/A', 'N/A', 1020, '0', 0),
(977, 40811, '/coins/pasc/overview', './upload/coinlist/pasc.png', 'PASC', 'PASC', 'Pascal Coin', 'Pascal Coin (PASC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1021, '0', 0),
(978, 40839, '/coins/twist/overview', './upload/coinlist/twist1.png', 'TWIST', 'TWIST', 'TwisterCoin', 'TwisterCoin (TWIST)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1022, '0', 0),
(979, 40842, '/coins/payp/overview', './upload/coinlist/payp.png', 'PAYP', 'PAYP', 'PayPeer', 'PayPeer (PAYP)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1023, '0', 0),
(980, 40845, '/coins/deth/overview', './upload/coinlist/deth.png', 'DETH', 'DETH', 'DarkEther', 'DarkEther (DETH)', 'X11', 'N/A', 0, 2000, 'N/A', 'N/A', 1024, '0', 0),
(981, 40847, '/coins/yay/overview', './upload/coinlist/yay.png', 'YAY', 'YAY', 'YAYcoin', 'YAYcoin (YAY)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1025, '0', 0),
(982, 40990, '/coins/yes/overview', './upload/coinlist/yes.png', 'YES', 'YES', 'YesCoin', 'YesCoin (YES)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1027, '0', 0),
(983, 40992, '/coins/lenin/overview', './upload/coinlist/lenin.png', 'LENIN', 'LENIN', 'LeninCoin', 'LeninCoin (LENIN)', 'SHA256D', 'PoW', 0, 2000, 'N/A', 'N/A', 1028, '0', 0),
(984, 41116, '/coins/mrsa/overview', './upload/coinlist/msra.png', 'MRSA', 'MRSA', 'MrsaCoin', 'MrsaCoin (MRSA)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1029, '0', 0),
(985, 41122, '/coins/os76/overview', './upload/coinlist/os76.png', 'OS76', 'OS76', 'OsmiumCoin', 'OsmiumCoin (OS76)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1030, '0', 0),
(986, 41125, '/coins/boss/overview', './upload/coinlist/boss.png', 'BOSS', 'BOSS', 'BitBoss', 'BitBoss (BOSS)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1031, '0', 0),
(987, 41192, '/coins/mkr/overview', './upload/coinlist/mkr.png', 'MKR', 'MKR', 'Maker', 'Maker (MKR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1032, '0', 0),
(988, 41587, '/coins/bic/overview', './upload/coinlist/bic.png', 'BIC', 'BIC', 'Bikercoins', 'Bikercoins (BIC)', 'CryptoNight', 'PoW', 0, 2000, 'N/A', 'N/A', 1033, '0', 0),
(989, 41590, '/coins/crps/overview', './upload/coinlist/crps.png', 'CRPS', 'CRPS', 'CryptoPennies', 'CryptoPennies (CRPS)', 'X11', 'PoS', 0, 2000, 'N/A', 'N/A', 1034, '0', 0),
(990, 41592, '/coins/moto/overview', './upload/coinlist/moto.png', 'MOTO', 'MOTO', 'Motocoin', 'Motocoin (MOTO)', 'N/A', 'PoP', 0, 2000, 'N/A', 'N/A', 1035, '0', 0),
(991, 41819, '/coins/ntcc/overview', './upload/coinlist/ntcc.png', 'NTCC', 'NTCC', 'NeptuneClassic', 'NeptuneClassic (NTCC)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1036, '0', 0),
(992, 41866, '/coins/xncstar/overview', './upload/coinlist/xnc.png', 'XNC*', 'XNC*', 'Numismatic Collections', 'Numismatic Collections (XNC*)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1037, '0', 0),
(993, 41868, '/coins/hxx/overview', './upload/coinlist/hexx.jpg', 'HXX', 'HXX', 'HexxCoin', 'HexxCoin (HXX)', 'Lyra2RE', 'PoW', 0, 2000, 'N/A', 'N/A', 1038, '0', 0),
(994, 41871, '/coins/spktr/overview', './upload/coinlist/spkr.png', 'SPKTR', 'SPKTR', 'Ghost Coin', 'Ghost Coin (SPKTR)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1039, '0', 0),
(995, 41962, '/coins/mac/overview', './upload/coinlist/mac.png', 'MAC', 'MAC', 'MachineCoin', 'MachineCoin (MAC)', 'Time Travel', 'PoW', 0, 2000, 'N/A', 'N/A', 1040, '0', 0),
(996, 41967, '/coins/sel/overview', './upload/coinlist/sel.png', 'SEL', 'SEL', 'SelenCoin', 'SelenCoin (SEL)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 1041, '0', 0),
(997, 41971, '/coins/noo/overview', './upload/coinlist/noo.png', 'NOO', 'NOO', 'Noocoin', 'Noocoin (NOO)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 1042, '0', 0),
(998, 41974, '/coins/chao/overview', './upload/coinlist/chao.png', 'CHAO', 'CHAO', '23 Skidoo', '23 Skidoo (CHAO)', 'SHA256D', 'PoW', 0, 2000, 'N/A', 'N/A', 1043, '0', 0),
(999, 41989, '/coins/xgb/overview', './upload/coinlist/xgb.png', 'XGB', 'XGB', 'GoldenBird', 'GoldenBird (XGB)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1044, '0', 0),
(1000, 42099, '/coins/ymc/overview', './upload/coinlist/ymc.png', 'YMC', 'YMC', 'YamahaCoin', 'YamahaCoin (YMC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1045, '0', 0),
(1001, 42101, '/coins/jok/overview', './upload/coinlist/jok.png', 'JOK', 'JOK', 'JokerCoin', 'JokerCoin (JOK)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1046, '0', 0),
(1002, 42103, '/coins/gbit/overview', './upload/coinlist/gbit.jpg', 'GBIT', 'GBIT', 'GravityBit', 'GravityBit (GBIT)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1047, '0', 0),
(1003, 42106, '/coins/tec/overview', './upload/coinlist/tecoin.png', 'TEC', 'TEC', 'TeCoin', 'TeCoin (TEC)', 'Multiple', 'PoW', 0, 2000, 'N/A', 'N/A', 1048, '0', 0),
(1004, 42110, '/coins/bomb/overview', './upload/coinlist/bomb.png', 'BOMB', 'BOMB', 'BombCoin', 'BombCoin (BOMB)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1049, '0', 0),
(1005, 42344, '/coins/ride/overview', './upload/coinlist/ride.png', 'RIDE', 'RIDE', 'Ride My Car', 'Ride My Car (RIDE)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 1050, '0', 0),
(1006, 42433, '/coins/pivx/overview', './upload/coinlist/pivx.png', 'PIVX', 'PIVX', 'Private Instant Verified Transaction', 'Private Instant Verified Transaction (PIVX)', 'Quark', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1051, '0', 0),
(1007, 42435, '/coins/ked/overview', './upload/coinlist/ked.png', 'KED', 'KED', 'Klingon Empire Darsek', 'Klingon Empire Darsek (KED)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1052, '0', 0),
(1008, 42438, '/coins/cno/overview', './upload/coinlist/coino.png', 'CNO', 'CNO', 'Coino', 'Coino (CNO)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1053, '0', 0),
(1009, 42440, '/coins/wealth/overview', './upload/coinlist/wealth.png', 'WEALTH', 'WEALTH', 'WealthCoin', 'WealthCoin (WEALTH)', 'DPoS', 'PoS', 0, 2000, 'N/A', 'N/A', 1054, '0', 0),
(1010, 42598, '/coins/xspec/overview', './upload/coinlist/xspec.png', 'XSPEC', 'XSPEC', 'Spectre', 'Spectre (XSPEC)', 'POS 3.0', 'PoS', 0, 2000, 'N/A', 'N/A', 1056, '0', 0),
(1011, 42663, '/coins/pepecash/overview', './upload/coinlist/pepecash.png', 'PEPECASH', 'PEPECASH', 'Pepe Cash', 'Pepe Cash (PEPECASH)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1057, '0', 0),
(1012, 42680, '/coins/click/overview', './upload/coinlist/click.png', 'CLICK', 'CLICK', 'Clickcoin', 'Clickcoin (CLICK)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 1058, '0', 0),
(1013, 42685, '/coins/els/overview', './upload/coinlist/els.png', 'ELS', 'ELS', 'Elysium', 'Elysium (ELS)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1059, '0', 0),
(1014, 42687, '/coins/kush/overview', './upload/coinlist/kush.png', 'KUSH', 'KUSH', 'KushCoin', 'KushCoin (KUSH)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1060, '0', 0),
(1015, 42694, '/coins/ery/overview', './upload/coinlist/ely2.png', 'ERY', 'ERY', 'Eryllium', 'Eryllium (ERY)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1061, '0', 0),
(1016, 42841, '/coins/pres/overview', './upload/coinlist/pres.png', 'PRES', 'PRES', 'President Trump', 'President Trump (PRES)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1063, '0', 0),
(1017, 42843, '/coins/btz/overview', './upload/coinlist/btz.png', 'BTZ', 'BTZ', 'BitzCoin', 'BitzCoin (BTZ)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1064, '0', 0),
(1018, 42850, '/coins/opes/overview', './upload/coinlist/opes.png', 'OPES', 'OPES', 'Opes', 'Opes (OPES)', 'Argon2', 'PoW', 0, 2000, 'N/A', 'N/A', 1065, '0', 0),
(1019, 43042, '/coins/wct/overview', './upload/coinlist/waves_1.png', 'WCT', 'WCT', 'Waves Community Token', 'Waves Community Token (WCT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1066, '0', 0),
(1020, 43044, '/coins/ubq/overview', './upload/coinlist/ubq.png', 'UBQ', 'UBQ', 'Ubiq', 'Ubiq (UBQ)', 'Dagger-Hashimoto', 'PoW', 0, 2000, 'N/A', 'N/A', 1067, '0', 0),
(1021, 43046, '/coins/ratio/overview', './upload/coinlist/ratio.png', 'RATIO', 'RATIO', 'Ratio', 'Ratio (RATIO)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 1068, '0', 0),
(1022, 43247, '/coins/ban/overview', './upload/coinlist/ban.png', 'BAN', 'BAN', 'Babes and Nerds', 'Babes and Nerds (BAN)', 'PoS', 'N/A', 0, 2000, 'N/A', 'N/A', 1069, '0', 0),
(1023, 43253, '/coins/nice/overview', './upload/coinlist/nice.png', 'NICE', 'NICE', 'NiceCoin', 'NiceCoin (NICE)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1070, '0', 0),
(1024, 43257, '/coins/smf/overview', './upload/coinlist/xmf.png', 'SMF', 'SMF', 'SmurfCoin', 'SmurfCoin (SMF)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1071, '0', 0),
(1025, 43265, '/coins/cwxt/overview', './upload/coinlist/cwxt.png', 'CWXT', 'CWXT', 'CryptoWorldXToken', 'CryptoWorldXToken (CWXT)', 'N/A', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1072, '0', 0),
(1026, 43595, '/coins/tech/overview', './upload/coinlist/tech.png', 'TECH', 'TECH', 'TechCoin', 'TechCoin (TECH)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1073, '0', 0),
(1027, 43598, '/coins/cir/overview', './upload/coinlist/cir.png', 'CIR', 'CIR', 'CircuitCoin', 'CircuitCoin (CIR)', 'SHA256D', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1074, '0', 0),
(1028, 43602, '/coins/lepen/overview', './upload/coinlist/lepen.png', 'LEPEN', 'LEPEN', 'LePenCoin', 'LePenCoin (LEPEN)', 'SHA256', 'PoS', 0, 2000, 'N/A', 'N/A', 1075, '0', 0),
(1029, 43604, '/coins/round/overview', './upload/coinlist/round.png', 'ROUND', 'ROUND', 'RoundCoin', 'RoundCoin (ROUND)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1076, '0', 0),
(1030, 43814, '/coins/mar/overview', './upload/coinlist/mar.png', 'MAR', 'MAR', 'MarijuanaCoin', 'MarijuanaCoin (MAR)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1077, '0', 0),
(1031, 43818, '/coins/marx/overview', './upload/coinlist/marx.png', 'MARX', 'MARX', 'MarxCoin', 'MarxCoin (MARX)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 1078, '0', 0),
(1032, 43933, '/coins/tat/overview', './upload/coinlist/tat.png', 'TAT', 'TAT', 'Tatiana Coin', 'Tatiana Coin (TAT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1079, '0', 0),
(1033, 43937, '/coins/haze/overview', './upload/coinlist/haze.png', 'HAZE', 'HAZE', 'HazeCoin', 'HazeCoin (HAZE)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1080, '0', 0),
(1034, 43998, '/coins/prx/overview', './upload/coinlist/prx.png', 'PRX', 'PRX', 'Printerium', 'Printerium (PRX)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1081, '0', 0),
(1035, 44001, '/coins/nrc/overview', './upload/coinlist/nrc.png', 'NRC', 'NRC', 'Neurocoin', 'Neurocoin (NRC)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 1082, '0', 0),
(1036, 44003, '/coins/pac/overview', './upload/coinlist/pac.png', 'PAC', 'PAC', 'PacCoin', 'PacCoin (PAC)', 'SHA256D', 'PoW', 0, 2000, 'N/A', 'N/A', 1083, '0', 0),
(1037, 44007, '/coins/impch/overview', './upload/coinlist/impch.png', 'IMPCH', 'IMPCH', 'Impeach', 'Impeach (IMPCH)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1084, '0', 0),
(1038, 44749, '/coins/err/overview', './upload/coinlist/err.png', 'ERR', 'ERR', 'ErrorCoin', 'ErrorCoin (ERR)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1085, '0', 0),
(1039, 44752, '/coins/tic/overview', './upload/coinlist/tic.png', 'TIC', 'TIC', 'TrueInvestmentCoin', 'TrueInvestmentCoin (TIC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1086, '0', 0),
(1040, 44799, '/coins/nuke/overview', './upload/coinlist/nuke.png', 'NUKE', 'NUKE', 'NukeCoin', 'NukeCoin (NUKE)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 1087, '0', 0),
(1041, 44803, '/coins/eoc/overview', './upload/coinlist/eoc.png', 'EOC', 'EOC', 'EveryonesCoin', 'EveryonesCoin (EOC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1088, '0', 0),
(1042, 44952, '/coins/sfc/overview', './upload/coinlist/sfc.png', 'SFC', 'SFC', 'Solarflarecoin', 'Solarflarecoin (SFC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1089, '0', 0),
(1043, 44955, '/coins/jane/overview', './upload/coinlist/jane.png', 'JANE', 'JANE', 'JaneCoin', 'JaneCoin (JANE)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1090, '0', 0),
(1044, 44957, '/coins/para/overview', './upload/coinlist/para.png', 'PARA', 'PARA', 'ParanoiaCoin', 'ParanoiaCoin (PARA)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1091, '0', 0),
(1045, 44959, '/coins/mm/overview', './upload/coinlist/mm.jpg', 'MM', 'MM', 'MasterMint', 'MasterMint (MM)', 'X11', 'PoS', 0, 2000, 'N/A', 'N/A', 1092, '0', 0),
(1046, 45031, '/coins/bxc/overview', './upload/coinlist/bxc.jpg', 'BXC', 'BXC', 'Bitcedi', 'Bitcedi (BXC)', 'CryptoNight', 'PoW', 0, 2000, 'N/A', 'N/A', 1093, '0', 0),
(1047, 45044, '/coins/ndoge/overview', './upload/coinlist/ndoge.png', 'NDOGE', 'NDOGE', 'NinjaDoge', 'NinjaDoge (NDOGE)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1094, '0', 0),
(1048, 45250, '/coins/zbc/overview', './upload/coinlist/zbc.png', 'ZBC', 'ZBC', 'Zilbercoin', 'Zilbercoin (ZBC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1095, '0', 0),
(1049, 45253, '/coins/mln/overview', './upload/coinlist/mln.png', 'MLN', 'MLN', 'Melon', 'Melon (MLN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1096, '0', 0),
(1050, 45258, '/coins/frst/overview', './upload/coinlist/first.png', 'FRST', 'FRST', 'FirstCoin', 'FirstCoin (FRST)', 'Scrypt', 'PoW/PoS ', 0, 2000, 'N/A', 'N/A', 1097, '0', 0),
(1051, 45260, '/coins/pay/overview', './upload/coinlist/pay.png', 'PAY', 'PAY', 'TenX', 'TenX (PAY)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1098, '0', 0),
(1052, 45262, '/coins/oro/overview', './upload/coinlist/oro.png', 'ORO', 'ORO', 'OroCoin', 'OroCoin (ORO)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1099, '0', 0),
(1053, 45607, '/coins/alex/overview', './upload/coinlist/alex.png', 'ALEX', 'ALEX', 'Alexandrite', 'Alexandrite (ALEX)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1100, '0', 0),
(1054, 45609, '/coins/tbcx/overview', './upload/coinlist/tbcx.png', 'TBCX', 'TBCX', 'TrashBurn', 'TrashBurn (TBCX)', 'SHA256D', 'PoS', 0, 2000, 'N/A', 'N/A', 1101, '0', 0),
(1055, 45612, '/coins/mcar/overview', './upload/coinlist/mcar.png', 'MCAR', 'MCAR', 'MasterCar', 'MasterCar (MCAR)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1102, '0', 0),
(1056, 45615, '/coins/ths/overview', './upload/coinlist/ths.png', 'THS', 'THS', 'TechShares', 'TechShares (THS)', 'DPoS', 'DPoS', 0, 2000, 'N/A', 'N/A', 1103, '0', 0),
(1057, 45617, '/coins/aces/overview', './upload/coinlist/aces.png', 'ACES', 'ACES', 'AcesCoin', 'AcesCoin (ACES)', 'X13', 'PoS', 0, 2000, 'N/A', 'N/A', 1104, '0', 0),
(1058, 45816, '/coins/uaec/overview', './upload/coinlist/uaec.png', 'UAEC', 'UAEC', 'United Arab Emirates Coin', 'United Arab Emirates Coin (UAEC)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1105, '0', 0),
(1059, 45821, '/coins/ea/overview', './upload/coinlist/ea.png', 'EA', 'EA', 'EagleCoin', 'EagleCoin (EA)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 1106, '0', 0),
(1060, 45832, '/coins/pie/overview', './upload/coinlist/pie.png', 'PIE', 'PIE', 'Persistent Information Exchange', 'Persistent Information Exchange (PIE)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 1107, '0', 0),
(1061, 48787, '/coins/crea/overview', './upload/coinlist/crea.png', 'CREA', 'CREA', 'CreativeChain', 'CreativeChain (CREA)', 'Keccak', 'PoW', 0, 2000, 'N/A', 'N/A', 1109, '0', 0),
(1062, 48794, '/coins/wisc/overview', './upload/coinlist/wisc.jpg', 'WISC', 'WISC', 'WisdomCoin', 'WisdomCoin (WISC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1110, '0', 0),
(1063, 48800, '/coins/bvc/overview', './upload/coinlist/bvc.png', 'BVC', 'BVC', 'BeaverCoin', 'BeaverCoin (BVC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1111, '0', 0),
(1064, 48807, '/coins/find/overview', './upload/coinlist/find.png', 'FIND', 'FIND', 'FindCoin', 'FindCoin (FIND)', 'X13', 'PoS', 0, 2000, 'N/A', 'N/A', 1112, '0', 0),
(1065, 49600, '/coins/mlite/overview', './upload/coinlist/mlite.png', 'MLITE', 'MLITE', 'MeLite', 'MeLite (MLITE)', 'SHA256D', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1113, '0', 0),
(1066, 49605, '/coins/stalin/overview', './upload/coinlist/stalin.png', 'STALIN', 'STALIN', 'StalinCoin', 'StalinCoin (STALIN)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1114, '0', 0),
(1067, 49610, '/coins/tse/overview', './upload/coinlist/tato1.png', 'TSE', 'TSE', 'TattooCoin', 'TattooCoin (TSE)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1115, '0', 0),
(1068, 50730, '/coins/vltc/overview', './upload/coinlist/vltc.png', 'VLTC', 'VLTC', 'VaultCoin', 'VaultCoin (VLTC)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 1116, '0', 0),
(1069, 50734, '/coins/biob/overview', './upload/coinlist/biob.png', 'BIOB', 'BIOB', 'BioBar', 'BioBar (BIOB)', 'SHA256D', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1117, '0', 0),
(1070, 50741, '/coins/swt/overview', './upload/coinlist/swt.jpg', 'SWT', 'SWT', 'Swarm City Token', 'Swarm City Token (SWT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1118, '0', 0),
(1071, 50754, '/coins/pasl/overview', './upload/coinlist/pasl.png', 'PASL', 'PASL', 'Pascal Lite', 'Pascal Lite (PASL)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1119, '0', 0),
(1072, 52008, '/coins/chat/overview', './upload/coinlist/chat.png', 'CHAT', 'CHAT', 'ChatCoin', 'ChatCoin (CHAT)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1123, '0', 0),
(1073, 52015, '/coins/cdn/overview', './upload/coinlist/cdn.png', 'CDN', 'CDN', 'Canada eCoin', 'Canada eCoin (CDN)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1124, '0', 0),
(1074, 53166, '/coins/tpay/overview', './upload/coinlist/tpay.png', 'TPAY', 'TPAY', 'TrollPlay', 'TrollPlay (TPAY)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1125, '0', 0),
(1075, 53174, '/coins/netko/overview', './upload/coinlist/netko.png', 'NETKO', 'NETKO', 'Netko', 'Netko (NETKO)', 'Blake', 'N/A', 0, 2000, 'N/A', 'N/A', 1126, '0', 0),
(1076, 53915, '/coins/honey/overview', './upload/coinlist/honey1.png', 'HONEY', 'HONEY', 'Honey', 'Honey (HONEY)', 'Blake2S', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1128, '0', 0),
(1077, 53944, '/coins/mxt/overview', './upload/coinlist/mxt.jpg', 'MXT', 'MXT', 'MartexCoin', 'MartexCoin (MXT)', 'X13', ' PoW/PoS', 0, 2000, 'N/A', 'N/A', 1129, '0', 0),
(1078, 53950, '/coins/music/overview', './upload/coinlist/music.png', 'MUSIC', 'MUSIC', 'Musicoin', 'Musicoin (MUSIC)', 'Ethash', 'PoW', 0, 2000, 'N/A', 'N/A', 1130, '0', 0),
(1079, 55540, '/coins/dtb/overview', './upload/coinlist/dtb.png', 'DTB', 'DTB', 'Databits', 'Databits (DTB)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1131, '0', 0),
(1080, 55544, '/coins/veg/overview', './upload/coinlist/veg.png', 'VEG', 'VEG', 'BitVegan', 'BitVegan (VEG)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 1132, '0', 0),
(1081, 55547, '/coins/mbit/overview', './upload/coinlist/mbit.png', 'MBIT', 'MBIT', 'Mbitbooks', 'Mbitbooks (MBIT)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1133, '0', 0),
(1082, 55553, '/coins/volt/overview', './upload/coinlist/volt.png', 'VOLT', 'VOLT', 'BitVolt', 'BitVolt (VOLT)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 1134, '0', 0),
(1083, 55650, '/coins/mgo/overview', './upload/coinlist/mgo.png', 'MGO', 'MGO', 'MobileGo', 'MobileGo (MGO)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1135, '0', 0),
(1084, 55676, '/coins/edg/overview', './upload/coinlist/edg.jpg', 'EDG', 'EDG', 'Edgeless', 'Edgeless (EDG)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1136, '0', 0),
(1085, 56078, '/coins/b/overview', './upload/coinlist/b.png', 'B@', 'B@', 'BankCoin', 'BankCoin (B@)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1137, '0', 0),
(1086, 56246, '/coins/best/overview', './upload/coinlist/best.jpg', 'BEST', 'BEST', 'BestChain', 'BestChain (BEST)', 'Scrypt', 'PoW/PoS ', 0, 2000, 'N/A', 'N/A', 1138, '0', 0),
(1087, 56249, '/coins/chc/overview', './upload/coinlist/chc.png', 'CHC', 'CHC', 'ChainCoin', 'ChainCoin (CHC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1139, '0', 0),
(1088, 56253, '/coins/zeni/overview', './upload/coinlist/zen.png', 'ZENI', 'ZENI', 'Zennies', 'Zennies (ZENI)', 'Scrypt', 'PoS', 0, 2000, 'N/A', 'N/A', 1140, '0', 0),
(1089, 56654, '/coins/planet/overview', './upload/coinlist/planet.png', 'PLANET', 'PLANET', 'PlanetCoin', 'PlanetCoin (PLANET)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1141, '0', 0),
(1090, 56678, '/coins/duck/overview', './upload/coinlist/duckduckcoin.png', 'DUCK', 'DUCK', 'DuckDuckCoin', 'DuckDuckCoin (DUCK)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1142, '0', 0),
(1091, 56682, '/coins/bnx/overview', './upload/coinlist/bnx.png', 'BNX', 'BNX', 'BnrtxCoin', 'BnrtxCoin (BNX)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 1143, '0', 0),
(1092, 57466, '/coins/bstk/overview', './upload/coinlist/bstk.png', 'BSTK', 'BSTK', 'BattleStake', 'BattleStake (BSTK)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 1144, '0', 0),
(1093, 57471, '/coins/rns/overview', './upload/coinlist/rns.png', 'RNS', 'RNS', 'RenosCoin', 'RenosCoin (RNS)', 'Scrypt', 'PoS', 0, 2000, 'N/A', 'N/A', 1145, '0', 0),
(1094, 57481, '/coins/dbix/overview', './upload/coinlist/dbix.png', 'DBIX', 'DBIX', 'DubaiCoin', 'DubaiCoin (DBIX)', 'Dagger-Hashimoto', 'PoW', 0, 2000, 'N/A', 'N/A', 1146, '0', 0),
(1095, 57676, '/coins/amis/overview', './upload/coinlist/amis.png', 'AMIS', 'AMIS', 'AMIS', 'AMIS (AMIS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1147, '0', 0),
(1096, 57705, '/coins/kayi/overview', './upload/coinlist/kayi.png', 'KAYI', 'KAYI', 'Kayı', 'Kayı (KAYI)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1148, '0', 0),
(1097, 57734, '/coins/xvp/overview', './upload/coinlist/xvp.png', 'XVP', 'XVP', 'VirtacoinPlus', 'VirtacoinPlus (XVP)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1149, '0', 0),
(1098, 57742, '/coins/boat/overview', './upload/coinlist/boat.png', 'BOAT', 'BOAT', 'Doubloon', 'Doubloon (BOAT)', 'HMQ1725', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1150, '0', 0),
(1099, 57750, '/coins/taj/overview', './upload/coinlist/taj.png', 'TAJ', 'TAJ', 'TajCoin', 'TajCoin (TAJ)', 'Blake2S', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1151, '0', 0),
(1100, 58121, '/coins/imx/overview', './upload/coinlist/imx.png', 'IMX', 'IMX', 'Impact', 'Impact (IMX)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1152, '0', 0),
(1101, 58125, '/coins/cjc/overview', './upload/coinlist/cjc.png', 'CJC', 'CJC', 'CryptoJournal', 'CryptoJournal (CJC)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 1153, '0', 0),
(1102, 59304, '/coins/amy/overview', './upload/coinlist/amy.jpg', 'AMY', 'AMY', 'Amygws', 'Amygws (AMY)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1154, '0', 0),
(1103, 59317, '/coins/qbt/overview', './upload/coinlist/qbt.png', 'QBT', 'QBT', 'Cubits', 'Cubits (QBT)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1155, '0', 0),
(1104, 59966, '/coins/srcstar/overview', './upload/coinlist/src1.png', 'SRC*', 'SRC*', 'StarCredits', 'StarCredits (SRC*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1156, '0', 0),
(1105, 59968, '/coins/eb3/overview', './upload/coinlist/eb3.png', 'EB3', 'EB3', 'EB3coin', 'EB3coin (EB3)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1157, '0', 0),
(1106, 59973, '/coins/xve/overview', './upload/coinlist/xve.png', 'XVE', 'XVE', 'The Vegan Initiative', 'The Vegan Initiative (XVE)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 1158, '0', 0),
(1107, 60409, '/coins/fazz/overview', './upload/coinlist/fazz.png', 'FAZZ', 'FAZZ', 'FazzCoin', 'FazzCoin (FAZZ)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 1159, '0', 0),
(1108, 60419, '/coins/apt/overview', './upload/coinlist/apt.png', 'APT', 'APT', 'Aptcoin', 'Aptcoin (APT)', 'Scrypt-n', 'PoW', 0, 2000, 'N/A', 'N/A', 1160, '0', 0),
(1109, 60424, '/coins/blazr/overview', './upload/coinlist/blazr.png', 'BLAZR', 'BLAZR', 'BlazerCoin', 'BlazerCoin (BLAZR)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1161, '0', 0),
(1110, 60618, '/coins/arpa/overview', './upload/coinlist/arpa.png', 'ARPA', 'ARPA', 'ArpaCoin', 'ArpaCoin (ARPA)', 'SHA256D', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1162, '0', 0),
(1111, 60622, '/coins/bnbstar/overview', './upload/coinlist/bnb.png', 'BNB*', 'BNB*', 'Boats and Bitches', 'Boats and Bitches (BNB*)', 'X11', 'PoS', 0, 2000, 'N/A', 'N/A', 1163, '0', 0),
(1112, 60631, '/coins/uni/overview', './upload/coinlist/uni.png', 'UNI', 'UNI', 'Universe', 'Universe (UNI)', 'Scrypt', 'PoS', 0, 2000, 'N/A', 'N/A', 1164, '0', 0),
(1113, 61047, '/coins/eco/overview', './upload/coinlist/eco.png', 'ECO', 'ECO', 'ECOcoin', 'ECOcoin (ECO)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1165, '0', 0),
(1114, 61061, '/coins/xlr/overview', './upload/coinlist/xlr.png', 'XLR', 'XLR', 'Solaris', 'Solaris (XLR)', 'XEVAN', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1166, '0', 0),
(1115, 61066, '/coins/dark/overview', './upload/coinlist/dark.png', 'DARK', 'DARK', 'Dark', 'Dark (DARK)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1167, '0', 0),
(1116, 61073, '/coins/don/overview', './upload/coinlist/don.png', 'DON', 'DON', 'DonationCoin', 'DonationCoin (DON)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1168, '0', 0),
(1117, 61138, '/coins/mer/overview', './upload/coinlist/mer.png', 'MER', 'MER', 'Mercury', 'Mercury (MER)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1169, '0', 0),
(1118, 61667, '/coins/wgo/overview', './upload/coinlist/wgo.png', 'WGO', 'WGO', 'WavesGO', 'WavesGO (WGO)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1170, '0', 0),
(1119, 61877, '/coins/rlc/overview', './upload/coinlist/rlc.png', 'RLC', 'RLC', 'iEx.ec', 'iEx.ec (RLC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1171, '0', 0),
(1120, 61902, '/coins/atms/overview', './upload/coinlist/atms.png', 'ATMS', 'ATMS', 'Atmos', 'Atmos (ATMS)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 1172, '0', 0),
(1121, 61912, '/coins/inpay/overview', './upload/coinlist/inpay.png', 'INPAY', 'INPAY', 'InPay', 'InPay (INPAY)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1173, '0', 0),
(1122, 62529, '/coins/ett/overview', './upload/coinlist/ett.png', 'ETT', 'ETT', 'EncryptoTel', 'EncryptoTel (ETT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1174, '0', 0),
(1123, 62640, '/coins/wbtcstar/overview', './upload/coinlist/wbtc.png', 'WBTC*', 'WBTC*', 'wBTC', 'wBTC (WBTC*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1175, '0', 0),
(1124, 62648, '/coins/visio/overview', './upload/coinlist/visio.png', 'VISIO', 'VISIO', 'Visio', 'Visio (VISIO)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1176, '0', 0),
(1125, 62659, '/coins/hpc/overview', './upload/coinlist/hpc.png', 'HPC', 'HPC', 'HappyCoin', 'HappyCoin (HPC)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1177, '0', 0),
(1126, 63304, '/coins/got/overview', './upload/coinlist/got.png', 'GOT', 'GOT', 'Giotto Coin', 'Giotto Coin (GOT)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1178, '0', 0),
(1127, 63308, '/coins/cxt/overview', './upload/coinlist/cxt.png', 'CXT', 'CXT', 'Coinonat', 'Coinonat (CXT)', 'NIST5', 'PoW', 0, 2000, 'N/A', 'N/A', 1179, '0', 0),
(1128, 63312, '/coins/empc/overview', './upload/coinlist/empc.png', 'EMPC', 'EMPC', 'EmporiumCoin', 'EmporiumCoin (EMPC)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1180, '0', 0),
(1129, 66193, '/coins/gno/overview', './upload/coinlist/gnosis-logo.png', 'GNO', 'GNO', 'Gnosis', 'Gnosis (GNO)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1181, '0', 0),
(1130, 66259, '/coins/lgd/overview', './upload/coinlist/lgd.png', 'LGD', 'LGD', 'Legends Cryptocurrency', 'Legends Cryptocurrency (LGD)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1182, '0', 0),
(1131, 66270, '/coins/taas/overview', './upload/coinlist/taas.png', 'TAAS', 'TAAS', 'Token as a Service', 'Token as a Service (TAAS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1183, '0', 0),
(1132, 66685, '/coins/bucks/overview', './upload/coinlist/bucks.png', 'BUCKS', 'BUCKS', 'SwagBucks', 'SwagBucks (BUCKS)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1184, '0', 0),
(1133, 66694, '/coins/xby/overview', './upload/coinlist/xby.png', 'XBY', 'XBY', 'XtraBYtes', 'XtraBYtes (XBY)', 'N/A', 'PoSign', 0, 2000, 'N/A', 'N/A', 1185, '0', 0),
(1134, 67096, '/coins/gup/overview', './upload/coinlist/gup.png', 'GUP', 'GUP', 'Guppy', 'Guppy (GUP)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1186, '0', 0),
(1135, 67430, '/coins/mcrn/overview', './upload/coinlist/mcrn.png', 'MCRN', 'MCRN', 'MacronCoin', 'MacronCoin (MCRN)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 1187, '0', 0),
(1136, 67447, '/coins/lun/overview', './upload/coinlist/lunyr-logo.png', 'LUN', 'LUN', 'Lunyr', 'Lunyr (LUN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1188, '0', 0),
(1137, 67462, '/coins/rain/overview', './upload/coinlist/rain.png', 'RAIN', 'RAIN', 'Condensate', 'Condensate (RAIN)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1189, '0', 0),
(1138, 68084, '/coins/wsx/overview', './upload/coinlist/wsx.png', 'WSX', 'WSX', 'WeAreSatoshi', 'WeAreSatoshi (WSX)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1190, '0', 0),
(1139, 68088, '/coins/iec/overview', './upload/coinlist/wsx.png', 'IEC', 'IEC', 'IvugeoEvolutionCoin', 'IvugeoEvolutionCoin (IEC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1191, '0', 0),
(1140, 68093, '/coins/ims/overview', './upload/coinlist/ims.png', 'IMS', 'IMS', 'Independent Money System', 'Independent Money System (IMS)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1192, '0', 0),
(1141, 70352, '/coins/argus/overview', './upload/coinlist/argus.png', 'ARGUS', 'ARGUS', 'ArgusCoin', 'ArgusCoin (ARGUS)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1194, '0', 0),
(1142, 70365, '/coins/cnt/overview', './upload/coinlist/cnt.png', 'CNT', 'CNT', 'Centurion', 'Centurion (CNT)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1195, '0', 0),
(1143, 70469, '/coins/lmc/overview', './upload/coinlist/lmc.png', 'LMC', 'LMC', 'LomoCoin', 'LomoCoin (LMC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1196, '0', 0),
(1144, 71077, '/coins/tkn/overview', './upload/coinlist/tkn.png', 'TKN', 'TKN', 'TokenCard  ', 'TokenCard   (TKN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1197, '0', 0),
(1145, 71321, '/coins/btcs/overview', './upload/coinlist/btcs.png', 'BTCS', 'BTCS', 'Bitcoin Scrypt', 'Bitcoin Scrypt (BTCS)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1198, '0', 0),
(1146, 71334, '/coins/proc/overview', './upload/coinlist/proc.png', 'PROC', 'PROC', 'ProCurrency', 'ProCurrency (PROC)', 'SHA256', 'PoS', 0, 2000, 'N/A', 'N/A', 1199, '0', 0),
(1147, 71862, '/coins/xgr/overview', './upload/coinlist/xgr.png', 'XGR', 'XGR', 'GoldReserve', 'GoldReserve (XGR)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1200, '0', 0),
(1148, 71873, '/coins/wrcstar/overview', './upload/coinlist/wrc.png', 'WRC*', 'WRC*', 'WarCoin', 'WarCoin (WRC*)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1201, '0', 0),
(1149, 71884, '/coins/benji/overview', './upload/coinlist/benji.png', 'BENJI', 'BENJI', 'BenjiRolls', 'BenjiRolls (BENJI)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1202, '0', 0),
(1150, 72438, '/coins/hmq/overview', './upload/coinlist/hmq.png', 'HMQ', 'HMQ', 'Humaniq', 'Humaniq (HMQ)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1203, '0', 0),
(1151, 72955, '/coins/bcap/overview', './upload/coinlist/bcap1.png', 'BCAP', 'BCAP', 'Blockchain Capital', 'Blockchain Capital (BCAP)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1204, '0', 0),
(1152, 73132, '/coins/duo/overview', './upload/coinlist/duo.png', 'DUO', 'DUO', 'ParallelCoin', 'ParallelCoin (DUO)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1205, '0', 0),
(1153, 73143, '/coins/rbx/overview', './upload/coinlist/rbx.png', 'RBX', 'RBX', 'RiptoBuX', 'RiptoBuX (RBX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1206, '0', 0),
(1154, 74894, '/coins/grw/overview', './upload/coinlist/grw.png', 'GRW', 'GRW', 'GrowthCoin', 'GrowthCoin (GRW)', 'Scrypt', 'PoS', 0, 2000, 'N/A', 'N/A', 1207, '0', 0),
(1155, 74912, '/coins/apx/overview', './upload/coinlist/apx.png', 'APX', 'APX', 'Apx', 'Apx (APX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1208, '0', 0),
(1156, 74924, '/coins/milo/overview', './upload/coinlist/milo.png', 'MILO', 'MILO', 'MiloCoin', 'MiloCoin (MILO)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1209, '0', 0),
(1157, 75285, '/coins/olv/overview', './upload/coinlist/xvs.png', 'OLV', 'OLV', 'OldV', 'OldV (OLV)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1210, '0', 0),
(1158, 75440, '/coins/ilc/overview', './upload/coinlist/ilc.png', 'ILC', 'ILC', 'ILCoin', 'ILCoin (ILC)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 1211, '0', 0),
(1159, 75475, '/coins/mrt/overview', './upload/coinlist/waves_1.png', 'MRT', 'MRT', 'MinersReward', 'MinersReward (MRT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1212, '0', 0),
(1160, 77286, '/coins/iou/overview', './upload/coinlist/iou1.png', 'IOU', 'IOU', 'IOU1', 'IOU1 (IOU)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1213, '0', 0),
(1161, 77306, '/coins/pzm/overview', './upload/coinlist/pzm.jpg', 'PZM', 'PZM', 'Prizm', 'Prizm (PZM)', 'SHA256', 'PoS', 0, 2000, 'N/A', 'N/A', 1214, '0', 0),
(1162, 77337, '/coins/phr/overview', './upload/coinlist/phr.jpg', 'PHR', 'PHR', 'Phreak', 'Phreak (PHR)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 1215, '0', 0),
(1163, 78152, '/coins/ant/overview', './upload/coinlist/ant.png', 'ANT', 'ANT', 'Aragon', 'Aragon (ANT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1216, '0', 0),
(1164, 78172, '/coins/pupa/overview', './upload/coinlist/pupa.png', 'PUPA', 'PUPA', 'PupaCoin', 'PupaCoin (PUPA)', 'Blake2S', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1217, '0', 0),
(1165, 78190, '/coins/rice/overview', './upload/coinlist/rice.png', 'RICE', 'RICE', 'RiceCoin', 'RiceCoin (RICE)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1218, '0', 0),
(1166, 78227, '/coins/xct/overview', './upload/coinlist/xct.png', 'XCT', 'XCT', 'C-Bits', 'C-Bits (XCT)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 1219, '0', 0),
(1167, 79864, '/coins/red/overview', './upload/coinlist/red.png', 'RED', 'RED', 'Redcoin', 'Redcoin (RED)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1221, '0', 0),
(1168, 79875, '/coins/zse/overview', './upload/coinlist/zse.png', 'ZSE', 'ZSE', 'ZSEcoin', 'ZSEcoin (ZSE)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1222, '0', 0),
(1169, 79887, '/coins/ctic/overview', './upload/coinlist/ctic.png', 'CTIC', 'CTIC', 'Coinmatic', 'Coinmatic (CTIC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1223, '0', 0),
(1170, 81403, '/coins/tap/overview', './upload/coinlist/tap.png', 'TAP', 'TAP', 'TappingCoin', 'TappingCoin (TAP)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1224, '0', 0),
(1171, 81445, '/coins/bitok/overview', './upload/coinlist/bitok.jpg', 'BITOK', 'BITOK', 'BitOKX', 'BitOKX (BITOK)', 'Scrypt', 'PoS', 0, 2000, 'N/A', 'N/A', 1225, '0', 0),
(1172, 84232, '/coins/pbt/overview', './upload/coinlist/pbt.png', 'PBT', 'PBT', 'Primalbase', 'Primalbase (PBT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1226, '0', 0),
(1173, 84247, '/coins/muu/overview', './upload/coinlist/muu.png', 'MUU', 'MUU', 'MilkCoin', 'MilkCoin (MUU)', 'SHA256', 'PoW/PoS ', 0, 2000, 'N/A', 'N/A', 1227, '0', 0),
(1174, 84262, '/coins/inf8/overview', './upload/coinlist/inf8.png', 'INF8', 'INF8', 'Infinium-8', 'Infinium-8 (INF8)', 'HybridScryptHash256', 'PoW', 0, 2000, 'N/A', 'N/A', 1228, '0', 0),
(1175, 84752, '/coins/html5/overview', './upload/coinlist/html5.png', 'HTML5', 'HTML5', 'HTML5 Coin', 'HTML5 Coin (HTML5)', 'X15', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1229, '0', 0),
(1176, 84831, '/coins/mne/overview', './upload/coinlist/mne.png', 'MNE', 'MNE', 'Minereum', 'Minereum (MNE)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1230, '0', 0),
(1177, 89572, '/coins/dice/overview', './upload/coinlist/dice.png', 'DICE', 'DICE', 'Etheroll', 'Etheroll (DICE)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1231, '0', 0),
(1178, 100944, '/coins/substar/overview', './upload/coinlist/sub.png', 'SUB*', 'SUB*', 'Subscriptio', 'Subscriptio (SUB*)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 1232, '0', 0),
(1179, 100954, '/coins/usc/overview', './upload/coinlist/usc.png', 'USC', 'USC', 'Ultimate Secure Cash', 'Ultimate Secure Cash (USC)', 'SHA256', 'PoS', 0, 2000, 'N/A', 'N/A', 1233, '0', 0),
(1180, 105206, '/coins/dux/overview', './upload/coinlist/dux.png', 'DUX', 'DUX', 'DuxCoin', 'DuxCoin (DUX)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1234, '0', 0),
(1181, 105220, '/coins/xps/overview', './upload/coinlist/xps.png', 'XPS', 'XPS', 'PoisonIvyCoin', 'PoisonIvyCoin (XPS)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1235, '0', 0),
(1182, 105263, '/coins/eqt/overview', './upload/coinlist/eqt.png', 'EQT', 'EQT', 'EquiTrader', 'EquiTrader (EQT)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1236, '0', 0),
(1183, 105284, '/coins/insn/overview', './upload/coinlist/insn.png', 'INSN', 'INSN', 'Insane Coin', 'Insane Coin (INSN)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1237, '0', 0),
(1184, 107672, '/coins/bat/overview', './upload/coinlist/bat.png', 'BAT', 'BAT', 'Basic Attention Token', 'Basic Attention Token (BAT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1238, '0', 0),
(1185, 108094, '/coins/matstar/overview', './upload/coinlist/mat.png', 'MAT*', 'MAT*', 'Manet Coin', 'Manet Coin (MAT*)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1239, '0', 0),
(1186, 108099, '/coins/f16/overview', './upload/coinlist/f16.png', 'F16', 'F16', 'F16Coin', 'F16Coin (F16)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1240, '0', 0),
(1187, 112363, '/coins/hams/overview', './upload/coinlist/hams.png', 'HAMS', 'HAMS', 'HamsterCoin', 'HamsterCoin (HAMS)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1241, '0', 0),
(1188, 112392, '/coins/qtum/overview', './upload/coinlist/qtum.png', 'QTUM', 'QTUM', 'QTUM', 'QTUM (QTUM)', 'POS 3.0', 'PoS', 0, 2000, 'N/A', 'N/A', 1242, '0', 0),
(1189, 112405, '/coins/nef/overview', './upload/coinlist/nef.png', 'NEF', 'NEF', 'NefariousCoin', 'NefariousCoin (NEF)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1243, '0', 0),
(1190, 116384, '/coins/bos/overview', './upload/coinlist/bos.png', 'BOS', 'BOS', 'BOScoin', 'BOScoin (BOS)', 'N/A', 'mFBA', 0, 2000, 'N/A', 'N/A', 1245, '0', 0);
INSERT INTO `dbt_cryptocoin` (`id`, `cid`, `url`, `image`, `name`, `symbol`, `coin_name`, `full_name`, `algorithm`, `proof_type`, `show_home`, `coin_position`, `premined_value`, `total_coins_freefloat`, `rank`, `sponsored`, `status`) VALUES
(1191, 116425, '/coins/qwark/overview', './upload/coinlist/qwark.png', 'QWARK', 'QWARK', 'Qwark', 'Qwark (QWARK)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1246, '0', 0),
(1192, 127356, '/coins/iot/overview', './upload/coinlist/iota_logo.png', 'IOT', 'IOT', 'IOTA', 'IOTA (IOT)', 'N/A', 'Tangle', 0, 2000, 'N/A', 'N/A', 1247, '0', 0),
(1193, 127667, '/coins/qrl/overview', './upload/coinlist/qrl.png', 'QRL', 'QRL', 'Quantum Resistant Ledger', 'Quantum Resistant Ledger (QRL)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 1248, '0', 0),
(1194, 127738, '/coins/adl/overview', './upload/coinlist/adl.png', 'ADL', 'ADL', 'Adelphoi', 'Adelphoi (ADL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1249, '0', 0),
(1195, 129013, '/coins/eccstar/overview', './upload/coinlist/ecc.png', 'ECC*', 'ECC*', 'E-CurrencyCoin', 'E-CurrencyCoin (ECC*)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1250, '0', 0),
(1196, 129035, '/coins/ptoy/overview', './upload/coinlist/ptoy.png', 'PTOY', 'PTOY', 'Patientory', 'Patientory (PTOY)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1251, '0', 0),
(1197, 129604, '/coins/zrc/overview', './upload/coinlist/xzc.png', 'ZRC', 'ZRC', 'ZrCoin', 'ZrCoin (ZRC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1252, '0', 0),
(1198, 130939, '/coins/lkk/overview', './upload/coinlist/lkk.png', 'LKK', 'LKK', 'Lykke', 'Lykke (LKK)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1253, '0', 0),
(1199, 130951, '/coins/esp/overview', './upload/coinlist/esp.png', 'ESP', 'ESP', 'Espers', 'Espers (ESP)', 'HMQ1725', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1254, '0', 0),
(1200, 131079, '/coins/mad/overview', './upload/coinlist/mad.png', 'MAD', 'MAD', 'SatoshiMadness', 'SatoshiMadness (MAD)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 1255, '0', 0),
(1201, 131111, '/coins/dyn/overview', './upload/coinlist/dyn.png', 'DYN', 'DYN', 'Dynamic', 'Dynamic (DYN)', 'Argon2', 'PoW', 0, 2000, 'N/A', 'N/A', 1256, '0', 0),
(1202, 131112, '/coins/seq/overview', './upload/coinlist/seq.png', 'SEQ', 'SEQ', 'Sequence', 'Sequence (SEQ)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1257, '0', 0),
(1203, 131154, '/coins/mcap/overview', './upload/coinlist/mcap.png', 'MCAP', 'MCAP', 'MCAP', 'MCAP (MCAP)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1258, '0', 0),
(1204, 136190, '/coins/myst/overview', './upload/coinlist/myst.png', 'MYST', 'MYST', 'Mysterium', 'Mysterium (MYST)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1259, '0', 0),
(1205, 136211, '/coins/veri/overview', './upload/coinlist/veri.png', 'VERI', 'VERI', 'Veritaseum', 'Veritaseum (VERI)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1260, '0', 0),
(1206, 136244, '/coins/snm/overview', './upload/coinlist/snm.png', 'SNM', 'SNM', 'SONM', 'SONM (SNM)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1261, '0', 0),
(1207, 136269, '/coins/sky/overview', './upload/coinlist/sky.png', 'SKY', 'SKY', 'Skycoin', 'Skycoin (SKY)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1262, '0', 0),
(1208, 136984, '/coins/cfi/overview', './upload/coinlist/cfi.png', 'CFI', 'CFI', 'Cofound.it', 'Cofound.it (CFI)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1263, '0', 0),
(1209, 137013, '/coins/snt/overview', './upload/coinlist/snt.png', 'SNT', 'SNT', 'Status Network Token', 'Status Network Token (SNT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1264, '0', 0),
(1210, 138642, '/coins/avt/overview', './upload/coinlist/avt.png', 'AVT', 'AVT', 'AventCoin', 'AventCoin (AVT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1265, '0', 0),
(1211, 139467, '/coins/cvc/overview', './upload/coinlist/cvc.png', 'CVC', 'CVC', 'Civic', 'Civic (CVC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1266, '0', 0),
(1212, 141171, '/coins/ixt/overview', './upload/coinlist/ixt.png', 'IXT', 'IXT', 'iXledger', 'iXledger (IXT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1267, '0', 0),
(1213, 141331, '/coins/dent/overview', './upload/coinlist/dent.png', 'DENT', 'DENT', 'Dent', 'Dent (DENT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1268, '0', 0),
(1214, 141464, '/coins/ethos/overview', './upload/coinlist/ethos.png', 'ETHOS', 'BQX', 'Ethos', 'Ethos (ETHOS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1269, '0', 0),
(1215, 150519, '/coins/sta/overview', './upload/coinlist/crs.png', 'STA', 'STA', 'Starta', 'Starta (STA)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1270, '0', 0),
(1216, 150545, '/coins/tfl/overview', './upload/coinlist/tfl.png', 'TFL', 'TFL', 'True Flip Lottery', 'True Flip Lottery (TFL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1271, '0', 0),
(1217, 165555, '/coins/efyt/overview', './upload/coinlist/efyt.png', 'EFYT', 'EFYT', 'Ergo', 'Ergo (EFYT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1272, '0', 0),
(1218, 166390, '/coins/xtz/overview', './upload/coinlist/xbt.png', 'XTZ', 'XTZ', 'Tezos', 'Tezos (XTZ)', 'N/A', 'DPoS', 0, 2000, 'N/A', 'N/A', 1273, '0', 0),
(1219, 166548, '/coins/mco/overview', './upload/coinlist/mco.jpg', 'MCO', 'MCO', 'Monaco', 'Monaco (MCO)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1275, '0', 0),
(1220, 166594, '/coins/nmr/overview', './upload/coinlist/nmr.png', 'NMR', 'NMR', 'Numerai', 'Numerai (NMR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1276, '0', 0),
(1221, 170452, '/coins/adx/overview', './upload/coinlist/adx1.png', 'ADX', 'ADX', 'AdEx', 'AdEx (ADX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1277, '0', 0),
(1222, 170958, '/coins/qau/overview', './upload/coinlist/qau.png', 'QAU', 'QAU', 'Quantum', 'Quantum (QAU)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1278, '0', 0),
(1223, 171390, '/coins/ecob/overview', './upload/coinlist/ecob.png', 'ECOB', 'ECOB', 'EcoBit', 'EcoBit (ECOB)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1279, '0', 0),
(1224, 171884, '/coins/plbt/overview', './upload/coinlist/polybius.png', 'PLBT', 'PLBT', 'Polybius', 'Polybius (PLBT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1280, '0', 0),
(1225, 171986, '/coins/usdt/overview', './upload/coinlist/usdt.png', 'USDT', 'USDT', 'Tether', 'Tether (USDT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1281, '0', 0),
(1226, 172091, '/coins/xrb/overview', './upload/coinlist/xrb.png', 'XRB', 'XRB', 'Nano', 'Nano (XRB)', 'Blake2b', 'PoW', 0, 2000, 'N/A', 'N/A', 1282, '0', 0),
(1227, 175611, '/coins/aht/overview', './upload/coinlist/ahc.png', 'AHT', 'AHT', 'Ahoolee', 'Ahoolee (AHT)', 'Ethash', 'PoW', 0, 2000, 'N/A', 'N/A', 1283, '0', 0),
(1228, 175618, '/coins/atb/overview', './upload/coinlist/atb.png', 'ATB', 'ATB', 'ATB coin', 'ATB coin (ATB)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 1284, '0', 0),
(1229, 175671, '/coins/tix/overview', './upload/coinlist/tix.png', 'TIX', 'TIX', 'Blocktix', 'Blocktix (TIX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1285, '0', 0),
(1230, 176004, '/coins/cmp/overview', './upload/coinlist/compcoin.png', 'CMP', 'CMP', 'Compcoin', 'Compcoin (CMP)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1287, '0', 0),
(1231, 176280, '/coins/rvt/overview', './upload/coinlist/rvt.png', 'RVT', 'RVT', 'Rivetz', 'Rivetz (RVT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1288, '0', 0),
(1232, 176336, '/coins/hrb/overview', './upload/coinlist/hrb.png', 'HRB', 'HRB', 'Harbour DAO', 'Harbour DAO (HRB)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1289, '0', 0),
(1233, 176669, '/coins/netstar/overview', './upload/coinlist/net1.png', 'NET*', 'NET*', 'Nimiq Exchange Token', 'Nimiq Exchange Token (NET*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1290, '0', 0),
(1234, 177124, '/coins/8bt/overview', './upload/coinlist/8bt.png', '8BT', '8BT', '8 Circuit Studios', '8 Circuit Studios (8BT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1291, '0', 0),
(1235, 177157, '/coins/act/overview', './upload/coinlist/act.png', 'ACT', 'ACT', 'ACT', 'ACT (ACT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1293, '0', 0),
(1236, 177175, '/coins/dnt/overview', './upload/coinlist/dnt.png', 'DNT', 'DNT', 'district0x', 'district0x (DNT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1294, '0', 0),
(1237, 177462, '/coins/sur/overview', './upload/coinlist/sur.png', 'SUR', 'SUR', 'Suretly', 'Suretly (SUR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1295, '0', 0),
(1238, 177503, '/coins/ping/overview', './upload/coinlist/ping1.png', 'PING', 'PING', 'CryptoPing', 'CryptoPing (PING)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1296, '0', 0),
(1239, 177759, '/coins/miv/overview', './upload/coinlist/miv.png', 'MIV', 'MIV', 'MakeItViral', 'MakeItViral (MIV)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1297, '0', 0),
(1240, 177831, '/coins/betstar/overview', './upload/coinlist/bet.png', 'BET*', 'BET*', 'DAO.casino', 'DAO.casino (BET*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1298, '0', 0),
(1241, 177863, '/coins/san/overview', './upload/coinlist/san.png', 'SAN', 'SAN', 'Santiment', 'Santiment (SAN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1299, '0', 0),
(1242, 177918, '/coins/kin/overview', './upload/coinlist/kin.png', 'KIN', 'KIN', 'Kin', 'Kin (KIN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1300, '0', 0),
(1243, 178467, '/coins/wgr/overview', './upload/coinlist/wgr.png', 'WGR', 'WGR', 'Wagerr', 'Wagerr (WGR)', 'PoS', 'N/A', 0, 2000, 'N/A', 'N/A', 1301, '0', 0),
(1244, 178861, '/coins/xel/overview', './upload/coinlist/xel.png', 'XEL', 'XEL', 'Elastic', 'Elastic (XEL)', 'N/A', 'PoW', 0, 2000, 'N/A', 'N/A', 1302, '0', 0),
(1245, 178885, '/coins/nvst/overview', './upload/coinlist/nvst.png', 'NVST', 'NVST', 'NVO', 'NVO (NVST)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1303, '0', 0),
(1246, 178978, '/coins/fun/overview', './upload/coinlist/fun.png', 'FUN', 'FUN', 'FunFair', 'FunFair (FUN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1304, '0', 0),
(1247, 179018, '/coins/func/overview', './upload/coinlist/func.png', 'FUNC', 'FUNC', 'FunCoin', 'FunCoin (FUNC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1305, '0', 0),
(1248, 179077, '/coins/pqt/overview', './upload/coinlist/pqt.png', 'PQT', 'PQT', 'PAquarium', 'PAquarium (PQT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1306, '0', 0),
(1249, 179109, '/coins/wtt/overview', './upload/coinlist/wtt.png', 'WTT', 'WTT', 'Giga Watt', 'Giga Watt (WTT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1307, '0', 0),
(1250, 179164, '/coins/mtl/overview', './upload/coinlist/mtl.png', 'MTL', 'MTL', 'Metal', 'Metal (MTL)', 'N/A', 'PoPP', 0, 2000, 'N/A', 'N/A', 1308, '0', 0),
(1251, 179329, '/coins/hvn/overview', './upload/coinlist/hvt.png', 'HVN', 'HVN', 'Hive Project', 'Hive Project (HVN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1309, '0', 0),
(1252, 179345, '/coins/myb/overview', './upload/coinlist/myb.png', 'MYB', 'MYB', 'MyBit', 'MyBit (MYB)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1310, '0', 0),
(1253, 179896, '/coins/ppt/overview', './upload/coinlist/ppt.png', 'PPT', 'PPT', 'Populous', 'Populous (PPT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1311, '0', 0),
(1254, 179926, '/coins/snc/overview', './upload/coinlist/snc.png', 'SNC', 'SNC', 'SunContract', 'SunContract (SNC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1312, '0', 0),
(1255, 179947, '/coins/star/overview', './upload/coinlist/star1.png', 'STAR', 'STAR', 'Starbase', 'Starbase (STAR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1314, '0', 0),
(1256, 179980, '/coins/cor/overview', './upload/coinlist/cor.png', 'COR', 'COR', 'Corion', 'Corion (COR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1316, '0', 0),
(1257, 179990, '/coins/xrl/overview', './upload/coinlist/xrl.png', 'XRL', 'XRL', 'Rialto.AI', 'Rialto.AI (XRL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1317, '0', 0),
(1258, 180001, '/coins/oroc/overview', './upload/coinlist/oroc.png', 'OROC', 'OROC', 'Orocrypt', 'Orocrypt (OROC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1318, '0', 0),
(1259, 180013, '/coins/oax/overview', './upload/coinlist/oax.png', 'OAX', 'OAX', 'OpenANX', 'OpenANX (OAX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1319, '0', 0),
(1260, 180539, '/coins/mbi/overview', './upload/coinlist/mbi.png', 'MBI', 'MBI', 'Monster Byte Inc', 'Monster Byte Inc (MBI)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1320, '0', 0),
(1261, 180595, '/coins/ddf/overview', './upload/coinlist/ddf.png', 'DDF', 'DDF', 'Digital Developers Fund', 'Digital Developers Fund (DDF)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1321, '0', 0),
(1262, 180678, '/coins/dim/overview', './upload/coinlist/dim.png', 'DIM', 'DIM', 'DIMCOIN', 'DIMCOIN (DIM)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1322, '0', 0),
(1263, 180804, '/coins/dna/overview', './upload/coinlist/dna.png', 'DNA', 'DNA', 'Encrypgen', 'Encrypgen (DNA)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1324, '0', 0),
(1264, 180820, '/coins/fyn/overview', './upload/coinlist/fyn.png', 'FYN', 'FYN', 'FundYourselfNow', 'FundYourselfNow (FYN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1325, '0', 0),
(1265, 181373, '/coins/dcy/overview', './upload/coinlist/dcy.png', 'DCY', 'DCY', 'Dinastycoin', 'Dinastycoin (DCY)', 'CryptoNight', 'PoW', 0, 2000, 'N/A', 'N/A', 1327, '0', 0),
(1266, 182258, '/coins/cft/overview', './upload/coinlist/cft.png', 'CFT', 'CFT', 'CryptoForecast', 'CryptoForecast (CFT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1328, '0', 0),
(1267, 182288, '/coins/dnr/overview', './upload/coinlist/dnr.png', 'DNR', 'DNR', 'Denarius', 'Denarius (DNR)', 'NIST5', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1329, '0', 0),
(1268, 182325, '/coins/dp/overview', './upload/coinlist/dp.png', 'DP', 'DP', 'DigitalPrice', 'DigitalPrice (DP)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 1330, '0', 0),
(1269, 182340, '/coins/vuc/overview', './upload/coinlist/vuc.png', 'VUC', 'VUC', 'Virta Unique Coin', 'Virta Unique Coin (VUC)', 'NIST5', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1331, '0', 0),
(1270, 182346, '/coins/btpl/overview', './upload/coinlist/btpl.png', 'BTPL', 'BTPL', 'Bitcoin Planet', 'Bitcoin Planet (BTPL)', 'Skein', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1332, '0', 0),
(1271, 182364, '/coins/unify/overview', './upload/coinlist/unify.png', 'UNIFY', 'UNIFY', 'Unify', 'Unify (UNIFY)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1333, '0', 0),
(1272, 182396, '/coins/ipc/overview', './upload/coinlist/ipc.png', 'IPC', 'IPC', 'ImperialCoin', 'ImperialCoin (IPC)', 'NeoScrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1334, '0', 0),
(1273, 182416, '/coins/brit/overview', './upload/coinlist/brit.png', 'BRIT', 'BRIT', 'BritCoin', 'BritCoin (BRIT)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1335, '0', 0),
(1274, 182463, '/coins/ammo/overview', './upload/coinlist/ammo.png', 'AMMO', 'AMMO', 'Ammo Rewards', 'Ammo Rewards (AMMO)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 1336, '0', 0),
(1275, 183189, '/coins/socc/overview', './upload/coinlist/socc.png', 'SOCC', 'SOCC', 'SocialCoin', 'SocialCoin (SOCC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1337, '0', 0),
(1276, 184135, '/coins/mass/overview', './upload/coinlist/mass.png', 'MASS', 'MASS', 'Mass.Cloud', 'Mass.Cloud (MASS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1339, '0', 0),
(1277, 184163, '/coins/la/overview', './upload/coinlist/latoken.png', 'LA', 'LA', 'LATOKEN', 'LATOKEN (LA)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1340, '0', 0),
(1278, 184187, '/coins/iml/overview', './upload/coinlist/iml.png', 'IML', 'IML', 'IMMLA', 'IMMLA (IML)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1341, '0', 0),
(1279, 184237, '/coins/stu/overview', './upload/coinlist/stu.png', 'STU', 'STU', 'BitJob', 'BitJob (STU)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1343, '0', 0),
(1280, 184298, '/coins/plr/overview', './upload/coinlist/plr.png', 'PLR', 'PLR', 'Pillar', 'Pillar (PLR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1344, '0', 0),
(1281, 185625, '/coins/guns/overview', './upload/coinlist/guns.png', 'GUNS', 'GUNS', 'GeoFunders', 'GeoFunders (GUNS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1345, '0', 0),
(1282, 185669, '/coins/ift/overview', './upload/coinlist/ift.png', 'IFT', 'IFT', 'InvestFeed', 'InvestFeed (IFT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1346, '0', 0),
(1283, 185689, '/coins/cat/overview', './upload/coinlist/cat.png', 'CAT', 'CAT*', 'BitClave', 'BitClave (CAT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1347, '0', 0),
(1284, 185695, '/coins/pro/overview', './upload/coinlist/pro.png', 'PRO', 'PRO', 'Propy', 'Propy (PRO)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1348, '0', 0),
(1285, 185873, '/coins/syc/overview', './upload/coinlist/syc.png', 'SYC', 'SYC', 'SynchroCoin', 'SynchroCoin (SYC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1349, '0', 0),
(1286, 185953, '/coins/ind/overview', './upload/coinlist/ind.png', 'IND', 'IND', 'Indorse', 'Indorse (IND)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1350, '0', 0),
(1287, 186064, '/coins/ahtstar/overview', './upload/coinlist/aht.png', 'AHT*', 'AHT*', 'Bowhead Health', 'Bowhead Health (AHT*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1351, '0', 0),
(1288, 186253, '/coins/tribe/overview', './upload/coinlist/tribe.jpg', 'TRIBE', 'TRIBE', 'TribeToken', 'TribeToken (TRIBE)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1352, '0', 0),
(1289, 186277, '/coins/zrx/overview', './upload/coinlist/zrx.png', 'ZRX', 'ZRX', '0x', '0x (ZRX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1353, '0', 0),
(1290, 186309, '/coins/tnt/overview', './upload/coinlist/tnt.png', 'TNT', 'TNT', 'Tierion', 'Tierion (TNT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1354, '0', 0),
(1291, 186331, '/coins/prestar/overview', './upload/coinlist/pst.png', 'PRE*', 'PRE*', 'Presearch', 'Presearch (PRE*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1355, '0', 0),
(1292, 186335, '/coins/coss/overview', './upload/coinlist/coss.png', 'COSS', 'COSS', 'COSS', 'COSS (COSS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1356, '0', 0),
(1293, 186875, '/coins/storm/overview', './upload/coinlist/storm.jpg', 'STORM', 'STORM', 'Storm', 'Storm (STORM)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1357, '0', 0),
(1294, 187347, '/coins/storj/overview', './upload/coinlist/sjcx.png', 'STORJ', 'STORJ', 'Storj', 'Storj (STORJ)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1360, '0', 0),
(1295, 187431, '/coins/score/overview', './upload/coinlist/score.png', 'SCORE', 'SCORE', 'Scorecoin', 'Scorecoin (SCORE)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1361, '0', 0),
(1296, 187440, '/coins/omg/overview', './upload/coinlist/omisego.png', 'OMG', 'OMG', 'OmiseGo', 'OmiseGo (OMG)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 1362, '0', 0),
(1297, 188294, '/coins/otx/overview', './upload/coinlist/1qrfuod6_400x400.jpg', 'OTX', 'OTX', 'Octanox', 'Octanox (OTX)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1364, '0', 0),
(1298, 188300, '/coins/eqb/overview', './upload/coinlist/eqb.png', 'EQB', 'EQB', 'Equibit', 'Equibit (EQB)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1365, '0', 0),
(1299, 188352, '/coins/voise/overview', './upload/coinlist/voise.png', 'VOISE', 'VOISE', 'Voise', 'Voise (VOISE)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1366, '0', 0),
(1300, 188394, '/coins/etbs/overview', './upload/coinlist/etbs.png', 'ETBS', 'ETBS', 'EthBits', 'EthBits (ETBS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1367, '0', 0),
(1301, 188400, '/coins/cvcoin/overview', './upload/coinlist/cvcoin.png', 'CVCOIN', 'CVCOIN', 'Crypviser', 'Crypviser (CVCOIN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1368, '0', 0),
(1302, 188523, '/coins/drp/overview', './upload/coinlist/drp.png', 'DRP', 'DRP', 'DCORP', 'DCORP (DRP)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1369, '0', 0),
(1303, 188615, '/coins/arc/overview', './upload/coinlist/arc.png', 'ARC', 'ARC', 'ArcticCoin', 'ArcticCoin (ARC)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 1370, '0', 0),
(1304, 188677, '/coins/bog/overview', './upload/coinlist/bog.png', 'BOG', 'BOG', 'Bogcoin', 'Bogcoin (BOG)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 1371, '0', 0),
(1305, 188787, '/coins/ndc/overview', './upload/coinlist/ndc.png', 'NDC', 'NDC', 'NeverDie', 'NeverDie (NDC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1372, '0', 0),
(1306, 188811, '/coins/poe/overview', './upload/coinlist/poe.png', 'POE', 'POE', 'Po.et', 'Po.et (POE)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1373, '0', 0),
(1307, 188858, '/coins/adt/overview', './upload/coinlist/adt.png', 'ADT', 'ADT', 'AdToken', 'AdToken (ADT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1374, '0', 0),
(1308, 190978, '/coins/ae/overview', './upload/coinlist/ae.png', 'AE', 'AE', 'Aeternity', 'Aeternity (AE)', 'N/A', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1375, '0', 0),
(1309, 191037, '/coins/uet/overview', './upload/coinlist/uet.png', 'UET', 'UET', 'Useless Ethereum Token', 'Useless Ethereum Token (UET)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1376, '0', 0),
(1310, 191116, '/coins/part/overview', './upload/coinlist/part.png', 'PART', 'PART', 'Particl', 'Particl (PART)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 1377, '0', 0),
(1311, 191142, '/coins/agrs/overview', './upload/coinlist/agrs.png', 'AGRS', 'AGRS', 'Agoras Token', 'Agoras Token (AGRS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1378, '0', 0),
(1312, 188652, '/coins/sand/overview', './upload/coinlist/beach.png', 'SAND', 'SAND', 'BeachCoin', 'BeachCoin (SAND)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 1379, '0', 0),
(1313, 191228, '/coins/xaistar/overview', './upload/coinlist/xai.png', 'XAI*', 'XAI*', 'AICoin', 'AICoin (XAI*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1380, '0', 0),
(1314, 192400, '/coins/dmt/overview', './upload/coinlist/dmarket.png', 'DMT', 'DMT', 'DMarket', 'DMarket (DMT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1381, '0', 0),
(1315, 194399, '/coins/das/overview', './upload/coinlist/das.png', 'DAS', 'DAS', 'DAS', 'DAS (DAS)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 1382, '0', 0),
(1316, 194530, '/coins/adst/overview', './upload/coinlist/adst.png', 'ADST', 'ADST', 'Adshares', 'Adshares (ADST)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1383, '0', 0),
(1317, 194567, '/coins/catstar/overview', './upload/coinlist/bcat1.png', 'CAT*', 'CAT', 'BlockCAT', 'BlockCAT (CAT*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1384, '0', 0),
(1318, 194689, '/coins/xcj/overview', './upload/coinlist/xcj.png', 'XCJ', 'XCJ', 'CoinJob', 'CoinJob (XCJ)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1385, '0', 0),
(1319, 194924, '/coins/rkc/overview', './upload/coinlist/rkc.png', 'RKC', 'RKC', 'Royal Kingdom Coin', 'Royal Kingdom Coin (RKC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1386, '0', 0),
(1320, 195018, '/coins/nlc2/overview', './upload/coinlist/nlc2.png', 'NLC2', 'NLC2', 'NoLimitCoin', 'NoLimitCoin (NLC2)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 1387, '0', 0),
(1321, 196541, '/coins/linda/overview', './upload/coinlist/linda.png', 'LINDA', 'LINDA', 'Linda', 'Linda (LINDA)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1388, '0', 0),
(1322, 196549, '/coins/spn/overview', './upload/coinlist/spn.png', 'SPN', 'SPN', 'Spoon', 'Spoon (SPN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1389, '0', 0),
(1323, 196560, '/coins/king/overview', './upload/coinlist/king.png', 'KING', 'KING', 'King93', 'King93 (KING)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1390, '0', 0),
(1324, 196572, '/coins/ancp/overview', './upload/coinlist/ancp.png', 'ANCP', 'ANCP', 'Anacrypt', 'Anacrypt (ANCP)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1391, '0', 0),
(1325, 196591, '/coins/rcc/overview', './upload/coinlist/rcc.png', 'RCC', 'RCC', 'Reality Clash', 'Reality Clash (RCC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1392, '0', 0),
(1326, 194906, '/coins/roots/overview', './upload/coinlist/roots.png', 'ROOTS', 'ROOTS', 'RootProject', 'RootProject (ROOTS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1393, '0', 0),
(1327, 196612, '/coins/snk/overview', './upload/coinlist/snk.png', 'SNK', 'SNK', 'Sosnovkino', 'Sosnovkino (SNK)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1394, '0', 0),
(1328, 196986, '/coins/cabs/overview', './upload/coinlist/cabs.png', 'CABS', 'CABS', 'CryptoABS', 'CryptoABS (CABS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1395, '0', 0),
(1329, 197054, '/coins/opt/overview', './upload/coinlist/opt.png', 'OPT', 'OPT', 'Opus', 'Opus (OPT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1396, '0', 0),
(1330, 197886, '/coins/znt/overview', './upload/coinlist/znt.png', 'ZNT', 'ZNT', 'OpenZen', 'OpenZen (ZNT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1397, '0', 0),
(1331, 198251, '/coins/bitsd/overview', './upload/coinlist/bitsd.png', 'BITSD', 'BITSD', 'Bits Digit', 'Bits Digit (BITSD)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1398, '0', 0),
(1332, 198337, '/coins/xlc/overview', './upload/coinlist/ivetpxdq_400x400.jpg', 'XLC', 'XLC', 'LeviarCoin', 'LeviarCoin (XLC)', 'CryptoNight', 'PoW', 0, 2000, 'N/A', 'N/A', 1399, '0', 0),
(1333, 198369, '/coins/skin/overview', './upload/coinlist/dsb_amky_400x400.jpg', 'SKIN', 'SKIN', 'Skincoin', 'Skincoin (SKIN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1400, '0', 0),
(1334, 198408, '/coins/msp/overview', './upload/coinlist/c9fobrlr_400x400.jpg', 'MSP', 'MSP', 'Mothership', 'Mothership (MSP)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1401, '0', 0),
(1335, 198458, '/coins/hire/overview', './upload/coinlist/hite.png', 'HIRE', 'HIRE', 'HireMatch', 'HireMatch (HIRE)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1402, '0', 0),
(1336, 198474, '/coins/bbtstar/overview', './upload/coinlist/bbt.png', 'BBT*', 'BBT*', 'BrickBlock', 'BrickBlock (BBT*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1403, '0', 0),
(1337, 198490, '/coins/real/overview', './upload/coinlist/rise.png', 'REAL', 'REAL', 'REAL', 'REAL (REAL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1404, '0', 0),
(1338, 198693, '/coins/dfbt/overview', './upload/coinlist/dfbt.png', 'DFBT', 'DFBT', 'DentalFix', 'DentalFix (DFBT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1405, '0', 0),
(1339, 198698, '/coins/eq/overview', './upload/coinlist/eq.png', 'EQ', 'EQ', 'EQUI', 'EQUI (EQ)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1406, '0', 0),
(1340, 198703, '/coins/wlk/overview', './upload/coinlist/wolk.png', 'WLK', 'WLK', 'Wolk', 'Wolk (WLK)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1407, '0', 0),
(1341, 198967, '/coins/onion/overview', './upload/coinlist/onion.png', 'ONION', 'ONION', 'DeepOnion', 'DeepOnion (ONION)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1409, '0', 0),
(1342, 198983, '/coins/btx/overview', './upload/coinlist/btx.png', 'BTX', 'BTX', 'Bitcore', 'Bitcore (BTX)', 'Time Travel', 'PoW', 0, 2000, 'N/A', 'N/A', 1410, '0', 0),
(1343, 199004, '/coins/ice/overview', './upload/coinlist/46b-uaba_400x400.jpg', 'ICE', 'ICE', 'iDice', 'iDice (ICE)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1411, '0', 0),
(1344, 199026, '/coins/xid/overview', './upload/coinlist/xid.jpg', 'XID', 'XID', 'Sphre AIR', 'Sphre AIR (XID)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1412, '0', 0),
(1345, 199065, '/coins/gcn/overview', './upload/coinlist/gcn.png', 'GCN', 'GCN', 'gCn Coin', 'gCn Coin (GCN)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1413, '0', 0),
(1346, 199107, '/coins/atomstar/overview', './upload/coinlist/cosmos.jpg', 'ATOM*', 'ATOM*', 'Cosmos', 'Cosmos (ATOM*)', 'PoS', 'N/A', 0, 2000, 'N/A', 'N/A', 1414, '0', 0),
(1347, 199363, '/coins/icoo/overview', './upload/coinlist/icoo.jpg', 'ICOO', 'ICOO', 'ICO OpenLedger', 'ICO OpenLedger (ICOO)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1416, '0', 0),
(1348, 199887, '/coins/tme/overview', './upload/coinlist/tme.png', 'TME', 'TME', 'Timereum', 'Timereum (TME)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1417, '0', 0),
(1349, 199901, '/coins/smart/overview', './upload/coinlist/smart.png', 'SMART', 'SMART', 'SmartCash', 'SmartCash (SMART)', 'Keccak', 'PoW', 0, 2000, 'N/A', 'N/A', 1418, '0', 0),
(1350, 200941, '/coins/sigt/overview', './upload/coinlist/sigt.png', 'SIGT', 'SIGT', 'Signatum', 'Signatum (SIGT)', 'SkunkHash v2 Raptor', 'PoS', 0, 2000, 'N/A', 'N/A', 1419, '0', 0),
(1351, 201676, '/coins/onx/overview', './upload/coinlist/onx.png', 'ONX', 'ONX', 'Onix', 'Onix (ONX)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 1420, '0', 0),
(1352, 201701, '/coins/coe/overview', './upload/coinlist/coe.png', 'COE', 'COE', 'CoEval', 'CoEval (COE)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1421, '0', 0),
(1353, 201896, '/coins/arena/overview', './upload/coinlist/arena.png', 'ARENA', 'ARENA', 'Arena', 'Arena (ARENA)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1422, '0', 0),
(1354, 201962, '/coins/wink/overview', './upload/coinlist/wink.png', 'WINK', 'WINK', 'Wink', 'Wink (WINK)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 1423, '0', 0),
(1355, 202049, '/coins/crm/overview', './upload/coinlist/cream.png', 'CRM', 'CRM', 'Cream', 'Cream (CRM)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1424, '0', 0),
(1356, 202330, '/coins/bch/overview', './upload/coinlist/bch.jpg', 'BCH', 'BCH', 'Bitcoin Cash / BCC', 'Bitcoin Cash / BCC (BCH)', '', 'PoW', 1, 2, 'N/A', 'N/A', 1425, '0', 1),
(1357, 202696, '/coins/dgpt/overview', './upload/coinlist/dgt.png', 'DGPT', 'DGPT', 'DigiPulse', 'DigiPulse (DGPT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1426, '0', 0),
(1358, 202706, '/coins/mobi/overview', './upload/coinlist/mobi.png', 'MOBI', 'MOBI', 'Mobius', 'Mobius (MOBI)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1427, '0', 0),
(1359, 202714, '/coins/csno/overview', './upload/coinlist/csno.png', 'CSNO', 'CSNO', 'BitDice', 'BitDice (CSNO)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1428, '0', 0),
(1360, 202849, '/coins/kick/overview', './upload/coinlist/kick.png', 'KICK', 'KICK', 'KickCoin', 'KickCoin (KICK)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1429, '0', 0),
(1361, 203183, '/coins/sdao/overview', './upload/coinlist/sdao.png', 'SDAO', 'SDAO', 'Solar DAO', 'Solar DAO (SDAO)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1430, '0', 0),
(1362, 204716, '/coins/stx/overview', './upload/coinlist/stx.png', 'STX', 'STX', 'Stox', 'Stox (STX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1431, '0', 0),
(1363, 204788, '/coins/bnb/overview', './upload/coinlist/bnb.png', 'BNB', 'BNB', 'Binance Coin', 'Binance Coin (BNB)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1432, '0', 0),
(1364, 205549, '/coins/core/overview', './upload/coinlist/core.png', 'CORE', 'CORE', 'Core Group Asset', 'Core Group Asset (CORE)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1433, '0', 0),
(1365, 205967, '/coins/kcn/overview', './upload/coinlist/kencoin.png', 'KCN', 'KCN', 'Kencoin', 'Kencoin (KCN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1434, '0', 0),
(1366, 205980, '/coins/qvt/overview', './upload/coinlist/qvt.png', 'QVT', 'QVT', 'Qvolta', 'Qvolta (QVT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1435, '0', 0),
(1367, 205991, '/coins/tie/overview', './upload/coinlist/tie.png', 'TIE', 'TIE', 'Ties Network', 'Ties Network (TIE)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1436, '0', 0),
(1368, 206001, '/coins/aut/overview', './upload/coinlist/aut.png', 'AUT', 'AUT', 'Autoria', 'Autoria (AUT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1437, '0', 0),
(1369, 206009, '/coins/ctt/overview', './upload/coinlist/ctt.png', 'CTT', 'CTT', 'CodeTract', 'CodeTract (CTT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1438, '0', 0),
(1370, 207931, '/coins/grwi/overview', './upload/coinlist/grwi.png', 'GRWI', 'GRWI', 'Growers International', 'Growers International (GRWI)', 'DPoS', 'N/A', 0, 2000, 'N/A', 'N/A', 1439, '0', 0),
(1371, 208001, '/coins/mny/overview', './upload/coinlist/mny.png', 'MNY', 'MNY', 'Monkey', 'Monkey (MNY)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1440, '0', 0),
(1372, 208914, '/coins/mth/overview', './upload/coinlist/mth.png', 'MTH', 'MTH', 'Monetha', 'Monetha (MTH)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1441, '0', 0),
(1373, 210595, '/coins/ccc/overview', './upload/coinlist/ccc.png', 'CCC', 'CCC', 'CCCoin', 'CCCoin (CCC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1442, '0', 0),
(1374, 213100, '/coins/umc/overview', './upload/coinlist/umb.png', 'UMC', 'UMC', 'Umbrella Coin', 'Umbrella Coin (UMC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1443, '0', 0),
(1375, 213113, '/coins/bmxt/overview', './upload/coinlist/bmxt.png', 'BMXT', 'BMXT', 'Bitmxittz', 'Bitmxittz (BMXT)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1444, '0', 0),
(1376, 213532, '/coins/gas/overview', './upload/coinlist/neo.jpg', 'GAS', 'GAS', 'Gas', 'Gas (GAS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1445, '0', 0),
(1377, 213663, '/coins/fil/overview', './upload/coinlist/fil.png', 'FIL', 'FIL', 'FileCoin', 'FileCoin (FIL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1446, '0', 0),
(1378, 214738, '/coins/ocl/overview', './upload/coinlist/ocl.png', 'OCL', 'OCL', 'Oceanlab', 'Oceanlab (OCL)', 'N/A', 'DPoS/LPoS', 0, 2000, 'N/A', 'N/A', 1447, '0', 0),
(1379, 215570, '/coins/bnc/overview', './upload/coinlist/bnc.png', 'BNC', 'BNC', 'Benjacoin', 'Benjacoin (BNC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1448, '0', 0),
(1380, 215602, '/coins/tom/overview', './upload/coinlist/tom.png', 'TOM', 'TOM', 'Tomahawkcoin', 'Tomahawkcoin (TOM)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1449, '0', 0),
(1381, 218008, '/coins/btmstar/overview', './upload/coinlist/btm.png', 'BTM*', 'BTM*', 'Bytom', 'Bytom (BTM*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1450, '0', 0),
(1382, 218107, '/coins/xas/overview', './upload/coinlist/xas.png', 'XAS', 'XAS', 'Asch', 'Asch (XAS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1451, '0', 0),
(1383, 218221, '/coins/smnx/overview', './upload/coinlist/sx.png', 'SMNX', 'SMNX', 'SMNX', 'SMNX (SMNX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1452, '0', 0),
(1384, 218906, '/coins/dcn/overview', './upload/coinlist/dcn.png', 'DCN', 'DCN', 'Dentacoin', 'Dentacoin (DCN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1453, '0', 0),
(1385, 220204, '/coins/dlt/overview', './upload/coinlist/delta.png', 'DLT', 'DLT', 'Agrello Delta', 'Agrello Delta (DLT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1454, '0', 0),
(1386, 221349, '/coins/mrv/overview', './upload/coinlist/mrv.png', 'MRV', 'MRV', 'Macroverse', 'Macroverse (MRV)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1455, '0', 0),
(1387, 221350, '/coins/mbrs/overview', './upload/coinlist/mbrs.png', 'MBRS', 'MBRS', 'Embers', 'Embers (MBRS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1456, '0', 0),
(1388, 221463, '/coins/sub/overview', './upload/coinlist/sub1.png', 'SUB', 'SUB', 'Substratum Network', 'Substratum Network (SUB)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1457, '0', 0),
(1389, 221605, '/coins/met/overview', './upload/coinlist/met1.png', 'MET', 'MET', 'Memessenger', 'Memessenger (MET)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1458, '0', 0),
(1390, 222085, '/coins/nebl/overview', './upload/coinlist/nebl.png', 'NEBL', 'NEBL', 'Neblio', 'Neblio (NEBL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1460, '0', 0),
(1391, 222125, '/coins/pgl/overview', './upload/coinlist/pgl.png', 'PGL', 'PGL', 'Prospectors', 'Prospectors (PGL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1461, '0', 0),
(1392, 222200, '/coins/auth/overview', './upload/coinlist/auth.png', 'AUTH', 'AUTH', 'Authoreon', 'Authoreon (AUTH)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1463, '0', 0),
(1393, 222436, '/coins/cashstar/overview', './upload/coinlist/cpp.png', 'CASH*', 'CASH*', 'Cash Poker Pro', 'Cash Poker Pro (CASH*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1464, '0', 0),
(1394, 228090, '/coins/cmpco/overview', './upload/coinlist/cmpo.png', 'CMPCO', 'CMPCO', 'CampusCoin', 'CampusCoin (CMPCO)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1465, '0', 0),
(1395, 223644, '/coins/dtct/overview', './upload/coinlist/dtct.png', 'DTCT', 'DTCT', 'DetectorToken', 'DetectorToken (DTCT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1466, '0', 0),
(1396, 225277, '/coins/ctr/overview', './upload/coinlist/ctr.png', 'CTR', 'CTR', 'Centra', 'Centra (CTR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1467, '0', 0),
(1397, 206512, '/coins/wnet/overview', './upload/coinlist/wnet1.png', 'WNET', 'WNET', 'Wavesnode.net', 'Wavesnode.net (WNET)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1468, '0', 0),
(1398, 225764, '/coins/prg/overview', './upload/coinlist/prg.png', 'PRG', 'PRG', 'Paragon', 'Paragon (PRG)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1469, '1', 0),
(1399, 228146, '/coins/thnx/overview', './upload/coinlist/thnx.jpg', 'THNX', 'THNX', 'ThankYou', 'ThankYou (THNX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1470, '0', 0),
(1400, 228162, '/coins/worm/overview', './upload/coinlist/worm.png', 'WORM', 'WORM', 'HealthyWorm', 'HealthyWorm (WORM)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 1471, '0', 0),
(1401, 229307, '/coins/vnt/overview', './upload/coinlist/vent.png', 'VNT', 'VNT', 'Veredictum', 'Veredictum (VNT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1473, '0', 0),
(1402, 229420, '/coins/sift/overview', './upload/coinlist/sift.jpg', 'SIFT', 'SIFT', 'Smart Investment Fund Token', 'Smart Investment Fund Token (SIFT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1474, '0', 0),
(1403, 231674, '/coins/ignis/overview', './upload/coinlist/ignis.png', 'IGNIS', 'IGNIS', 'Ignis', 'Ignis (IGNIS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1475, '0', 0),
(1404, 232556, '/coins/iwt/overview', './upload/coinlist/iwt.png', 'IWT', 'IWT', 'IwToken', 'IwToken (IWT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1476, '0', 0),
(1405, 232607, '/coins/jdc/overview', './upload/coinlist/jdc.png', 'JDC', 'JDC', 'JustDatingSite', 'JustDatingSite (JDC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1477, '0', 0),
(1406, 232678, '/coins/itt/overview', './upload/coinlist/itt.png', 'ITT', 'ITT', 'Intelligent Trading Technologies', 'Intelligent Trading Technologies (ITT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1478, '0', 0),
(1407, 187030, '/coins/aix/overview', './upload/coinlist/aig.png', 'AIX', 'AIX', 'Aigang', 'Aigang (AIX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1483, '0', 0),
(1408, 194883, '/coins/evx/overview', './upload/coinlist/evx.png', 'EVX', 'EVX', 'Everex', 'Everex (EVX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1484, '0', 0),
(1409, 207891, '/coins/entrp/overview', './upload/coinlist/ent.png', 'ENTRP', 'ENTRP', 'Entropy Token', 'Entropy Token (ENTRP)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1488, '0', 0),
(1410, 207775, '/coins/icos/overview', './upload/coinlist/icos1.png', 'ICOS', 'ICOS', 'ICOBox', 'ICOBox (ICOS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1490, '0', 0),
(1411, 223283, '/coins/pix/overview', './upload/coinlist/pix.png', 'PIX', 'PIX', 'Lampix', 'Lampix (PIX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1493, '0', 0),
(1412, 233044, '/coins/medi/overview', './upload/coinlist/medi.png', 'MEDI', 'MEDI', 'MediBond', 'MediBond (MEDI)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1495, '0', 0),
(1413, 234508, '/coins/hgt/overview', './upload/coinlist/hgt.jpg', 'HGT', 'HGT', 'Hello Gold', 'Hello Gold (HGT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1496, '0', 0),
(1414, 234526, '/coins/lta/overview', './upload/coinlist/lta.png', 'LTA', 'LTA', 'Litra', 'Litra (LTA)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1497, '0', 0),
(1415, 234596, '/coins/nimfa/overview', './upload/coinlist/nimfa.jpg', 'NIMFA', 'NIMFA', 'Nimfamoney', 'Nimfamoney (NIMFA)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1498, '0', 0),
(1416, 234659, '/coins/scor/overview', './upload/coinlist/scor.jpg', 'SCOR', 'SCOR', 'Scorista', 'Scorista (SCOR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1499, '0', 0),
(1417, 234707, '/coins/mls/overview', './upload/coinlist/mls.png', 'MLS', 'MLS', 'CPROP', 'CPROP (MLS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1500, '0', 0),
(1418, 234766, '/coins/kex/overview', './upload/coinlist/kex.png', 'KEX', 'KEX', 'KexCoin', 'KexCoin (KEX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1501, '0', 0),
(1419, 234811, '/coins/cob/overview', './upload/coinlist/cobin.png', 'COB', 'COB', 'Cobinhood', 'Cobinhood (COB)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1502, '0', 0),
(1420, 234982, '/coins/bro/overview', './upload/coinlist/bro.png', 'BRO', 'BRO', 'Bitradio', 'Bitradio (BRO)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 1503, '0', 0),
(1421, 235021, '/coins/minex/overview', './upload/coinlist/minex.png', 'MINEX', 'MINEX', 'Minex', 'Minex (MINEX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1504, '0', 0),
(1422, 235213, '/coins/atl/overview', './upload/coinlist/atlant.png', 'ATL', 'ATL', 'ATLANT', 'ATLANT (ATL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1505, '0', 0),
(1423, 235221, '/coins/aristar/overview', './upload/coinlist/ari.png', 'ARI*', 'ARI*', 'BeckSang', 'BeckSang (ARI*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1506, '0', 0),
(1424, 235993, '/coins/magstar/overview', './upload/coinlist/mag.png', 'MAG*', 'MAG*', 'Magos', 'Magos (MAG*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1507, '0', 0),
(1425, 236039, '/coins/dft/overview', './upload/coinlist/dft.png', 'DFT', 'DFT', 'Draftcoin', 'Draftcoin (DFT)', 'Scrypt', 'PoS', 0, 2000, 'N/A', 'N/A', 1508, '0', 0),
(1426, 236131, '/coins/ven/overview', './upload/coinlist/ven.png', 'VEN', 'VEN', 'Vechain', 'Vechain (VEN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1509, '0', 0),
(1427, 236358, '/coins/utk/overview', './upload/coinlist/utrust.png', 'UTK', 'UTK', 'Utrust', 'Utrust (UTK)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1510, '0', 0),
(1428, 237269, '/coins/lat/overview', './upload/coinlist/lat.png', 'LAT', 'LAT', 'Latium', 'Latium (LAT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1511, '0', 0),
(1429, 237385, '/coins/soj/overview', './upload/coinlist/soj.png', 'SOJ', 'SOJ', 'Sojourn Coin', 'Sojourn Coin (SOJ)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1512, '0', 0),
(1430, 237407, '/coins/hdg/overview', './upload/coinlist/hdg.png', 'HDG', 'HDG', 'Hedge Token', 'Hedge Token (HDG)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1513, '0', 0),
(1431, 237428, '/coins/stcn/overview', './upload/coinlist/stcn.png', 'STCN', 'STCN', 'Stakecoin', 'Stakecoin (STCN)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 1514, '0', 0),
(1432, 237448, '/coins/sqp/overview', './upload/coinlist/sqp.png', 'SQP', 'SQP', 'SqPay', 'SqPay (SQP)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1515, '0', 0),
(1433, 238571, '/coins/riya/overview', './upload/coinlist/riya.png', 'RIYA', 'RIYA', 'Etheriya', 'Etheriya (RIYA)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1516, '0', 0),
(1434, 238622, '/coins/lnk/overview', './upload/coinlist/lnk.png', 'LNK', 'LNK', 'Ethereum.Link', 'Ethereum.Link (LNK)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1517, '0', 0),
(1435, 238733, '/coins/amb/overview', './upload/coinlist/amb.png', 'AMB', 'AMB', 'Ambrosus', 'Ambrosus (AMB)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1518, '0', 0),
(1436, 240142, '/coins/wan/overview', './upload/coinlist/wan.jpg', 'WAN', 'WAN', 'Wanchain', 'Wanchain (WAN)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 1519, '0', 0),
(1437, 240322, '/coins/mnt/overview', './upload/coinlist/mntp.png', 'MNT', 'MNT', 'GoldMint', 'GoldMint (MNT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1520, '0', 0),
(1438, 240439, '/coins/altocar/overview', './upload/coinlist/altc.png', 'ALTOCAR', 'ALTOCAR', 'AltoCar', 'AltoCar (ALTOCAR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1522, '0', 0),
(1439, 241536, '/coins/cftstar/overview', './upload/coinlist/credo.jpg', 'CFT*', 'CFT*', 'Credo', 'Credo (CFT*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1523, '0', 0),
(1440, 241634, '/coins/blx/overview', './upload/coinlist/blx.png', 'BLX', 'BLX', 'Blockchain Index', 'Blockchain Index (BLX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1524, '0', 0),
(1441, 241757, '/coins/bkx/overview', './upload/coinlist/bkx.png', 'BKX', 'BKX', 'BANKEX', 'BANKEX (BKX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1525, '0', 0),
(1442, 241804, '/coins/bou/overview', './upload/coinlist/bou.jpg', 'BOU', 'BOU', 'Boulle', 'Boulle (BOU)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1526, '0', 0),
(1443, 242873, '/coins/oxy/overview', './upload/coinlist/oxy.png', 'OXY', 'OXY', 'Oxycoin', 'Oxycoin (OXY)', 'DPoS', 'DPoS', 0, 2000, 'N/A', 'N/A', 1527, '0', 0),
(1444, 243045, '/coins/amt/overview', './upload/coinlist/amt.jpg', 'AMT', 'AMT', 'Acumen', 'Acumen (AMT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1529, '0', 0),
(1445, 243079, '/coins/gim/overview', './upload/coinlist/gim.png', 'GIM', 'GIM', 'Gimli', 'Gimli (GIM)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1530, '0', 0),
(1446, 247246, '/coins/lbtc/overview', './upload/coinlist/lbtc.png', 'LBTC', 'LBTC', 'LiteBitcoin', 'LiteBitcoin (LBTC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1533, '0', 0),
(1447, 247259, '/coins/fraz/overview', './upload/coinlist/fraz.png', 'FRAZ', 'FRAZ', 'FrazCoin', 'FrazCoin (FRAZ)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1534, '0', 0),
(1448, 247322, '/coins/emt/overview', './upload/coinlist/emt.png', 'EMT', 'EMT', 'EasyMine', 'EasyMine (EMT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1535, '0', 0),
(1449, 247350, '/coins/gxc/overview', './upload/coinlist/gxc.png', 'GXC', 'GXC', 'Gx Coin', 'Gx Coin (GXC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1536, '0', 0),
(1450, 247391, '/coins/hbt/overview', './upload/coinlist/hbt.png', 'HBT', 'HBT', 'Hubiit', 'Hubiit (HBT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1537, '0', 0),
(1451, 247703, '/coins/krone/overview', './upload/coinlist/krone.png', 'KRONE', 'KRONE', 'Kronecoin', 'Kronecoin (KRONE)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1538, '0', 0),
(1452, 248243, '/coins/srt/overview', './upload/coinlist/srt.png', 'SRT', 'SRT', 'Scrypto', 'Scrypto (SRT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1539, '0', 0),
(1453, 248300, '/coins/ava/overview', './upload/coinlist/ava.png', 'AVA', 'AVA', 'Avalon', 'Avalon (AVA)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1540, '0', 0),
(1454, 249784, '/coins/bt/overview', './upload/coinlist/bt.png', 'BT', 'BT', 'BuildTeam', 'BuildTeam (BT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1541, '0', 0),
(1455, 249821, '/coins/acc/overview', './upload/coinlist/acc.jpg', 'ACC', 'ACC', 'AdCoin', 'AdCoin (ACC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1542, '0', 0),
(1456, 252359, '/coins/z2/overview', './upload/coinlist/z2.png', 'Z2', 'Z2', 'Z2 Coin', 'Z2 Coin (Z2)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 1544, '0', 0),
(1457, 253667, '/coins/linx/overview', './upload/coinlist/linx.png', 'LINX', 'LINX', 'Linx', 'Linx (LINX)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1545, '0', 0),
(1458, 253688, '/coins/xcxt/overview', './upload/coinlist/xcxt.png', 'XCXT', 'XCXT', 'CoinonatX', 'CoinonatX (XCXT)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1546, '0', 0),
(1459, 253707, '/coins/blas/overview', './upload/coinlist/blas.png', 'BLAS', 'BLAS', 'BlakeStar', 'BlakeStar (BLAS)', 'Blake2S', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1547, '0', 0),
(1460, 253766, '/coins/good/overview', './upload/coinlist/good.png', 'GOOD', 'GOOD', 'GoodCoin', 'GoodCoin (GOOD)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1548, '0', 0),
(1461, 255293, '/coins/trv/overview', './upload/coinlist/trv.png', 'TRV', 'TRV', 'Travel Coin', 'Travel Coin (TRV)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1550, '0', 0),
(1462, 255489, '/coins/crtm/overview', './upload/coinlist/crtm.jpg', 'CRTM', 'CRTM', 'Cryptum', 'Cryptum (CRTM)', 'N/A', 'Proof of Ownership', 0, 2000, 'N/A', 'N/A', 1551, '0', 0),
(1463, 255777, '/coins/pst/overview', './upload/coinlist/pst.jpg', 'PST', 'PST', 'Primas', 'Primas (PST)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1553, '0', 0),
(1464, 257110, '/coins/mtx/overview', './upload/coinlist/mtx.png', 'MTX', 'MTX', 'Matryx', 'Matryx (MTX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1554, '0', 0),
(1465, 257772, '/coins/prix/overview', './upload/coinlist/prix.png', 'PRIX', 'PRIX', 'Privatix', 'Privatix (PRIX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1555, '0', 0),
(1466, 278056, '/coins/ctx/overview', './upload/coinlist/ctx1.png', 'CTX', 'CTX', 'CarTaxi', 'CarTaxi (CTX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1556, '0', 0),
(1467, 283116, '/coins/enj/overview', './upload/coinlist/enjt.png', 'ENJ', 'ENJ', 'Enjin Coin', 'Enjin Coin (ENJ)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1561, '0', 0),
(1468, 289715, '/coins/cnx/overview', './upload/coinlist/cnx.png', 'CNX', 'CNX', 'Cryptonex', 'Cryptonex (CNX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1562, '0', 0),
(1469, 290053, '/coins/drc/overview', './upload/coinlist/drp.png', 'DRC', 'DRC', 'Dropcoin', 'Dropcoin (DRC)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 1563, '0', 0),
(1470, 292748, '/coins/fuel/overview', './upload/coinlist/fuel.png', 'FUEL', 'FUEL', 'Etherparty', 'Etherparty (FUEL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1564, '0', 0),
(1471, 294364, '/coins/ace/overview', './upload/coinlist/ace.png', 'ACE', 'ACE', 'TokenStars', 'TokenStars (ACE)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1565, '0', 0),
(1472, 296844, '/coins/wrc/overview', './upload/coinlist/wrc.png', 'WRC', 'WRC', 'Worldcore', 'Worldcore (WRC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1566, '0', 0),
(1473, 299397, '/coins/wtc/overview', './upload/coinlist/wtc.png', 'WTC', 'WTC', 'Waltonchain', 'Waltonchain (WTC)', 'Ethash', 'N/A', 0, 2000, 'N/A', 'N/A', 1567, '0', 0),
(1474, 299415, '/coins/brx/overview', './upload/coinlist/brx.png', 'BRX', 'BRX', 'Breakout Stake', 'Breakout Stake (BRX)', 'N/A', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1568, '0', 0),
(1475, 299774, '/coins/ucash/overview', './upload/coinlist/xuc.png', 'UCASH', 'UCASH', 'U.CASH', 'U.CASH (UCASH)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1569, '0', 0),
(1476, 299811, '/coins/wrt/overview', './upload/coinlist/wrt.png', 'WRT', 'WRT', 'WRTcoin', 'WRTcoin (WRT)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 1570, '0', 0),
(1477, 301112, '/coins/orme/overview', './upload/coinlist/omes.png', 'ORME', 'ORME', 'Ormeus Coin', 'Ormeus Coin (ORME)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1571, '0', 0),
(1478, 301119, '/coins/deep/overview', './upload/coinlist/deep.png', 'DEEP', 'DEEP', 'Deep Gold', 'Deep Gold (DEEP)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1572, '0', 0),
(1479, 301150, '/coins/tmt/overview', './upload/coinlist/tmt.png', 'TMT', 'TMT', 'ToTheMoon', 'ToTheMoon (TMT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1573, '0', 0),
(1480, 301216, '/coins/wsh/overview', './upload/coinlist/wish.png', 'WSH', 'WSH', 'Wish Finance', 'Wish Finance (WSH)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1575, '0', 0),
(1481, 303888, '/coins/arna/overview', './upload/coinlist/arna.png', 'ARNA', 'ARNA*', 'ARNA Panacea', 'ARNA Panacea (ARNA)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1576, '0', 0),
(1482, 303943, '/coins/abc/overview', './upload/coinlist/bac.png', 'ABC', 'ABC', 'AB-Chain', 'AB-Chain (ABC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1577, '0', 0),
(1483, 304147, '/coins/prp/overview', './upload/coinlist/prp.png', 'PRP', 'PRP', 'Papyrus', 'Papyrus (PRP)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1578, '0', 0),
(1484, 304184, '/coins/bmc/overview', './upload/coinlist/bmc.png', 'BMC', 'BMC', 'Blackmoon Crypto', 'Blackmoon Crypto (BMC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1579, '0', 0),
(1485, 304605, '/coins/skrstar/overview', './upload/coinlist/skr.png', 'SKR*', 'SKR*', 'Skrilla Token', 'Skrilla Token (SKR*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1580, '0', 0),
(1486, 304693, '/coins/3des/overview', './upload/coinlist/3des.png', '3DES', '3DES', '3DES', '3DES (3DES)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1581, '0', 0),
(1487, 304833, '/coins/pyn/overview', './upload/coinlist/pyn.png', 'PYN', 'PYN', 'Paycentos', 'Paycentos (PYN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1582, '0', 0),
(1488, 305047, '/coins/kapu/overview', './upload/coinlist/logo_500x500.png', 'KAPU', 'KAPU', 'Kapu', 'Kapu (KAPU)', 'DPoS', 'DPoS', 0, 2000, 'N/A', 'N/A', 1583, '0', 0),
(1489, 305252, '/coins/sense/overview', './upload/coinlist/sense.png', 'SENSE', 'SENSE', 'Sense Token', 'Sense Token (SENSE)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1584, '0', 0),
(1490, 306482, '/coins/vee/overview', './upload/coinlist/vee.png', 'VEE', 'VEE', 'BLOCKv', 'BLOCKv (VEE)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1586, '0', 0);
INSERT INTO `dbt_cryptocoin` (`id`, `cid`, `url`, `image`, `name`, `symbol`, `coin_name`, `full_name`, `algorithm`, `proof_type`, `show_home`, `coin_position`, `premined_value`, `total_coins_freefloat`, `rank`, `sponsored`, `status`) VALUES
(1491, 307112, '/coins/fc/overview', './upload/coinlist/fc.png', 'FC', 'FC', 'Facecoin', 'Facecoin (FC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1587, '0', 0),
(1492, 307219, '/coins/rcn/overview', './upload/coinlist/rnc.png', 'RCN', 'RCN', 'Ripio', 'Ripio (RCN)', 'N/A', 'PoW', 0, 2000, 'N/A', 'N/A', 1588, '0', 0),
(1493, 307406, '/coins/nrn/overview', './upload/coinlist/nrn.png', 'NRN', 'NRN', 'Doc.ai Neuron', 'Doc.ai Neuron (NRN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1589, '0', 0),
(1494, 308072, '/coins/evc/overview', './upload/coinlist/evc.png', 'EVC', 'EVC', 'Eventchain', 'Eventchain (EVC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1590, '0', 0),
(1495, 309621, '/coins/link/overview', './upload/coinlist/link.png', 'LINK', 'LINK', 'ChainLink', 'ChainLink (LINK)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1591, '0', 0),
(1496, 310052, '/coins/wiz/overview', './upload/coinlist/wiz.png', 'WIZ', 'WIZ', 'Crowdwiz', 'Crowdwiz (WIZ)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 1592, '0', 0),
(1497, 310297, '/coins/edo/overview', './upload/coinlist/eiboo.png', 'EDO', 'EDO', 'Eidoo', 'Eidoo (EDO)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1593, '0', 0),
(1498, 310392, '/coins/atkn/overview', './upload/coinlist/atkn.png', 'ATKN', 'ATKN', 'A-Token', 'A-Token (ATKN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1594, '0', 0),
(1499, 310497, '/coins/knc/overview', './upload/coinlist/knc.png', 'KNC', 'KNC', 'Kyber Network', 'Kyber Network (KNC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1595, '0', 0),
(1500, 310553, '/coins/rustbits/overview', './upload/coinlist/rustbits.png', 'RUSTBITS', 'RUSTBITS', 'Rustbits', 'Rustbits (RUSTBITS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1596, '0', 0),
(1501, 310589, '/coins/rex/overview', './upload/coinlist/rex.png', 'REX', 'REX', 'REX', 'REX (REX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1597, '0', 0),
(1502, 310754, '/coins/ethd/overview', './upload/coinlist/ethd.png', 'ETHD', 'ETHD', 'Ethereum Dark', 'Ethereum Dark (ETHD)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1598, '0', 0),
(1503, 310812, '/coins/sumo/overview', './upload/coinlist/sumo.png', 'SUMO', 'SUMO', 'Sumokoin', 'Sumokoin (SUMO)', 'CryptoNight', 'PoW', 0, 2000, 'N/A', 'N/A', 1599, '0', 0),
(1504, 310829, '/coins/trx/overview', './upload/coinlist/trx.png', 'TRX', 'TRX', 'Tronix', 'Tronix (TRX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1600, '0', 0),
(1505, 310852, '/coins/8s/overview', './upload/coinlist/8s.png', '8S', '8S', 'Elite 888', 'Elite 888 (8S)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1601, '0', 0),
(1506, 310867, '/coins/h2o/overview', './upload/coinlist/h2o.png', 'H2O', 'H2O', 'Hydrominer', 'Hydrominer (H2O)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1602, '0', 0),
(1507, 311176, '/coins/tkt/overview', './upload/coinlist/tkt.png', 'TKT', 'TKT', 'Crypto Tickets', 'Crypto Tickets (TKT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1603, '0', 0),
(1508, 311516, '/coins/rhea/overview', './upload/coinlist/rhea.png', 'RHEA', 'RHEA', 'Rhea', 'Rhea (RHEA)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1604, '0', 0),
(1509, 311558, '/coins/art/overview', './upload/coinlist/art.png', 'ART', 'ART', 'Maecenas', 'Maecenas (ART)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1605, '0', 0),
(1510, 311829, '/coins/drt/overview', './upload/coinlist/drt.png', 'DRT', 'DRT', 'DomRaider', 'DomRaider (DRT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1606, '0', 0),
(1511, 311853, '/coins/snov/overview', './upload/coinlist/snov.png', 'SNOV', 'SNOV', 'Snovio', 'Snovio (SNOV)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1607, '0', 0),
(1512, 313176, '/coins/dtt/overview', './upload/coinlist/dtt.png', 'DTT', 'DTT', 'DreamTeam Token', 'DreamTeam Token (DTT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1608, '0', 0),
(1513, 313967, '/coins/mtn/overview', './upload/coinlist/mtn.png', 'MTN', 'MTN', 'TrackNetToken', 'TrackNetToken (MTN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1609, '0', 0),
(1514, 313988, '/coins/stockbet/overview', './upload/coinlist/stockbet.png', 'STOCKBET', 'STOCKBET', 'StockBet', 'StockBet (STOCKBET)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1610, '0', 0),
(1515, 314331, '/coins/plm/overview', './upload/coinlist/plm.jpg', 'PLM', 'PLM', 'Algo.Land', 'Algo.Land (PLM)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 1611, '0', 0),
(1516, 314580, '/coins/salt/overview', './upload/coinlist/salt.jpg', 'SALT', 'SALT', 'Salt Lending', 'Salt Lending (SALT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1613, '0', 0),
(1517, 314865, '/coins/snd/overview', './upload/coinlist/snd.png', 'SND', 'SND', 'Sandcoin', 'Sandcoin (SND)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1614, '0', 0),
(1518, 318154, '/coins/xp/overview', './upload/coinlist/xp.png', 'XP', 'XP', 'Experience Points', 'Experience Points (XP)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1616, '0', 0),
(1519, 318169, '/coins/lrc/overview', './upload/coinlist/lrc.png', 'LRC', 'LRC', 'Loopring', 'Loopring (LRC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1617, '0', 0),
(1520, 318199, '/coins/hsr/overview', './upload/coinlist/hsr.png', 'HSR', 'HSR', 'Hshare', 'Hshare (HSR)', 'N/A', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1618, '0', 0),
(1521, 318704, '/coins/gla/overview', './upload/coinlist/gla.png', 'GLA', 'GLA', 'Gladius', 'Gladius (GLA)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1619, '0', 0),
(1522, 318794, '/coins/zna/overview', './upload/coinlist/zna.png', 'ZNA', 'ZNA', 'Zenome', 'Zenome (ZNA)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1620, '0', 0),
(1523, 319029, '/coins/ezm/overview', './upload/coinlist/ezm.png', 'EZM', 'EZM', 'EZMarket', 'EZMarket (EZM)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1621, '0', 0),
(1524, 319075, '/coins/odn/overview', './upload/coinlist/odn.png', 'ODN', 'ODN', 'Obsidian', 'Obsidian (ODN)', 'SHA-512', 'PoS', 0, 2000, 'N/A', 'N/A', 1622, '0', 0),
(1525, 319130, '/coins/poll/overview', './upload/coinlist/poll.png', 'POLL', 'POLL', 'ClearPoll', 'ClearPoll (POLL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1623, '0', 0),
(1526, 319238, '/coins/mtk/overview', './upload/coinlist/mtk.png', 'MTK', 'MTK', 'Moya Token', 'Moya Token (MTK)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1624, '0', 0),
(1527, 319254, '/coins/cas/overview', './upload/coinlist/cas.png', 'CAS', 'CAS', 'Cashaa', 'Cashaa (CAS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1625, '0', 0),
(1528, 320036, '/coins/mat/overview', './upload/coinlist/mat.png', 'MAT', 'MAT', 'MiniApps', 'MiniApps (MAT)', 'N/A', 'PoW', 0, 2000, 'N/A', 'N/A', 1626, '0', 0),
(1529, 320412, '/coins/gjc/overview', './upload/coinlist/gjc.png', 'GJC', 'GJC', 'Global Jobcoin', 'Global Jobcoin (GJC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1628, '0', 0),
(1530, 320551, '/coins/wic/overview', './upload/coinlist/ocfkmb0t_400x400.jpg', 'WIC', 'WIC', 'Wi Coin', 'Wi Coin (WIC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1629, '0', 0),
(1531, 320596, '/coins/web/overview', './upload/coinlist/web.png', 'WEB', 'WEB', 'Webcoin', 'Webcoin (WEB)', 'N/A', 'PoW', 0, 2000, 'N/A', 'N/A', 1630, '0', 0),
(1532, 320621, '/coins/wand/overview', './upload/coinlist/wandxlogo_new1.png', 'WAND', 'WAND', 'WandX', 'WandX (WAND)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1631, '0', 0),
(1533, 321177, '/coins/elix/overview', './upload/coinlist/elix.png', 'ELIX', 'ELIX', 'Elixir', 'Elixir (ELIX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1632, '0', 0),
(1534, 321347, '/coins/hac/overview', './upload/coinlist/hac.jpg', 'HAC', 'HAC', 'Hackspace Capital', 'Hackspace Capital (HAC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1634, '0', 0),
(1535, 321992, '/coins/ada/overview', './upload/coinlist/ada.png', 'ADA', 'ADA', 'Cardano', 'Cardano (ADA)', 'Ouroboros', 'PoS', 0, 2000, 'N/A', 'N/A', 1635, '0', 0),
(1536, 322002, '/coins/yoyow/overview', './upload/coinlist/yoyow.png', 'YOYOW', 'YOYOW', 'Yoyow', 'Yoyow (YOYOW)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1636, '0', 0),
(1537, 322013, '/coins/rec/overview', './upload/coinlist/rec.png', 'REC', 'REC', 'Regalcoin', 'Regalcoin (REC)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1637, '0', 0),
(1538, 322963, '/coins/bis/overview', './upload/coinlist/bis.png', 'BIS', 'BIS', 'Bismuth', 'Bismuth (BIS)', 'N/A', 'PoW', 0, 2000, 'N/A', 'N/A', 1638, '0', 0),
(1539, 323787, '/coins/opp/overview', './upload/coinlist/opp.png', 'OPP', 'OPP', 'Opporty', 'Opporty (OPP)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1639, '0', 0),
(1540, 323817, '/coins/rock/overview', './upload/coinlist/rock.png', 'ROCK', 'ROCK', 'Ice Rock Mining', 'Ice Rock Mining (ROCK)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1640, '0', 0),
(1541, 324068, '/coins/icx/overview', './upload/coinlist/icx.png', 'ICX', 'ICX', 'ICON Project', 'ICON Project (ICX)', 'N/A', 'LFT', 0, 2000, 'N/A', 'N/A', 1642, '0', 0),
(1542, 325279, '/coins/vsx/overview', './upload/coinlist/vsx.png', 'VSX', 'VSX', 'Vsync', 'Vsync (VSX)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1643, '0', 0),
(1543, 326082, '/coins/wishstar/overview', './upload/coinlist/wish.png', 'WISH*', 'WISH*', 'WishFinance', 'WishFinance (WISH*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1644, '0', 0),
(1544, 326222, '/coins/flash/overview', './upload/coinlist/flash.png', 'FLASH', 'FLASH', 'FLASH coin', 'FLASH coin (FLASH)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1645, '0', 0),
(1545, 327184, '/coins/btcz/overview', './upload/coinlist/btcz.png', 'BTCZ', 'BTCZ', 'BitcoinZ', 'BitcoinZ (BTCZ)', 'Equihash', 'PoW', 0, 2000, 'N/A', 'N/A', 1647, '0', 0),
(1546, 327250, '/coins/czc/overview', './upload/coinlist/czc.png', 'CZC', 'CZC', 'Crazy Coin', 'Crazy Coin (CZC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1648, '0', 0),
(1547, 327500, '/coins/ppp/overview', './upload/coinlist/ppp.png', 'PPP', 'PPP', 'PayPie', 'PayPie (PPP)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1649, '0', 0),
(1548, 327608, '/coins/guess/overview', './upload/coinlist/guess.png', 'GUESS', 'GUESS', 'Peerguess', 'Peerguess (GUESS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1650, '0', 0),
(1549, 327632, '/coins/can/overview', './upload/coinlist/canya.png', 'CAN', 'CAN', 'CanYaCoin', 'CanYaCoin (CAN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1651, '0', 0),
(1550, 328639, '/coins/etp/overview', './upload/coinlist/etp.png', 'ETP', 'ETP', 'Metaverse', 'Metaverse (ETP)', 'Ethash', 'N/A', 0, 2000, 'N/A', 'N/A', 1652, '0', 0),
(1551, 328784, '/coins/ert/overview', './upload/coinlist/ert.png', 'ERT', 'ERT', 'Esports.com', 'Esports.com (ERT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1654, '0', 0),
(1552, 329507, '/coins/bacstar/overview', './upload/coinlist/bac.png', 'BAC*', 'BAC*', 'LakeBanker', 'LakeBanker (BAC*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1655, '0', 0),
(1553, 329562, '/coins/flik/overview', './upload/coinlist/flik.png', 'FLIK', 'FLIK', 'FLiK', 'FLiK (FLIK)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1656, '0', 0),
(1554, 329767, '/coins/trip/overview', './upload/coinlist/trip.png', 'TRIP', 'TRIP', 'Trippki', 'Trippki (TRIP)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1657, '0', 0),
(1555, 330003, '/coins/mbt/overview', './upload/coinlist/mbt.png', 'MBT', 'MBT', 'Multibot', 'Multibot (MBT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1658, '0', 0),
(1556, 331207, '/coins/jvy/overview', './upload/coinlist/jvy.png', 'JVY', 'JVY', 'Javvy', 'Javvy (JVY)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1659, '0', 0),
(1557, 331603, '/coins/alis/overview', './upload/coinlist/alis.png', 'ALIS', 'ALIS', 'ALISmedia', 'ALISmedia (ALIS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1660, '0', 0),
(1558, 332804, '/coins/lev/overview', './upload/coinlist/lev.png', 'LEV', 'LEV', 'Leverj', 'Leverj (LEV)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1661, '0', 0),
(1559, 334856, '/coins/arbi/overview', './upload/coinlist/arbi.png', 'ARBI', 'ARBI', 'Arbi', 'Arbi (ARBI)', 'Ethash', 'N/A', 0, 2000, 'N/A', 'N/A', 1663, '0', 0),
(1560, 334997, '/coins/elt/overview', './upload/coinlist/elt.png', 'ELT', 'ELT', 'Eloplay', 'Eloplay (ELT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1664, '0', 0),
(1561, 335059, '/coins/req/overview', './upload/coinlist/req.png', 'REQ', 'REQ', 'Request Network', 'Request Network (REQ)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1665, '0', 0),
(1562, 335127, '/coins/arn/overview', './upload/coinlist/arn.png', 'ARN', 'ARN', 'Aeron', 'Aeron (ARN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1666, '0', 0),
(1563, 335505, '/coins/dat/overview', './upload/coinlist/dat.png', 'DAT', 'DAT', 'Datum', 'Datum (DAT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1667, '0', 0),
(1564, 336538, '/coins/vibe/overview', './upload/coinlist/vibe.png', 'VIBE', 'VIBE', 'VIBEHub', 'VIBEHub (VIBE)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1668, '0', 0),
(1565, 336556, '/coins/rok/overview', './upload/coinlist/rok.png', 'ROK', 'ROK', 'Rockchain', 'Rockchain (ROK)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1669, '0', 0),
(1566, 336594, '/coins/xred/overview', './upload/coinlist/xred.png', 'XRED', 'XRED', 'X Real Estate Development', 'X Real Estate Development (XRED)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1670, '0', 0),
(1567, 336705, '/coins/day/overview', './upload/coinlist/day.png', 'DAY', 'DAY', 'Chronologic', 'Chronologic (DAY)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1671, '0', 0),
(1568, 337162, '/coins/ast/overview', './upload/coinlist/ast.png', 'AST', 'AST', 'AirSwap', 'AirSwap (AST)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1673, '0', 0),
(1569, 337863, '/coins/flp/overview', './upload/coinlist/flip.png', 'FLP', 'FLP', 'Gameflip', 'Gameflip (FLP)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1674, '0', 0),
(1570, 338018, '/coins/hxt/overview', './upload/coinlist/hxt.png', 'HXT', 'HXT', 'HextraCoin', 'HextraCoin (HXT)', 'Scrypt', 'N/A', 0, 2000, 'N/A', 'N/A', 1675, '0', 0),
(1571, 338070, '/coins/cnd/overview', './upload/coinlist/cnd.png', 'CND', 'CND', 'Cindicator', 'Cindicator (CND)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1676, '0', 0),
(1572, 338140, '/coins/vrp/overview', './upload/coinlist/vrt.png', 'VRP', 'VRP*', 'Prosense.tv', 'Prosense.tv (VRP)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1677, '0', 0),
(1573, 338156, '/coins/ntm/overview', './upload/coinlist/ntm.png', 'NTM', 'NTM', 'NetM', 'NetM (NTM)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1678, '0', 0),
(1574, 338180, '/coins/tzc/overview', './upload/coinlist/tzc.png', 'TZC', 'TZC', 'TrezarCoin', 'TrezarCoin (TZC)', 'NeoScrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1679, '0', 0),
(1575, 338335, '/coins/eng/overview', './upload/coinlist/eng.png', 'ENG', 'ENG', 'Enigma', 'Enigma (ENG)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1680, '0', 0),
(1576, 338415, '/coins/mci/overview', './upload/coinlist/mci.png', 'MCI', 'MCI', 'Musiconomi', 'Musiconomi (MCI)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1681, '0', 0),
(1577, 338426, '/coins/cov/overview', './upload/coinlist/cov.png', 'COV', 'COV', 'Covesting', 'Covesting (COV)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1682, '0', 0),
(1578, 338541, '/coins/wax/overview', './upload/coinlist/wax.png', 'WAX', 'WAX', 'Worldwide Asset eXchange', 'Worldwide Asset eXchange (WAX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1683, '0', 0),
(1579, 338555, '/coins/air/overview', './upload/coinlist/air.png', 'AIR', 'AIR', 'AirToken', 'AirToken (AIR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1684, '0', 0),
(1580, 339406, '/coins/nto/overview', './upload/coinlist/nto.png', 'NTO', 'NTO', 'Fujinto', 'Fujinto (NTO)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1685, '0', 0),
(1581, 339419, '/coins/atcc/overview', './upload/coinlist/atcc.png', 'ATCC', 'ATCC', 'ATC Coin', 'ATC Coin (ATCC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1686, '0', 0),
(1582, 339431, '/coins/kolion/overview', './upload/coinlist/kolion.png', 'KOLION', 'KOLION', 'Kolion', 'Kolion (KOLION)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1687, '0', 0),
(1583, 339533, '/coins/wild/overview', './upload/coinlist/wild.png', 'WILD', 'WILD', 'Wild Crypto', 'Wild Crypto (WILD)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1688, '0', 0),
(1584, 339581, '/coins/eltc2/overview', './upload/coinlist/eltc2.png', 'ELTC2', 'ELTC2', 'eLTC', 'eLTC (ELTC2)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1689, '0', 0),
(1585, 339598, '/coins/ilct/overview', './upload/coinlist/ilct.png', 'ILCT', 'ILCT', 'ILCoin Token', 'ILCoin Token (ILCT)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 1690, '0', 0),
(1586, 339617, '/coins/powr/overview', './upload/coinlist/powr.png', 'POWR', 'POWR', 'Power Ledger', 'Power Ledger (POWR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1691, '0', 0),
(1587, 339632, '/coins/c20/overview', './upload/coinlist/c20.png', 'C20', 'C20', 'Crypto20', 'Crypto20 (C20)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1692, '0', 0),
(1588, 339804, '/coins/ryz/overview', './upload/coinlist/ryz.png', 'RYZ', 'RYZ', 'Anryze', 'Anryze (RYZ)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1693, '0', 0),
(1589, 339847, '/coins/gxcstar/overview', './upload/coinlist/gxc.png', 'GXC*', 'GXC*', 'GenXCoin', 'GenXCoin (GXC*)', 'X15', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1694, '0', 0),
(1590, 339933, '/coins/elm/overview', './upload/coinlist/elm.png', 'ELM', 'ELM', 'Elements', 'Elements (ELM)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 1696, '0', 0),
(1591, 340067, '/coins/ter/overview', './upload/coinlist/ter.png', 'TER', 'TER', 'TerraNovaCoin', 'TerraNovaCoin (TER)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1697, '0', 0),
(1592, 340112, '/coins/xcs/overview', './upload/coinlist/xcs.png', 'XCS', 'XCS', 'CybCSec Coin', 'CybCSec Coin (XCS)', 'POS 3.0', 'PoS', 0, 2000, 'N/A', 'N/A', 1698, '0', 0),
(1593, 340125, '/coins/bq/overview', './upload/coinlist/bq.png', 'BQ', 'BQ', 'Bitqy', 'Bitqy (BQ)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1699, '0', 0),
(1594, 340776, '/coins/cav/overview', './upload/coinlist/cav.png', 'CAV', 'CAV', 'Caviar', 'Caviar (CAV)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1700, '0', 0),
(1595, 340816, '/coins/clout/overview', './upload/coinlist/clout.png', 'CLOUT', 'CLOUT', 'Clout', 'Clout (CLOUT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1701, '0', 0),
(1596, 340872, '/coins/ptcstar/overview', './upload/coinlist/ptc.png', 'PTC*', 'PTC*', 'Propthereum', 'Propthereum (PTC*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1702, '0', 0),
(1597, 340940, '/coins/wabi/overview', './upload/coinlist/wabi.png', 'WABI', 'WABI', 'WaBi', 'WaBi (WABI)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1703, '0', 0),
(1598, 340966, '/coins/evr/overview', './upload/coinlist/evr.png', 'EVR', 'EVR', 'Everus', 'Everus (EVR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1704, '0', 0),
(1599, 341019, '/coins/toa/overview', './upload/coinlist/toacoin.png', 'TOA', 'TOA', 'TOA Coin', 'TOA Coin (TOA)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1705, '0', 0),
(1600, 341059, '/coins/mnz/overview', './upload/coinlist/mnz.png', 'MNZ', 'MNZ', 'Monaize', 'Monaize (MNZ)', 'Equihash', 'PoW/DPoW', 0, 2000, 'N/A', 'N/A', 1706, '0', 0),
(1601, 341205, '/coins/vivo/overview', './upload/coinlist/vivo.png', 'VIVO', 'VIVO', 'VIVO Coin', 'VIVO Coin (VIVO)', 'NeoScrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1707, '0', 0),
(1602, 341267, '/coins/rpx/overview', './upload/coinlist/rpx.png', 'RPX', 'RPX', 'Red Pulse', 'Red Pulse (RPX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1708, '0', 0),
(1603, 341279, '/coins/mda/overview', './upload/coinlist/mda.png', 'MDA', 'MDA', 'Moeda', 'Moeda (MDA)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1709, '0', 0),
(1604, 341328, '/coins/zsc/overview', './upload/coinlist/zsc.png', 'ZSC', 'ZSC', 'Zeusshield', 'Zeusshield (ZSC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1710, '0', 0),
(1605, 341400, '/coins/aurs/overview', './upload/coinlist/aurs.png', 'AURS', 'AURS', 'Aureus', 'Aureus (AURS)', 'Scrypt', 'N/A', 0, 2000, 'N/A', 'N/A', 1711, '0', 0),
(1606, 341422, '/coins/cag/overview', './upload/coinlist/cag1.png', 'CAG', 'CAG', 'Change', 'Change (CAG)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1712, '0', 0),
(1607, 344086, '/coins/pkt/overview', './upload/coinlist/playkey.png', 'PKT', 'PKT', 'Playkey', 'Playkey (PKT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1713, '0', 0),
(1608, 344988, '/coins/inxt/overview', './upload/coinlist/inxt.png', 'INXT', 'INXT', 'Internxt', 'Internxt (INXT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1716, '0', 0),
(1609, 345017, '/coins/ats/overview', './upload/coinlist/ats.png', 'ATS', 'ATS', 'Authorship', 'Authorship (ATS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1717, '0', 0),
(1610, 345065, '/coins/rgc/overview', './upload/coinlist/rgc.png', 'RGC', 'RGC', 'RG Coin', 'RG Coin (RGC)', 'NIST5', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1718, '0', 0),
(1611, 345159, '/coins/ebet/overview', './upload/coinlist/ebet.png', 'EBET', 'EBET', 'EthBet', 'EthBet (EBET)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1719, '0', 0),
(1612, 345420, '/coins/r/overview', './upload/coinlist/r.png', 'R', 'R', 'Revain', 'Revain (R)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1720, '0', 0),
(1613, 345510, '/coins/mod/overview', './upload/coinlist/mod.png', 'MOD', 'MOD', 'Modum', 'Modum (MOD)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1721, '0', 0),
(1614, 345544, '/coins/bmstar/overview', './upload/coinlist/bm.png', 'BM*', 'BM*', 'Bitcomo', 'Bitcomo (BM*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1722, '0', 0),
(1615, 345674, '/coins/cpay/overview', './upload/coinlist/cpay.png', 'CPAY', 'CPAY', 'CryptoPay', 'CryptoPay (CPAY)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1723, '0', 0),
(1616, 345801, '/coins/rup/overview', './upload/coinlist/rup.jpg', 'RUP', 'RUP', 'Rupee', 'Rupee (RUP)', 'Lyra2REv2', 'PoW', 0, 2000, 'N/A', 'N/A', 1724, '0', 0),
(1617, 346775, '/coins/bon/overview', './upload/coinlist/bon.png', 'BON', 'BON*', 'Bonpay', 'Bonpay (BON)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1725, '0', 0),
(1618, 346812, '/coins/appc/overview', './upload/coinlist/app.png', 'APPC', 'APPC', 'AppCoins', 'AppCoins (APPC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1726, '0', 0),
(1619, 347067, '/coins/whl/overview', './upload/coinlist/whl.png', 'WHL', 'WHL', 'WhaleCoin', 'WhaleCoin (WHL)', 'Ethash', 'PoW', 0, 2000, 'N/A', 'N/A', 1727, '0', 0),
(1620, 347247, '/coins/up/overview', './upload/coinlist/up.png', 'UP', 'UP', 'UpToken', 'UpToken (UP)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1730, '0', 0),
(1621, 347450, '/coins/etg/overview', './upload/coinlist/etg.png', 'ETG', 'ETG', 'Ethereum Gold', 'Ethereum Gold (ETG)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1731, '0', 0),
(1622, 348068, '/coins/women/overview', './upload/coinlist/women.png', 'WOMEN', 'WOMEN', 'WomenCoin', 'WomenCoin (WOMEN)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1732, '0', 0),
(1623, 348094, '/coins/may/overview', './upload/coinlist/may.png', 'MAY', 'MAY', 'Theresa May Coin', 'Theresa May Coin (MAY)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1733, '0', 0),
(1624, 348131, '/coins/rndr/overview', './upload/coinlist/rndr.png', 'RNDR', 'RNDR', 'Render Token', 'Render Token (RNDR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1734, '0', 0),
(1625, 348256, '/coins/eddie/overview', './upload/coinlist/eddie.png', 'EDDIE', 'EDDIE', 'Eddie coin', 'Eddie coin (EDDIE)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1735, '0', 0),
(1626, 348278, '/coins/sctstar/overview', './upload/coinlist/sct.png', 'SCT*', 'SCT*', 'Soma', 'Soma (SCT*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1736, '0', 0),
(1627, 348289, '/coins/namo/overview', './upload/coinlist/namo.png', 'NAMO', 'NAMO', 'NamoCoin', 'NamoCoin (NAMO)', 'NIST5', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1737, '0', 0),
(1628, 348628, '/coins/kcs/overview', './upload/coinlist/kcs.png', 'KCS', 'KCS', 'Kucoin', 'Kucoin (KCS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1738, '0', 0),
(1629, 349487, '/coins/gat/overview', './upload/coinlist/gat.png', 'GAT', 'GAT', 'GATCOIN', 'GATCOIN (GAT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1739, '0', 0),
(1630, 350048, '/coins/blue/overview', './upload/coinlist/blue.png', 'BLUE', 'BLUE', 'Ethereum Blue', 'Ethereum Blue (BLUE)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1740, '0', 0),
(1631, 350394, '/coins/fllw/overview', './upload/coinlist/fllw.png', 'FLLW', 'FLLW', 'Follow Coin', 'Follow Coin (FLLW)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1742, '0', 0),
(1632, 350395, '/coins/wyr/overview', './upload/coinlist/wyr.png', 'WYR', 'WYR', 'Wyrify', 'Wyrify (WYR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1743, '0', 0),
(1633, 350476, '/coins/vzt/overview', './upload/coinlist/vzt.png', 'VZT', 'VZT', 'Vezt', 'Vezt (VZT)', 'N/A', 'PoW', 0, 2000, 'N/A', 'N/A', 1744, '0', 0),
(1634, 351078, '/coins/indi/overview', './upload/coinlist/indi.png', 'INDI', 'INDI', 'IndiCoin', 'IndiCoin (INDI)', 'N/A', 'PoW', 0, 2000, 'N/A', 'N/A', 1745, '0', 0),
(1635, 351720, '/coins/lux/overview', './upload/coinlist/lux.png', 'LUX', 'LUX', 'LUXCoin', 'LUXCoin (LUX)', 'PHI1612', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1748, '0', 0),
(1636, 354771, '/coins/bar/overview', './upload/coinlist/bar.png', 'BAR', 'BAR', 'TBIS token', 'TBIS token (BAR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1749, '0', 0),
(1637, 355019, '/coins/pirl/overview', './upload/coinlist/pirl.png', 'PIRL', 'PIRL', 'Pirl', 'Pirl (PIRL)', 'Dagger', 'PoW', 0, 2000, 'N/A', 'N/A', 1750, '0', 0),
(1638, 355117, '/coins/ecash/overview', './upload/coinlist/ecash.png', 'ECASH', 'ECASH', 'Ethereum Cash', 'Ethereum Cash (ECASH)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1751, '0', 0),
(1639, 355702, '/coins/drgn/overview', './upload/coinlist/drgn.png', 'DRGN', 'DRGN', 'Dragonchain', 'Dragonchain (DRGN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1753, '0', 0),
(1640, 357404, '/coins/odmc/overview', './upload/coinlist/odmcoin.png', 'ODMC', 'ODMC', 'ODMCoin', 'ODMCoin (ODMC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1754, '0', 0),
(1641, 357413, '/coins/cabsstar/overview', './upload/coinlist/ctst.png', 'CABS*', 'CABS*', 'CyberTrust', 'CyberTrust (CABS*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1755, '0', 0),
(1642, 357734, '/coins/brat/overview', './upload/coinlist/brat.png', 'BRAT', 'BRAT', 'Brat', 'Brat (BRAT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1756, '0', 0),
(1643, 360063, '/coins/dtr/overview', './upload/coinlist/dtr.png', 'DTR', 'DTR', 'Dynamic Trading Rights', 'Dynamic Trading Rights (DTR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1757, '0', 0),
(1644, 360229, '/coins/tkr/overview', './upload/coinlist/tkr.png', 'TKR', 'TKR', 'CryptoInsight', 'CryptoInsight (TKR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1758, '0', 0),
(1645, 360299, '/coins/key/overview', './upload/coinlist/key.png', 'KEY', 'KEY', 'SelfKey', 'SelfKey (KEY)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1759, '0', 0),
(1646, 360657, '/coins/elite/overview', './upload/coinlist/elite.png', 'ELITE', 'ELITE', 'EthereumLite', 'EthereumLite (ELITE)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1760, '0', 0),
(1647, 360740, '/coins/xios/overview', './upload/coinlist/xios.png', 'XIOS', 'XIOS', 'Xios', 'Xios (XIOS)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1761, '0', 0),
(1648, 360827, '/coins/dovu/overview', './upload/coinlist/dovu.png', 'DOVU', 'DOVU', 'DOVU', 'DOVU (DOVU)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1762, '0', 0),
(1649, 361881, '/coins/etn/overview', './upload/coinlist/electroneum.png', 'ETN', 'ETN', 'Electroneum', 'Electroneum (ETN)', 'N/A', 'PoW', 0, 2000, 'N/A', 'N/A', 1763, '0', 0),
(1650, 362039, '/coins/rea/overview', './upload/coinlist/rea.png', 'REA', 'REA', 'Realisto', 'Realisto (REA)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1764, '0', 0),
(1651, 362627, '/coins/ave/overview', './upload/coinlist/ave.png', 'AVE', 'AVE', 'Avesta', 'Avesta (AVE)', 'Avesta hash', 'PoW', 0, 2000, 'N/A', 'N/A', 1765, '0', 0),
(1652, 362769, '/coins/xnn/overview', './upload/coinlist/xnn.png', 'XNN', 'XNN', 'Xenon', 'Xenon (XNN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1766, '0', 0),
(1653, 362846, '/coins/btdx/overview', './upload/coinlist/btdx.png', 'BTDX', 'BTDX', 'Bitcloud 2.0', 'Bitcloud 2.0 (BTDX)', 'Quark', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1767, '0', 0),
(1654, 363006, '/coins/loan/overview', './upload/coinlist/loan.png', 'LOAN', 'LOAN*', 'Lendoit', 'Lendoit (LOAN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1768, '0', 0),
(1655, 363992, '/coins/zab/overview', './upload/coinlist/zab.png', 'ZAB', 'ZAB', 'ZABERcoin', 'ZABERcoin (ZAB)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1770, '0', 0),
(1656, 364051, '/coins/mdl/overview', './upload/coinlist/mdl-ico.png', 'MDL', 'MDL', 'Modulum', 'Modulum (MDL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1771, '0', 0),
(1657, 364317, '/coins/bt1/overview', './upload/coinlist/btc.png', 'BT1', 'BT1', 'Bitfinex Bitcoin Future', 'Bitfinex Bitcoin Future (BT1)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1772, '0', 0),
(1658, 364348, '/coins/bt2/overview', './upload/coinlist/btc.png', 'BT2', 'BT2', 'Bitcoin SegWit2X', 'Bitcoin SegWit2X (BT2)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1773, '0', 0),
(1659, 364472, '/coins/shp/overview', './upload/coinlist/shp.png', 'SHP', 'SHP', 'Sharpe Capital', 'Sharpe Capital (SHP)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1774, '0', 0),
(1660, 364747, '/coins/jcr/overview', './upload/coinlist/jcr.png', 'JCR', 'JCR', 'Jincor', 'Jincor (JCR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1775, '0', 0),
(1661, 364846, '/coins/xsb/overview', './upload/coinlist/xbs.png', 'XSB', 'XSB', 'Extreme Sportsbook', 'Extreme Sportsbook (XSB)', 'X11', 'PoS', 0, 2000, 'N/A', 'N/A', 1776, '0', 0),
(1662, 368694, '/coins/atm/overview', './upload/coinlist/atm.png', 'ATM', 'ATM', 'ATMChain', 'ATMChain (ATM)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1777, '0', 0),
(1663, 368732, '/coins/ebst/overview', './upload/coinlist/ebst.png', 'EBST', 'EBST', 'eBoost', 'eBoost (EBST)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1778, '0', 0),
(1664, 368743, '/coins/kek/overview', './upload/coinlist/kek.png', 'KEK', 'KEK', 'KekCoin', 'KekCoin (KEK)', 'POS 2.0', 'PoS', 0, 2000, 'N/A', 'N/A', 1779, '0', 0),
(1665, 368770, '/coins/aid/overview', './upload/coinlist/aidcoin.png', 'AID', 'AID', 'AidCoin', 'AidCoin (AID)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1780, '0', 0),
(1666, 369029, '/coins/bhcstar/overview', './upload/coinlist/bhc.png', 'BHC*', 'BHC*', 'BlackholeCoin', 'BlackholeCoin (BHC*)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1781, '0', 0),
(1667, 369110, '/coins/altcom/overview', './upload/coinlist/altcom.png', 'ALTCOM', 'ALTCOM', 'AltCommunity Coin', 'AltCommunity Coin (ALTCOM)', 'SkunkHash', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1782, '0', 0),
(1668, 369132, '/coins/ost/overview', './upload/coinlist/st.png', 'OST', 'OST', 'Simple Token', 'Simple Token (OST)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1783, '0', 0),
(1669, 369151, '/coins/data/overview', './upload/coinlist/data.png', 'DATA', 'DATA', 'Streamr DATAcoin', 'Streamr DATAcoin (DATA)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1784, '0', 0),
(1670, 369179, '/coins/ugc/overview', './upload/coinlist/ugt.png', 'UGC', 'UGC', 'ugChain', 'ugChain (UGC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1785, '0', 0),
(1671, 369209, '/coins/dtcstar/overview', './upload/coinlist/dtc.png', 'DTC*', 'DTC', 'Datacoin', 'Datacoin (DTC*)', 'Multiple', 'PoW', 0, 2000, 'N/A', 'N/A', 1786, '0', 0),
(1672, 369251, '/coins/play/overview', './upload/coinlist/play.png', 'PLAY', 'PLAY', 'HEROcoin', 'HEROcoin (PLAY)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1787, '0', 0),
(1673, 370535, '/coins/pure/overview', './upload/coinlist/pure.png', 'PURE', 'PURE', 'Pure', 'Pure (PURE)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1788, '0', 0),
(1674, 370606, '/coins/cld/overview', './upload/coinlist/cld.png', 'CLD', 'CLD', 'Cloud', 'Cloud (CLD)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1789, '0', 0),
(1675, 370726, '/coins/otn/overview', './upload/coinlist/otn.png', 'OTN', 'OTN', 'Open Trading Network', 'Open Trading Network (OTN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1790, '0', 0),
(1676, 370825, '/coins/pos/overview', './upload/coinlist/pos.png', 'POS', 'POS', 'PoSToken', 'PoSToken (POS)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 1791, '0', 0),
(1677, 370947, '/coins/neog/overview', './upload/coinlist/neog.png', 'NEOG', 'NEOG', 'NEO Gold', 'NEO Gold (NEOG)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1793, '0', 0),
(1678, 370961, '/coins/exn/overview', './upload/coinlist/exn.png', 'EXN', 'EXN', 'ExchangeN', 'ExchangeN (EXN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1794, '0', 0),
(1679, 370973, '/coins/ins/overview', './upload/coinlist/ins.png', 'INS', 'INS', 'INS Ecosystem', 'INS Ecosystem (INS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1795, '0', 0),
(1680, 371004, '/coins/trct/overview', './upload/coinlist/trct.png', 'TRCT', 'TRCT', 'Tracto', 'Tracto (TRCT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1796, '0', 0),
(1681, 371005, '/coins/ukg/overview', './upload/coinlist/ukg.png', 'UKG', 'UKG', 'UnikoinGold', 'UnikoinGold (UKG)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1797, '0', 0),
(1682, 371064, '/coins/btcred/overview', './upload/coinlist/btcred.png', 'BTCRED', 'BTCRED', 'Bitcoin Red', 'Bitcoin Red (BTCRED)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1798, '0', 0),
(1683, 371095, '/coins/ebch/overview', './upload/coinlist/ebch.png', 'EBCH', 'EBCH', 'eBitcoinCash', 'eBitcoinCash (EBCH)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1799, '0', 0),
(1684, 371902, '/coins/jpcstar/overview', './upload/coinlist/jpc.png', 'JPC*', 'JPC*', 'J Coin', 'J Coin (JPC*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1800, '0', 0),
(1685, 372029, '/coins/axt/overview', './upload/coinlist/axt.png', 'AXT', 'AXT', 'AIX', 'AIX (AXT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1801, '0', 0),
(1686, 372369, '/coins/rdnstar/overview', './upload/coinlist/rdn.png', 'RDN*', 'RDN*', 'Raiden Network', 'Raiden Network (RDN*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1802, '0', 0),
(1687, 372377, '/coins/neu/overview', './upload/coinlist/neu.png', 'NEU', 'NEU', 'Neumark', 'Neumark (NEU)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1803, '0', 0),
(1688, 372608, '/coins/rupx/overview', './upload/coinlist/rupx.png', 'RUPX', 'RUPX', 'Rupaya', 'Rupaya (RUPX)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1804, '0', 0),
(1689, 372637, '/coins/bdr/overview', './upload/coinlist/bdr.png', 'BDR', 'BDR', 'BlueDragon', 'BlueDragon (BDR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1805, '0', 0),
(1690, 372654, '/coins/xin/overview', './upload/coinlist/xin.png', 'XIN', 'XIN*', 'Infinity Economics', 'Infinity Economics (XIN)', 'SHA256', 'PoS', 0, 2000, 'N/A', 'N/A', 1806, '0', 0),
(1691, 372748, '/coins/dutch/overview', './upload/coinlist/dutch.png', 'DUTCH', 'DUTCH', 'Dutch Coin', 'Dutch Coin (DUTCH)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1807, '0', 0),
(1692, 372812, '/coins/tio/overview', './upload/coinlist/tio.png', 'TIO', 'TIO', 'Trade.io', 'Trade.io (TIO)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1808, '0', 0),
(1693, 373880, '/coins/hncstar/overview', './upload/coinlist/hnc.png', 'HNC*', 'HNC*', 'Huncoin', 'Huncoin (HNC*)', 'X13', 'PoW', 0, 2000, 'N/A', 'N/A', 1809, '0', 0),
(1694, 373980, '/coins/mdcstar/overview', './upload/coinlist/mdc.png', 'MDC*', 'MDC*', 'MadCoin', 'MadCoin (MDC*)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1811, '0', 0),
(1695, 374031, '/coins/pura/overview', './upload/coinlist/pura.png', 'PURA', 'PURA', 'Pura', 'Pura (PURA)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 1812, '0', 0),
(1696, 374211, '/coins/inn/overview', './upload/coinlist/inn.png', 'INN', 'INN', 'Innova', 'Innova (INN)', 'NeoScrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1813, '0', 0),
(1697, 374246, '/coins/hst/overview', './upload/coinlist/hst.png', 'HST', 'HST', 'Decision Token', 'Decision Token (HST)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1814, '0', 0),
(1698, 374281, '/coins/bcpt/overview', './upload/coinlist/bcpt.png', 'BCPT', 'BCPT', 'BlockMason Credit Protocol', 'BlockMason Credit Protocol (BCPT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1815, '0', 0),
(1699, 374294, '/coins/bdl/overview', './upload/coinlist/bdl.png', 'BDL', 'BDL', 'Bitdeal', 'Bitdeal (BDL)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1816, '0', 0),
(1700, 374358, '/coins/cms/overview', './upload/coinlist/comsa.png', 'CMS', 'CMS', 'COMSA', 'COMSA (CMS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1817, '0', 0),
(1701, 375352, '/coins/xbl/overview', './upload/coinlist/xbl.png', 'XBL', 'XBL', 'Billionaire Token', 'Billionaire Token (XBL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1818, '0', 0),
(1702, 375396, '/coins/zeph/overview', './upload/coinlist/zeph.png', 'ZEPH', 'ZEPH', 'Project Zephyr', 'Project Zephyr (ZEPH)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1819, '0', 0),
(1703, 375855, '/coins/atfs/overview', './upload/coinlist/atfs.png', 'ATFS', 'ATFS', 'ATFS Project', 'ATFS Project (ATFS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1820, '0', 0),
(1704, 377792, '/coins/nuls/overview', './upload/coinlist/nuls.png', 'NULS', 'NULS', 'Nuls', 'Nuls (NULS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1823, '0', 0),
(1705, 377831, '/coins/phrstar/overview', './upload/coinlist/phr.png', 'PHR*', 'PHR*', 'Phore', 'Phore (PHR*)', 'POS 3.0', 'N/A', 0, 2000, 'N/A', 'N/A', 1824, '0', 0),
(1706, 378830, '/coins/lcash/overview', './upload/coinlist/lcash.png', 'LCASH', 'LCASH', 'LitecoinCash', 'LitecoinCash (LCASH)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1825, '0', 0),
(1707, 379232, '/coins/cfd/overview', './upload/coinlist/cfd.png', 'CFD', 'CFD', 'Confido', 'Confido (CFD)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1826, '0', 0),
(1708, 379248, '/coins/sphtx/overview', './upload/coinlist/sphtx.png', 'SPHTX', 'SPHTX', 'SophiaTX', 'SophiaTX (SPHTX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1827, '0', 0),
(1709, 380571, '/coins/plc/overview', './upload/coinlist/plus.png', 'PLC', 'PLC', 'PlusCoin', 'PlusCoin (PLC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1828, '0', 0),
(1710, 380641, '/coins/srn/overview', './upload/coinlist/srn.png', 'SRN', 'SRN', 'SirinLabs', 'SirinLabs (SRN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1829, '0', 0),
(1711, 380671, '/coins/wsc/overview', './upload/coinlist/wsc.png', 'WSC', 'WSC', 'WiserCoin', 'WiserCoin (WSC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1830, '0', 0),
(1712, 380712, '/coins/dbet/overview', './upload/coinlist/dbet.png', 'DBET', 'DBET', 'Decent.bet', 'Decent.bet (DBET)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1831, '0', 0),
(1713, 380754, '/coins/xgox/overview', './upload/coinlist/xgox.png', 'xGOx', 'XGOX', 'Go!', 'Go! (xGOx)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1832, '0', 0),
(1714, 380794, '/coins/newb/overview', './upload/coinlist/newb.png', 'NEWB', 'NEWB', 'Newbium', 'Newbium (NEWB)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1833, '0', 0),
(1715, 381189, '/coins/life/overview', './upload/coinlist/life.png', 'LIFE', 'LIFE', 'LIFE', 'LIFE (LIFE)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1834, '0', 0),
(1716, 381323, '/coins/rmc/overview', './upload/coinlist/rmc.png', 'RMC', 'RMC', 'Russian Mining Coin', 'Russian Mining Coin (RMC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1836, '0', 0),
(1717, 382450, '/coins/credo/overview', './upload/coinlist/credo-1.png', 'CREDO', 'CREDO', 'Credo', 'Credo (CREDO)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1837, '0', 0),
(1718, 382536, '/coins/msr/overview', './upload/coinlist/msr.png', 'MSR', 'MSR', 'Masari', 'Masari (MSR)', 'CryptoNight', 'PoW', 0, 2000, 'N/A', 'N/A', 1838, '0', 0),
(1719, 383878, '/coins/esc/overview', './upload/coinlist/esc.png', 'ESC', 'ESC*', 'Ethersportcoin', 'Ethersportcoin (ESC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1841, '0', 0),
(1720, 383953, '/coins/evn/overview', './upload/coinlist/env.png', 'EVN', 'EVN', 'Envion', 'Envion (EVN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1842, '0', 0),
(1721, 384605, '/coins/bnk/overview', './upload/coinlist/bnk.png', 'BNK', 'BNK', 'Bankera', 'Bankera (BNK)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1843, '0', 0),
(1722, 384651, '/coins/ella/overview', './upload/coinlist/ella.png', 'ELLA', 'ELLA', 'Ellaism', 'Ellaism (ELLA)', 'Ethash', 'PoW', 0, 2000, 'N/A', 'N/A', 1844, '0', 0),
(1723, 384729, '/coins/bpl/overview', './upload/coinlist/bpl.png', 'BPL', 'BPL', 'BlockPool', 'BlockPool (BPL)', 'DPoS', 'N/A', 0, 2000, 'N/A', 'N/A', 1845, '0', 0),
(1724, 384950, '/coins/rockstar/overview', './upload/coinlist/rock1.png', 'ROCK*', 'ROCK*', 'RocketCoin ', 'RocketCoin  (ROCK*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1847, '0', 0),
(1725, 384953, '/coins/drxne/overview', './upload/coinlist/drxne.png', 'DRXNE', 'DRXNE', 'Droxne', 'Droxne (DRXNE)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 1848, '0', 0),
(1726, 385866, '/coins/skr/overview', './upload/coinlist/skr.png', 'SKR', 'SKR', 'Sakuracoin', 'Sakuracoin (SKR)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1849, '0', 0),
(1727, 385907, '/coins/grid/overview', './upload/coinlist/grid.png', 'GRID', 'GRID', 'Grid+', 'Grid+ (GRID)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1850, '0', 0),
(1728, 385933, '/coins/xptx/overview', './upload/coinlist/xptx.png', 'XPTX', 'XPTX', 'PlatinumBAR', 'PlatinumBAR (XPTX)', 'Quark', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1851, '0', 0),
(1729, 385952, '/coins/gvt/overview', './upload/coinlist/gvt.png', 'GVT', 'GVT', 'Genesis Vision', 'Genesis Vision (GVT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1852, '0', 0),
(1730, 385960, '/coins/etk/overview', './upload/coinlist/etk.png', 'ETK', 'ETK', 'Energi Token', 'Energi Token (ETK)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1853, '0', 0),
(1731, 387875, '/coins/astro/overview', './upload/coinlist/astro.png', 'ASTRO', 'ASTRO', 'Astronaut', 'Astronaut (ASTRO)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1854, '0', 0),
(1732, 388042, '/coins/gmt/overview', './upload/coinlist/gmt.png', 'GMT', 'GMT', 'Mercury Protocol', 'Mercury Protocol (GMT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1855, '0', 0),
(1733, 388076, '/coins/epystar/overview', './upload/coinlist/epy.png', 'EPY*', 'EPY*', 'Emphy', 'Emphy (EPY*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1856, '0', 0),
(1734, 388145, '/coins/soar/overview', './upload/coinlist/soar.png', 'SOAR', 'SOAR', 'Soarcoin', 'Soarcoin (SOAR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1857, '0', 0),
(1735, 389808, '/coins/hold/overview', './upload/coinlist/hold.png', 'HOLD', 'HOLD', 'Interstellar Holdings', 'Interstellar Holdings (HOLD)', 'Scrypt', 'PoS', 0, 2000, 'N/A', 'N/A', 1859, '0', 0),
(1736, 389849, '/coins/mnx/overview', './upload/coinlist/mnx.png', 'MNX', 'MNX', 'MinexCoin', 'MinexCoin (MNX)', 'Mars', 'N/A', 0, 2000, 'N/A', 'N/A', 1860, '0', 0),
(1737, 392253, '/coins/crds/overview', './upload/coinlist/crds.png', 'CRDS', 'CRDS', 'Credits', 'Credits (CRDS)', 'Argon2', 'N/A', 0, 2000, 'N/A', 'N/A', 1861, '0', 0),
(1738, 393656, '/coins/viu/overview', './upload/coinlist/viu.png', 'VIU', 'VIU', 'Viuly', 'Viuly (VIU)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1862, '0', 0),
(1739, 393742, '/coins/scr/overview', './upload/coinlist/scr.png', 'SCR', 'SCR', 'Scorum', 'Scorum (SCR)', 'DPoS', 'DPoS', 0, 2000, 'N/A', 'N/A', 1863, '0', 0),
(1740, 394055, '/coins/dbr/overview', './upload/coinlist/dbr.png', 'DBR', 'DBR', 'Düber', 'Düber (DBR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1864, '0', 0),
(1741, 394121, '/coins/gft/overview', './upload/coinlist/gft.jpg', 'GFT', 'GFT', 'Giftcoin', 'Giftcoin (GFT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1866, '0', 0),
(1742, 396716, '/coins/stac/overview', './upload/coinlist/stac1.png', 'STAC', 'STAC', 'STAC', 'STAC (STAC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1867, '0', 0),
(1743, 397757, '/coins/qsp/overview', './upload/coinlist/qsp.png', 'QSP', 'QSP', 'Quantstamp', 'Quantstamp (QSP)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1868, '0', 0),
(1744, 398126, '/coins/ript/overview', './upload/coinlist/ript.png', 'RIPT', 'RIPT', 'RiptideCoin', 'RiptideCoin (RIPT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1869, '0', 0),
(1745, 398648, '/coins/bbt/overview', './upload/coinlist/bbt.png', 'BBT', 'BBT', 'BitBoost', 'BitBoost (BBT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1870, '0', 0),
(1746, 398705, '/coins/gbx/overview', './upload/coinlist/gbx.png', 'GBX', 'GBX', 'GoByte', 'GoByte (GBX)', 'NeoScrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1871, '0', 0),
(1747, 400693, '/coins/icc/overview', './upload/coinlist/icc.png', 'ICC', 'ICC', 'Insta Cash Coin', 'Insta Cash Coin (ICC)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 1875, '0', 0),
(1748, 400702, '/coins/jnt/overview', './upload/coinlist/jnt.jpg', 'JNT', 'JNT', 'Jibrel Network Token', 'Jibrel Network Token (JNT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1876, '0', 0),
(1749, 402714, '/coins/qash/overview', './upload/coinlist/qash.png', 'QASH', 'QASH', 'Quoine Liquid', 'Quoine Liquid (QASH)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1877, '0', 0),
(1750, 402782, '/coins/alqo/overview', './upload/coinlist/alqo.png', 'ALQO', 'ALQO', 'Alqo', 'Alqo (ALQO)', 'Quark', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1878, '0', 0),
(1751, 402805, '/coins/kncstarstar/overview', './upload/coinlist/knc.png', 'KNC**', 'KNC**', 'KingN Coin', 'KingN Coin (KNC**)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1879, '0', 0),
(1752, 402884, '/coins/tria/overview', './upload/coinlist/tria.png', 'TRIA', 'TRIA', 'Triaconta', 'Triaconta (TRIA)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1880, '0', 0),
(1753, 402980, '/coins/pbl/overview', './upload/coinlist/pbl.png', 'PBL', 'PBL', 'Publica', 'Publica (PBL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1881, '0', 0),
(1754, 404806, '/coins/ufr/overview', './upload/coinlist/ufr.png', 'UFR', 'UFR', 'Upfiring', 'Upfiring (UFR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1884, '0', 0),
(1755, 404890, '/coins/loci/overview', './upload/coinlist/loci.png', 'LOCI', 'LOCI', 'LociCoin', 'LociCoin (LOCI)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1885, '0', 0),
(1756, 405291, '/coins/tau/overview', './upload/coinlist/lamden.png', 'TAU', 'TAU', 'Lamden Tau', 'Lamden Tau (TAU)', 'DPoS', 'DPoS', 0, 2000, 'N/A', 'N/A', 1886, '0', 0),
(1757, 405343, '/coins/lab/overview', './upload/coinlist/lab.png', 'LAB', 'LAB', 'Labrys', 'Labrys (LAB)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1887, '0', 0),
(1758, 408849, '/coins/flixx/overview', './upload/coinlist/flixx.png', 'FLIXX', 'FLIXX', 'Flixxo', 'Flixxo (FLIXX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1889, '0', 0),
(1759, 409128, '/coins/frd/overview', './upload/coinlist/frd.png', 'FRD', 'FRD', 'Farad', 'Farad (FRD)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1890, '0', 0),
(1760, 409249, '/coins/eca/overview', './upload/coinlist/eca.png', 'ECA', 'ECA', 'Electra', 'Electra (ECA)', 'NIST5', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1892, '0', 0),
(1761, 409363, '/coins/ldm/overview', './upload/coinlist/ldm.png', 'LDM', 'LDM', 'Ludum token', 'Ludum token (LDM)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1893, '0', 0),
(1762, 409422, '/coins/ltg/overview', './upload/coinlist/ltg.png', 'LTG', 'LTG', 'LiteCoin Gold', 'LiteCoin Gold (LTG)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1894, '0', 0),
(1763, 409492, '/coins/bcd/overview', './upload/coinlist/bcd.png', 'BCD', 'BCD', 'Bitcoin Diamond', 'Bitcoin Diamond (BCD)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1895, '0', 0),
(1764, 411271, '/coins/stp/overview', './upload/coinlist/stp.png', 'STP', 'STP', 'StashPay', 'StashPay (STP)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1896, '0', 0),
(1765, 411496, '/coins/spank/overview', './upload/coinlist/spank.png', 'SPANK', 'SPANK', 'SpankChain', 'SpankChain (SPANK)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1897, '0', 0),
(1766, 411620, '/coins/wish/overview', './upload/coinlist/wish.png', 'WISH', 'WISH', 'MyWish', 'MyWish (WISH)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1898, '0', 0),
(1767, 411647, '/coins/aerm/overview', './upload/coinlist/aerm.png', 'AERM', 'AERM', 'Aerium', 'Aerium (AERM)', 'SkunkHash', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1899, '0', 0),
(1768, 412081, '/coins/plx/overview', './upload/coinlist/plx.png', 'PLX', 'PLX', 'PlexCoin', 'PlexCoin (PLX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1900, '0', 0),
(1769, 412112, '/coins/nio/overview', './upload/coinlist/nio.png', 'NIO', 'NIO', 'Autonio', 'Autonio (NIO)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1901, '0', 0),
(1770, 412197, '/coins/ethb/overview', './upload/coinlist/ethb.png', 'ETHB', 'ETHB', 'EtherBTC', 'EtherBTC (ETHB)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1902, '0', 0),
(1771, 412267, '/coins/cdx/overview', './upload/coinlist/cdx.png', 'CDX', 'CDX', 'Commodity Ad Network', 'Commodity Ad Network (CDX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1903, '0', 0),
(1772, 413886, '/coins/food/overview', './upload/coinlist/food.png', 'FOOD', 'FOOD', 'FoodCoin', 'FoodCoin (FOOD)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1904, '0', 0),
(1773, 418671, '/coins/vot/overview', './upload/coinlist/vot.png', 'VOT', 'VOT', 'Votecoin', 'Votecoin (VOT)', 'Equihash', 'PoW', 0, 2000, 'N/A', 'N/A', 1906, '0', 0),
(1774, 418694, '/coins/uqc/overview', './upload/coinlist/uqc.png', 'UQC', 'UQC', 'Uquid Coin', 'Uquid Coin (UQC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1907, '0', 0),
(1775, 418778, '/coins/lend/overview', './upload/coinlist/lend.png', 'LEND', 'LEND', 'EthLend', 'EthLend (LEND)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1908, '0', 0),
(1776, 419209, '/coins/seth/overview', './upload/coinlist/seth.png', 'SETH', 'SETH', 'Sether', 'Sether (SETH)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1909, '0', 0),
(1777, 419579, '/coins/tiostar/overview', './upload/coinlist/tio.png', 'TIO*', 'TIO*', 'Tio Tour Guides', 'Tio Tour Guides (TIO*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1910, '0', 0),
(1778, 419814, '/coins/xsh/overview', './upload/coinlist/xsh.png', 'XSH', 'XSH', 'SHIELD', 'SHIELD (XSH)', 'Multiple', 'PoW', 0, 2000, 'N/A', 'N/A', 1912, '0', 0),
(1779, 419930, '/coins/bcdstar/overview', './upload/coinlist/bcd.png', 'BCD*', 'BCD*', 'BitCAD', 'BitCAD (BCD*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1913, '0', 0),
(1780, 422188, '/coins/bco/overview', './upload/coinlist/bco.png', 'BCO', 'BCO*', 'BridgeCoin', 'BridgeCoin (BCO)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1915, '0', 0),
(1781, 423297, '/coins/dsr/overview', './upload/coinlist/dsr.png', 'DSR', 'DSR', 'Desire', 'Desire (DSR)', 'NeoScrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1916, '0', 0),
(1782, 423754, '/coins/bdg/overview', './upload/coinlist/bdg.png', 'BDG', 'BDG', 'BitDegree', 'BitDegree (BDG)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1917, '0', 0),
(1783, 428300, '/coins/ong/overview', './upload/coinlist/ong.png', 'ONG', 'ONG', 'onG.social', 'onG.social (ONG)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1918, '0', 0),
(1784, 429355, '/coins/prl/overview', './upload/coinlist/prl.png', 'PRL', 'PRL', 'Oyster Pearl', 'Oyster Pearl (PRL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1919, '0', 0),
(1785, 429400, '/coins/btcm/overview', './upload/coinlist/btcm.png', 'BTCM', 'BTCM', 'BTCMoon', 'BTCMoon (BTCM)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1920, '0', 0),
(1786, 431142, '/coins/etbt/overview', './upload/coinlist/etbt.png', 'ETBT', 'ETBT', 'Ethereum Black', 'Ethereum Black (ETBT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1922, '0', 0),
(1787, 431170, '/coins/zcg/overview', './upload/coinlist/zcg.png', 'ZCG', 'ZCG', 'ZCashGOLD', 'ZCashGOLD (ZCG)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1923, '0', 0);
INSERT INTO `dbt_cryptocoin` (`id`, `cid`, `url`, `image`, `name`, `symbol`, `coin_name`, `full_name`, `algorithm`, `proof_type`, `show_home`, `coin_position`, `premined_value`, `total_coins_freefloat`, `rank`, `sponsored`, `status`) VALUES
(1788, 431229, '/coins/mut/overview', './upload/coinlist/mut.png', 'MUT', 'MUT', 'Mutual Coin', 'Mutual Coin (MUT)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1924, '0', 0),
(1789, 431235, '/coins/aion/overview', './upload/coinlist/aion.png', 'AION', 'AION', 'Aion', 'Aion (AION)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1925, '0', 0),
(1790, 431370, '/coins/meow/overview', './upload/coinlist/meow.png', 'MEOW', 'MEOW', 'Kittehcoin', 'Kittehcoin (MEOW)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1926, '0', 0),
(1791, 431413, '/coins/divx/overview', './upload/coinlist/divx.png', 'DIVX', 'DIVX', 'Divi', 'Divi (DIVX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1927, '0', 0),
(1792, 431621, '/coins/cnbc/overview', './upload/coinlist/cnbc.png', 'CNBC', 'CNBC', 'Cash & Back Coin', 'Cash & Back Coin (CNBC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1928, '0', 0),
(1793, 434666, '/coins/rhoc/overview', './upload/coinlist/rhoc.png', 'RHOC', 'RHOC', 'RChain', 'RChain (RHOC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1929, '0', 0),
(1794, 435659, '/coins/arcstar/overview', './upload/coinlist/arc.png', 'ARC*', 'ARC*', ' Arcade City', ' Arcade City (ARC*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1930, '0', 0),
(1795, 436007, '/coins/xun/overview', './upload/coinlist/xun.png', 'XUN', 'XUN', 'UltraNote', 'UltraNote (XUN)', 'CryptoNight', 'PoW', 0, 2000, 'N/A', 'N/A', 1931, '0', 0),
(1796, 436162, '/coins/rfl/overview', './upload/coinlist/rfl.png', 'RFL', 'RFL', 'RAFL', 'RAFL (RFL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1932, '0', 0),
(1797, 436320, '/coins/cofi/overview', './upload/coinlist/cofi.png', 'COFI', 'COFI', 'CoinFi', 'CoinFi (COFI)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1933, '0', 0),
(1798, 438867, '/coins/eltcoin/overview', './upload/coinlist/eltcoin.png', 'ELTCOIN', 'ELTCOIN', 'ELTCOIN', 'ELTCOIN (ELTCOIN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1934, '0', 0),
(1799, 439136, '/coins/grx/overview', './upload/coinlist/grx.png', 'GRX', 'GRX', 'Gold Reward Token', 'Gold Reward Token (GRX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1935, '0', 0),
(1800, 439180, '/coins/ntk/overview', './upload/coinlist/ntk.png', 'NTK', 'NTK', 'Neurotoken', 'Neurotoken (NTK)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1936, '0', 0),
(1801, 439579, '/coins/ero/overview', './upload/coinlist/ero.png', 'ERO', 'ERO', 'Eroscoin', 'Eroscoin (ERO)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1937, '0', 0),
(1802, 439963, '/coins/cmtstar/overview', './upload/coinlist/cmt.png', 'CMT*', 'CMT*', 'CyberMiles', 'CyberMiles (CMT*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1938, '0', 0),
(1803, 441616, '/coins/rlx/overview', './upload/coinlist/rlx.png', 'RLX', 'RLX', 'Relex', 'Relex (RLX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1939, '0', 0),
(1804, 446051, '/coins/man/overview', './upload/coinlist/man.png', 'MAN', 'MAN', 'People', 'People (MAN)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1940, '0', 0),
(1805, 446121, '/coins/cwv/overview', './upload/coinlist/cwv.png', 'CWV', 'CWV', 'CryptoWave', 'CryptoWave (CWV)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1941, '0', 0),
(1806, 446372, '/coins/actstar/overview', './upload/coinlist/act.png', 'ACT*', 'ACT*', 'Achain', 'Achain (ACT*)', 'DPoS', 'DPoS', 0, 2000, 'N/A', 'N/A', 1942, '0', 0),
(1807, 447315, '/coins/nro/overview', './upload/coinlist/nro.png', 'NRO', 'NRO', 'Neuro', 'Neuro (NRO)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1943, '0', 0),
(1808, 449573, '/coins/send/overview', './upload/coinlist/send.png', 'SEND', 'SEND', 'Social Send', 'Social Send (SEND)', 'Quark', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1944, '0', 0),
(1809, 449614, '/coins/glt/overview', './upload/coinlist/glt.png', 'GLT', 'GLT', 'GlobalToken', 'GlobalToken (GLT)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 1945, '0', 0),
(1810, 450337, '/coins/x8x/overview', './upload/coinlist/x8x.png', 'X8X', 'X8X', 'X8Currency', 'X8Currency (X8X)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1946, '0', 0),
(1811, 453581, '/coins/coal/overview', './upload/coinlist/coal.png', 'COAL', 'COAL', 'BitCoal', 'BitCoal (COAL)', 'CryptoNight', 'PoW', 0, 2000, 'N/A', 'N/A', 1947, '0', 0),
(1812, 453647, '/coins/daxx/overview', './upload/coinlist/daxx.png', 'DAXX', 'DAXX', 'DaxxCoin', 'DaxxCoin (DAXX)', 'Ethash', 'PoW', 0, 2000, 'N/A', 'N/A', 1948, '0', 0),
(1813, 453855, '/coins/bwk/overview', './upload/coinlist/bwk.png', 'BWK', 'BWK', 'Bulwark', 'Bulwark (BWK)', 'NIST5', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1949, '0', 0),
(1814, 453943, '/coins/fnt/overview', './upload/coinlist/fnt.png', 'FNT', 'FNT', 'FinTab', 'FinTab (FNT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1950, '0', 0),
(1815, 463101, '/coins/xmrg/overview', './upload/coinlist/xmrg.png', 'XMRG', 'XMRG', 'Monero Gold', 'Monero Gold (XMRG)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1951, '0', 0),
(1816, 463700, '/coins/btce/overview', './upload/coinlist/btce.png', 'BTCE', 'BTCE', 'EthereumBitcoin', 'EthereumBitcoin (BTCE)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1952, '0', 0),
(1817, 464920, '/coins/fyp/overview', './upload/coinlist/fyp.png', 'FYP', 'FYP', 'FlypMe', 'FlypMe (FYP)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1953, '0', 0),
(1818, 465681, '/coins/boxy/overview', './upload/coinlist/boxy.png', 'BOXY', 'BOXY', 'BoxyCoin', 'BoxyCoin (BOXY)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1954, '0', 0),
(1819, 466786, '/coins/egas/overview', './upload/coinlist/egas.png', 'EGAS', 'EGAS', 'ETHGAS', 'ETHGAS (EGAS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1957, '0', 0),
(1820, 466977, '/coins/dpp/overview', './upload/coinlist/dpp.png', 'DPP', 'DPP', 'Digital Assets Power Play', 'Digital Assets Power Play (DPP)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1958, '0', 0),
(1821, 468052, '/coins/adb/overview', './upload/coinlist/adb.png', 'ADB', 'ADB', 'Adbank', 'Adbank (ADB)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1959, '0', 0),
(1822, 472769, '/coins/tgt/overview', './upload/coinlist/tgt.png', 'TGT', 'TGT', 'TargetCoin', 'TargetCoin (TGT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1960, '0', 0),
(1823, 481737, '/coins/bmt/overview', './upload/coinlist/bmt.png', 'BMT', 'BMT', 'BMChain', 'BMChain (BMT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1962, '0', 0),
(1824, 484355, '/coins/bio/overview', './upload/coinlist/bio.png', 'BIO', 'BIO', 'Biocoin', 'Biocoin (BIO)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1963, '0', 0),
(1825, 484742, '/coins/mtrc/overview', './upload/coinlist/mtrc.png', 'MTRC', 'MTRC', 'ModulTrade', 'ModulTrade (MTRC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1965, '0', 0),
(1826, 486837, '/coins/btcl/overview', './upload/coinlist/btcl.png', 'BTCL', 'BTCL', 'BTC Lite', 'BTC Lite (BTCL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1966, '0', 0),
(1827, 486886, '/coins/pcn/overview', './upload/coinlist/pcn.png', 'PCN', 'PCN', 'PeepCoin', 'PeepCoin (PCN)', 'N/A', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1967, '0', 0),
(1828, 491479, '/coins/rbtc/overview', './upload/coinlist/rbtc.png', 'RBTC', 'RBTC', 'Bitcoin Revolution', 'Bitcoin Revolution (RBTC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1970, '0', 0),
(1829, 502301, '/coins/cred/overview', './upload/coinlist/cred.png', 'CRED', 'CRED', 'Verify', 'Verify (CRED)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1971, '0', 0),
(1830, 516982, '/coins/sbtc/overview', './upload/coinlist/sbtc.png', 'SBTC', 'SBTC', 'Super Bitcoin', 'Super Bitcoin (SBTC)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 1972, '0', 0),
(1831, 517193, '/coins/klk/overview', './upload/coinlist/klk.png', 'KLK', 'KLK', 'Kalkulus', 'Kalkulus (KLK)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1973, '0', 0),
(1832, 517389, '/coins/ac3/overview', './upload/coinlist/ac3.png', 'AC3', 'AC3', 'AC3', 'AC3 (AC3)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 1974, '0', 0),
(1833, 517477, '/coins/gto/overview', './upload/coinlist/gto.png', 'GTO', 'GTO', 'GIFTO', 'GIFTO (GTO)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1975, '0', 0),
(1834, 517483, '/coins/tnb/overview', './upload/coinlist/tnb.png', 'TNB', 'TNB', 'Time New Bank', 'Time New Bank (TNB)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1976, '0', 0),
(1835, 517603, '/coins/chips/overview', './upload/coinlist/chips.png', 'CHIPS', 'CHIPS*', 'CHIPS', 'CHIPS (CHIPS)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 1977, '0', 0),
(1836, 517775, '/coins/hkn/overview', './upload/coinlist/hkn.png', 'HKN', 'HKN', 'Hacken', 'Hacken (HKN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1978, '0', 0),
(1837, 517795, '/coins/b2bx/overview', './upload/coinlist/b2bx.png', 'B2BX', 'B2B', 'B2B', 'B2B (B2BX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1979, '0', 0),
(1838, 517896, '/coins/locstar/overview', './upload/coinlist/loc.png', 'LOC*', 'LOC*', 'LockChain', 'LockChain (LOC*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1980, '0', 0),
(1839, 521417, '/coins/mntstar/overview', './upload/coinlist/mnt.png', 'MNT*', 'MNT*', 'Media Network Coin', 'Media Network Coin (MNT*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1981, '0', 0),
(1840, 522090, '/coins/itns/overview', './upload/coinlist/itns.png', 'ITNS', 'ITNS', 'IntenseCoin', 'IntenseCoin (ITNS)', 'CryptoNight', 'PoW', 0, 2000, 'N/A', 'N/A', 1982, '0', 0),
(1841, 524113, '/coins/smtstar/overview', './upload/coinlist/smt.png', 'SMT*', 'SMT*', 'SmartMesh', 'SmartMesh (SMT*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1984, '0', 0),
(1842, 531089, '/coins/ger/overview', './upload/coinlist/ger.png', 'GER', 'GER', 'GermanCoin', 'GermanCoin (GER)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1985, '0', 0),
(1843, 531408, '/coins/ltcu/overview', './upload/coinlist/ltcu.png', 'LTCU', 'LTCU', 'LiteCoin Ultra', 'LiteCoin Ultra (LTCU)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1986, '0', 0),
(1844, 531426, '/coins/emgo/overview', './upload/coinlist/emgo.png', 'EMGO', 'EMGO', 'MobileGo', 'MobileGo (EMGO)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1987, '0', 0),
(1845, 531559, '/coins/btca/overview', './upload/coinlist/btca.png', 'BTCA', 'BTCA', 'Bitair', 'Bitair (BTCA)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1988, '0', 0),
(1846, 535054, '/coins/hqx/overview', './upload/coinlist/hqx.png', 'HQX', 'HQX', 'HOQU', 'HOQU (HQX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1989, '0', 0),
(1847, 536137, '/coins/etf/overview', './upload/coinlist/etf.png', 'ETF', 'ETF', 'EthereumFog', 'EthereumFog (ETF)', 'Ethash', 'PoW', 0, 2000, 'N/A', 'N/A', 1990, '0', 0),
(1848, 536213, '/coins/bcxstar/overview', './upload/coinlist/bcx.png', 'BCX*', 'BCX*', 'BitcoinX', 'BitcoinX (BCX*)', 'DPoS', 'DPoS', 0, 2000, 'N/A', 'N/A', 1991, '0', 0),
(1849, 536278, '/coins/luxstarstar/overview', './upload/coinlist/lux.png', 'LUX**', 'LUX**', 'Luxmi Coin', 'Luxmi Coin (LUX**)', 'N/A', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1992, '0', 0),
(1850, 536279, '/coins/stak/overview', './upload/coinlist/stak.png', 'STAK', 'STAK', 'Straks', 'Straks (STAK)', 'Lyra2REv2', 'PoW', 0, 2000, 'N/A', 'N/A', 1993, '0', 0),
(1851, 536905, '/coins/bcoin/overview', './upload/coinlist/bcoin.png', 'BCOIN', 'BCOIN', 'BannerCoin', 'BannerCoin (BCOIN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1994, '0', 0),
(1852, 543363, '/coins/bnty/overview', './upload/coinlist/bnty.png', 'BNTY', 'BNTY', 'Bounty0x', 'Bounty0x (BNTY)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1997, '0', 0),
(1853, 543502, '/coins/brd/overview', './upload/coinlist/brd.png', 'BRD', 'BRD', 'Bread token', 'Bread token (BRD)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1998, '0', 0),
(1854, 563196, '/coins/hat/overview', './upload/coinlist/hat.png', 'HAT', 'HAT', 'Hawala.Today', 'Hawala.Today (HAT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1999, '0', 0),
(1855, 571314, '/coins/elf/overview', './upload/coinlist/elf.png', 'ELF', 'ELF', 'aelf', 'aelf (ELF)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2000, '0', 0),
(1856, 584861, '/coins/cwx/overview', './upload/coinlist/cwx.png', 'CWX', 'CWX', 'Crypto-X', 'Crypto-X (CWX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2002, '0', 0),
(1857, 586088, '/coins/dbc/overview', './upload/coinlist/dbc.png', 'DBC', 'DBC', 'DeepBrain Chain', 'DeepBrain Chain (DBC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2003, '0', 0),
(1858, 586160, '/coins/zenstar/overview', './upload/coinlist/zen.png', 'ZEN*', 'ZEN*', 'Zen Protocol', 'Zen Protocol (ZEN*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2004, '0', 0),
(1859, 586409, '/coins/pop/overview', './upload/coinlist/pop.png', 'POP', 'POP', 'PopularCoin', 'PopularCoin (POP)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 2005, '0', 0),
(1860, 586482, '/coins/crc/overview', './upload/coinlist/crc.png', 'CRC', 'CRC', 'CrowdCoin', 'CrowdCoin (CRC)', 'NeoScrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 2006, '0', 0),
(1861, 586567, '/coins/pnx/overview', './upload/coinlist/pnx.png', 'PNX', 'PNX', 'PhantomX', 'PhantomX (PNX)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2007, '0', 0),
(1862, 586638, '/coins/bas/overview', './upload/coinlist/bas.png', 'BAS', 'BAS', 'BitAsean', 'BitAsean (BAS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2008, '0', 0),
(1863, 587261, '/coins/utt/overview', './upload/coinlist/utt.png', 'UTT', 'UTT', 'United Traders Token', 'United Traders Token (UTT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2009, '0', 0),
(1864, 589829, '/coins/hbc/overview', './upload/coinlist/hbc.png', 'HBC', 'HBC', 'HomeBlockCoin', 'HomeBlockCoin (HBC)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2010, '0', 0),
(1865, 589881, '/coins/amm/overview', './upload/coinlist/amm.png', 'AMM', 'AMM', 'MicroMoney', 'MicroMoney (AMM)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2011, '0', 0),
(1866, 596972, '/coins/dav/overview', './upload/coinlist/dav.png', 'DAV', 'DAV', 'DavorCoin', 'DavorCoin (DAV)', 'Scrypt', 'N/A', 0, 2000, 'N/A', 'N/A', 2012, '0', 0),
(1867, 597029, '/coins/xcpo/overview', './upload/coinlist/xcpo.png', 'XCPO', 'XCPO', 'Copico', 'Copico (XCPO)', 'PoS', 'N/A', 0, 2000, 'N/A', 'N/A', 2013, '0', 0),
(1868, 597181, '/coins/get/overview', './upload/coinlist/get.png', 'GET', 'GET', 'Guaranteed Entrance Token', 'Guaranteed Entrance Token (GET)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2014, '0', 0),
(1869, 597540, '/coins/erc20/overview', './upload/coinlist/erc20.png', 'ERC20', 'ERC20', 'Index ERC20', 'Index ERC20 (ERC20)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2015, '0', 0),
(1870, 597629, '/coins/itc/overview', './upload/coinlist/itc.png', 'ITC', 'ITC', 'IoT Chain', 'IoT Chain (ITC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2016, '0', 0),
(1871, 598428, '/coins/html/overview', './upload/coinlist/html.png', 'HTML', 'HTML', 'HTML Coin', 'HTML Coin (HTML)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2017, '0', 0),
(1872, 607521, '/coins/nms/overview', './upload/coinlist/nms.png', 'NMS', 'NMS', 'Numus', 'Numus (NMS)', 'Skein', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2019, '0', 0),
(1873, 608140, '/coins/pho/overview', './upload/coinlist/pho.png', 'PHO', 'PHO', 'Photon', 'Photon (PHO)', 'BLAKE256', 'PoW', 0, 2000, 'N/A', 'N/A', 2020, '0', 0),
(1874, 608756, '/coins/xtra/overview', './upload/coinlist/extra-logo-white.png', 'XTRA', 'XTRA', 'ExtraCredit', 'ExtraCredit (XTRA)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2021, '0', 0),
(1875, 616932, '/coins/ntwk/overview', './upload/coinlist/ntwk.png', 'NTWK', 'NTWK', 'Network Token', 'Network Token (NTWK)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2023, '0', 0),
(1876, 617055, '/coins/sucr/overview', './upload/coinlist/sucr.png', 'SUCR', 'SUCR', 'Sucre', 'Sucre (SUCR)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 2024, '0', 0),
(1877, 617177, '/coins/smartstar/overview', './upload/coinlist/smart.png', 'SMART*', 'SMART*', 'SmartBillions', 'SmartBillions (SMART*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2025, '0', 0),
(1878, 619375, '/coins/gnx/overview', './upload/coinlist/gnx.png', 'GNX', 'GNX', 'Genaro Network', 'Genaro Network (GNX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2026, '0', 0),
(1879, 619555, '/coins/nas/overview', './upload/coinlist/nas.png', 'NAS', 'NAS', 'Nebulas', 'Nebulas (NAS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2027, '0', 0),
(1880, 619929, '/coins/acco/overview', './upload/coinlist/acco.png', 'ACCO', 'ACCO', 'Accolade', 'Accolade (ACCO)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2028, '0', 0),
(1881, 620037, '/coins/bth/overview', './upload/coinlist/bth.png', 'BTH', 'BTH', 'Bytether ', 'Bytether  (BTH)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2029, '0', 0),
(1882, 625173, '/coins/tok/overview', './upload/coinlist/tok.png', 'TOK', 'TOK', 'TokugawaCoin', 'TokugawaCoin (TOK)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 2031, '0', 0),
(1883, 625216, '/coins/ereal/overview', './upload/coinlist/ereal.png', 'EREAL', 'EREAL', 'eREAL', 'eREAL (EREAL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2032, '0', 0),
(1884, 625381, '/coins/cpn/overview', './upload/coinlist/cpn.png', 'CPN', 'CPN', 'CompuCoin', 'CompuCoin (CPN)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 2033, '0', 0),
(1885, 625458, '/coins/xft/overview', './upload/coinlist/xft.png', 'XFT', 'XFT', 'Footy Cash', 'Footy Cash (XFT)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 2034, '0', 0),
(1886, 637681, '/coins/qlc/overview', './upload/coinlist/qlc.png', 'QLC', 'QLC', 'QLINK', 'QLINK (QLC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2035, '0', 0),
(1887, 637960, '/coins/btestar/overview', './upload/coinlist/bte.png', 'BTE*', 'BTSE', 'BitSerial', 'BitSerial (BTE*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2036, '0', 0),
(1888, 638142, '/coins/omgc/overview', './upload/coinlist/omgc.png', 'OMGC', 'OMGC', 'OmiseGO Classic', 'OmiseGO Classic (OMGC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2037, '0', 0),
(1889, 638297, '/coins/q2c/overview', './upload/coinlist/q2c.jpg', 'Q2C', 'Q2C', 'QubitCoin', 'QubitCoin (Q2C)', 'QuBit', 'N/A', 0, 2000, 'N/A', 'N/A', 2038, '0', 0),
(1890, 638634, '/coins/blt/overview', './upload/coinlist/blt.png', 'BLT', 'BLT', 'Bloom Token', 'Bloom Token (BLT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2039, '0', 0),
(1891, 639943, '/coins/spf/overview', './upload/coinlist/spf.png', 'SPF', 'SPF', 'SportyFi', 'SportyFi (SPF)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2040, '0', 0),
(1892, 640916, '/coins/tds/overview', './upload/coinlist/tds.png', 'TDS', 'TDS', 'TokenDesk', 'TokenDesk (TDS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2041, '0', 0),
(1893, 645766, '/coins/ore/overview', './upload/coinlist/ore.png', 'ORE', 'ORE', 'Galactrum', 'Galactrum (ORE)', 'Lyra2REv2', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2042, '0', 0),
(1894, 645791, '/coins/spk/overview', './upload/coinlist/spk.png', 'SPK', 'SPK', 'Sparks', 'Sparks (SPK)', 'NeoScrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 2043, '0', 0),
(1895, 645830, '/coins/goa/overview', './upload/coinlist/goa.png', 'GOA', 'GOA', 'GoaCoin', 'GoaCoin (GOA)', 'NeoScrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 2044, '0', 0),
(1896, 645879, '/coins/fls/overview', './upload/coinlist/fuloos.png', 'FLS', 'FLS', 'Fuloos Coin', 'Fuloos Coin (FLS)', 'N/A', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2045, '0', 0),
(1897, 645913, '/coins/phils/overview', './upload/coinlist/phils.png', 'PHILS', 'PHILS', 'PhilsCurrency', 'PhilsCurrency (PHILS)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 2046, '0', 0),
(1898, 645936, '/coins/gun/overview', './upload/coinlist/gun.png', 'GUN', 'GUN', 'GunCoin', 'GunCoin (GUN)', 'NeoScrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 2047, '0', 0),
(1899, 646897, '/coins/dfs/overview', './upload/coinlist/dfs.png', 'DFS', 'DFS', 'DFSCoin', 'DFSCoin (DFS)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2048, '0', 0),
(1900, 653274, '/coins/polis/overview', './upload/coinlist/polis.png', 'POLIS', 'POLIS', 'PolisPay', 'PolisPay (POLIS)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 2050, '0', 0),
(1901, 654118, '/coins/flot/overview', './upload/coinlist/flot.png', 'FLOT', 'FLOT', 'FireLotto', 'FireLotto (FLOT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2052, '0', 0),
(1902, 659393, '/coins/cl/overview', './upload/coinlist/cl.png', 'CL', 'CL', 'CoinLancer', 'CoinLancer (CL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2053, '0', 0),
(1903, 659488, '/coins/shnd/overview', './upload/coinlist/shnd.png', 'SHND', 'SHND', 'StrongHands', 'StrongHands (SHND)', 'SHA256D', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2054, '0', 0),
(1904, 659663, '/coins/aua/overview', './upload/coinlist/aua.png', 'AUA', 'AUA', 'ArubaCoin', 'ArubaCoin (AUA)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2055, '0', 0),
(1905, 659724, '/coins/saga/overview', './upload/coinlist/saga.png', 'SAGA', 'SAGA', 'SagaCoin', 'SagaCoin (SAGA)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2057, '0', 0),
(1906, 659973, '/coins/tsl/overview', './upload/coinlist/tsl.png', 'TSL', 'TSL', 'Energo', 'Energo (TSL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2059, '0', 0),
(1907, 660438, '/coins/irl/overview', './upload/coinlist/irl.png', 'IRL', 'IRL', 'IrishCoin', 'IrishCoin (IRL)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 2060, '0', 0),
(1908, 661619, '/coins/troll/overview', './upload/coinlist/troll.png', 'TROLL', 'TROLL', 'Trollcoin', 'Trollcoin (TROLL)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2063, '0', 0),
(1909, 661719, '/coins/for/overview', './upload/coinlist/for.png', 'FOR', 'FOR', 'Force Coin', 'Force Coin (FOR)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 2064, '0', 0),
(1910, 661777, '/coins/sgr/overview', './upload/coinlist/sgr.png', 'SGR', 'SGR', 'Sugar Exchange', 'Sugar Exchange (SGR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2065, '0', 0),
(1911, 666891, '/coins/jet/overview', './upload/coinlist/jet.png', 'JET', 'JET', 'Jetcoin', 'Jetcoin (JET)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2066, '0', 0),
(1912, 667050, '/coins/mds/overview', './upload/coinlist/ipnvhhke_400x400.jpg', 'MDS', 'MDS', 'MediShares', 'MediShares (MDS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2067, '0', 0),
(1913, 667139, '/coins/lcp/overview', './upload/coinlist/lcp.png', 'LCP', 'LCP', 'Litecoin Plus', 'Litecoin Plus (LCP)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2068, '0', 0),
(1914, 667239, '/coins/gtc/overview', './upload/coinlist/gtc.png', 'GTC', 'GTC', 'Game', 'Game (GTC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2069, '0', 0),
(1915, 667344, '/coins/ieth/overview', './upload/coinlist/ieth.png', 'IETH', 'IETH', 'iEthereum', 'iEthereum (IETH)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2070, '0', 0),
(1916, 667444, '/coins/gccstar/overview', './upload/coinlist/gcc.png', 'GCC*', 'GCC*', 'TheGCCcoin', 'TheGCCcoin (GCC*)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2071, '0', 0),
(1917, 674829, '/coins/sdrn/overview', './upload/coinlist/sdrn.png', 'SDRN', 'SDRN', 'Sanderon', 'Sanderon (SDRN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2072, '0', 0),
(1918, 674980, '/coins/kbr/overview', './upload/coinlist/kbr.png', 'KBR', 'KBR', 'Kubera Coin', 'Kubera Coin (KBR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2075, '0', 0),
(1919, 675053, '/coins/hpb/overview', './upload/coinlist/hpb.png', 'HPB', 'HPB', 'High Performance Blockchain', 'High Performance Blockchain (HPB)', 'DPoS', 'N/A', 0, 2000, 'N/A', 'N/A', 2076, '0', 0),
(1920, 675134, '/coins/monk/overview', './upload/coinlist/monk.png', 'MONK', 'MONK', 'Monkey Project', 'Monkey Project (MONK)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2078, '0', 0),
(1921, 675359, '/coins/jinn/overview', './upload/coinlist/jinn.png', 'JINN', 'JINN', 'Jinn', 'Jinn (JINN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2079, '0', 0),
(1922, 675692, '/coins/set/overview', './upload/coinlist/set.png', 'SET', 'SET', 'Setcoin', 'Setcoin (SET)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2080, '0', 0),
(1923, 675758, '/coins/mgn/overview', './upload/coinlist/mgn.png', 'MGN', 'MGN', 'MagnaCoin', 'MagnaCoin (MGN)', 'Quark', 'N/A', 0, 2000, 'N/A', 'N/A', 2081, '0', 0),
(1924, 675995, '/coins/kzc/overview', './upload/coinlist/kz.png', 'KZC', 'KZC', 'KZCash', 'KZCash (KZC)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 2082, '0', 0),
(1925, 676163, '/coins/gnr/overview', './upload/coinlist/gnr.png', 'GNR', 'GNR', 'Gainer', 'Gainer (GNR)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 2084, '0', 0),
(1926, 679231, '/coins/brc/overview', './upload/coinlist/brc.png', 'BRC', 'BRC', 'BrightCoin', 'BrightCoin (BRC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2087, '0', 0),
(1927, 679566, '/coins/hive/overview', './upload/coinlist/flat.png', 'HIVE', 'HIVE', 'Hive', 'Hive (HIVE)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2089, '0', 0),
(1928, 679646, '/coins/gx/overview', './upload/coinlist/gamex.png', 'GX', 'GX', 'GameX', 'GameX (GX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2090, '0', 0),
(1929, 680484, '/coins/lck/overview', './upload/coinlist/luck.png', 'LCK', 'LCK', 'Luckbox', 'Luckbox (LCK)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2091, '0', 0),
(1930, 683789, '/coins/etl/overview', './upload/coinlist/etl.png', 'ETL', 'ETL', 'EtherLite', 'EtherLite (ETL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2093, '0', 0),
(1931, 683827, '/coins/tel/overview', './upload/coinlist/tel.png', 'TEL', 'TEL', 'Telcoin', 'Telcoin (TEL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2094, '0', 0),
(1932, 683943, '/coins/brcstar/overview', './upload/coinlist/brc.png', 'BRC*', 'BRC*', 'BinaryCoin', 'BinaryCoin (BRC*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2096, '0', 0),
(1933, 684747, '/coins/zap/overview', './upload/coinlist/zap.png', 'ZAP', 'ZAP', 'Zap', 'Zap (ZAP)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2099, '0', 0),
(1934, 684818, '/coins/aidoc/overview', './upload/coinlist/aidoc.png', 'AIDOC', 'AIDOC', 'AI Doctor', 'AI Doctor (AIDOC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2100, '0', 0),
(1935, 685098, '/coins/ecc/overview', './upload/coinlist/ecc.png', 'ECC', 'ECC', 'ECC', 'ECC (ECC)', 'Scrypt', 'PoS', 0, 2000, 'N/A', 'N/A', 2101, '0', 0),
(1936, 688295, '/coins/lct/overview', './upload/coinlist/lct.png', 'LCT', 'LCT', 'LendConnect', 'LendConnect (LCT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2103, '0', 0),
(1937, 692707, '/coins/ebc/overview', './upload/coinlist/ebc.png', 'EBC', 'EBC', 'EBCoin', 'EBCoin (EBC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2104, '0', 0),
(1938, 692839, '/coins/int/overview', './upload/coinlist/int.png', 'INT', 'INT', 'Internet Node Token', 'Internet Node Token (INT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2106, '0', 0),
(1939, 692879, '/coins/stn/overview', './upload/coinlist/stn.png', 'STN', 'STN', 'Steneum Coin', 'Steneum Coin (STN)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 2108, '0', 0),
(1940, 694199, '/coins/pcoin/overview', './upload/coinlist/pcoin.png', 'PCOIN', 'PCOIN', 'Pioneer Coin', 'Pioneer Coin (PCOIN)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 2110, '0', 0),
(1941, 694303, '/coins/bln/overview', './upload/coinlist/bln.png', 'BLN', 'BLN', 'Bolenum', 'Bolenum (BLN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2111, '0', 0),
(1942, 698092, '/coins/edt/overview', './upload/coinlist/edt.png', 'EDT', 'EDT', 'EtherDelta', 'EtherDelta (EDT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2113, '0', 0),
(1943, 698206, '/coins/cyder/overview', './upload/coinlist/cyder.png', 'CYDER', 'CYDER', 'Cyder Coin', 'Cyder Coin (CYDER)', 'PoS', 'N/A', 0, 2000, 'N/A', 'N/A', 2114, '0', 0),
(1944, 704135, '/coins/eko/overview', './upload/coinlist/eko.png', 'EKO', 'EKO', 'EchoLink', 'EchoLink (EKO)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2117, '0', 0),
(1945, 707507, '/coins/bto/overview', './upload/coinlist/bot.png', 'BTO', 'BTO', 'Bottos', 'Bottos (BTO)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2119, '0', 0),
(1946, 707515, '/coins/doc/overview', './upload/coinlist/doc.png', 'DOC', 'DOC*', 'Doc Coin', 'Doc Coin (DOC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2120, '0', 0),
(1947, 707530, '/coins/arct/overview', './upload/coinlist/arct.png', 'ARCT', 'ARCT', 'ArbitrageCT', 'ArbitrageCT (ARCT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2121, '0', 0),
(1948, 708401, '/coins/imv/overview', './upload/coinlist/imv.png', 'IMV', 'IMV', 'ImmVRse', 'ImmVRse (IMV)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2122, '0', 0),
(1949, 708404, '/coins/aura/overview', './upload/coinlist/aura.png', 'AURA', 'AURA', 'Aurora', 'Aurora (AURA)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2123, '0', 0),
(1950, 708873, '/coins/idh/overview', './upload/coinlist/idh.png', 'IDH', 'IDH', 'IndaHash', 'IndaHash (IDH)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2124, '0', 0),
(1951, 709053, '/coins/cbt/overview', './upload/coinlist/cbt.png', 'CBT', 'CBT', 'CommerceBlock Token', 'CommerceBlock Token (CBT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2125, '0', 0),
(1952, 709089, '/coins/itz/overview', './upload/coinlist/itz.png', 'ITZ', 'ITZ', 'Interzone', 'Interzone (ITZ)', 'C11', 'PoW', 0, 2000, 'N/A', 'N/A', 2126, '0', 0),
(1953, 710087, '/coins/xbp/overview', './upload/coinlist/xbp.png', 'XBP', 'XBP', 'Black Pearl Coin', 'Black Pearl Coin (XBP)', 'X13', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2127, '0', 0),
(1954, 710098, '/coins/exrn/overview', './upload/coinlist/exrn.png', 'EXRN', 'EXRN', 'EXRNchain', 'EXRNchain (EXRN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2128, '0', 0),
(1955, 710156, '/coins/agi/overview', './upload/coinlist/agi.png', 'AGI', 'AGI', 'SingularityNET', 'SingularityNET (AGI)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2129, '0', 0),
(1956, 710240, '/coins/bft/overview', './upload/coinlist/bft.png', 'BFT', 'BFT', 'BF Token (BFT)', 'BF Token (BFT) (BFT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2130, '0', 0),
(1957, 710370, '/coins/lgo/overview', './upload/coinlist/lgo.png', 'LGO', 'LGO', 'Legolas Exchange', 'Legolas Exchange (LGO)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2131, '0', 0),
(1958, 711086, '/coins/sgl/overview', './upload/coinlist/sgl.png', 'SGL', 'SGL', 'Sigil', 'Sigil (SGL)', 'NeoScrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 2133, '0', 0),
(1959, 711252, '/coins/tnc/overview', './upload/coinlist/tnc.png', 'TNC', 'TNC', 'Trinity Network Credit', 'Trinity Network Credit (TNC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2134, '0', 0),
(1960, 713186, '/coins/dta/overview', './upload/coinlist/dta.png', 'DTA', 'DTA', 'Data', 'Data (DTA)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2137, '0', 0),
(1961, 713925, '/coins/cv/overview', './upload/coinlist/cv.png', 'CV', 'CV', 'CarVertical', 'CarVertical (CV)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2138, '0', 0),
(1962, 713947, '/coins/dtx/overview', './upload/coinlist/dtx.png', 'DTX', 'DTX', 'DataBroker DAO', 'DataBroker DAO (DTX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2139, '0', 0),
(1963, 714255, '/coins/ocn/overview', './upload/coinlist/ocn.png', 'OCN', 'OCN', 'Odyssey', 'Odyssey (OCN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2141, '0', 0),
(1964, 714811, '/coins/theta/overview', './upload/coinlist/theta.png', 'THETA', 'THETA', 'Theta', 'Theta (THETA)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2142, '0', 0),
(1965, 714866, '/coins/mdtstar/overview', './upload/coinlist/mdt.png', 'MDT*', 'MDT*', 'Measurable Data Token ', 'Measurable Data Token  (MDT*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2143, '0', 0),
(1966, 715622, '/coins/prps/overview', './upload/coinlist/prps.png', 'PRPS', 'PRPS', 'Purpose', 'Purpose (PRPS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2144, '0', 0),
(1967, 715640, '/coins/dubi/overview', './upload/coinlist/dubi.png', 'DUBI', 'DUBI', 'Decentralized Universal Basic Income', 'Decentralized Universal Basic Income (DUBI)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2145, '0', 0),
(1968, 715749, '/coins/bpt/overview', './upload/coinlist/bpt.png', 'BPT', 'BPT', 'Blockport', 'Blockport (BPT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2146, '0', 0),
(1969, 716522, '/coins/iost/overview', './upload/coinlist/iost.png', 'IOST', 'IOST', 'IOS token', 'IOS token (IOST)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2148, '0', 0),
(1970, 716574, '/coins/tct/overview', './upload/coinlist/tct.png', 'TCT', 'TCT', 'TokenClub ', 'TokenClub  (TCT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2149, '0', 0),
(1971, 716641, '/coins/trac/overview', './upload/coinlist/trac.png', 'TRAC', 'TRAC', 'OriginTrail', 'OriginTrail (TRAC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2150, '0', 0),
(1972, 716659, '/coins/mot/overview', './upload/coinlist/mot.png', 'MOT', 'MOT', 'Olympus Labs', 'Olympus Labs (MOT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2151, '0', 0),
(1973, 716725, '/coins/zil/overview', './upload/coinlist/zil.png', 'ZIL', 'ZIL', 'Zilliqa', 'Zilliqa (ZIL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2152, '0', 0),
(1974, 716736, '/coins/horse/overview', './upload/coinlist/horse.png', 'HORSE', 'HORSE', 'Ethorse ', 'Ethorse  (HORSE)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2153, '0', 0),
(1975, 716767, '/coins/qun/overview', './upload/coinlist/qun.png', 'QUN', 'QUN', 'QunQun', 'QunQun (QUN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2154, '0', 0),
(1976, 716854, '/coins/accstar/overview', './upload/coinlist/acc.png', 'ACC*', 'ACC*', 'Accelerator Network', 'Accelerator Network (ACC*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2156, '0', 0),
(1977, 718353, '/coins/swftc/overview', './upload/coinlist/swftc.png', 'SWFTC', 'SWFTC', 'SwftCoin', 'SwftCoin (SWFTC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2157, '0', 0),
(1978, 718363, '/coins/sent/overview', './upload/coinlist/sent.png', 'SENT', 'SENT', 'Sentinel', 'Sentinel (SENT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2158, '0', 0),
(1979, 718398, '/coins/ipl/overview', './upload/coinlist/ipl.png', 'IPL', 'IPL', 'InsurePal', 'InsurePal (IPL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2159, '0', 0),
(1980, 718435, '/coins/opc/overview', './upload/coinlist/opc.png', 'OPC', 'OPC', 'OP Coin', 'OP Coin (OPC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2160, '0', 0),
(1981, 718463, '/coins/saf/overview', './upload/coinlist/sfu.png', 'SAF', 'SAF', 'Safinus', 'Safinus (SAF)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2161, '0', 0),
(1982, 718565, '/coins/sha/overview', './upload/coinlist/sha.png', 'SHA', 'SHA', 'Shacoin', 'Shacoin (SHA)', 'SHA256', 'PoS', 0, 2000, 'N/A', 'N/A', 2162, '0', 0),
(1983, 718673, '/coins/pylnt/overview', './upload/coinlist/pylnt.png', 'PYLNT', 'PYLNT', 'Pylon Network', 'Pylon Network (PYLNT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2163, '0', 0),
(1984, 718975, '/coins/grlc/overview', './upload/coinlist/garlic.png', 'GRLC', 'GRLC', 'Garlicoin', 'Garlicoin (GRLC)', 'N/A', 'Scrypt-adaptive-N (ASIC resistant)', 0, 2000, 'N/A', 'N/A', 2164, '0', 0),
(1985, 719223, '/coins/eve/overview', './upload/coinlist/eve.png', 'EVE', 'EVE', 'Devery', 'Devery (EVE)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2166, '0', 0),
(1986, 719272, '/coins/yee/overview', './upload/coinlist/yee.png', 'YEE', 'YEE', 'Yee', 'Yee (YEE)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2167, '0', 0),
(1987, 719426, '/coins/gtcstar/overview', './upload/coinlist/gtcoin.png', 'GTC*', 'GTC*', 'Global Tour Coin', 'Global Tour Coin (GTC*)', 'Scrypt', 'N/A', 0, 2000, 'N/A', 'N/A', 2170, '0', 0),
(1988, 727150, '/coins/btw/overview', './upload/coinlist/btw.png', 'BTW', 'BTW', 'BitcoinWhite', 'BitcoinWhite (BTW)', 'DPoS', 'DPoS', 0, 2000, 'N/A', 'N/A', 2172, '0', 0),
(1989, 727769, '/coins/axp/overview', './upload/coinlist/axp.png', 'AXP', 'AXP', 'aXpire', 'aXpire (AXP)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2173, '0', 0),
(1990, 729627, '/coins/fota/overview', './upload/coinlist/fota.png', 'FOTA', 'FOTA', 'Fortuna', 'Fortuna (FOTA)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2174, '0', 0),
(1991, 730988, '/coins/cpcstar/overview', './upload/coinlist/cpc.png', 'CPC*', 'CPC*', 'CPChain', 'CPChain (CPC*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2176, '0', 0),
(1992, 731516, '/coins/pxs/overview', './upload/coinlist/pxs.png', 'PXS', 'PXS', 'Pundi X', 'Pundi X (PXS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2178, '0', 0),
(1993, 731559, '/coins/zpt/overview', './upload/coinlist/zpt.png', 'ZPT', 'ZPT', 'Zeepin', 'Zeepin (ZPT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2179, '0', 0),
(1994, 731596, '/coins/croat/overview', './upload/coinlist/croat.png', 'CROAT', 'CROAT', 'Croat', 'Croat (CROAT)', 'CryptoNight', 'PoW', 0, 2000, 'N/A', 'N/A', 2180, '0', 0),
(1995, 731629, '/coins/ref/overview', './upload/coinlist/ref.png', 'REF', 'REF', 'RefToken', 'RefToken (REF)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2181, '0', 0),
(1996, 731917, '/coins/sxdt/overview', './upload/coinlist/sxdt.png', 'SXDT', 'SXDT', 'SPECTRE Dividend Token', 'SPECTRE Dividend Token (SXDT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2182, '0', 0),
(1997, 731943, '/coins/sxut/overview', './upload/coinlist/sxdt.png', 'SXUT', 'SXUT', 'SPECTRE Utility Token', 'SPECTRE Utility Token (SXUT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2183, '0', 0),
(1998, 732098, '/coins/fairstar/overview', './upload/coinlist/fair.png', 'FAIR*', 'FAIR*', 'FairGame', 'FairGame (FAIR*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2185, '0', 0),
(1999, 732147, '/coins/val/overview', './upload/coinlist/val.png', 'VAL', 'VAL', 'Valorbit', 'Valorbit (VAL)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2186, '0', 0),
(2000, 732161, '/coins/manstar/overview', './upload/coinlist/man.png', 'MAN*', 'MAN*', 'Matrix AI Network', 'Matrix AI Network (MAN*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2187, '0', 0),
(2001, 732197, '/coins/bcdn/overview', './upload/coinlist/1.png', 'BCDN', 'BCDN', 'BlockCDN ', 'BlockCDN  (BCDN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2188, '0', 0),
(2002, 734584, '/coins/stk/overview', './upload/coinlist/stk.png', 'STK', 'STK', 'STK Token', 'STK Token (STK)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2189, '0', 0),
(2003, 736230, '/coins/mzx/overview', './upload/coinlist/mzx.png', 'MZX', 'MZX', 'Mosaic Network', 'Mosaic Network (MZX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2190, '0', 0),
(2004, 744820, '/coins/polystar/overview', './upload/coinlist/poly.png', 'POLY*', 'POLY*', 'Polymath Network', 'Polymath Network (POLY*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2194, '0', 0),
(2005, 744880, '/coins/xto/overview', './upload/coinlist/xto.png', 'XTO', 'XTO', 'Tao', 'Tao (XTO)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2195, '0', 0),
(2006, 744910, '/coins/ruff/overview', './upload/coinlist/fqqzfp9_400x400.png', 'RUFF', 'RUFF', 'Ruff', 'Ruff (RUFF)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2196, '0', 0),
(2007, 744987, '/coins/ela/overview', './upload/coinlist/ela.png', 'ELA', 'ELA', 'Elastos', 'Elastos (ELA)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2197, '0', 0),
(2008, 745017, '/coins/tpaystar/overview', './upload/coinlist/tpay.png', 'TPAY*', 'TPAY*', 'TokenPay', 'TokenPay (TPAY*)', 'POS 3.0', 'PoS', 0, 2000, 'N/A', 'N/A', 2198, '0', 0),
(2009, 745054, '/coins/cxo/overview', './upload/coinlist/cxo.png', 'CXO', 'CXO', 'CargoX', 'CargoX (CXO)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2199, '0', 0),
(2010, 748858, '/coins/sisa/overview', './upload/coinlist/sisa.png', 'SISA', 'SISA', 'Strategic Investments in Significant Areas', 'Strategic Investments in Significant Areas (SISA)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2203, '0', 0),
(2011, 748907, '/coins/ebit/overview', './upload/coinlist/ebit-logo.png', 'EBIT', 'EBIT', 'eBit', 'eBit (EBIT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2204, '0', 0),
(2012, 749450, '/coins/cuz/overview', './upload/coinlist/cuz.png', 'CUZ', 'CUZ', 'Cool Cousin', 'Cool Cousin (CUZ)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2209, '0', 0),
(2013, 750134, '/coins/ing/overview', './upload/coinlist/ing_logo.png', 'ING', 'ING', 'Iungo', 'Iungo (ING)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2214, '0', 0),
(2014, 750272, '/coins/lhc/overview', './upload/coinlist/lhc.png', 'LHC', 'LHC', 'LHCoin', 'LHCoin (LHC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2215, '0', 0),
(2015, 752710, '/coins/blz/overview', './upload/coinlist/1.png', 'BLZ', 'BLZ', 'Bluzelle', 'Bluzelle (BLZ)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2216, '0', 0),
(2016, 752863, '/coins/halal/overview', './upload/coinlist/halal_logo.png', 'HALAL', 'HALAL', 'Halal', 'Halal (HALAL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2217, '0', 0),
(2017, 752942, '/coins/cravestar/overview', './upload/coinlist/crave_logo.png', 'CRAVE*', 'CRAVE*', 'Crave-NG', 'Crave-NG (CRAVE*)', 'SHA256', 'PoS', 0, 2000, 'N/A', 'N/A', 2218, '0', 0),
(2018, 752993, '/coins/chsb/overview', './upload/coinlist/chsb_logo.png', 'CHSB', 'CHSB', 'SwissBorg', 'SwissBorg (CHSB)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2219, '0', 0),
(2019, 753511, '/coins/mct/overview', './upload/coinlist/1717mct_logo.png', 'MCT', 'MCT', '1717 Masonic Commemorative Token', '1717 Masonic Commemorative Token (MCT)', 'Ethash', 'PoS', 0, 2000, 'N/A', 'N/A', 2221, '0', 0),
(2020, 753690, '/coins/cwis/overview', './upload/coinlist/cwis_logo.png', 'CWIS', 'CWIS', 'Crypto Wisdom Coin', 'Crypto Wisdom Coin (CWIS)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 2223, '0', 0),
(2021, 753824, '/coins/mbc/overview', './upload/coinlist/mbc_logo.png', 'MBC', 'MBC', 'My Big Coin', 'My Big Coin (MBC)', 'Scrypt', 'PoW and PoS', 0, 2000, 'N/A', 'N/A', 2224, '0', 0),
(2022, 755707, '/coins/mtnstar/overview', './upload/coinlist/mtn_logo.png', 'MTN*', 'MTN*', 'Medicalchain', 'Medicalchain (MTN*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2227, '0', 0),
(2023, 756132, '/coins/wbtc/overview', './upload/coinlist/wbtc.png', 'WBTC', 'WBTC', 'WorldBTC', 'WorldBTC (WBTC)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2229, '0', 0),
(2024, 757542, '/coins/tky/overview', './upload/coinlist/tky.png', 'TKY', 'TKY', 'THEKEY Token', 'THEKEY Token (TKY)', 'NeoScrypt', 'N/A', 0, 2000, 'N/A', 'N/A', 2235, '0', 0),
(2025, 763768, '/coins/pareto/overview', './upload/coinlist/pareto.png', 'PARETO', 'PARETO', 'Pareto Network Token', 'Pareto Network Token (PARETO)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2247, '0', 0),
(2026, 764334, '/coins/bee/overview', './upload/coinlist/bee.png', 'BEE', 'BEE', 'Bee Token', 'Bee Token (BEE)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2258, '0', 0),
(2027, 764438, '/coins/mun/overview', './upload/coinlist/mun.png', 'MUN', 'MUN', 'MUNcoin', 'MUNcoin (MUN)', 'SkunkHash', 'PoW', 0, 2000, 'N/A', 'N/A', 2259, '0', 0),
(2028, 765383, '/coins/tig/overview', './upload/coinlist/tig.png', 'TIG', 'TIG', 'Tigereum', 'Tigereum (TIG)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2260, '0', 0),
(2029, 765943, '/coins/dxt/overview', './upload/coinlist/dxt.png', 'DXT', 'DXT', 'DataWallet', 'DataWallet (DXT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2267, '0', 0),
(2030, 767334, '/coins/usx/overview', './upload/coinlist/usx.png', 'USX', 'USX', 'Unified Society USDEX', 'Unified Society USDEX (USX)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2276, '0', 0),
(2031, 767384, '/coins/bca/overview', './upload/coinlist/bca-2.jpg', 'BCA', 'BCA', 'Bitcoin Atom', 'Bitcoin Atom (BCA)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2278, '0', 0),
(2032, 768219, '/coins/fsnstar/overview', './upload/coinlist/fsn.png', 'FSN*', 'FSN*', 'Fusion', 'Fusion (FSN*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2283, '0', 0),
(2033, 769416, '/coins/ary/overview', './upload/coinlist/ary.png', 'ARY', 'ARY', 'Block Array', 'Block Array (ARY)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2286, '0', 0),
(2034, 769759, '/coins/bun/overview', './upload/coinlist/bun.png', 'BUN', 'BUN', 'BunnyCoin', 'BunnyCoin (BUN)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 2293, '0', 0),
(2035, 769862, '/coins/trdt/overview', './upload/coinlist/trdt.png', 'TRDT', 'TRDT', 'Trident', 'Trident (TRDT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2297, '0', 0),
(2036, 769965, '/coins/xbty/overview', './upload/coinlist/xbty.jpg', 'XBTY', 'XBTY', 'Bounty', 'Bounty (XBTY)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2299, '0', 0),
(2037, 770043, '/coins/jc/overview', './upload/coinlist/jc.png', 'JC', 'JC', 'JesusCoin', 'JesusCoin (JC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2300, '0', 0),
(2038, 770118, '/coins/skc/overview', './upload/coinlist/skc.jpg', 'SKC', 'SKC', 'Skeincoin', 'Skeincoin (SKC)', 'Skein', 'N/A', 0, 2000, 'N/A', 'N/A', 2302, '0', 0),
(2039, 771061, '/coins/jew/overview', './upload/coinlist/untitled-1.png', 'JEW', 'JEW', 'Shekel', 'Shekel (JEW)', 'Quark', 'PoS', 0, 2000, 'N/A', 'N/A', 2304, '0', 0),
(2040, 771782, '/coins/crdnc/overview', './upload/coinlist/crdnc.png', 'CRDNC', 'CRDNC', 'Credence Coin', 'Credence Coin (CRDNC)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2311, '0', 0),
(2041, 4433, '/coins/xvg/overview', './upload/coinlist/xvg.png', 'XVG', 'XVG', 'Verge', 'Verge (XVG)', 'Multiple', 'PoW', 0, 2000, 'N/A', 'N/A', 99, '0', 0),
(2042, 243013, '/coins/ttt/overview', './upload/coinlist/ttt.jpg', 'TTT', 'TTT', 'Tap Project', 'Tap Project (TTT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1528, '0', 0),
(2043, 674918, '/coins/ink/overview', './upload/coinlist/ink.png', 'INK', 'INK', 'Ink', 'Ink (INK)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2074, '0', 0),
(2044, 777007, '/coins/necstar/overview', './upload/coinlist/nec.png', 'NEC*', 'NEC*', 'Ethfinex Nectar Token', 'Ethfinex Nectar Token (NEC*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2320, '0', 0),
(2045, 355242, '/coins/wpr/overview', './upload/coinlist/wpr.png', 'WPR', 'WPR', 'WePower', 'WePower (WPR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1752, '0', 0),
(2046, 778908, '/coins/dtcstarstar/overview', './upload/coinlist/dtc-1.png', 'DTC**', 'DTC**', 'DivotyCoin', 'DivotyCoin (DTC**)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2335, '0', 0),
(2047, 763535, '/coins/drpu/overview', './upload/coinlist/drpu.png', 'DRPU', 'DRPU', 'DRP Utility', 'DRP Utility (DRPU)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2244, '0', 0),
(2048, 778953, '/coins/dadi/overview', './upload/coinlist/dadi.png', 'DADI', 'DADI', 'DADI', 'DADI (DADI)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2336, '0', 0),
(2049, 659770, '/coins/gxs/overview', './upload/coinlist/gxs.png', 'GXS', 'GXS', 'GXShares', 'GXShares (GXS)', 'N/A', 'DPoS', 0, 2000, 'N/A', 'N/A', 2058, '0', 0),
(2050, 779041, '/coins/bbp/overview', './upload/coinlist/bbp.png', 'BBP', 'BBP', 'BiblePay', 'BiblePay (BBP)', 'Proof-of-BibleHash', 'POBh', 0, 2000, 'N/A', 'N/A', 2340, '0', 0),
(2051, 749620, '/coins/hlc/overview', './upload/coinlist/hlc_logo.png', 'HLC', 'HLC', 'Halal-Chain', 'Halal-Chain (HLC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2210, '0', 0),
(2052, 542140, '/coins/medstar/overview', './upload/coinlist/med.png', 'MED*', 'MED*', 'MediBloc', 'MediBloc (MED*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1995, '0', 0),
(2053, 660947, '/coins/bot/overview', './upload/coinlist/bot.png', 'BOT', 'BOT', 'Bodhi', 'Bodhi (BOT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2061, '0', 0),
(2054, 716795, '/coins/qbtstar/overview', './upload/coinlist/oloethnw_400x400.jpg', 'QBT*', 'QBT*', 'Qbao', 'Qbao (QBT*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2155, '0', 0),
(2055, 477743, '/coins/xdce/overview', './upload/coinlist/xdc.png', 'XDCE', 'XDCE', 'XinFin Coin', 'XinFin Coin (XDCE)', 'SHA256', 'PoS', 0, 2000, 'N/A', 'N/A', 1961, '0', 0),
(2056, 344337, '/coins/echt/overview', './upload/coinlist/echt.png', 'ECHT', 'ECHT', 'e-Chat', 'e-Chat (ECHT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1715, '0', 0),
(2057, 771553, '/coins/krm/overview', './upload/coinlist/krm.png', 'KRM', 'KRM', 'Karma', 'Karma (KRM)', 'Groestl', 'PoS', 0, 2000, 'N/A', 'N/A', 2307, '0', 0),
(2058, 771678, '/coins/cdy/overview', './upload/coinlist/bcy.jpg', 'CDY', 'CDY', 'Bitcoin Candy', 'Bitcoin Candy (CDY)', 'Equihash', 'PoW', 0, 2000, 'N/A', 'N/A', 2309, '0', 0),
(2059, 771723, '/coins/sss/overview', './upload/coinlist/sss.png', 'SSS', 'SSS', 'ShareChain', 'ShareChain (SSS)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 2310, '0', 0),
(2060, 729809, '/coins/ddd/overview', './upload/coinlist/ddd.png', 'DDD', 'DDD', 'Scry.info', 'Scry.info (DDD)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2175, '0', 0),
(2061, 771805, '/coins/bifi/overview', './upload/coinlist/bifi.png', 'BIFI', 'BIFI', 'BitcoinFile', 'BitcoinFile (BIFI)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 2312, '0', 0),
(2062, 776828, '/coins/btf/overview', './upload/coinlist/btf.jpg', 'BTF', 'BTF', 'Blockchain Traded Fund', 'Blockchain Traded Fund (BTF)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2315, '0', 0),
(2063, 776863, '/coins/ipcstar/overview', './upload/coinlist/ipc.jpg', 'IPC*', 'IPC*', 'IPChain', 'IPChain (IPC*)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 2316, '0', 0),
(2064, 749006, '/coins/rct/overview', './upload/coinlist/rct.png', 'RCT', 'RCT', 'RealChain', 'RealChain (RCT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2206, '0', 0),
(2065, 776896, '/coins/show/overview', './upload/coinlist/show.jpg', 'SHOW', 'SHOW', 'ShowCoin', 'ShowCoin (SHOW)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 2317, '0', 0),
(2066, 776935, '/coins/stc/overview', './upload/coinlist/stc.jpg', 'STC', 'STC', 'StarChain', 'StarChain (STC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2318, '0', 0),
(2067, 777027, '/coins/ait/overview', './upload/coinlist/ait.jpg', 'AIT', 'AIT', 'AIT Token', 'AIT Token (AIT)', 'Lyra2RE', 'N/A', 0, 2000, 'N/A', 'N/A', 2321, '0', 0),
(2068, 363066, '/coins/dttstar/overview', './upload/coinlist/dtt1.png', 'DTT*', 'DTT*', 'Data Trading', 'Data Trading (DTT*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1769, '0', 0),
(2069, 777187, '/coins/stq/overview', './upload/coinlist/stq.jpg', 'STQ', 'STQ', 'Storiqa Token', 'Storiqa Token (STQ)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2322, '0', 0),
(2070, 780891, '/coins/ten/overview', './upload/coinlist/ten.png', 'TEN', 'TEN', 'Tokenomy', 'Tokenomy (TEN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2348, '0', 0),
(2071, 749857, '/coins/betr/overview', './upload/coinlist/betr_logo.png', 'BETR', 'BETR', 'BetterBetting', 'BetterBetting (BETR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2211, '0', 0),
(2072, 710597, '/coins/crpt/overview', './upload/coinlist/crpt.png', 'CRPT', 'CRPT', 'Crypterium', 'Crypterium (CRPT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2132, '0', 0),
(2073, 677648, '/coins/lwf/overview', './upload/coinlist/lwf.png', 'LWF', 'LWF', 'Local World Forwarders', 'Local World Forwarders (LWF)', 'DPoS', 'DPoS', 0, 2000, 'N/A', 'N/A', 2086, '0', 0),
(2074, 408765, '/coins/deb/overview', './upload/coinlist/deb.png', 'DEB', 'DEB', 'Debitum Token', 'Debitum Token (DEB)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1888, '0', 0),
(2075, 491325, '/coins/pyp/overview', './upload/coinlist/pyp.png', 'PYP', 'PYP', 'PayPro', 'PayPro (PYP)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1969, '0', 0),
(2076, 750091, '/coins/gmr/overview', './upload/coinlist/gmr.png', 'GMR', 'GMR', 'Gimmer', 'Gimmer (GMR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2213, '0', 0),
(2077, 777330, '/coins/alt/overview', './upload/coinlist/alt.jpg', 'ALT', 'ALT', 'ALTcoin', 'ALTcoin (ALT)', 'SHA256', 'N/A', 0, 2000, 'N/A', 'N/A', 2323, '0', 0),
(2078, 777368, '/coins/trf/overview', './upload/coinlist/trf.png', 'TRF', 'TRF', 'Travelflex', 'Travelflex (TRF)', 'Dagger', 'PoW', 0, 2000, 'N/A', 'N/A', 2324, '0', 0),
(2079, 777407, '/coins/kb3/overview', './upload/coinlist/kb3.jpg', 'KB3', 'KB3', 'B3Coin', 'B3Coin (KB3)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2325, '0', 0),
(2080, 783320, '/coins/lcc/overview', './upload/coinlist/lcc.png', 'LCC', 'LCC', 'LitecoinCash', 'LitecoinCash (LCC)', 'SHA256', 'N/A', 0, 2000, 'N/A', 'N/A', 2361, '0', 0),
(2081, 765701, '/coins/nyx/overview', './upload/coinlist/nyx.png', 'NYX', 'NYX', 'NYXCOIN', 'NYXCOIN (NYX)', 'NeoScrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 2263, '0', 0);
INSERT INTO `dbt_cryptocoin` (`id`, `cid`, `url`, `image`, `name`, `symbol`, `coin_name`, `full_name`, `algorithm`, `proof_type`, `show_home`, `coin_position`, `premined_value`, `total_coins_freefloat`, `rank`, `sponsored`, `status`) VALUES
(2082, 770254, '/coins/mwat/overview', './upload/coinlist/mwat.jpg', 'MWAT', 'MWAT', 'RED MegaWatt', 'RED MegaWatt (MWAT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2303, '0', 0),
(2083, 28216, '/coins/zyd/overview', './upload/coinlist/zyd.png', 'ZYD', 'ZYD', 'ZayedCoin', 'ZayedCoin (ZYD)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 747, '0', 0),
(2084, 3807, '/coins/dash/overview', './upload/coinlist/imageedit_27_4355944719.png', 'DASH', 'DASH', 'DigitalCash', 'DigitalCash (DASH)', '', 'PoW/PoS', 1, 4, 'N/A', 'N/A', 4, '0', 1),
(2085, 783293, '/coins/ptr/overview', './upload/coinlist/ptr.png', 'PTR', 'PTR', 'Petro', 'Petro (PTR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2360, '0', 0),
(2086, 321189, '/coins/ebtc/overview', './upload/coinlist/ebtc.png', 'EBTC', 'EBTC', 'eBitcoin', 'eBitcoin (EBTC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1633, '0', 0),
(2087, 784981, '/coins/flip/overview', './upload/coinlist/flip.png', 'FLIP', 'FLIP', 'BitFlip', 'BitFlip (FLIP)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 2371, '0', 0),
(2088, 5315, '/coins/nlg/overview', './upload/coinlist/nlg.png', 'NLG', 'NLG', 'Gulden', 'Gulden (NLG)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 284, '0', 0),
(2089, 466492, '/coins/utn/overview', './upload/coinlist/utn.png', 'UTN', 'UTN', 'Universa', 'Universa (UTN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1956, '0', 0),
(2090, 769483, '/coins/ilt/overview', './upload/coinlist/iqt.png', 'ILT', 'ILT', 'iOlite', 'iOlite (ILT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2288, '0', 0),
(2091, 764104, '/coins/iqb/overview', './upload/coinlist/iqb.png', 'IQB', 'IQB', 'Intelligence Quotient Benefit', 'Intelligence Quotient Benefit (IQB)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2253, '0', 0),
(2092, 757568, '/coins/banca/overview', './upload/coinlist/banca.png', 'BANCA', 'BANCA', 'BANCA', 'BANCA (BANCA)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2236, '0', 0),
(2093, 324012, '/coins/earth/overview', './upload/coinlist/earth.png', 'EARTH', 'EARTH', 'Earth Token', 'Earth Token (EARTH)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1641, '0', 0),
(2094, 679479, '/coins/wcg/overview', './upload/coinlist/wcg.png', 'WCG', 'WCG', 'World Crypto Gold', 'World Crypto Gold (WCG)', 'SHA256', 'Proof of Stake', 0, 2000, 'N/A', 'N/A', 2088, '0', 0),
(2095, 222133, '/coins/xmcc/overview', './upload/coinlist/xmcc.jpg', 'XMCC', 'XMCC', 'Monoeci', 'Monoeci (XMCC)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1462, '0', 0),
(2096, 737393, '/coins/crcstarstar/overview', './upload/coinlist/crc.png', 'CRC**', 'CRC**', 'CryCash', 'CryCash (CRC**)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2191, '0', 0),
(2097, 769415, '/coins/nbr/overview', './upload/coinlist/nbr.jpg', 'NBR', 'NBR', 'Niobio Cash', 'Niobio Cash (NBR)', 'CryptoNight', 'PoW', 0, 2000, 'N/A', 'N/A', 2285, '0', 0),
(2098, 781729, '/coins/hlp/overview', './upload/coinlist/hlp.png', 'HLP', 'HLP', 'Purpose Coin', 'Purpose Coin (HLP)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2357, '0', 0),
(2099, 740271, '/coins/q1s/overview', './upload/coinlist/q1s.png', 'Q1S', 'Q1S', 'Quantum1Net', 'Quantum1Net (Q1S)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2193, '0', 0),
(2100, 777667, '/coins/eql/overview', './upload/coinlist/eql.jpg', 'EQL', 'EQL', 'EQUAL', 'EQUAL (EQL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2330, '0', 0),
(2101, 777717, '/coins/vulc/overview', './upload/coinlist/vulc.jpg', 'VULC', 'VULC', 'Vulcano', 'Vulcano (VULC)', 'Scrypt', 'PoS/PoW', 0, 2000, 'N/A', 'N/A', 2332, '0', 0),
(2102, 4608, '/coins/spa/overview', './upload/coinlist/spa.png', 'SPA', 'SPA', 'SpainCoin', 'SpainCoin (SPA)', 'Scrypt-n', 'PoW', 0, 2000, 'N/A', 'N/A', 204, '0', 0),
(2103, 779032, '/coins/unrc/overview', './upload/coinlist/unrc.png', 'UNRC', 'UNRC', 'UniversalRoyalCoin', 'UniversalRoyalCoin (UNRC)', 'SHA256', 'PoS', 0, 2000, 'N/A', 'N/A', 2339, '0', 0),
(2104, 779014, '/coins/tokc/overview', './upload/coinlist/tokc.jpg', 'TOKC', 'TOKC', 'Tokyo Coin', 'Tokyo Coin (TOKC)', 'X13', 'PoS', 0, 2000, 'N/A', 'N/A', 2338, '0', 0),
(2105, 4348, '/coins/sxc/overview', './upload/coinlist/sxc.png', 'SXC', 'SXC', 'SexCoin', 'SexCoin (SXC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 61, '0', 0),
(2106, 779488, '/coins/hys/overview', './upload/coinlist/hys.jpg', 'HYS', 'HYS', 'Heiss Shares', 'Heiss Shares (HYS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2344, '0', 0),
(2107, 779599, '/coins/lcwp/overview', './upload/coinlist/lcwp.jpg', 'LCWP', 'LCWP', 'LiteCoinW Plus', 'LiteCoinW Plus (LCWP)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2345, '0', 0),
(2108, 784396, '/coins/bcrstar/overview', './upload/coinlist/bcr.jpg', 'BCR*', 'BCR*', 'Bitcoin Royal', 'Bitcoin Royal (BCR*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2364, '0', 0),
(2109, 784821, '/coins/spcstar/overview', './upload/coinlist/spc2.jpg', 'SPC*', 'SPC*', 'SpaceChain', 'SpaceChain (SPC*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2370, '0', 0),
(2110, 787620, '/coins/goodstar/overview', './upload/coinlist/good.jpg', 'GOOD*', 'GOOD*', 'Goodomy', 'Goodomy (GOOD*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2374, '0', 0),
(2111, 788387, '/coins/dth/overview', './upload/coinlist/dth.jpg', 'DTH', 'DTH', 'Dether', 'Dether (DTH)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2378, '0', 0),
(2112, 788409, '/coins/soc/overview', './upload/coinlist/soc.png', 'SOC', 'SOC', 'All Sports Coin', 'All Sports Coin (SOC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2379, '0', 0),
(2113, 788468, '/coins/tdx/overview', './upload/coinlist/tdx.png', 'TDX', 'TDX', 'Tidex Token', 'Tidex Token (TDX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2380, '0', 0),
(2114, 789504, '/coins/cln/overview', './upload/coinlist/cln.png', 'CLN', 'CLN', 'Colu Local Network', 'Colu Local Network (CLN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2386, '0', 0),
(2115, 698425, '/coins/mlt/overview', './upload/coinlist/mlt.png', 'MLT', 'MLT', 'MultiGames', 'MultiGames (MLT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2116, '0', 0),
(2116, 692727, '/coins/vst/overview', './upload/coinlist/vst.png', 'VST', 'VST', 'Vestarin', 'Vestarin (VST)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2105, '0', 0),
(2117, 788239, '/coins/ren/overview', './upload/coinlist/ren.jpg', 'REN', 'REN', 'Republic Token', 'Republic Token (REN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2377, '0', 0),
(2118, 784595, '/coins/bax/overview', './upload/coinlist/bax.jpg', 'BAX', 'BAX', 'BABB', 'BABB (BAX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2368, '0', 0),
(2119, 746288, '/coins/wt/overview', './upload/coinlist/wt.png', 'WT', 'WT', 'WeToken', 'WeToken (WT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2201, '0', 0),
(2120, 23435, '/coins/spxstar/overview', './upload/coinlist/spx.png', 'SPX*', 'SPX', 'Specie', 'Specie (SPX*)', 'PoS', 'PoS', 0, 2000, 'N/A', 'N/A', 679, '0', 0),
(2121, 791041, '/coins/bashc/overview', './upload/coinlist/bashc.png', 'BASHC', 'BASHC', 'BashCoin', 'BashCoin (BASHC)', 'Skein', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2389, '0', 0),
(2122, 791053, '/coins/digif/overview', './upload/coinlist/digif.png', 'DIGIF', 'DIGIF', 'DigiFel', 'DigiFel (DIGIF)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 2390, '0', 0),
(2123, 789789, '/coins/nihl/overview', './upload/coinlist/nihl.png', 'NIHL', 'NIHL', 'Nihilo Coin', 'Nihilo Coin (NIHL)', 'NeoScrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2387, '0', 0),
(2124, 791176, '/coins/cbs/overview', './upload/coinlist/cbs.png', 'CBS', 'CBS', 'Cerberus', 'Cerberus (CBS)', 'NeoScrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 2392, '0', 0),
(2125, 370889, '/coins/rebl/overview', './upload/coinlist/rebl.png', 'REBL', 'REBL', 'Rebellious', 'Rebellious (REBL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1792, '1', 0),
(2126, 737883, '/coins/spice/overview', './upload/coinlist/vc.png', 'SPICE', 'SPICE', 'SPiCE Venture Capital ', 'SPiCE Venture Capital  (SPICE)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2192, '0', 0),
(2127, 777557, '/coins/fdx/overview', './upload/coinlist/fdx.jpg', 'FDX', 'FDX', 'fidentiaX', 'fidentiaX (FDX)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 2327, '0', 0),
(2128, 787696, '/coins/alx/overview', './upload/coinlist/alx.jpg', 'ALX', 'ALX', 'ALAX', 'ALAX (ALX)', 'DPoS', 'DPoS', 0, 2000, 'N/A', 'N/A', 2376, '0', 0),
(2129, 767260, '/coins/lym/overview', './upload/coinlist/lym.png', 'LYM', 'LYM', 'Lympo', 'Lympo (LYM)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2275, '0', 0),
(2130, 187015, '/coins/npx/overview', './upload/coinlist/npx.png', 'NPX', 'NPX', 'Napoleon X', 'Napoleon X (NPX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1359, '0', 0),
(2131, 223246, '/coins/lnc/overview', './upload/coinlist/lnc.png', 'LNC', 'LNC', 'BlockLancer', 'BlockLancer (LNC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1482, '0', 0),
(2132, 784762, '/coins/berry/overview', './upload/coinlist/berry.jpg', 'BERRY', 'BERRY', 'Rentberry', 'Rentberry (BERRY)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2369, '0', 0),
(2133, 792023, '/coins/auc/overview', './upload/coinlist/untitled-1.png', 'AUC', 'AUC', 'Auctus', 'Auctus (AUC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2399, '0', 0),
(2134, 692869, '/coins/cpy/overview', './upload/coinlist/cpy.png', 'CPY', 'CPY', 'COPYTRACK', 'COPYTRACK (CPY)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2107, '0', 0),
(2135, 388493, '/coins/exy/overview', './upload/coinlist/exy.png', 'EXY', 'EXY', 'Experty', 'Experty (EXY)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1858, '0', 0),
(2136, 764096, '/coins/dtrc/overview', './upload/coinlist/dtr.png', 'DTRC', 'DTRC', 'Datarius', 'Datarius (DTRC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2252, '0', 0),
(2137, 792136, '/coins/liz/overview', './upload/coinlist/liz.png', 'LIZ', 'LIZ', 'Lizus Payment', 'Lizus Payment (LIZ)', 'Skein', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2400, '0', 0),
(2138, 769546, '/coins/dai/overview', './upload/coinlist/dai.jpg', 'DAI', 'DAI', 'Dai', 'Dai (DAI)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2290, '0', 0),
(2139, 792548, '/coins/ncash/overview', './upload/coinlist/untitled-1.png', 'NCASH', 'NCASH', 'Nucleus Vision', 'Nucleus Vision (NCASH)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2402, '0', 0),
(2140, 792268, '/coins/cif/overview', './upload/coinlist/cif.png', 'CIF', 'CIF', 'Crypto Improvement Fund', 'Crypto Improvement Fund (CIF)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 2401, '0', 0),
(2141, 199148, '/coins/mana/overview', './upload/coinlist/mana.png', 'MANA', 'MANA', 'Decentraland', 'Decentraland (MANA)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1415, '0', 0),
(2142, 757589, '/coins/trtl/overview', './upload/coinlist/untitled-1.png', 'TRTL', 'TRTL', 'TurtleCoin', 'TurtleCoin (TRTL)', 'CryptoNight', 'PoW', 0, 2000, 'N/A', 'N/A', 2237, '0', 0),
(2143, 793021, '/coins/cmct/overview', './upload/coinlist/cmct.png', 'CMCT', 'CMCT', 'Crowd Machine', 'Crowd Machine (CMCT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2404, '0', 0),
(2144, 793802, '/coins/putstar/overview', './upload/coinlist/untitled-1.png', 'PUT*', 'PUT*', 'Robin8 Profile Utility Token', 'Robin8 Profile Utility Token (PUT*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2405, '0', 0),
(2145, 766212, '/coins/sat/overview', './upload/coinlist/sat.png', 'SAT', 'SAT', 'Satisfaction Token', 'Satisfaction Token (SAT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2271, '0', 0),
(2146, 792725, '/coins/spd/overview', './upload/coinlist/spd.png', 'SPD', 'SPD', 'Stipend', 'Stipend (SPD)', '', 'PoW/PoS', 1, 6, 'N/A', 'N/A', 2403, '0', 1),
(2147, 784462, '/coins/vany/overview', './upload/coinlist/vany.png', 'VANY', 'VANY', 'Vanywhere', 'Vanywhere (VANY)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2365, '0', 0),
(2148, 793845, '/coins/poa/overview', './upload/coinlist/poa.png', 'POA', 'POA', 'Poa Network', 'Poa Network (POA)', 'Proof-of-Authority', 'PoA', 0, 2000, 'N/A', 'N/A', 2407, '0', 0),
(2149, 789006, '/coins/lot/overview', './upload/coinlist/lot.png', 'LOT', 'LOT', 'LottoCoin', 'LottoCoin (LOT)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 2381, '0', 0),
(2150, 789144, '/coins/leaf/overview', './upload/coinlist/leaf.jpg', 'LEAF', 'LEAF', 'LeafCoin', 'LeafCoin (LEAF)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 2383, '0', 0),
(2151, 789170, '/coins/comp/overview', './upload/coinlist/comp.jpg', 'COMP', 'COMP', 'Compound Coin', 'Compound Coin (COMP)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2384, '0', 0),
(2152, 789115, '/coins/funk/overview', './upload/coinlist/funk.png', 'FUNK', 'FUNK', 'Cypherfunks Coin', 'Cypherfunks Coin (FUNK)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 2382, '0', 0),
(2153, 255254, '/coins/scl/overview', './upload/coinlist/untitled-1.png', 'SCL', 'SCL', 'Sociall', 'Sociall (SCL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1549, '0', 0),
(2154, 4622, '/coins/tes/overview', './upload/coinlist/tes.png', 'TES', 'TES', 'TeslaCoin', 'TeslaCoin (TES)', 'Multiple', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 215, '0', 0),
(2155, 732021, '/coins/ldc/overview', './upload/coinlist/ldc.png', 'LDC', 'LDC*', 'LeadCoin', 'LeadCoin (LDC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2184, '0', 0),
(2156, 175683, '/coins/chan/overview', './upload/coinlist/chan2.png', 'CHAN', 'CHAN', 'ChanCoin', 'ChanCoin (CHAN)', 'Cloverhash', 'PoW', 0, 2000, 'N/A', 'N/A', 1286, '0', 0),
(2157, 784553, '/coins/tfd/overview', './upload/coinlist/tfood.jpg', 'TFD', 'TFD', 'TE-FOOD', 'TE-FOOD (TFD)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2366, '0', 0),
(2158, 53178, '/coins/zoi/overview', './upload/coinlist/zoi.png', 'ZOI', 'ZOI', 'Zoin', 'Zoin (ZOI)', 'Lyra2RE', 'PoW', 0, 2000, 'N/A', 'N/A', 1127, '0', 0),
(2159, 771595, '/coins/ht/overview', './upload/coinlist/ht.png', 'HT', 'HT', 'Huobi Token', 'Huobi Token (HT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2308, '0', 0),
(2160, 757969, '/coins/bix/overview', './upload/coinlist/bix.png', 'BIX', 'BIX', 'BiboxCoin', 'BiboxCoin (BIX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2240, '0', 0),
(2161, 795662, '/coins/rfr/overview', './upload/coinlist/rfr.png', 'RFR', 'RFR', 'Refereum', 'Refereum (RFR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2415, '0', 0),
(2162, 777643, '/coins/kreds/overview', './upload/coinlist/kreds.png', 'KREDS', 'KREDS', 'KREDS', 'KREDS (KREDS)', 'Lyra2REv2', 'PoW', 0, 2000, 'N/A', 'N/A', 2329, '0', 0),
(2163, 791119, '/coins/dgm/overview', './upload/coinlist/dgm.png', 'DGM', 'DGM', 'DigiMoney', 'DigiMoney (DGM)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2391, '0', 0),
(2164, 795305, '/coins/xyo/overview', './upload/coinlist/untitled-1.png', 'XYO', 'XYO', 'XYO Network', 'XYO Network (XYO)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2414, '0', 0),
(2165, 791324, '/coins/btch/overview', './upload/coinlist/btch.jpg', 'BTCH', 'BTCH', 'Bitcoin Hush', 'Bitcoin Hush (BTCH)', 'Equihash', 'PoW', 0, 2000, 'N/A', 'N/A', 2397, '0', 0),
(2166, 35818, '/coins/ccrb/overview', './upload/coinlist/ccrb.png', 'CCRB', 'CCRB', 'CryptoCarbon', 'CryptoCarbon (CCRB)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 971, '0', 0),
(2167, 42837, '/coins/plu/overview', './upload/coinlist/plu.png', 'PLU', 'PLU', 'Pluton', 'Pluton (PLU)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1062, '0', 0),
(2168, 719361, '/coins/joy/overview', './upload/coinlist/joy.png', 'JOY', 'JOY', 'JoyToken', 'JoyToken (JOY)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2169, '0', 0),
(2169, 797481, '/coins/fund/overview', './upload/coinlist/fund.png', 'FUND', 'FUND', 'Fund Platform', 'Fund Platform (FUND)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2419, '0', 0),
(2170, 466339, '/coins/ngc/overview', './upload/coinlist/ngc.png', 'NGC', 'NGC', 'NagaCoin', 'NagaCoin (NGC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1955, '0', 0),
(2171, 706900, '/coins/ubtc/overview', './upload/coinlist/ubc.png', 'UBTC', 'UBTC', 'UnitedBitcoin', 'UnitedBitcoin (UBTC)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 2118, '0', 0),
(2172, 799597, '/coins/csstar/overview', './upload/coinlist/cs.png', 'CS*', 'CS*', 'Credits', 'Credits (CS*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2421, '0', 0),
(2173, 30386, '/coins/royal/overview', './upload/coinlist/royal.png', 'ROYAL', 'ROYAL', 'RoyalCoin', 'RoyalCoin (ROYAL)', 'X13', 'PoS', 0, 2000, 'N/A', 'N/A', 856, '0', 0),
(2174, 79849, '/coins/dea/overview', './upload/coinlist/dea.png', 'DEA', 'DEA', 'Degas Coin', 'Degas Coin (DEA)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1220, '0', 0),
(2175, 794350, '/coins/rvn/overview', './upload/coinlist/rvn.jpg', 'RVN', 'RVN', 'Ravencoin', 'Ravencoin (RVN)', 'X16R', 'N/A', 0, 2000, 'N/A', 'N/A', 2411, '0', 0),
(2176, 180840, '/coins/fnd/overview', './upload/coinlist/fnd.png', 'FND', 'FND', 'FundRequest', 'FundRequest (FND)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1326, '0', 0),
(2177, 799869, '/coins/pushi/overview', './upload/coinlist/pushi.png', 'PUSHI', 'PUSHI', 'Pushi', 'Pushi (PUSHI)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2422, '0', 0),
(2178, 51845, '/coins/zer/overview', './upload/coinlist/zer.png', 'ZER', 'ZER', 'Zero', 'Zero (ZER)', 'Equihash', 'PoW', 0, 2000, 'N/A', 'N/A', 1122, '0', 0),
(2179, 698269, '/coins/srnt/overview', './upload/coinlist/srnt.png', 'SRNT', 'SRNT', 'Serenity', 'Serenity (SRNT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2115, '0', 0),
(2180, 19745, '/coins/lsk/overview', './upload/coinlist/lsk.png', 'LSK', 'LSK', 'Lisk', 'Lisk (LSK)', 'DPoS', 'DPoS', 0, 2000, 'N/A', 'N/A', 506, '0', 0),
(2181, 347235, '/coins/btg/overview', './upload/coinlist/btg.png', 'BTG', 'BTG', 'Bitcoin Gold', 'Bitcoin Gold (BTG)', 'Equihash', 'PoW', 0, 2000, 'N/A', 'N/A', 1729, '0', 0),
(2182, 781079, '/coins/vvi/overview', './upload/coinlist/vvi.png', 'VVI', 'VVI', 'VV Coin', 'VV Coin (VVI)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2351, '0', 0),
(2183, 801286, '/coins/elp/overview', './upload/coinlist/elp.png', 'ELP', 'ELP', 'Ellerium', 'Ellerium (ELP)', 'XEVAN', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2434, '0', 0),
(2184, 27368, '/coins/neo/overview', './upload/coinlist/neo.jpg', 'NEO', 'NEO', 'NEO', 'NEO (NEO)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 718, '0', 0),
(2185, 301191, '/coins/cct/overview', './upload/coinlist/cct1.png', 'CCT', 'CCT', 'Crystal Clear Token ', 'Crystal Clear Token  (CCT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1574, '0', 0),
(2186, 35813, '/coins/cs/overview', './upload/coinlist/cs.png', 'CS', 'CS', 'CryptoSpots', 'CryptoSpots (CS)', 'DPoS', 'DPoS', 0, 2000, 'N/A', 'N/A', 969, '0', 0),
(2187, 755563, '/coins/swm/overview', './upload/coinlist/swm_logo.png', 'SWM', 'SWM', 'Swarm Fund', 'Swarm Fund (SWM)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2226, '0', 0),
(2188, 796019, '/coins/props/overview', './upload/coinlist/props.jpg', 'PROPS', 'PROPS', 'Props', 'Props (PROPS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2417, '0', 0),
(2189, 799897, '/coins/bins/overview', './upload/coinlist/bins.jpg', 'BINS', 'BINS', 'Bitsense', 'Bitsense (BINS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2423, '0', 0),
(2190, 799922, '/coins/poker/overview', './upload/coinlist/poker.jpg', 'POKER', 'POKER', 'PokerCoin', 'PokerCoin (POKER)', 'Scrypt', 'PoS/PoW', 0, 2000, 'N/A', 'N/A', 2424, '0', 0),
(2191, 799948, '/coins/axys/overview', './upload/coinlist/axys.jpg', 'AXYS', 'AXYS', 'Axys', 'Axys (AXYS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2425, '0', 0),
(2192, 800022, '/coins/evnstar/overview', './upload/coinlist/evn1.png', 'EVN*', 'EVN*', 'EvenCoin', 'EvenCoin (EVN*)', 'N/A', 'PoW', 0, 2000, 'N/A', 'N/A', 2426, '0', 0),
(2193, 800034, '/coins/bold/overview', './upload/coinlist/bold.jpg', 'BOLD', 'BOLD', 'Bold', 'Bold (BOLD)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2427, '0', 0),
(2194, 800048, '/coins/extn/overview', './upload/coinlist/extn.jpg', 'EXTN', 'EXTN', 'Extensive Coin', 'Extensive Coin (EXTN)', 'Scrypt', 'PoS', 0, 2000, 'N/A', 'N/A', 2428, '0', 0),
(2195, 800145, '/coins/ets/overview', './upload/coinlist/ets.jpg', 'ETS', 'ETS', 'ETH Share', 'ETH Share (ETS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2430, '0', 0),
(2196, 800232, '/coins/lipc/overview', './upload/coinlist/lipc.jpg', 'LIPC', 'LIPC', 'LIpcoin', 'LIpcoin (LIPC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 2431, '0', 0),
(2197, 801234, '/coins/hell/overview', './upload/coinlist/hell.jpg', 'HELL', 'HELL', 'HELL COIN', 'HELL COIN (HELL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2433, '0', 0),
(2198, 801364, '/coins/acat/overview', './upload/coinlist/acat.jpg', 'ACAT', 'ACAT', 'Alphacat', 'Alphacat (ACAT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2435, '0', 0),
(2199, 802875, '/coins/co2/overview', './upload/coinlist/co2.png', 'CO2', 'CO2', 'CO2 Token', 'CO2 Token (CO2)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2438, '0', 0),
(2200, 683963, '/coins/spx/overview', './upload/coinlist/transferir-copiar.png', 'SPX', 'SPX*', 'Sp8de', 'Sp8de (SPX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2097, '0', 0),
(2201, 542719, '/coins/ccos/overview', './upload/coinlist/ccos.png', 'CCOS', 'CCOS', 'CrowdCoinage', 'CrowdCoinage (CCOS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1996, '0', 0),
(2202, 758066, '/coins/hbz/overview', './upload/coinlist/hbz.png', 'HBZ', 'HBZ', 'Helbiz', 'Helbiz (HBZ)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2242, '0', 0),
(2203, 661398, '/coins/pma/overview', './upload/coinlist/pma.png', 'PMA', 'PMA', 'PumaPay', 'PumaPay (PMA)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2062, '0', 0),
(2204, 247232, '/coins/nyc/overview', './upload/coinlist/nyc.png', 'NYC', 'NYC', 'NewYorkCoin', 'NewYorkCoin (NYC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 1532, '0', 0),
(2205, 801429, '/coins/rkt/overview', './upload/coinlist/rkt.jpg', 'RKT', 'RKT', 'Rock Token', 'Rock Token (RKT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2436, '0', 0),
(2206, 791282, '/coins/svd/overview', './upload/coinlist/svd.png', 'SVD', 'SVD', 'Savedroid', 'Savedroid (SVD)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2395, '0', 0),
(2207, 33022, '/coins/gnt/overview', './upload/coinlist/golem_logo.png', 'GNT', 'GNT', 'Golem Network Token', 'Golem Network Token (GNT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 900, '0', 0),
(2208, 659681, '/coins/dnn/overview', './upload/coinlist/dnn.png', 'DNN', 'DNN', 'DNN Token', 'DNN Token (DNN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2056, '0', 0),
(2209, 404752, '/coins/mag/overview', './upload/coinlist/mag.png', 'MAG', 'MAG', 'Magnet', 'Magnet (MAG)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1882, '0', 0),
(2210, 800121, '/coins/dig/overview', './upload/coinlist/dig.png', 'DIG', 'DIG', 'Dignity', 'Dignity (DIG)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2429, '0', 0),
(2211, 1182, '/coins/btc/overview', './upload/coinlist/btc.png', 'BTC', 'BTC', 'Bitcoin', 'Bitcoin (BTC)', '', 'PoW', 1, 1, 'N/A', 'N/A', 1, '0', 1),
(2212, 255546, '/coins/eon/overview', './upload/coinlist/eon.jpg', 'EON', 'EON', 'Exscudo', 'Exscudo (EON)', 'N/A', 'DPoS', 0, 2000, 'N/A', 'N/A', 1552, '0', 0),
(2213, 804376, '/coins/vlx/overview', './upload/coinlist/vlx.png', 'VLX', 'VLX', 'Velox', 'Velox (VLX)', 'Scrypt', 'PoS', 0, 2000, 'N/A', 'N/A', 2440, '0', 0),
(2214, 756726, '/coins/efic/overview', './upload/coinlist/efic.png', 'eFIC', 'eFIC', 'FIC Network', 'FIC Network (eFIC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2232, '0', 0),
(2215, 206539, '/coins/xec/overview', './upload/coinlist/xec.png', 'XEC', 'XEC', 'Eternal Coin', 'Eternal Coin (XEC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1486, '0', 0),
(2216, 808414, '/coins/ont/overview', './upload/coinlist/ont.jpg', 'ONT', 'ONT', 'Ontology', 'Ontology (ONT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2446, '0', 0),
(2217, 4428, '/coins/csc/overview', './upload/coinlist/csc.png', 'CSC', 'CSC', 'CasinoCoin', 'CasinoCoin (CSC)', 'N/A', 'PoC', 0, 2000, 'N/A', 'N/A', 96, '0', 0),
(2218, 794362, '/coins/xnk/overview', './upload/coinlist/xnk.jpg', 'XNK', 'XNK', 'Ink Protocol', 'Ink Protocol (XNK)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2412, '0', 0),
(2219, 229060, '/coins/fuck/overview', './upload/coinlist/fuck.png', 'FUCK', 'FUCK', 'Fuck Token', 'Fuck Token (FUCK)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1472, '0', 0),
(2220, 811480, '/coins/cru/overview', './upload/coinlist/cru.png', 'CRU', 'CRU', 'Curium', 'Curium (CRU)', 'X11', 'PoW', 0, 2000, 'N/A', 'N/A', 2452, '0', 0),
(2221, 409155, '/coins/pfr/overview', './upload/coinlist/pfr.png', 'PFR', 'PFR', 'PayFair', 'PayFair (PFR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1891, '0', 0),
(2222, 811495, '/coins/elistar/overview', './upload/coinlist/eli.png', 'ELI*', 'ELI*', 'Elicoin', 'Elicoin (ELI*)', 'YescryptR16', 'PoW', 0, 2000, 'N/A', 'N/A', 2453, '0', 0),
(2223, 198710, '/coins/vib/overview', './upload/coinlist/vib.png', 'VIB', 'VIB', 'Viberate', 'Viberate (VIB)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1408, '0', 0),
(2224, 180716, '/coins/ggs/overview', './upload/coinlist/ggs.png', 'GGS', 'GGS', 'Gilgam', 'Gilgam (GGS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1323, '0', 0),
(2225, 801531, '/coins/eli/overview', './upload/coinlist/rpqn1zqi_400x400.jpg', 'ELI', 'ELI', 'Eligma', 'Eligma (ELI)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2437, '0', 0),
(2226, 811474, '/coins/clo/overview', './upload/coinlist/clo.png', 'CLO', 'CLO', 'Callisto Network', 'Callisto Network (CLO)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2451, '0', 0),
(2227, 811575, '/coins/bez/overview', './upload/coinlist/bez.jpg', 'BEZ', 'BEZ', 'Bezop', 'Bezop (BEZ)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2456, '0', 0),
(2228, 811654, '/coins/entrc/overview', './upload/coinlist/entrc.jpg', 'ENTRC', 'ENTRC', 'ENTER COIN', 'ENTER COIN (ENTRC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2458, '0', 0),
(2229, 711418, '/coins/cfty/overview', './upload/coinlist/cfty.png', 'CFTY', 'CFTY', 'Crafty', 'Crafty (CFTY)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2136, '0', 0),
(2230, 5317, '/coins/ptc/overview', './upload/coinlist/ptc.png', 'PTC', 'PTC', 'PesetaCoin', 'PesetaCoin (PTC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 286, '0', 0),
(2231, 326286, '/coins/grft/overview', './upload/coinlist/grf.png', 'GRFT', 'GRFT', 'Graft Blockchain', 'Graft Blockchain (GRFT)', 'CryptoNight', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1646, '0', 0),
(2232, 184221, '/coins/xuc/overview', './upload/coinlist/xuc.png', 'XUC', 'XUC', 'Exchange Union', 'Exchange Union (XUC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1342, '0', 0),
(2233, 394056, '/coins/abtstar/overview', './upload/coinlist/abt.png', 'ABT*', 'ABT', 'Advanced Browsing Token', 'Advanced Browsing Token (ABT*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1865, '0', 0),
(2234, 758055, '/coins/abt/overview', './upload/coinlist/abt2.png', 'ABT', 'ABT*', 'ArcBlock', 'ArcBlock (ABT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2241, '0', 0),
(2235, 625010, '/coins/rem/overview', './upload/coinlist/rem.png', 'REM', 'REM', 'REMME', 'REMME (REM)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2030, '0', 0),
(2236, 404775, '/coins/stex/overview', './upload/coinlist/stex.png', 'STEX', 'STEX', 'STEX', 'STEX (STEX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1883, '0', 0),
(2237, 808094, '/coins/actn/overview', './upload/coinlist/actn.jpg', 'ACTN', 'ACTN', 'Action Coin', 'Action Coin (ACTN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2441, '0', 0),
(2238, 177139, '/coins/cdt/overview', './upload/coinlist/cdt.png', 'CDT', 'CDT', 'Blox', 'Blox (CDT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1292, '0', 0),
(2239, 767755, '/coins/exmr/overview', './upload/coinlist/exmr.jpg', 'EXMR', 'EXMR', 'eXMR Monero', 'eXMR Monero (EXMR)', 'N/A', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2281, '0', 0),
(2240, 769367, '/coins/uetl/overview', './upload/coinlist/uetl.jpg', 'UETL', 'UETL', 'Useless Eth Token Lite', 'Useless Eth Token Lite (UETL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2284, '0', 0),
(2241, 781308, '/coins/ank/overview', './upload/coinlist/ank.jpg', 'ANK', 'ANK', 'Ankorus Token', 'Ankorus Token (ANK)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2353, '0', 0),
(2242, 5031, '/coins/xrp/overview', './upload/coinlist/ripple.png', 'XRP', 'XRP', 'Ripple', 'Ripple (XRP)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 12, '0', 0),
(2243, 3808, '/coins/ltc/overview', './upload/coinlist/litecoin-logo.png', 'LTC', 'LTC', 'Litecoin', 'Litecoin (LTC)', '', 'PoW', 1, 3, 'N/A', 'N/A', 3, '0', 1),
(2244, 20718, '/coins/vprc/overview', './upload/coinlist/vpc.png', 'VPRC', 'VPRC', 'VapersCoin', 'VapersCoin (VPRC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 562, '0', 0),
(2245, 13072, '/coins/sc/overview', './upload/coinlist/siacon-logo.png', 'SC', 'SC', 'Siacoin', 'Siacoin (SC)', 'Blake2b', 'PoW', 0, 2000, 'N/A', 'N/A', 473, '0', 0),
(2246, 813335, '/coins/bit/overview', './upload/coinlist/bit.png', 'BIT', 'BIT', 'BitRewards', 'BitRewards (BIT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2463, '0', 0),
(2247, 694313, '/coins/luc/overview', './upload/coinlist/luc.png', 'LUC', 'LUC', 'Play 2 Live', 'Play 2 Live (LUC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2112, '0', 0),
(2248, 683500, '/coins/mfg/overview', './upload/coinlist/mfg.png', 'MFG', 'MFG', 'SyncFab', 'SyncFab (MFG)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2092, '0', 0),
(2249, 777701, '/coins/gai/overview', './upload/coinlist/gai.png', 'GAI', 'GAI', 'GraphGrail AI', 'GraphGrail AI (GAI)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2331, '0', 0),
(2250, 756639, '/coins/dno/overview', './upload/coinlist/dno.png', 'DNO', 'DNO', 'Denaro', 'Denaro (DNO)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2231, '0', 0),
(2251, 811717, '/coins/xtroptions/overview', './upload/coinlist/xtroptions.jpg', 'XTROPTIONS', 'XTROPTIONS', 'TROPTIONS', 'TROPTIONS (XTROPTIONS)', 'N/A', 'PoW', 0, 2000, 'N/A', 'N/A', 2460, '0', 0),
(2252, 811673, '/coins/btcgo/overview', './upload/coinlist/btcgo.jpg', 'BTCGO', 'BTCGO', 'BitcoinGo', 'BitcoinGo (BTCGO)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 2459, '0', 0),
(2253, 812842, '/coins/pgc/overview', './upload/coinlist/pgc.jpg', 'PGC', 'PGC', 'Pegascoin', 'Pegascoin (PGC)', 'Dagger-Hashimoto', 'PoW', 0, 2000, 'N/A', 'N/A', 2462, '0', 0),
(2254, 764255, '/coins/ndcstar/overview', './upload/coinlist/ndc.png', 'NDC*', 'NDC*', 'NeedleCoin', 'NeedleCoin (NDC*)', 'X11', 'PoS/PoW', 0, 2000, 'N/A', 'N/A', 2256, '0', 0),
(2255, 42596, '/coins/iop/overview', './upload/coinlist/iop.png', 'IOP', 'IOP', 'Internet of People', 'Internet of People (IOP)', 'SHA256', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1055, '0', 0),
(2256, 400432, '/coins/cstl/overview', './upload/coinlist/cstl.png', 'CSTL', 'CSTL', 'Castle', 'Castle (CSTL)', 'X11', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 1872, '0', 0),
(2257, 814191, '/coins/pkc/overview', './upload/coinlist/untitled-1.png', 'PKC', 'PKC', 'Pikciochain', 'Pikciochain (PKC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2466, '0', 0),
(2258, 770095, '/coins/btcp/overview', './upload/coinlist/btcpjpg.png', 'BTCP', 'BTCP', 'Bitcoin Private', 'Bitcoin Private (BTCP)', 'Equihash', 'PoW', 0, 2000, 'N/A', 'N/A', 2301, '0', 0),
(2259, 763700, '/coins/prft/overview', './upload/coinlist/prft.png', 'PRFT', 'PRFT', 'Proof Suite Token', 'Proof Suite Token (PRFT)', 'N/A', 'PoS', 0, 2000, 'N/A', 'N/A', 2246, '0', 0),
(2260, 683927, '/coins/drg/overview', './upload/coinlist/drg.png', 'DRG', 'DRG', 'Dragon Coin', 'Dragon Coin (DRG)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2095, '0', 0),
(2261, 781071, '/coins/flxstar/overview', './upload/coinlist/flx.jpg', 'FLX*', 'FLX*', 'BitFlux', 'BitFlux (FLX*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2350, '0', 0),
(2262, 814361, '/coins/sqoin/overview', './upload/coinlist/sqoin.jpg', 'SQOIN', 'SQOIN', 'StasyQ', 'StasyQ (SQOIN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2467, '0', 0),
(2263, 769460, '/coins/rave/overview', './upload/coinlist/rave.jpg', 'RAVE', 'RAVE', 'Ravelous', 'Ravelous (RAVE)', 'Ethash', 'N/A', 0, 2000, 'N/A', 'N/A', 2287, '0', 0),
(2264, 778961, '/coins/magstarstar/overview', './upload/coinlist/mag.png', 'MAG**', 'MAG**', 'Maggie Token', 'Maggie Token (MAG**)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2337, '0', 0),
(2265, 808252, '/coins/zup/overview', './upload/coinlist/zup.png', 'ZUP', 'ZUP', 'Zupply Token', 'Zupply Token (ZUP)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2443, '0', 0),
(2266, 803996, '/coins/invox/overview', './upload/coinlist/untitled-1.png', 'INVOX', 'INVOX', 'Invox Finance', 'Invox Finance (INVOX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2439, '0', 0),
(2267, 753333, '/coins/equi/overview', './upload/coinlist/equi.png', 'EQUI', 'EQUI', 'EQUI Token', 'EQUI Token (EQUI)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2220, '0', 0),
(2268, 116180, '/coins/zen/overview', './upload/coinlist/zen.png', 'ZEN', 'ZEN', 'ZenCash', 'ZenCash (ZEN)', 'Equihash', 'PoW', 0, 2000, 'N/A', 'N/A', 1244, '0', 0),
(2269, 815247, '/coins/tbar/overview', './upload/coinlist/tbar.png', 'TBAR', 'TBAR', 'Titanium BAR', 'Titanium BAR (TBAR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2468, '0', 0),
(2270, 815308, '/coins/cpl/overview', './upload/coinlist/cpl.png', 'CPL', 'CPL', 'CoinPlace Token', 'CoinPlace Token (CPL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2470, '0', 0),
(2271, 815372, '/coins/ipbc/overview', './upload/coinlist/untitled-1.png', 'IPBC', 'IPBC', 'Interplanetary Broadcast Coin', 'Interplanetary Broadcast Coin (IPBC)', 'CryptoNight', 'PoW', 0, 2000, 'N/A', 'N/A', 2471, '0', 0),
(2272, 815399, '/coins/auto/overview', './upload/coinlist/untitled-1.png', 'AUTO', 'AUTO', 'Cube', 'Cube (AUTO)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2472, '0', 0),
(2273, 328667, '/coins/cix/overview', './upload/coinlist/cnxasterisco.png', 'CIX', 'CIX', 'Cryptonetix', 'Cryptonetix (CIX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1653, '0', 0),
(2274, 815418, '/coins/chg/overview', './upload/coinlist/untitled-1.png', 'CHG', 'CHG', 'Charg Coin', 'Charg Coin (CHG)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2473, '0', 0),
(2275, 811560, '/coins/moat/overview', './upload/coinlist/moat.jpg', 'MOAT', 'MOAT', 'Mother Of All Tokens', 'Mother Of All Tokens (MOAT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2454, '0', 0),
(2276, 653806, '/coins/well/overview', './upload/coinlist/well.png', 'WELL', 'WELL', 'Well', 'Well (WELL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2051, '0', 0),
(2277, 815543, '/coins/omx/overview', './upload/coinlist/omx.jpg', 'OMX', 'OMX', 'Project Shivom', 'Project Shivom (OMX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2474, '0', 0),
(2278, 815269, '/coins/tkln/overview', './upload/coinlist/tkln.jpg', 'TKLN', 'TKNL', 'Taklimakan', 'Taklimakan (TKLN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2469, '0', 0),
(2279, 419711, '/coins/abyss/overview', './upload/coinlist/abyss.png', 'ABYSS', 'ABYSS', 'The Abyss', 'The Abyss (ABYSS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1911, '0', 0),
(2280, 810719, '/coins/cbc/overview', './upload/coinlist/cbc.png', 'CBC', 'CBC', 'CashBagCoin', 'CashBagCoin (CBC)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2448, '0', 0),
(2281, 715817, '/coins/sgn/overview', './upload/coinlist/sgn.png', 'SGN', 'SGN', 'Signals Network', 'Signals Network (SGN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2147, '0', 0),
(2282, 684364, '/coins/onl/overview', './upload/coinlist/onl.png', 'ONL', 'ONL', 'On.Live', 'On.Live (ONL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2098, '0', 0),
(2283, 731042, '/coins/spend/overview', './upload/coinlist/spend.png', 'SPEND', 'SPEND', 'Spend', 'Spend (SPEND)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2177, '0', 0),
(2284, 782929, '/coins/vin/overview', './upload/coinlist/vin.jpg', 'VIN', 'VIN', 'VinChain', 'VinChain (VIN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2358, '0', 0),
(2285, 791211, '/coins/mnts/overview', './upload/coinlist/mnts.png', 'MNTS', 'MNTS', 'Mint', 'Mint (MNTS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2393, '0', 0),
(2286, 777990, '/coins/crestar/overview', './upload/coinlist/creditcoin_logo.png', 'CRE*', 'CRE*', 'Creditcoin', 'Creditcoin (CRE*)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2333, '0', 0),
(2287, 808364, '/coins/mdx/overview', './upload/coinlist/mdx.jpg', 'MDX', 'MDX', 'Midex', 'Midex (MDX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2445, '0', 0),
(2288, 306304, '/coins/capp/overview', './upload/coinlist/capp.png', 'CAPP', 'CAPP', 'Cappasity', 'Cappasity (CAPP)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1585, '0', 0),
(2289, 789256, '/coins/bitcar/overview', './upload/coinlist/bitcar.png', 'BITCAR', 'BITCAR', 'BitCar', 'BitCar (BITCAR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2385, '0', 0),
(2290, 755352, '/coins/gro/overview', './upload/coinlist/gro.png', 'GRO', 'GRO', 'Gron Digital', 'Gron Digital (GRO)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2225, '0', 0),
(2291, 693690, '/coins/sfu/overview', './upload/coinlist/sfu.png', 'SFU', 'SFU', 'Saifu', 'Saifu (SFU)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2109, '0', 0),
(2292, 766461, '/coins/crl/overview', './upload/coinlist/crl.png', 'CRL', 'CRL', 'Cryptelo Coin', 'Cryptelo Coin (CRL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2273, '0', 0),
(2293, 746316, '/coins/hgs/overview', './upload/coinlist/hgs.png', 'HGS', 'HGS', 'HashGains', 'HashGains (HGS)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2202, '0', 0),
(2294, 382617, '/coins/cjt/overview', './upload/coinlist/cjt.png', 'CJT', 'CJT', 'ConnectJob Token', 'ConnectJob Token (CJT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1839, '0', 0),
(2295, 714167, '/coins/mcu/overview', './upload/coinlist/mcu.png', 'MCU', 'MCU', 'MediChain', 'MediChain (MCU)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2140, '0', 0),
(2296, 763639, '/coins/dor/overview', './upload/coinlist/dor.png', 'DOR', 'DOR', 'Dorado', 'Dorado (DOR)', 'Ethash', 'N/A', 0, 2000, 'N/A', 'N/A', 2245, '0', 0),
(2297, 814149, '/coins/ptcstarstar/overview', './upload/coinlist/ptc.jpg', 'PTC**', 'PTC**', 'Plutocoin', 'Plutocoin (PTC**)', 'Scrypt', 'PoW/PoS', 0, 2000, 'N/A', 'N/A', 2465, '0', 0),
(2298, 775124, '/coins/adbl/overview', './upload/coinlist/adbl.png', 'ADBL', 'ADBL', 'Adblurb', 'Adblurb (ADBL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2313, '0', 0),
(2299, 793815, '/coins/fill/overview', './upload/coinlist/fil1.png', 'FILL', 'FILL', 'Fillit', 'Fillit (FILL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2406, '0', 0),
(2300, 785910, '/coins/clin/overview', './upload/coinlist/clin.png', 'CLIN', 'CLIN', 'Clinicoin', 'Clinicoin (CLIN)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2372, '0', 0),
(2301, 166503, '/coins/eos/overview', './upload/coinlist/eos_1.png', 'EOS', 'EOS', 'EOS', 'EOS (EOS)', 'DPoS', 'DPoS', 0, 2000, 'N/A', 'N/A', 1274, '0', 0),
(2302, 579189, '/coins/vlr/overview', './upload/coinlist/vlr.png', 'VLR', 'VLR', 'Valorem', 'Valorem (VLR)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2001, '0', 0),
(2303, 417510, '/coins/drcstar/overview', './upload/coinlist/drc.png', 'DRC*', 'DRC*', 'Darico', 'Darico (DRC*)', 'N/A', '240000000', 0, 2000, 'N/A', 'N/A', 1905, '0', 0),
(2304, 344097, '/coins/smt/overview', './upload/coinlist/smt.png', 'SMT', 'SMT**', 'Social Media Market', 'Social Media Market (SMT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1714, '0', 0),
(2305, 808292, '/coins/hmt/overview', './upload/coinlist/hmt.jpg', 'HMT', 'HMT', 'Hamster Marketplace Token', 'Hamster Marketplace Token (HMT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2444, '0', 0),
(2306, 600395, '/coins/gene/overview', './upload/coinlist/gene.png', 'GENE', 'GENE', 'PARKGENE', 'PARKGENE (GENE)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2018, '0', 0),
(2307, 799472, '/coins/cel/overview', './upload/coinlist/cel.png', 'CEL', 'CEL', 'Celsius Network', 'Celsius Network (CEL)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2420, '0', 0),
(2308, 766681, '/coins/ori/overview', './upload/coinlist/ori.png', 'ORI', 'ORI', 'Origami', 'Origami (ORI)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2274, '0', 0),
(2309, 797331, '/coins/cedex/overview', './upload/coinlist/cedex.png', 'CEDEX', 'CEDEX', 'CEDEX Coin', 'CEDEX Coin (CEDEX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2418, '0', 0),
(2310, 784589, '/coins/nbx/overview', './upload/coinlist/nbx.png', 'NBX', 'NBX', 'Noxbox', 'Noxbox (NBX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2367, '0', 0),
(2311, 685306, '/coins/et4/overview', './upload/coinlist/et4.png', 'ET4', 'ET4', 'Eticket4', 'Eticket4 (ET4)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2102, '0', 0),
(2312, 765465, '/coins/lyk/overview', './upload/coinlist/lyk.png', 'LYK', 'LYK', 'Loyakk Vega', 'Loyakk Vega (LYK)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2261, '0', 0),
(2313, 711359, '/coins/fsbt/overview', './upload/coinlist/fsbt.png', 'FSBT', 'FSBT', 'Forty Seven Bank', 'Forty Seven Bank (FSBT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2135, '0', 0),
(2314, 616471, '/coins/hion/overview', './upload/coinlist/hion.png', 'HION', 'HION', 'Handelion', 'Handelion (HION)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2022, '0', 0),
(2315, 811566, '/coins/bbi/overview', './upload/coinlist/bbi.png', 'BBI', 'BBI', 'BelugaPay', 'BelugaPay (BBI)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2455, '0', 0),
(2316, 377508, '/coins/ges/overview', './upload/coinlist/ges.png', 'GES', 'GES', 'Galaxy eSolutions', 'Galaxy eSolutions (GES)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1822, '0', 0),
(2317, 791305, '/coins/proof/overview', './upload/coinlist/untitled-1.png', 'PROOF', 'PROOF', 'PROVER', 'PROVER (PROOF)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2396, '0', 0),
(2318, 719307, '/coins/repux/overview', './upload/coinlist/repux.png', 'REPUX', 'REPUX', 'Repux', 'Repux (REPUX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2168, '0', 0),
(2319, 800364, '/coins/goff/overview', './upload/coinlist/untitled-1.png', 'GOFF', 'GOFF', 'Gift Off Token', 'Gift Off Token (GOFF)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2432, '0', 0),
(2320, 726598, '/coins/xcd/overview', './upload/coinlist/xcd.png', 'XCD', 'XCD', 'Capdax', 'Capdax (XCD)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2171, '0', 0),
(2321, 782954, '/coins/shping/overview', './upload/coinlist/shping.png', 'SHPING', 'SHPING', 'Shping Coin', 'Shping Coin (SHPING)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2359, '0', 0),
(2322, 760878, '/coins/care/overview', './upload/coinlist/care.png', 'CARE', 'CARE', 'Care Token', 'Care Token (CARE)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2243, '0', 0),
(2323, 787669, '/coins/enk/overview', './upload/coinlist/enk.png', 'ENK', 'ENK', 'Enkidu', 'Enkidu (ENK)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2375, '0', 0),
(2324, 786661, '/coins/dht/overview', './upload/coinlist/dht.png', 'DHT', 'DHT', 'DeHedge Token', 'DeHedge Token (DHT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2373, '0', 0),
(2325, 780767, '/coins/nvt/overview', './upload/coinlist/navi.png', 'NVT', 'NVT', 'NaviAddress', 'NaviAddress (NVT)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2346, '0', 0),
(2326, 421896, '/coins/gea/overview', './upload/coinlist/gea.png', 'GEA', 'GEA', 'Goldea', 'Goldea (GEA)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 1914, '0', 0),
(2327, 251598, '/coins/arstar/overview', './upload/coinlist/ar.png', 'AR*', 'AR*', 'Ar.cash', 'Ar.cash (AR*)', 'SHA256', 'PoW', 0, 2000, 'N/A', 'N/A', 1543, '0', 0),
(2328, 753658, '/coins/hhem/overview', './upload/coinlist/hhem.png', 'HHEM', 'HHEM', 'Healthureum', 'Healthureum (HHEM)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2222, '0', 0),
(2329, 810258, '/coins/usdc/overview', './upload/coinlist/untitled-1.png', 'USDC', 'USDC', 'USCoin', 'USCoin (USDC)', 'Scrypt', 'PoW', 0, 2000, 'N/A', 'N/A', 2447, '0', 0),
(2330, 791484, '/coins/redbux/overview', './upload/coinlist/redbux.png', 'redBUX', 'redBUX', 'redBUX', 'redBUX (redBUX)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2398, '0', 0),
(2331, 816635, '/coins/hav/overview', './upload/coinlist/hav.jpg', 'HAV', 'HAV', 'Havven', 'Havven (HAV)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2476, '0', 0),
(2332, 816702, '/coins/tomo/overview', './upload/coinlist/tomo.jpg', 'TOMO', 'TOMO', 'TomoChain', 'TomoChain (TOMO)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2477, '0', 0),
(2333, 812669, '/coins/knw/overview', './upload/coinlist/knowledge-icon-stroke-3.png', 'KNW', 'KNW', 'Knowledge ', 'Knowledge  (KNW)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2461, '0', 0),
(2334, 816745, '/coins/chi/overview', './upload/coinlist/chi.png', 'CHI', 'LIYEP', 'Liyepcoin', 'Liyepcoin (LIYEP)', '', 'PoW', 0, 2000, 'N/A', 'N/A', 2478, '0', 0),
(2335, 817013, '/coins/chf/overview', './upload/coinlist/chf.jpg', 'CHF', 'CHF', 'MobileBridge Momentum', 'MobileBridge Momentum (CHF)', 'N/A', 'N/A', 0, 2000, 'N/A', 'N/A', 2479, '0', 0),
(2336, 1, '/coins/chf/overview', 'upload/advertisement/cc4cbceda63ec9bb5ba579af8f572e93.jpg', 'USD', 'USD', 'Dollar', 'USD Dollar', '', 'N/A', 0, 2000, 'N/A', 'N/A', 1, '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dbt_deposit`
--

CREATE TABLE `dbt_deposit` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `currency_symbol` varchar(100) NOT NULL,
  `amount` double(19,8) NOT NULL,
  `method_id` varchar(50) NOT NULL,
  `fees_amount` double(19,8) NOT NULL,
  `comment` text,
  `deposit_date` datetime DEFAULT NULL,
  `approved_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=Pending, 1= confirm, 2=Cancel',
  `ip` varchar(50) NOT NULL,
  `approved_cancel_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_fees`
--

CREATE TABLE `dbt_fees` (
  `id` int(11) NOT NULL,
  `level` varchar(100) NOT NULL,
  `fees` double NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_symbol` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_market`
--

CREATE TABLE `dbt_market` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `full_name` varchar(300) NOT NULL,
  `symbol` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbt_market`
--

INSERT INTO `dbt_market` (`id`, `name`, `full_name`, `symbol`, `status`) VALUES
(1, 'BTC', 'BTC Market', 'BTC', 1),
(2, 'USD', 'USDT Market', 'USD', 1),
(3, 'LTC', 'LTC Market', 'LTC', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dbt_payout_method`
--

CREATE TABLE `dbt_payout_method` (
  `id` int(11) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `currency_symbol` varchar(100) NOT NULL,
  `method` varchar(250) NOT NULL,
  `wallet_id` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_transaction_setup`
--

CREATE TABLE `dbt_transaction_setup` (
  `id` int(11) NOT NULL,
  `trntype` varchar(20) NOT NULL,
  `acctype` varchar(20) NOT NULL,
  `currency_symbol` varchar(20) NOT NULL,
  `lower` double(19,8) NOT NULL,
  `upper` double(19,8) NOT NULL,
  `duration` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_transfer`
--

CREATE TABLE `dbt_transfer` (
  `id` int(11) NOT NULL,
  `sender_user_id` varchar(255) DEFAULT NULL,
  `receiver_user_id` varchar(255) DEFAULT NULL,
  `amount` double(19,8) DEFAULT NULL,
  `currency_symbol` varchar(100) NOT NULL,
  `fees` double(19,8) NOT NULL,
  `request_ip` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `comments` mediumtext,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='client to client transfer success, request data recorded.';

-- --------------------------------------------------------

--
-- Table structure for table `dbt_user`
--

CREATE TABLE `dbt_user` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(300) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password_reset_token` varchar(300) DEFAULT NULL,
  `googleauth` varchar(100) DEFAULT NULL,
  `referral_id` varchar(100) DEFAULT NULL,
  `referral_status` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(50) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` text,
  `bio` text,
  `image` varchar(300) DEFAULT NULL,
  `status` tinyint(1) NOT NULL COMMENT '"0=Deactivated account, 1=Activated account, 2=Pending account, 3=Suspend account"',
  `verified` int(11) NOT NULL DEFAULT '0' COMMENT '0= did not submit info, 1= verified, 2=Cancel, 3=processing',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbt_user`
--

INSERT INTO `dbt_user` (`id`, `user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone`, `password_reset_token`, `googleauth`, `referral_id`, `referral_status`, `language`, `country`, `city`, `address`, `bio`, `image`, `status`, `verified`, `created`, `ip`) VALUES
(1, 'TAREQ', 'Tareq', 'Rakman', 'tareq', 'tareq7500@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '8801746406801', NULL, NULL, NULL, 0, 'english', NULL, NULL, NULL, NULL, NULL, 1, 0, '2018-10-09 07:32:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dbt_user_log`
--

CREATE TABLE `dbt_user_log` (
  `log_id` int(11) NOT NULL,
  `log_type` varchar(50) NOT NULL COMMENT '"acc_update = User Account Update, login=User Login info, deposit=User Deposit info, transfer=User Transfer info, withdraw=User Withdraw info, open_order="',
  `access_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_agent` varchar(300) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `ip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbt_user_log`
--

INSERT INTO `dbt_user_log` (`log_id`, `log_type`, `access_time`, `user_agent`, `user_id`, `ip`) VALUES
(1, 'login', '2018-10-09 07:32:15', '{"device":"Chrome","browser":"Chrome V-69.0.3497.100","platform":"Windows 10"}', 'TAREQ', '::1'),
(2, 'login', '2018-10-14 10:17:58', '{"device":"Chrome","browser":"Chrome V-69.0.3497.100","platform":"Windows 10"}', 'TAREQ', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `dbt_user_verify_doc`
--

CREATE TABLE `dbt_user_verify_doc` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `verify_type` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `id_number` varchar(300) NOT NULL,
  `document1` varchar(300) NOT NULL,
  `document2` varchar(300) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_verify`
--

CREATE TABLE `dbt_verify` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(250) DEFAULT NULL,
  `session_id` varchar(250) DEFAULT NULL,
  `verify_code` varchar(250) DEFAULT NULL,
  `user_id` varchar(250) DEFAULT NULL,
  `data` text,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_withdraw`
--

CREATE TABLE `dbt_withdraw` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `wallet_id` text NOT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `currency_symbol` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  `method` varchar(50) NOT NULL,
  `fees_amount` double NOT NULL,
  `comment` varchar(300) DEFAULT NULL,
  `request_date` datetime DEFAULT NULL,
  `success_date` datetime DEFAULT NULL,
  `cancel_date` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=Cancel request, 1=Approved request, 2=Pending request',
  `ip` varchar(50) NOT NULL,
  `approved_cancel_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email_sms_gateway`
--

CREATE TABLE `email_sms_gateway` (
  `es_id` int(11) NOT NULL,
  `gatewayname` varchar(100) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `protocol` varchar(100) DEFAULT NULL,
  `host` varchar(100) DEFAULT NULL,
  `port` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `userid` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `mailtype` varchar(100) DEFAULT NULL,
  `charset` varchar(100) DEFAULT NULL,
  `api` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_sms_gateway`
--

INSERT INTO `email_sms_gateway` (`es_id`, `gatewayname`, `title`, `protocol`, `host`, `port`, `user`, `userid`, `password`, `mailtype`, `charset`, `api`) VALUES
(1, 'smsrank', 'Bdtask SMS', NULL, 'http://api.smsrank.com/sms/1/text/singles', NULL, 'criptotrade', NULL, 'VE9kYXkxMiM=', NULL, NULL, NULL),
(2, 'smtp', 'Bbtask mail', 'smtp', 'ssl://smtp.gmail.com', '465', 'rdmvaijah@gmail.com', '', 'vai99862', 'html', 'utf-8', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) UNSIGNED NOT NULL,
  `phrase` text NOT NULL,
  `english` text,
  `french` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES
(1, 'email', 'Email Address', 'Email'),
(2, 'password', 'Password', 'Mot de passe'),
(3, 'login', 'Log In', 'Connexion'),
(4, 'incorrect_email_password', 'Incorrect Email/Password!', 'Mot de passe ou email incorrect'),
(5, 'user_role', 'User Role', 'Rôle Utilisateur'),
(6, 'please_login', 'Please Log In', 'Veuillez vous connecter'),
(7, 'setting', 'Setting', 'Reglages'),
(8, 'profile', 'Profile', 'Profil'),
(9, 'logout', 'Log Out', 'Déconnexion'),
(10, 'please_try_again', 'Please Try Again', 'Essayez encore !'),
(11, 'admin', 'Admin', 'Administrateur'),
(12, 'dashboard', 'Dashboard', 'Tableau de Bord'),
(13, 'language_setting', 'Language Setting', 'Reglage Langue'),
(14, 'status', 'Status', 'Status'),
(15, 'active', 'Active', 'Actif'),
(16, 'inactive', 'Inactive', 'Inactif'),
(17, 'cancel', 'Cancel', 'Annuler'),
(18, 'save', 'Save', 'Sauvegarder'),
(19, 'serial', 'SL.NO', 'Serial'),
(20, 'action', 'Action', 'Action'),
(21, 'edit', 'Edit ', 'Editer'),
(22, 'delete', 'Delete', 'Supprimer'),
(23, 'save_successfully', 'Save Successfully!', 'Sauvegarde reussi'),
(24, 'update_successfully', 'Update Successfully!', 'Mise à jour reussi'),
(25, 'delete_successfully', 'Delete successfully!', 'Suppression Reussi'),
(26, 'are_you_sure', 'Are You Sure ? ', 'Etes-vous sure?'),
(27, 'ip_address', 'IP Address', 'Adresse IP'),
(28, 'application_title', 'Application Title', 'Titre appli'),
(29, 'favicon', 'Favicon', 'favicon'),
(30, 'logo', 'Logo', 'Logo'),
(31, 'footer_text', 'Footer Text', 'Titre Footer'),
(32, 'language', 'Language', 'Langue'),
(33, 'website_title', 'Website Title', 'Titre site web'),
(34, 'invalid_logo', 'Invalid Logo', 'Logo invalide'),
(35, 'submit_successfully', 'Submit Successfully!', 'Envoi reussi'),
(36, 'application_setting', 'Application Setting', 'Reglages appli'),
(37, 'invalid_favicon', 'Invalid Favicon', 'Favicon Invalide'),
(38, 'submit', 'Submit', 'Envoyez'),
(39, 'site_align', 'Website Align', 'Alignement site'),
(40, 'right_to_left', 'Right to Left', 'Doite vers la gauche'),
(41, 'left_to_right', 'Left to Right', 'Gauche Vers la droite'),
(42, 'subject', 'Subject', 'Sujet'),
(43, 'receiver_name', 'Send To', 'Nom Bénéficiaire'),
(44, 'select_user', 'Select User', 'Selectionner Utilisateur'),
(45, 'message_sent', 'Messages Sent', 'Message Envoyé'),
(46, 'mail', 'Mail', 'Mail'),
(47, 'send_mail', 'Send Mail', 'Envoyer Mail'),
(48, 'mail_setting', 'Mail Setting', 'Reglage mail'),
(49, 'protocol', 'Protocol', 'Protocole'),
(50, 'mailpath', 'Mail Path', 'Repertoire Mail'),
(51, 'mailtype', 'Mail Type', 'Type mail'),
(52, 'validate_email', 'Validate Email Address', 'Validez votre Email'),
(53, 'true', 'True', 'Vraie'),
(54, 'false', 'False', 'faux'),
(55, 'attach_file', 'Attach File', 'Joindre un document'),
(56, 'wordwrap', 'Enable Word Wrap', 'Wordwrap'),
(57, 'send', 'Send', 'Envoyer'),
(58, 'app_setting', 'App Setting', 'Reglages appli'),
(59, 'sms', 'SMS', 'SMS'),
(60, 'gateway_setting', 'Gateway Setting', 'Reglage portail'),
(61, 'time_zone', 'Time Zone', 'Time Zone'),
(62, 'provider', 'Provider', 'Fournisseur'),
(63, 'sms_template', 'SMS Template', 'Template SMS'),
(64, 'template_name', 'Template Name', 'Nom du template'),
(65, 'sms_schedule', 'SMS Schedule', 'Emploi du temps SMS'),
(66, 'schedule_name', 'Schedule Name', 'Nom d''horaire'),
(67, 'time', 'Time', 'Heure'),
(68, 'already_exists', 'Already Exists', 'Existe déjà'),
(69, 'send_custom_sms', 'Send Custom SMS', 'Envoyer SMS personalisé'),
(70, 'sms_sent', 'SMS Sent!', 'SMS envoyé'),
(71, 'custom_sms_list', 'Custom SMS List', 'List SMS personalisé'),
(72, 'reciver', 'Reciver', 'Bénéficiaire'),
(73, 'auto_sms_report', 'Auto SMS Report', 'Rapport SMS Auto'),
(74, 'user_sms_list', 'User SMS List', 'Liste SMS utilisateurs'),
(75, 'send_sms', 'Send SMS', 'Envoyer SMS'),
(76, 'new_sms', 'New SMS', 'Nouveau Message'),
(77, 'update', 'Update', 'Mettre à jour'),
(78, 'reset', 'Reset', 'Reinitialiser'),
(79, 'messages', 'Messages', 'Messages'),
(80, 'inbox', 'Inbox', 'Boite de réception'),
(81, 'sent', 'Sent', 'Envoyé'),
(82, 'captcha', 'Captcha', 'Captcha'),
(83, 'welcome_back', 'Welcome back ', 'Bienvenue à nouveau !'),
(84, 'inbox_message', 'Inbox Message', 'SMS Boite de réception'),
(85, 'image_upload_successfully', 'Image Upload Successfully.', 'Upload d''image reussi'),
(87, 'users', 'Users', 'Utilisateurs'),
(88, 'add_user', 'Add User', 'Ajouter utilisateur'),
(89, 'user_list', 'User List', 'Liste Utilisateurs'),
(90, 'firstname', 'First Name', 'Nom'),
(91, 'lastname', 'Last Name', 'Prénoms'),
(92, 'about', 'About', 'A propos de nous'),
(93, 'preview', 'Preview', 'Visualliser'),
(94, 'last_login', 'Last Login', 'Dernière connexion'),
(95, 'last_logout', 'Last Logout', 'Dernière Déconnexion'),
(96, 'image', 'Image', 'Image'),
(97, 'fullname', 'Full Name', 'Nom Complet'),
(98, 'new_message', 'New Message', 'Nouveau Message'),
(99, 'message', 'Message', 'Message'),
(100, 'sender_name', 'Sender Name', 'Nom de l''expéditeur'),
(101, 'sl_no', 'SL No.', 'Numéro SL'),
(103, 'message_details', 'Message Details', 'Détails message'),
(104, 'date', 'Date', 'Date'),
(105, 'select_option', 'Select Option', 'Selectionner Option'),
(106, 'edit_profile', 'Edit Profile', 'Editer Profile'),
(107, 'edit_user', 'Edit User', 'Editer utilisateur'),
(108, 'sent_message', 'Sent Message', 'Message Envoyé'),
(109, 'sub_admin', 'Sub Admin', 'Sub Administrateur'),
(110, 'admin_list', 'Admin List', 'List Administrateurs'),
(111, 'add_admin', 'Add Admin', 'Ajouter Administrateur'),
(112, 'edit_admin', 'Edit Admin', 'Editer Admin'),
(113, 'username', 'Username', 'Nom utilisateur'),
(114, 'sponsor_id', 'Sponsor ID', 'ID sponsor'),
(115, 'mobile', 'Mobile', 'Mobile'),
(116, 'register', 'Register', 'Enregistrer'),
(117, 'conf_password', 'Confirm Password', 'Reglage mot de passe'),
(118, 'user_id', 'User ID', 'ID utilisateur'),
(119, 'package', 'Package', 'Pack'),
(120, 'create', 'Create', 'Créer'),
(121, 'package_name', 'Package Name', 'Nom du pack'),
(122, 'package_deatils', 'Package Deatils', 'Detail pack'),
(123, 'package_amount', 'Package Amount', 'Montant pack'),
(124, 'daily_roi', 'Daily ROI', 'ROI journalier'),
(125, 'weekly_roi', 'Weekly ROI', 'ROI Hebdomadaire'),
(126, 'monthly_roi', 'Monthly ROI', 'ROI Mensuel'),
(127, 'yearly_roi', 'Yearly ROI', 'ROI annuel'),
(128, 'total_percent', 'Total Percent', 'Poucentage Total'),
(129, 'add_package', 'Add Package', 'Ajouter un Pack'),
(130, 'edit_package', 'Edit Package', 'Editer Pack'),
(131, 'package_list', 'Package List', 'Liste Packs'),
(132, 'withdraw', 'Withdraw', 'Retraits'),
(133, 'request', 'Request', 'Requête'),
(134, 'success', 'Success', 'Succès ! '),
(135, 'request_date', 'Request Date', 'Date Requête'),
(136, 'payment_method', 'Payment Method', 'Methode de paiement'),
(137, 'amount', 'Amount', 'Montant'),
(138, 'charge', 'Charge', 'Frais'),
(139, 'total', 'Total', 'Total'),
(140, 'comments', 'Comments', 'Commentaires'),
(141, 'pending', 'Pending', 'En cours'),
(142, 'cancel_date', 'Cancel Date', 'Annuler date'),
(143, 'block_list', 'Block List', 'Liste Noire'),
(144, 'commission', 'Commission', 'Commission'),
(145, 'setup', 'Setup', 'Regler'),
(146, 'setup_list', 'Setup List', 'Liste de reglage'),
(147, 'commission_list', 'Commission List', 'Liste Commission'),
(148, 'level_name', 'Level Name', 'Nom du stage'),
(149, 'personal_invest', 'Personal Invest', 'Mon investissement'),
(150, 'total_invest', 'Total Invest', 'Total Investissement'),
(151, 'team_bonous', 'Team Bonous', 'Bonus d''Equipe'),
(152, 'referral_bonous', 'Referral Bonous', 'Bonus parrainage'),
(154, 'form_submit_msg', 'Insert Successfully', 'Envoyer formulaire'),
(155, 'transection_category', 'Transaction Category', 'Catégorie Transaction'),
(156, 'transfer_add_msg', 'Transfer Successfully', 'Ajouter SMS transfert'),
(157, 'transfer', 'Transfer', 'Transfert'),
(158, 'deposit', 'Deposit', 'Depot'),
(159, 'add_deposit', 'Add Deposit', 'Effectuer un Depot'),
(160, 'deposit_list', 'Deposit List', 'Liste depot'),
(161, 'team', 'Team', 'Equipe'),
(162, 'investment', 'Investment', 'Investissement personnel'),
(163, 'notification', 'Notification', 'Notification'),
(164, 'receiver_id', 'Receiver Id', 'ID Bénéficiaire'),
(165, 'comment', 'Comments', 'Commentaire'),
(166, 'otp_send_to', 'OTP Send To', 'OTP envoyer à'),
(167, 'transection', 'Transaction', 'Transactions'),
(168, 'buy', 'Buy', 'Acheter'),
(169, 'balance', 'Balance', 'Solde de compte'),
(170, 'deposit_amount', 'Deposit Amount', 'Montant Depot'),
(171, 'deposit_method', 'Deposit Method', 'Methode depot'),
(172, 'deposit_wallet_id', 'Deposit Wallet Id', 'Wallet ID'),
(174, 'confirm_transfer', 'Confirm Transfer', 'Confirmer transfert'),
(175, 'transfer_amount', 'Transfer Amount', 'Montant Transfert'),
(176, 'enter_verify_code', 'Enter Verify Code', 'Entrer code de vérification'),
(177, 'confirm', 'Confirm', 'Confirmer'),
(178, 'deopsit_add_msg', 'Deposit Add Successfully.', 'Depot effectué avec succès'),
(179, 'transfar_recite', 'Transfer Recite', 'Reçu de transfert'),
(180, 'earn', 'Earn', 'Gagner'),
(181, 'balance_is_unavailable', 'Balance Is not sufficient', 'Solde insuffisant'),
(182, 'package_buy_successfully', 'Package Buy Successfully!', 'Achat du package reussi ! '),
(184, 'withdraw_recite', 'Withdraw Recite', 'Reçu de retrait'),
(185, 'withdraw_confirm', 'withdraw Confirm', 'Confirmation Retrait'),
(187, 'change_verify', 'Confirm Verify', 'Changer Verification'),
(188, 'change_password', 'Password Change', 'Changer mot de passe'),
(189, 'enter_confirm_password', 'Enter Confirm Password', 'Confirmer mot de passe'),
(190, 'enter_new_password', 'Enter New Password', 'Entrer nouveau mot de passe'),
(191, 'enter_old_password', 'Enter Old Password', 'Entrer ancien mot de passe'),
(192, 'change', 'Change', 'Changer'),
(193, 'password_change_successfull', 'Password Change Successfully', 'Mot de passe changé avec succès'),
(194, 'old_password_is_wrong', 'Old Password Is Wrong', 'Entrer ancien mot de passe incorrect'),
(195, 'fees_setting', 'Fees Setting', 'Reglages frais'),
(196, 'level', 'Level', 'Stage'),
(197, 'select_level', 'Select Level', 'Selectionner stage'),
(198, 'fees_setting_successfully', 'Fees Setting Successfully', 'Reglages Frais reussi'),
(199, 'bitcoin', 'Bitcoin', 'Bitcoin'),
(200, 'payeer', 'Payeer', 'Payeer'),
(201, 'name', 'Name', 'Nom'),
(202, 'order_id', 'Order Id', 'ID de commande'),
(203, 'fees', 'Fees', 'Frais'),
(204, 'period', 'Period', 'Période'),
(205, 'commission_ret', 'Commission Ret', 'Commission ret'),
(206, 'title', 'Title', 'Titre'),
(207, 'details', 'Details', 'Details'),
(208, 'personal_info', 'Personal Information', 'Informations personnels'),
(209, 'sponsor_info', 'Sponsor Information', 'Info Sponsor'),
(210, 'affiliate_url', 'Affiliat Url', 'Lien parrainage'),
(211, 'copy', 'Copy', 'Copier'),
(212, 'my_payout', 'My Payout', 'Mes Paiements'),
(213, 'personal_sales', 'Personal Sales', 'Ventes Personnelles'),
(214, 'bank_details', 'Bank Details', 'Details de banque'),
(215, 'beneficiary_name', 'Beneficiary Name', 'Nom Beneficiaire'),
(216, 'bank_name', 'Bank Name', 'Nom de banque'),
(217, 'branch', 'Branch', 'Branche'),
(218, 'account_number', 'Account Number', 'Numéro de compte'),
(219, 'ifsc_code', 'IFC Code', 'Code IFSC'),
(220, 'account', 'Account', 'Compte'),
(221, 'my_commission', 'My Commission', 'Mes commissions'),
(222, 'finance', 'Finance', 'Finance'),
(223, 'exchange', 'Exchange', 'Echange'),
(224, 'bitcoin_setting', 'Bitcoin Setting', 'Reglages bitcoin'),
(225, 'payeer_setting', 'Payeer Setting', 'Reglages Payeer'),
(226, 'bank_information', 'Bank Information', 'Infos de banque'),
(227, 'bitcoin_wallet_id', 'Bitcoin Wallet ID', 'Wallet Bitcoin'),
(228, 'payment_method_setting', 'Payment Method Setting', 'Reglage methode de paiement'),
(229, 'payeer_wallet_id', 'Payeer Wallet Id', 'ID Payeer'),
(230, 'my_package', 'My Package', 'Mes packs'),
(231, 'my_team', 'My Team', 'Mon Equipe'),
(232, 'receipt', 'Receipt', 'Réçu'),
(233, 'withdraw_successfull', 'Withdraw Successfully', 'Retrait reussi !'),
(234, 'team_bonus', 'Team Bonus', 'Bonus d''Equipe'),
(235, 'withdraw_list', 'Withdraw List', 'Liste retraits'),
(236, 'pending_withdraw', 'Pending Withdraw', 'Demande de retrat en cours'),
(237, 'reciver_account', 'Receiver Account', 'Compte Bénéficiaire'),
(238, 'french', 'French', 'Français'),
(239, 'commission_setup', 'Commission Setup', 'Reglage commission'),
(240, 'personal_investment', 'Personal Investment', 'Investissement personnel'),
(241, 'total_investment', 'Total investment', 'Total Investissement'),
(242, 'transfer_list', 'Transfer List', 'Liste transfert'),
(243, 'form_to', 'From To', ''),
(244, 'receive', 'Receive', ''),
(245, 'wallet_id', 'Wallet Id', 'ID Wallet'),
(246, 'withdraw_details', 'Withdraw Details', 'Details retraits'),
(247, 'generation_one', 'Generation One', 'Génération 1'),
(248, 'generation_two', 'Generation Two', 'Génération 2'),
(249, 'generation_three', 'Generation Three', 'Génération 3'),
(250, 'generation_four', 'Generation Four', 'Génération 4'),
(251, 'generation_five', 'Generation Five', 'Génération 5'),
(252, 'generation_empty_message', 'You Have No Generation', ''),
(253, 'view', 'View', 'Aperçu'),
(254, 'cancle', 'Cancel', 'Annuler'),
(255, 'type', 'Type', 'Type'),
(256, 'your_total_balance_is', 'Your Total Balance Is', 'Votre montant total est de'),
(257, 'bonus', 'Bonus', 'Bonus'),
(258, 'personal_turnover', 'Sponser Turnover', 'Mon Chiffre d''affaire perso'),
(259, 'team_turnover', 'Team Turnover', 'Chiffre d''affaire Equipe'),
(260, 'post_article', 'Post Article', ''),
(261, 'article_list', 'Article List', 'LIste article'),
(262, 'add_article', 'Add Article', 'Ajouter article'),
(263, 'headline_en', 'Headline English', 'Titre EN'),
(264, 'headline_fr', 'Headline French', 'Titre  FR'),
(265, 'article_en', 'Article English', 'Article EN'),
(266, 'article_fr', 'Article French', 'Article FR'),
(267, 'edit_article', 'Edit Article', 'Editer article'),
(268, 'cat_list', 'Category List', 'Liste panier'),
(269, 'add_cat', 'Add Category', 'Ajouter au panier'),
(270, 'parent_cat', 'Parent Category', ''),
(271, 'cat_name_en', 'Category Name English', 'Nom panier EN'),
(272, 'cat_name_fr', 'Category Name French', 'Nom panier FR'),
(273, 'cat_title_en', 'Category Title English', 'Titre Panier EN'),
(274, 'cat_title_fr', 'Category Title French', 'Titre panier FR'),
(275, 'select_cat', 'Select Category', 'Selectionner Cat'),
(276, 'edit_cat', 'Edit Category', 'Editer Panier'),
(277, 'position_serial', 'Position Serial', ''),
(278, 'currency_list', 'Currency List', 'Liste de devise'),
(279, 'currency', 'Currency', 'Devise'),
(280, 'cryptocurrency_name', 'CryptoCurrency  Name', 'Nom Crypto monnaie'),
(281, 'select_cryptocurrency', 'Select Cryptocurrency', 'Selectionner Crypto'),
(282, 'edit_currency', 'Edit Currency', 'Editer Devise'),
(283, 'exchange_list', 'Exchange List', 'Liste échanges'),
(284, 'add_exchange', 'Add Exchange', 'Ajouter Echange'),
(285, 'edit_exchange', 'Edit Exchange', 'Editer Echange'),
(286, 'wallet_data', 'Wallet ID', 'Données Wallet'),
(287, 'sell_adjustment', 'Sell Adjustment', 'Ajustement Vente'),
(288, 'buy_adjustment', 'Buy Adjustment', ''),
(289, 'exchange_wallet', 'Exchange Wallet', 'Wallet Echange'),
(290, 'exchange_wallet_list', 'Exchange Wallet List', 'Liste Wallet echange'),
(291, 'add_exchange_wallet', 'Add Exchange Wallet', 'Ajouter Wallet'),
(292, 'edit_exchange_wallet', 'Edit Exchange Wallet', 'Modifier Wallet echange'),
(293, 'local_currency_list', 'Local Currency List', 'LIste  Monnaies locales'),
(294, 'local_currency', 'Local Currency', 'Devise Locale'),
(295, 'add_local_currency', 'Add Local Currency', 'Ajouter Monnaie'),
(296, 'edit_local_currency', 'Edit Local Currency', 'Editer Devise locale'),
(297, 'currency_name', 'Currency Name', 'Nom devise'),
(298, 'currency_iso_code', 'Currency ISO Code', 'Code ISO devise '),
(299, 'usd_exchange_rate', 'USD Exchange Rate', 'Taux d''echange USD'),
(300, 'currency_symbol', 'Currency Symbol', 'Symboles Devise'),
(301, 'symbol_position', 'Symbol Position', 'Position symbole'),
(302, 'currency_position', 'Currency Position', 'Position devise'),
(303, 'payment_gateway', 'Payment Gateway', 'Portail de paiement'),
(304, 'gateway_name', 'Gateway Name', 'Nom passerelle'),
(305, 'gateway_setting', 'Gateway Setting', 'Reglage portail'),
(306, 'add_payment_gateway', 'Add Payment Gateway', 'Ajouter Methode paiment'),
(307, 'public_key', 'Public Key', 'Clé publique'),
(308, 'private_key', 'Private Key', ''),
(309, 'shop_id', 'Shop ID', 'ID shop'),
(310, 'secret_key', 'Secret Key', 'Clé secrete'),
(311, 'edit_payment_gateway', 'Edit Payment Gateway', 'Editer Methode de paiement'),
(312, 'slider_list', 'Slider List', ''),
(313, 'add_slider', 'Add Slider', 'Ajouter Slider'),
(314, 'headline', 'Headline', 'Titre'),
(315, 'edit_slider', 'Edit Slider', ''),
(316, 'social_app', 'Social App', ''),
(317, 'edit_social_app', 'Edit Social App', 'Editer RS appli'),
(318, 'social_link', 'Social Link', ''),
(319, 'add_link', 'Add Link', 'Ajouter Lien'),
(320, 'link', 'Link', 'Lien'),
(321, 'icon', 'Icon', 'Icône'),
(322, 'edit_social_link', 'Edit Social Link', 'Edit les liens RS'),
(323, 'transection_info', 'Transection Info', 'Info transaction'),
(324, 'sell', 'Sell', 'Vendre'),
(325, 'article', 'Article', 'Article'),
(326, 'coin_amount', 'Coin Amount', 'Montat Crypto'),
(327, 'coin_name', 'Coin Name', 'Nom Crypto'),
(328, 'buy_amount', 'Buy Amount', 'Montant achat'),
(329, 'sell_amount', 'Sell Amount', 'Montant à vendre'),
(330, 'wallet_data', 'Wallet ID', 'Données Wallet'),
(331, 'usd_amount', 'USD Amount', 'Montant USD'),
(332, 'rate_coin', 'Coin Rate', 'Taux coin'),
(333, 'local_amount', 'Local Amount', 'Montant Local'),
(334, 'om_name', 'OM Name', 'Nom OM'),
(335, 'om_mobile_no', 'OM Phone No', 'N° OM'),
(336, 'transaction_no', 'Transaction No', 'N° de transaction'),
(337, 'idcard_no', 'ID Card No', 'N° CNI'),
(338, 'buy_list', 'Buy List', 'Buy list'),
(339, 'add_buy', 'Add Buy', 'Ajouter Achat'),
(340, 'transection_type', 'Transection Type', 'Type de transaction'),
(341, 'payment_successfully', 'Payment Successfully', 'Paiement effectué'),
(342, 'payment_cancel', 'Payment Cancel', 'Paiement annulé'),
(343, 'payment_successfully', 'Payment Successfully', 'Paiement effectué'),
(344, 'sell_list', 'Sell List', 'LIste de vente '),
(345, 'add_sell', 'Add Sell', 'Ajouter Vente'),
(346, 'edit_sell', 'Edit Sell', ''),
(347, 'account_active_mail', 'Please check Email to activate your account', 'Activer votre mail'),
(348, 'accept_terms_privacy', 'Crypto Privacy policy and Terms of Use', 'Accepter conditions et termes'),
(349, 'username_used', 'Username Already Used', 'Nom d''utilisateur déjà utilisé'),
(350, 'account_create_success_social', 'Account Created Successfully and Your Account activated', 'Compte crée avec succès'),
(351, 'email_used', 'Email Already Used', 'Adresse mail déjà utilisé'),
(352, 'account_create_active_link', 'Account Created Successfully. Activation link send your Email address', 'Lien d''activation'),
(353, 'active_account', 'Active Account', 'Compte actif'),
(354, 'wrong_try_activation', 'Wrong Try', 'Mauvaise activation'),
(355, 'pay_now', 'Pay Now', 'Payer maintenant'),
(356, 'payment_successfully', 'Payment Successfully', 'Paiement effectué'),
(357, 'sell_successfully', 'Sell Successfully', 'Vente effectuée avec succès'),
(358, 'already_clicked', 'Already Clicked There', 'Déja Validé'),
(359, 'user_info', 'User Info', 'info utilisateur'),
(360, 'user_id', 'User ID', 'ID utilisateur'),
(361, 'registered_ip', 'Registered IP', ''),
(362, 'requested_ip', 'Requested IP', ''),
(363, 'transaction_status', 'Transaction Status', 'Status de la transaction'),
(364, 'receive_status', 'receive_status', ''),
(365, 'receive_complete', 'Receive Complete', ''),
(366, 'payment_status', 'Payment Status', 'Status de paiement'),
(367, 'payment_complete', 'Payment Complete', 'Paiement complet'),
(368, 'url', 'URL', 'url'),
(369, 'app_id', 'App ID', 'ID appli'),
(370, 'app_secret', 'App Secret', 'Secret Appli'),
(371, 'api_key', 'API Key', 'Clé API'),
(372, 'app_name', 'App Name', 'Nom Appli'),
(373, 'social_list', 'Social List', ''),
(374, 'select_payment_method', 'Select Payment Method', 'Selectionner mode de paiement'),
(375, 'payable', 'Payable', ''),
(376, 'rate', 'Rate', 'Taux'),
(377, 'how_do_you_receive_money', 'How do you receive money', 'Comment Reçevoir votre argent'),
(378, 'withdraw_method', 'Withdraw Method', 'Methode de retrait'),
(379, 'select_withdraw_method', 'Select Withdraw Method', 'Selectionner méthode de retrait'),
(380, 'account_info', 'Account Info', 'Info compte'),
(381, 'upload_docunemts', 'Upload Docunemts', 'Ajouter fichier'),
(382, 'my_generation', 'My Generation', 'Mon Equipe'),
(383, 'category', 'Category', 'Catégorie'),
(384, 'slider_h1_en', 'Slider H1 English', ''),
(385, 'slider_h1_fr', 'Slider H1 French', ''),
(386, 'slider_h2_en', 'Slider H2 English', ''),
(387, 'slider_h2_fr', 'Slider H2 French', ''),
(388, 'slider_h3_en', 'Slider H3 English', ''),
(389, 'slider_h3_fr', 'Slider H3 French', ''),
(390, 'complete', 'Complete', 'Complet'),
(391, 'refresh_currency', 'Refresh Currency', ''),
(392, 'cryptocurrency', 'Crypto Currency', 'Crypto Monnaie'),
(393, 'symbol', 'Symbol', 'Symbole'),
(394, 'please_select_cryptocurrency_first', 'Please Select CryptoCurrency First', 'Veuillez choisir une crypto monnaie'),
(395, 'please_select_diffrent_payment_method', 'Please select Diffrent Payment Method', 'Selectionner une autre méthode de paiement'),
(396, 'add_credit', 'Add Credit', 'Crediter Compte'),
(397, 'credit', 'Credit', 'Crédit'),
(398, 'credit_list', 'Credit List', 'Liste de Credit'),
(399, 'notes', 'Note', 'Notes'),
(400, 'my_level_info', 'My Level Info', 'Info Niveau'),
(401, 'slider', 'Slider', 'Slider'),
(402, 'exchange_setting', 'Exchange Setting', 'Reglage Echange'),
(403, 'exchange_all_request', 'Exchange all Request', 'Toutes requêtes echanges'),
(404, 'total_user', 'Total User', 'Nombre d''utilisateurs'),
(405, 'total_roi', 'Total ROI', 'Total ROI'),
(406, 'total_commission', 'Total Commission', 'Total commission'),
(407, 'download_pdf', 'Download PDF', 'Télécharger '),
(408, 'view_all_news', 'View all news', 'Aperçu News'),
(409, 'download_company_brochure', 'Download Company Brochure', 'Téléchargez notre brochure'),
(410, 'get_in_touch', 'Get in touch', 'Contactez-nous'),
(411, 'read_more', 'Read More', 'Lire plus'),
(412, 'know_more', 'Know more', 'Savoir plus'),
(413, 'choose_plan', 'Choose plan', 'acheter'),
(414, 'latest_jobs', 'Latest Jobs', 'Latest Jobs'),
(415, 'website', 'Website', 'website'),
(416, 'chose_one_of_the_following_methods', 'Chose One of the Following Methods.', 'chose_one_of_the_following_methods.'),
(417, 'sign_in_using_your_email_address', 'Sign in Using Your Email Address', 'Connectez-vous avec votre username ou email'),
(418, 'forgot_password', 'Forgot Password', 'Forgot Password'),
(419, 'remember_me', 'Remember me', 'Remember me'),
(420, 'username_or_email', 'Username or email', 'Username or email'),
(421, 'dont_have_an_account', 'Don''t have an account', 'Don''t have an account'),
(422, 'sign_up_now', 'Sign up Now', 'Créer un compte maintenant'),
(423, 'send_code', 'Send Code', 'Send Code'),
(424, 'sign_up', 'Sign Up', 'Créer un compte'),
(425, 'already_user', 'Already User', 'Already User'),
(426, 'sign_in_now', 'Sign In Now', 'Connectez-vous maintenant'),
(427, 'sign_up_for_free', 'Sign Up For Free', 'Créer un compte gratuitement'),
(428, 'join_thousands_of_companies_that_Use_globalcrypt_every_day', 'Join Thousands of Companies that Use Global Crypto Every Day', 'Join Thousands of Companies that Use Global Crypto Every Day'),
(429, 'your_password_at_global_crypto_are_encrypted_and_secured', 'Your Password at Global Crypto are encrypted and Secured', 'Votre mot de passe Global Crypto est crypté et securisé'),
(430, 'email_username_used', 'Email/Username Already Used', 'Email/Username Already Used'),
(431, 'address', 'Address', 'Address'),
(432, 'phone', 'Phone', 'Phone'),
(433, 'admin_align', 'Admin Align', 'Admin Align'),
(434, 'office_time', 'Office Time', 'Office Time'),
(435, 'logo_web', 'WebSite Logo', 'WebSite Logo'),
(436, 'dashboard_logo', 'Dashboard Logo', 'Dashboard Logo'),
(437, 'advertisement', 'Advertisement', 'Advertisement'),
(438, 'script', 'Script', 'Script'),
(439, 'add_advertisement', 'Add Advertisement', 'Add Advertisement'),
(440, 'page', 'Page', 'Page'),
(441, 'embed_code', 'Embed code', 'Embed code'),
(442, 'add_type', 'Add Type', 'Add Type'),
(443, 'edit_advertisement', 'Edit Advertisement', 'Edit Advertisement'),
(444, 'host', 'Host', 'Host'),
(445, 'port', 'Port', 'Port'),
(446, 'apikey', 'API Key', 'API Key'),
(447, 'mail_type', 'Mail Type', 'Mail Type'),
(448, 'charset', 'Charset', 'Charset'),
(449, 'news', 'News', 'News'),
(450, 'news_list', 'News List', 'News List'),
(451, 'edit_news', 'Edit News', 'Edit News'),
(452, 'post_news', 'Post News', 'Post News'),
(453, 'close', 'Close', 'Close'),
(454, 'contact_us', 'Contact Us', 'Contact Us'),
(455, 'watch_video', 'WATCH VIDEO', 'WATCH VIDEO'),
(456, 'about_bitcoin', 'About Bitcoin', 'About Bitcoin'),
(457, 'get_start', 'Get Start', 'Get Start'),
(458, 'cryptocoins', 'Crypto Coins', 'Crypto Coins'),
(459, 'subscribe_to_our_newsletter', 'Subscribe to our newsletter!', 'Subscribe to our newsletter!'),
(460, 'email_newslatter', 'Email Newsletter', 'Email Newsletter'),
(461, 'services', 'Services', 'Services'),
(462, 'our_company', 'Our Company', 'Our Company'),
(463, 'sign_in', 'Sign In', 'Connectez-vous'),
(464, 'join_the_new_yera_of_cryptocurrency_exchange', 'Join the new Yera of cryptocurrency exchange', 'Join the new Yera of cryptocurrency exchange'),
(465, 'access_the_cryptocurrency_experience_you_deserve', 'Access the cryptocurrency experience you deserve', 'Access the cryptocurrency experience you deserve'),
(466, 'home', 'Home', 'Home'),
(467, 'scroll_to_top', 'Scroll to Top', 'Scroll to Top'),
(468, 'ticker', 'Ticker', 'Ticker'),
(469, 'price', 'Price', 'Price'),
(470, 'capitalization', 'Capitalization', 'Capitalization'),
(471, '1d_change', '1D change', '1D change'),
(472, 'graph_24h', 'Graph 24H', 'Graph 24H'),
(473, 'recent_post', 'Recent Post', 'Recent Post'),
(474, 'my_social_link', 'My Social link', 'My Social link'),
(475, 'tell_us_about_your_project', 'Tell Us About Your Project', 'Tell Us About Your Project'),
(476, 'company', 'Company', 'Company'),
(477, 'reset_your_password', 'Reset Your Password', 'Reset Your Password'),
(478, '24h_change', '24H change', '24H change'),
(479, '24h_volume', '24H Volume', '24H Volume'),
(480, 'latitudelongitude', 'Latitude, Longitude', 'Latitude, Longitude'),
(481, 'send_money', 'Send Money', 'Send Money'),
(482, 'article', 'Article', 'article'),
(483, 'contact', 'Contact', 'contact'),
(484, 'team', 'Team', 'team'),
(485, 'client', 'Client', 'client'),
(486, 'service', 'Service', 'service'),
(487, 'testimonial', 'Testimonial', 'testimonial'),
(488, 'faq', 'F.A.Q', 'faq'),
(489, 'short_description_en', 'Short description english', 'Short Description'),
(490, 'long_description_en', 'Long description English', 'Long Description'),
(491, 'short_description_fr', 'Short description english', 'Short Description'),
(492, 'long_description_fr', 'Long description English', 'Long Description'),
(493, 'info', 'Information', 'Information'),
(494, 'quote', 'Quote', 'Quote'),
(495, 'question_fr', 'Question French', 'Question French'),
(496, 'question_en', 'Question English', 'Question English'),
(497, 'answer_en', 'Answer English', 'Answer English'),
(498, 'answer_fr', 'Answer French', 'Answer French'),
(499, 'content', 'Page Content', 'Page Content'),
(500, 'add_content', 'Add Content', 'Add Content'),
(501, 'edit_content', 'Edit Content', 'Edit Content'),
(502, 'video', 'video (If Youtube Link)', 'video'),
(503, 'add_faq', 'Add F.A.Q', 'Add faq'),
(504, 'add_testimonial', 'Add Testimonial', 'Add testimonial'),
(505, 'add_service', 'Add Service', 'Add service'),
(506, 'add_client', 'Add Client', 'Add client'),
(507, 'add_team', 'Add Team', 'Add team'),
(508, 'add_contact', 'Add Contact', 'Add contact'),
(509, 'add_article', 'Add Article', 'Add article'),
(510, 'edit_article', 'edit Article', 'edit article'),
(511, 'edit_contact', 'edit Contact', 'edit contact'),
(512, 'edit_team', 'edit Team', 'edit team'),
(513, 'edit_client', 'edit Client', 'edit client'),
(514, 'edit_service', 'edit Service', 'edit service'),
(515, 'edit_testimonial', 'edit Testimonial', 'edit testimonial'),
(516, 'edit_faq', 'edit F.A.Q', 'edit faq'),
(517, 'article_list', 'Article List', 'article'),
(518, 'contact_list', 'Contact List', 'contact'),
(519, 'team_list', 'Team List', 'team'),
(520, 'client_list', 'Client List', 'client'),
(521, 'service_list', 'Service List', 'service'),
(522, 'testimonial_list', 'Testimonial List', 'testimonial'),
(523, 'faq_list', 'F.A.Q List', 'faq'),
(524, 'content_list', 'Page Content', 'Page Content'),
(525, 'add_teammember', 'Add Teammember', 'Add Teammember'),
(526, 'tooltip_package_name', 'Example: Silver Package', 'Example: Silver Package'),
(527, 'tooltip_package_details', 'This is for Package Short Details', 'This is for Package Short Details.'),
(528, 'tooltip_package_amount', 'Package Amount in Dollar. Example: 200', 'Package Amount in Dollar. Example: 200'),
(529, 'tooltip_package_daily_roi', 'Please Set this field with Zero. Example: 0', 'Please Set this field with Zero. Example: 0'),
(530, 'tooltip_package_weekly_roi', 'Who buy this package they will get weekly ROI in Dollar. Example: 5. They will get every week 5 till them package period', 'Who buy this package they will get weekly ROI in Dollar. Example: 5. They will get every week 5 till them package period'),
(531, 'tooltip_package_monthly_roi', 'Sum of weekly ROI in a month', 'Sum of weekly ROI in a month'),
(532, 'tooltip_package_yearly_roi', 'Sum of weekly ROI in a Year', 'Sum of weekly ROI in a Year'),
(533, 'tooltip_package_total_percent_roi', 'Total Persent Of ROI', 'Total Persent Of ROI'),
(534, 'tooltip_package_period', 'Package Period', 'Package Period'),
(535, 'trading', 'Trading', 'Trade'),
(536, 'trade_history', 'Trade History', 'Trade History'),
(537, 'market', 'Market', 'Market'),
(538, 'coin_pair', 'Coin Pair', 'Coin Pair'),
(539, 'pending_deposit', 'Pending Deposit', 'Demande de retrat en cours'),
(540, 'email_and_sms_setting', 'Email And Sms Setting', 'Email And Sms Setting'),
(541, 'email_and_sms_gateway', 'Email And Sms Gateway', 'Email And Sms Gateway'),
(542, 'trade', 'Trade', 'Trade'),
(543, 'referral_id', 'Referral ID', ''),
(544, 'please_enter_valid_email', 'Please Enter Valid Email !!!', 'Please Enter Valid Email !!!'),
(545, 'already_subscribe', 'This Email Address already subscribed', 'This Email Address already subscribed'),
(546, 'message_send_successfuly', 'TMessage send successfuly', 'Message send successfuly'),
(547, 'message_send_fail', 'Message send Fail', 'Message send Fail'),
(548, 'setup_payment_gateway', 'setup payment gateway', 'setup payment gateway'),
(549, 'user_profile', 'User Profile', 'User Profile'),
(550, 'client_id', 'Client Id', 'Client Id'),
(551, 'client_secret', 'Client Secret', 'Client Secret'),
(553, 'notice', 'Notice', 'Notice'),
(554, 'edit_notice', 'Edit Notice', 'Edit Notice'),
(555, 'language_list', 'Language List', 'Language List'),
(556, 'phrase_list', 'Phrase List', 'Phrase List'),
(557, 'edit_phrase', 'Edit Phrase', 'Edit Phrase'),
(558, 'label_added_successfully', 'Label added successfully!', 'Label added successfully!'),
(559, 'this_level_already_exist', 'This Level Already Exist!', 'This Level Already Exist!'),
(560, 'you_successfully_deposit_the_amount', 'You successfully deposit the amount', 'You successfully deposit the amount'),
(561, 'your_new_balance_is', 'Your new balance is', 'Your new balance is'),
(562, 'account_name', 'Account Name', 'Account Name'),
(563, 'account_no', 'Account No', 'Account No'),
(564, 'branch_name', 'Branch Name', 'Branch Name'),
(565, 'swift_code', 'SWIFT Code', 'SWIFT Code'),
(566, 'abn_no', 'ABN No', 'ABN No'),
(567, 'country', 'Country', 'Country'),
(568, 'bank_name', 'Bank Name', 'Bank Name'),
(569, 'there_is_no_phone_number', 'There is no Phone number!!!', 'There is no Phone number!!!'),
(570, 'coinpair', 'Coinpair', 'Coinpair'),
(571, 'edit_coinpair', 'Edit Coinpair', 'Edit Coinpair'),
(572, 'edit_coin', 'Edit coin', 'Edit coin'),
(573, 'coin_market', 'Coin Market', 'Coin Market'),
(574, 'edit_market', 'Edit market', 'Edit market'),
(575, 'leave_us_a_message', 'Leave us a message', 'Leave us a message'),
(576, 'verify_type', 'verify type', 'verify type'),
(577, 'gender', 'Gender', 'Gender'),
(578, 'id_number', 'Id  Number', 'Id Number'),
(579, 'verification_is_being_processed', 'Verification Is being Processed', 'Verification Is being Processed'),
(580, 'cryptocoin', 'crypto coin', 'crypto coin'),
(581, 'please_setup_your_bank_account', 'Please setup bank account', 'Please setup bank account'),
(582, 'this_gateway_deactivated', 'This Gateway Deactivated', 'This Gateway Deactivated'),
(583, 'otp_send_to', 'OTP Send To', 'OTP Send To'),
(584, 'your_weekly_limit_exceeded', 'Your weekly Limit exceeded', 'Your weekly exceeded '),
(585, 'there_is_no_order_for_cancel', 'There is no order for cancel', 'There is no order for cancel'),
(586, 'request_canceled', 'Request Canceled', 'Request Canceled'),
(587, 'referral_id_is_invalid', 'Referral ID is invalid', 'Referral ID is invalid'),
(588, 'invalid_ip_address', 'Invalid IP address', 'Invalid IP address'),
(589, 'please_activate_your_account', 'Please activate your account', 'Please activate your account'),
(590, 'already_regsister', 'Already regsister!!!', 'Already regsister!!!'),
(591, 'this_account_is_now_pending', 'This account is now pending', 'This account is now pending'),
(592, 'this_account_is_suspend', 'This account is suspend', 'This account is suspend'),
(593, 'something_wrong', 'Something wrong !!!', 'Something wrong !!!'),
(594, 'password_missmatch', 'Password Missmatch', 'password missmatch'),
(595, 'invalid_authentication_code', 'Invalid Authentication Code', 'Invalid Authentication Code'),
(596, 'password_reset_code_send_check_your_email', 'Password reset code send.Check your email.', 'Password reset code send.Check your email.'),
(597, 'email_required', 'email required', 'email required'),
(598, 'password_changed', 'Password has been changed', 'Password has been changed'),
(599, 'google_authenticator_disabled', 'Google Authenticator Disabled', 'Google Authenticator Disabled'),
(600, 'google_authenticator_enabled', 'Google Authenticator Enabled', 'Google Authenticator Enabled'),
(601, 'this_account_already_activated', 'This account already activated', 'This account already activated'),
(602, 'total_balance', 'Total Balance', 'Total Balance'),
(603, 'available_balance', 'Available balance', 'Available balance'),
(604, 'open', 'Open', 'Open'),
(605, 'qty', 'QTY', 'QTY'),
(606, 'finished_trade', 'Finished Trade', 'Finished Trade'),
(607, 'deposit_crypto_dollar', 'Deposit(Crypto/Dollar)', 'Deposit(Crypto/Dollar)'),
(608, 'us_dollar', 'US Dollar', 'US Dollar'),
(609, 'available', 'available', 'available'),
(610, 'buy_orders', 'Buy Orders', 'Buy Orders'),
(611, 'last_price', 'last price', 'last price'),
(612, 'sell_orders', 'Sell Orders', 'Sell Orders'),
(613, '1hr_change', '1hr Change', '1hr Change'),
(614, '1hr_high', '1hr High', '1hr High'),
(615, '1hr_low', '1hr Low', '1hr Low'),
(616, '1hr_volume', '1hr Volume', '1hr Volume'),
(617, 'estimated_open_price', 'Estimated open price', 'Estimated open price'),
(618, 'open_fees', 'Open fees', 'Open fees'),
(619, 'market_depth', 'Market Depth', 'Market Depth'),
(620, 'coin', 'Coin', 'Coin'),
(621, 'market_price', 'Market Price', 'Market Price'),
(622, 'volume', 'volume', 'volume'),
(623, 'live_chat', 'Live Chat', 'Live Chat'),
(624, 'market_trade_history', 'Market Trade History', 'Market Trade History'),
(625, 'Notices', 'notices', 'notices'),
(626, 'posted_by', 'Posted by', 'Posted by'),
(627, 'latest_form_our_blog', 'Latest form our blog', 'Latest form our blog'),
(628, 'auth_code', 'AuthCode', 'AuthCode'),
(629, 'scan_this_barcode_using', 'Scan this BarCode using', 'Scan this BarCode using'),
(630, 'google_authentication', 'Google Authentication', 'Google Authentication'),
(631, 'install_google_authentication', 'Install Google Authentication', 'Install Google Authentication'),
(632, 'if_you_are_unable_to_scan_the_qr_code_please_enter_this_code_manually_into_the_app.', 'If you are unable to scan the QR code, please enter this code manually into the app.', 'If you are unable to scan the QR code, please enter this code manually into the app.'),
(633, 'open_order', 'Open Order', 'Open Order'),
(634, 'complete_order', 'Complete Order', 'Complete Order'),
(635, 'bank_setting', 'Bank Setup', 'Bank Setup'),
(636, 'payout_setup', 'Payout Setup', 'Payout Setup'),
(637, 'account_login', 'Account Login', 'Account Login'),
(638, 'we_never_share_your_email_with_anyone_else', 'We''ll never share your email with anyone else', 'We''ll never share your email with anyone else'),
(639, 'news_details', 'News Details', 'News Details'),
(640, 'open_order_history', 'Open Order History', 'Open Order History'),
(641, 'required_qty', 'Required QTY', ''),
(642, 'available_qty', 'Available QTY', ''),
(643, 'required_amount', 'Required Amount', ''),
(644, 'available_amount', 'Available Amount', ''),
(645, 'complete_qty', 'Complete QTY', ''),
(646, 'complete_amount', 'complete amount', ''),
(647, 'trade_time', 'Trade Time', 'Trade Time'),
(648, 'running', 'Running', 'Running'),
(649, '24hr_change', '24hr Change', '24hr Change'),
(650, '24hr_high', '24hr High', '24hr High'),
(651, '24hr_low', '24hr Low', '1hr Low'),
(652, '24hr_volume', '24hr Volume', '24hr Volume'),
(653, 'post_comment', 'Post Comment', 'Post Comment'),
(654, 'account_created', 'Account Created', 'Account Created'),
(655, 'access_time', 'Access Time', 'Access Time'),
(656, 'user_agent', 'User Agent', 'User Agent'),
(657, 'passport', 'Passport', 'Passport'),
(658, 'drivers_license', 'Driver''s license', 'Driver''s license'),
(659, 'government_issued_id_card', 'Government-issued ID Card', 'Government-issued ID Card'),
(660, 'given_name', 'Given Name', 'Given Name'),
(661, 'surname', 'Surname', 'Surname'),
(662, 'passport_nid_license_number', 'Passport/NID/License Number', 'Passport/NID/License Number'),
(663, 'account_register', 'Account Register', 'Account Register'),
(664, 'confirm_password', 'Confirm Password', 'Confirm Password'),
(665, 'canceled', 'Canceled', 'Canceled'),
(666, 'completed', 'Completed', 'Completed'),
(667, 'crypto_dollar_currency', 'Crypto/Dollar Currency', 'Crypto/Dollar Currency'),
(668, 'withdraw_no', 'Withdraw No', 'Withdraw No'),
(669, 'male', 'Male', 'Male'),
(670, 'female', 'Female', 'Female'),
(671, 'verify', 'Verify', 'Verify'),
(672, 'server_problem', 'Server Problem', 'Server Problem'),
(673, 'verified', 'Verified', 'Verified');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` varchar(250) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL,
  `sender_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=unseen, 1=seen, 2=delete',
  `receiver_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=unseen, 1=seen, 2=delete'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `notification_type` varchar(45) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `details` mediumtext,
  `status` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='SMS and Email notified data will be stored in this table.';

-- --------------------------------------------------------

--
-- Table structure for table `payeer_payments`
--

CREATE TABLE `payeer_payments` (
  `id` int(11) NOT NULL,
  `m_operation_id` int(11) NOT NULL,
  `m_operation_ps` int(11) NOT NULL,
  `m_operation_date` varchar(100) NOT NULL,
  `m_operation_pay_date` varchar(100) NOT NULL,
  `m_shop` int(11) NOT NULL,
  `m_orderid` varchar(300) NOT NULL,
  `m_amount` varchar(100) NOT NULL,
  `m_curr` varchar(100) NOT NULL,
  `m_desc` varchar(300) NOT NULL,
  `m_status` varchar(100) NOT NULL,
  `m_sign` text NOT NULL,
  `lang` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateway`
--

CREATE TABLE `payment_gateway` (
  `id` int(11) NOT NULL,
  `identity` varchar(50) NOT NULL,
  `agent` varchar(100) NOT NULL,
  `public_key` text NOT NULL,
  `private_key` text NOT NULL,
  `shop_id` varchar(100) NOT NULL,
  `secret_key` varchar(100) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_gateway`
--

INSERT INTO `payment_gateway` (`id`, `identity`, `agent`, `public_key`, `private_key`, `shop_id`, `secret_key`, `status`) VALUES
(1, 'bitcoin', 'GoUrl Payment Gateway', 'a:13:{s:7:"bitcoin";s:0:"";s:11:"bitcoincash";s:0:"";s:8:"litecoin";s:0:"";s:4:"dash";s:0:"";s:8:"dogecoin";s:0:"";s:9:"speedcoin";s:0:"";s:8:"reddcoin";s:0:"";s:7:"potcoin";s:0:"";s:11:"feathercoin";s:0:"";s:8:"vertcoin";s:0:"";s:8:"peercoin";s:0:"";s:12:"monetaryunit";s:0:"";s:17:"universalcurrency";s:0:"";}', 'a:13:{s:7:"bitcoin";s:0:"";s:11:"bitcoincash";s:0:"";s:8:"litecoin";s:0:"";s:4:"dash";s:0:"";s:8:"dogecoin";s:0:"";s:9:"speedcoin";s:0:"";s:8:"reddcoin";s:0:"";s:7:"potcoin";s:0:"";s:11:"feathercoin";s:0:"";s:8:"vertcoin";s:0:"";s:8:"peercoin";s:0:"";s:12:"monetaryunit";s:0:"";s:17:"universalcurrency";s:0:"";}', '', '', 0),
(2, 'payeer', 'Payeer', '485146745', 'VsdHofTsuI6XOdjL', '', '', 1),
(4, 'phone', 'Mobile Money', '+880 1746 40 68 01', 'mobile', '', '', 0),
(5, 'paypal', 'Paypal', 'AfmTkhn-GYb_HAsPayWeLDVTG39jNjGsJ3siJSNDs6QGr52KDLnAT28fIv4TVni5P3Dax8w1y-Libl_j', 'EHGJveSf9GJcbyQwgYmouRi9baBPKLPqeSYjYesiG4UJTSnQ45q3gwQdkB6TvFQAjkYm42D1P_Hqn340', '', 'sandbox', 1),
(6, 'stripe', 'Stripe', 'pk_test_BPLwYal0sn4KkKaDTzuj5oRq', 'sk_test_6J6dcwXf8ruEZGCvlC09C9NK', '', '', 1),
(7, 'bank', 'Bank', '{"id":"7","identity":"bank","agent":"bank","acc_name":"","acc_no":"","branch_name":"","swift_code":"","abn_no":"","country":"BD","bank_name":"","status":"1"}', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `logo_web` varchar(255) NOT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `site_align` varchar(50) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `time_zone` varchar(100) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `office_time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `title`, `description`, `email`, `phone`, `logo`, `logo_web`, `favicon`, `language`, `site_align`, `footer_text`, `time_zone`, `latitude`, `office_time`) VALUES
(1, 'Crypto Currency Treading System', 'Bangladesh Office <br>98 Green Road, Farmgate, Dhaka- 1215', 'info@bdtask.com', '+88-01817-584639', 'upload/settings/c579decfe732e25b7d347daa3a82b11c.png', 'upload/settings/5b3c74cacc762f373210b855dc9b885a.png', 'upload/settings/6a32acfe674bbfb88ad1c8f3f1de332d.png', 'english', 'LTR', '2018 © Copyright bdtask Treading System', 'UTC', '40.6700, -73.9400', 'Monday - Friday: <strong>08:00 - 22:00</strong>\r\n<br>Saturday, Sunday: <strong>Closed</strong>');

-- --------------------------------------------------------

--
-- Table structure for table `sms_email_send_setup`
--

CREATE TABLE `sms_email_send_setup` (
  `id` int(11) NOT NULL,
  `method` text NOT NULL,
  `deposit` int(11) DEFAULT NULL,
  `transfer` int(11) DEFAULT NULL,
  `withdraw` int(11) DEFAULT NULL,
  `payout` int(11) DEFAULT NULL,
  `commission` int(11) DEFAULT NULL,
  `team_bonnus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_email_send_setup`
--

INSERT INTO `sms_email_send_setup` (`id`, `method`, `deposit`, `transfer`, `withdraw`, `payout`, `commission`, `team_bonnus`) VALUES
(1, 'email', 1, 1, 1, 1, 1, 1),
(2, 'sms', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `web_article`
--

CREATE TABLE `web_article` (
  `article_id` int(11) NOT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `headline_en` varchar(300) DEFAULT NULL,
  `headline_fr` varchar(300) DEFAULT NULL,
  `article_image` varchar(100) DEFAULT NULL,
  `custom_url` varchar(300) NOT NULL,
  `article1_en` longtext NOT NULL,
  `article1_fr` longtext NOT NULL,
  `article2_en` longtext NOT NULL,
  `article2_fr` longtext NOT NULL,
  `video` varchar(300) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `page_content` int(11) DEFAULT '0' COMMENT 'if this is a Page content set 1 else 0',
  `position_serial` int(11) NOT NULL,
  `publish_date` datetime NOT NULL,
  `publish_by` varchar(20) NOT NULL,
  `edit_history` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_article`
--

INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES
(1, NULL, 'Contact', 'Contact Français Français Français Français', NULL, '', '1355 Market Street, Suite 900 San Francisco, CA 94103', '<div>\r\n                                            <p>Phone&nbsp;<font color="#72afd2"><span style="background-color: rgb(255, 255, 255); outline-color: initial; outline-width: initial; transition: all 0.3s;">+1 (514) 352-1010</span></font><br>Fax&nbsp;<span style="background-color: rgb(255, 255, 255);">+1 (514) 352-7511</span></p></div>', '<ul class="opening_hours">\n                                        <li>\n                                            <p>Monday-Wednesday</p>\n                                            <p>10 am - 6 pm</p></li>\n                                    </ul>', '', NULL, 12, 0, 0, '2018-07-12 08:57:37', 'admin@demo.com', 0),
(2, NULL, 'Marketing Consultancy', 'Emile Parfait SIMB', NULL, '', 'zsnsdfz', 'fbzdfzdxfzdz', '', '', NULL, 30, 0, 0, '2018-07-14 08:34:48', 'admin@demo.com', 0),
(7, NULL, 'Make Each <span>Price Spike</span> And Dip Count', 'Make Each <span>Price Spike</span> And Dip Count', '', '', '<p><span style="color: rgb(165, 165, 165); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 15px; text-align: center;">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum.</span><br></p>', '<p><span style="color: rgb(165, 165, 165); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 15px; text-align: center;">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum.</span><br></p>', '', '', '', 1, 1, 1, '2018-11-03 06:15:00', 'admin@demo.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_category`
--

CREATE TABLE `web_category` (
  `cat_id` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `cat_name_en` varchar(100) NOT NULL,
  `cat_name_fr` varchar(100) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `cat_image` varchar(300) DEFAULT NULL,
  `cat_title1_en` varchar(100) DEFAULT NULL,
  `cat_title1_fr` varchar(100) DEFAULT NULL,
  `cat_title2_en` varchar(300) DEFAULT NULL,
  `cat_title2_fr` varchar(300) DEFAULT NULL,
  `menu` int(11) DEFAULT NULL COMMENT 'Header menu=1',
  `position_serial` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_category`
--

INSERT INTO `web_category` (`cat_id`, `slug`, `cat_name_en`, `cat_name_fr`, `parent_id`, `cat_image`, `cat_title1_en`, `cat_title1_fr`, `cat_title2_en`, `cat_title2_fr`, `menu`, `position_serial`, `status`) VALUES
(1, 'home', 'Home', 'Maison', 0, '', '', '', '', '', 1, 1, 1),
(4, 'exchange', 'Exchange', 'Échange', 0, 'upload/1be637b8e76b153d9c74d35864db2c0d.jpg', 'Exchange', '', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that', '', 1, 4, 1),
(8, 'about', 'About', 'Sur', 7, 'upload/b40e7e093d856ff3c5037421efade783.jpg', 'About Us', '', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that', '', NULL, NULL, 1),
(9, 'news', 'News', 'Nouvelles', 0, 'upload/c2eea24dd0d9c5867e33facfadb0d869.jpg', 'Latest form our blog', '', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that', '', NULL, NULL, 1),
(12, 'contact', 'Contact', 'Contact', 7, 'upload/03d99f85c1b60a59fc101c26fb8a2b3e.jpg', 'Contact', '', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that', '', 3, 5, 1),
(16, 'register', 'Register', 'Register', 0, '', '', '', '', '', 0, 0, 1),
(17, 'forgot-password', 'Forgot Password', 'Mot de Passe oublié', 0, 'upload/660b9342724e8d4825348dbc07bd19b6.jpg', '', '', '', '', 0, NULL, 1),
(19, 'btc', 'BTC', '', 9, '', '', '', '', '', 0, NULL, 1),
(20, 'eth', 'ETH', 'ETH', 9, '', '', '', '', '', 0, 0, 1),
(21, 'ltc', 'LTC', 'LTC', 9, '', '', '', '', '', 0, 0, 1),
(22, 'dash', 'DASH', 'DASH', 9, '', '', '', '', '', 0, 0, 1),
(24, 'blockchain', 'Blockchain', 'Blockchain', 9, '', '', '', '', '', 0, 0, 1),
(25, 'trading', 'Trading', 'Trading', 9, '', '', '', '', '', 0, 0, 1),
(26, 'news-details', 'News Details', 'News Details', 0, '', '', '', '', '', 0, 0, 1),
(27, 'mining', 'Mining', '', 9, '', '', '', '', '', 0, NULL, 1),
(28, 'terms', 'Terms', 'terms', 0, '', '', '', '', '', 3, 0, 1),
(29, 'notice', 'Notice', 'Noticeo', 0, '', '', '', '', '', 0, NULL, 1),
(30, 'faq', 'FAQ', 'FAQ', 0, '', 'zXCZXCzXC', 'zXCzXCzx', 'xCzxCzx', 'zxCzXCzX', 2, NULL, 1),
(31, 'zvczxc', 'zvczxc', 'zxcvzxcxc', 0, '', 'zxcvxczv', 'xcvz', '', '', 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_language`
--

CREATE TABLE `web_language` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `flag` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_language`
--

INSERT INTO `web_language` (`id`, `name`, `flag`) VALUES
(1, 'Français', 'fr');

-- --------------------------------------------------------

--
-- Table structure for table `web_news`
--

CREATE TABLE `web_news` (
  `article_id` int(11) NOT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `headline_en` varchar(300) NOT NULL,
  `headline_fr` varchar(300) NOT NULL,
  `article_image` varchar(100) DEFAULT NULL,
  `custom_url` varchar(300) NOT NULL,
  `article1_en` longtext NOT NULL,
  `article1_fr` longtext NOT NULL,
  `article2_en` longtext NOT NULL,
  `article2_fr` longtext NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `position_serial` int(11) NOT NULL,
  `publish_date` datetime NOT NULL,
  `publish_by` varchar(20) NOT NULL,
  `edit_history` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_news`
--

INSERT INTO `web_news` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `cat_id`, `parent_id`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES
(1, 'true-flip-enters-the-slot-market-with-chains-code', 'True Flip enters the slot market with Chain’s Code', '', 'upload/news/42cf81dba6b110fbed82b4414279d8ef.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 19, NULL, 0, '2018-04-09 09:46:48', 'admin@demo.com', 0),
(2, 'bitcoin-in-brief-monday-twitter-wields-the-banhammer', 'Bitcoin in Brief Monday: Twitter Wields the Banhammer', '', 'upload/news/4e9a8a65e73a4267e85cf6cbd3a6ccfe.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 19, NULL, 0, '2018-04-09 09:46:23', 'admin@demo.com', 0),
(3, 'ethereum-price-technical-analysis-ethusd-eyes-more-gains', 'Ethereum Price Technical Analysis – ETH/USD Eyes More Gains', '', 'upload/news/22c6957a6c707bf5d1a8435b665a0cf3.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 20, NULL, 0, '2018-04-09 09:50:44', 'admin@demo.com', 0),
(4, 'south-africa-puts-onus-on-taxpayers-to-declare-all-cryptocurrency-income', 'South Africa Puts Onus on Taxpayers to Declare All Cryptocurrency Income', '', 'upload/news/166e293c430bdf835f0c6d6a127e4e13.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 21, NULL, 0, '2018-07-10 09:11:16', 'admin@demo.com', 0),
(5, 'neo-eos-litecoin-iota-and-stellar-technical-analysis-april-9-2018', 'NEO, EOS, Litecoin, IOTA and Stellar: Technical Analysis April 9, 2018', '', 'upload/news/b731dbe9143e088de015c0c844d40105.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 21, NULL, 0, '2018-07-10 09:11:02', 'admin@demo.com', 0),
(6, 'why-invest-in-dash', 'Why Invest in Dash?', '', 'upload/news/9d5c09ab5b25569514fa852e2d2c1483.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 22, NULL, 0, '2018-07-10 09:10:50', 'admin@demo.com', 0),
(7, 'asic-resistance-increasingly-hot-topic-in-crypto-as-monero-forks', 'ASIC Resistance Increasingly Hot Topic in Crypto as Monero Forks', '', 'upload/news/32083222f2430503659756a60d3b0b6b.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 19, NULL, 0, '2018-07-17 10:30:35', 'admin@demo.com', 0),
(8, 'canadian-mining-giant-hyperblock-acquires-cryptoglobal-for-106-million', 'CANADIAN MINING GIANT HYPERBLOCK ACQUIRES CRYPTOGLOBAL FOR $106 MILLION', '', 'upload/news/e56c8562afa3795f3c4c3ecccc3bfa83.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 27, NULL, 0, '2018-07-17 10:30:23', 'admin@demo.com', 0),
(9, 'how-can-blockchains-remove-the-pay-to-trade-barrier-in-the-market', 'How Can Blockchains Remove the ‘Pay to Trade’ Barrier in the Market?', '', 'upload/news/2ff94094fcfbe19daf303a479b9fad68.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 24, NULL, 0, '2018-07-10 09:13:25', 'admin@demo.com', 0),
(10, 'how-blockchain-is-making-it-easier-to-get', 'How Blockchain Is Making It Easier to Get', '', 'upload/news/44807c1619ecc1f8374b8930477187aa.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 24, NULL, 0, '2018-07-10 09:13:16', 'admin@demo.com', 0),
(11, 'ripple-price-technical-analysis-xrpusd', 'Ripple Price Technical Analysis – XRP/USD', '', 'upload/news/3c9de71155211697f38a3820ba36670d.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 25, NULL, 0, '2018-07-08 09:11:43', 'admin@demo.com', 0),
(12, 'bitfinex-introduces-trading-for-12-altcoins', 'Bitfinex Introduces Trading for 12 Altcoins', '', 'upload/news/bced67e1ee1ed3b2f3d4a10f9f71e78e.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 25, NULL, 0, '2018-07-10 09:35:43', 'admin@demo.com', 0),
(13, 'bitcoin-cash-price-trend-including-tether', 'Bitcoin Cash Price Trend Including Tether', '', 'upload/news/0656fe700249acfe0a5535b4ae2c0088.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 25, NULL, 0, '2018-07-10 09:36:00', 'admin@demo.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_slider`
--

CREATE TABLE `web_slider` (
  `id` int(11) NOT NULL,
  `slider_h1_en` varchar(900) DEFAULT NULL,
  `slider_h1_fr` varchar(900) DEFAULT NULL,
  `slider_h2_en` varchar(900) DEFAULT NULL,
  `slider_h2_fr` varchar(900) DEFAULT NULL,
  `slider_h3_en` varchar(900) DEFAULT NULL,
  `slider_h3_fr` varchar(900) DEFAULT NULL,
  `slider_img` varchar(300) DEFAULT NULL,
  `custom_url` varchar(300) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_slider`
--

INSERT INTO `web_slider` (`id`, `slider_h1_en`, `slider_h1_fr`, `slider_h2_en`, `slider_h2_fr`, `slider_h3_en`, `slider_h3_fr`, `slider_img`, `custom_url`, `status`) VALUES
(1, 'The Feature of <span class="outrageous-orange">Financing</span> <br>Technology is Here', '', 'It is a long established fact that a reader will be distracted by the readable content of a page when.<br> looking at its layout The point of using Lorem Ipsum is that', '', 'Get in touch', '', 'upload/slider/fe613a9078976e374e8ca75f866674d8.jpg', 'https://www.bdtask.com/', 1),
(3, 'Take the world''s  best <br><span class="navy-blue">Cryptocurrency</span>  Site.', '', 'Miker Ipsum is simply dummy text of the printing and typesetting industry.<br> Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s', '', 'Start Now', '', 'upload/slider/08b0d2fbc37ac78a04f04195fd471e3b.jpg', 'https://www.bdtask.com/', 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_social_link`
--

CREATE TABLE `web_social_link` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `web_social_link`
--

INSERT INTO `web_social_link` (`id`, `name`, `link`, `icon`, `status`, `date`) VALUES
(1, 'Facebook', 'https://www.facebook.com', 'facebook', 1, '2018-04-02 13:52:31'),
(2, 'twitter', 'https://twitter.com', 'tumblr', 1, '2018-07-10 06:12:09'),
(3, 'google plus', 'https://google-plus.com', 'linkedin', 1, '2018-07-10 06:12:09'),
(4, 'youtube', 'https://www.youtube.com', 'dribbble', 1, '2018-07-10 06:12:09'),
(5, 'instagram', 'https://instagram.com', 'instagram', 1, '2018-02-01 07:58:56');

-- --------------------------------------------------------

--
-- Table structure for table `web_subscriber`
--

CREATE TABLE `web_subscriber` (
  `sub_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crypto_payments`
--
ALTER TABLE `crypto_payments`
  ADD PRIMARY KEY (`paymentID`),
  ADD UNIQUE KEY `key3` (`boxID`,`orderID`,`userID`,`txID`,`amount`,`addr`),
  ADD KEY `boxID` (`boxID`),
  ADD KEY `boxType` (`boxType`),
  ADD KEY `userID` (`userID`),
  ADD KEY `countryID` (`countryID`),
  ADD KEY `orderID` (`orderID`),
  ADD KEY `amount` (`amount`),
  ADD KEY `amountUSD` (`amountUSD`),
  ADD KEY `coinLabel` (`coinLabel`),
  ADD KEY `unrecognised` (`unrecognised`),
  ADD KEY `addr` (`addr`),
  ADD KEY `txID` (`txID`),
  ADD KEY `txDate` (`txDate`),
  ADD KEY `txConfirmed` (`txConfirmed`),
  ADD KEY `txCheckDate` (`txCheckDate`),
  ADD KEY `processed` (`processed`),
  ADD KEY `processedDate` (`processedDate`),
  ADD KEY `recordCreated` (`recordCreated`),
  ADD KEY `key1` (`boxID`,`orderID`),
  ADD KEY `key2` (`boxID`,`orderID`,`userID`);

--
-- Indexes for table `dbt_balance`
--
ALTER TABLE `dbt_balance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_balance_log`
--
ALTER TABLE `dbt_balance_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `dbt_biding`
--
ALTER TABLE `dbt_biding`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_biding_log`
--
ALTER TABLE `dbt_biding_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `dbt_chat`
--
ALTER TABLE `dbt_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_coinhistory`
--
ALTER TABLE `dbt_coinhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_coinpair`
--
ALTER TABLE `dbt_coinpair`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `symbol` (`symbol`),
  ADD UNIQUE KEY `symbol_2` (`symbol`);

--
-- Indexes for table `dbt_country`
--
ALTER TABLE `dbt_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_cryptocoin`
--
ALTER TABLE `dbt_cryptocoin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Id` (`cid`),
  ADD UNIQUE KEY `Symbol` (`symbol`);

--
-- Indexes for table `dbt_deposit`
--
ALTER TABLE `dbt_deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_fees`
--
ALTER TABLE `dbt_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_market`
--
ALTER TABLE `dbt_market`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_payout_method`
--
ALTER TABLE `dbt_payout_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_transaction_setup`
--
ALTER TABLE `dbt_transaction_setup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_transfer`
--
ALTER TABLE `dbt_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_user`
--
ALTER TABLE `dbt_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `dbt_user_log`
--
ALTER TABLE `dbt_user_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `dbt_user_verify_doc`
--
ALTER TABLE `dbt_user_verify_doc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_verify`
--
ALTER TABLE `dbt_verify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_withdraw`
--
ALTER TABLE `dbt_withdraw`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_sms_gateway`
--
ALTER TABLE `email_sms_gateway`
  ADD PRIMARY KEY (`es_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `payeer_payments`
--
ALTER TABLE `payeer_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateway`
--
ALTER TABLE `payment_gateway`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `sms_email_send_setup`
--
ALTER TABLE `sms_email_send_setup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_article`
--
ALTER TABLE `web_article`
  ADD PRIMARY KEY (`article_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `web_category`
--
ALTER TABLE `web_category`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `web_language`
--
ALTER TABLE `web_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_news`
--
ALTER TABLE `web_news`
  ADD PRIMARY KEY (`article_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `web_slider`
--
ALTER TABLE `web_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_social_link`
--
ALTER TABLE `web_social_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_subscriber`
--
ALTER TABLE `web_subscriber`
  ADD PRIMARY KEY (`sub_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `crypto_payments`
--
ALTER TABLE `crypto_payments`
  MODIFY `paymentID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_balance`
--
ALTER TABLE `dbt_balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_balance_log`
--
ALTER TABLE `dbt_balance_log`
  MODIFY `log_id` bigint(22) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_biding`
--
ALTER TABLE `dbt_biding`
  MODIFY `id` bigint(22) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_biding_log`
--
ALTER TABLE `dbt_biding_log`
  MODIFY `log_id` bigint(22) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_chat`
--
ALTER TABLE `dbt_chat`
  MODIFY `id` bigint(21) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_coinhistory`
--
ALTER TABLE `dbt_coinhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_coinpair`
--
ALTER TABLE `dbt_coinpair`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `dbt_country`
--
ALTER TABLE `dbt_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;
--
-- AUTO_INCREMENT for table `dbt_cryptocoin`
--
ALTER TABLE `dbt_cryptocoin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2337;
--
-- AUTO_INCREMENT for table `dbt_deposit`
--
ALTER TABLE `dbt_deposit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_fees`
--
ALTER TABLE `dbt_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_market`
--
ALTER TABLE `dbt_market`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `dbt_payout_method`
--
ALTER TABLE `dbt_payout_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_transaction_setup`
--
ALTER TABLE `dbt_transaction_setup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_transfer`
--
ALTER TABLE `dbt_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_user`
--
ALTER TABLE `dbt_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dbt_user_log`
--
ALTER TABLE `dbt_user_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `dbt_user_verify_doc`
--
ALTER TABLE `dbt_user_verify_doc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_verify`
--
ALTER TABLE `dbt_verify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbt_withdraw`
--
ALTER TABLE `dbt_withdraw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `email_sms_gateway`
--
ALTER TABLE `email_sms_gateway`
  MODIFY `es_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=674;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payeer_payments`
--
ALTER TABLE `payeer_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payment_gateway`
--
ALTER TABLE `payment_gateway`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sms_email_send_setup`
--
ALTER TABLE `sms_email_send_setup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `web_article`
--
ALTER TABLE `web_article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `web_category`
--
ALTER TABLE `web_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `web_language`
--
ALTER TABLE `web_language`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `web_news`
--
ALTER TABLE `web_news`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `web_slider`
--
ALTER TABLE `web_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `web_social_link`
--
ALTER TABLE `web_social_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `web_subscriber`
--
ALTER TABLE `web_subscriber`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
