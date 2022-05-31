-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 31/05/2022 às 21:18
-- Versão do servidor: 8.0.29-0ubuntu0.22.04.2
-- Versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `geonames`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `countries`
--

CREATE TABLE `countries` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone_code` varchar(255) NOT NULL,
  `currency_symbol` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `countries`
--

INSERT INTO `countries` (`id`, `name`, `phone_code`, `currency_symbol`) VALUES
(1, 'AFGHANISTAN - AF', '93', '؋'),
(2, 'ALAND ISLANDS - AX', '+358-18', '€'),
(3, 'ALBANIA - AL', '355', 'Lek'),
(4, 'ALGERIA - DZ', '213', 'دج'),
(5, 'AMERICAN SAMOA - AS', '+1-684', '$'),
(6, 'ANDORRA - AD', '376', '€'),
(7, 'ANGOLA - AO', '244', 'Kz'),
(8, 'ANGUILLA - AI', '+1-264', '$'),
(9, 'ANTARCTICA - AQ', '672', '$'),
(10, 'ANTIGUA AND BARBUDA - AG', '+1-268', '$'),
(11, 'ARGENTINA - AR', '54', '$'),
(12, 'ARMENIA - AM', '374', '֏'),
(13, 'ARUBA - AW', '297', 'ƒ'),
(14, 'AUSTRALIA - AU', '61', '$'),
(15, 'AUSTRIA - AT', '43', '€'),
(16, 'AZERBAIJAN - AZ', '994', 'm'),
(17, 'BAHRAIN - BH', '973', '.د.ب'),
(18, 'BANGLADESH - BD', '880', '৳'),
(19, 'BARBADOS - BB', '+1-246', 'Bds$'),
(20, 'BELARUS - BY', '375', 'Br'),
(21, 'BELGIUM - BE', '32', '€'),
(22, 'BELIZE - BZ', '501', '$'),
(23, 'BENIN - BJ', '229', 'CFA'),
(24, 'BERMUDA - BM', '+1-441', '$'),
(25, 'BHUTAN - BT', '975', 'Nu.'),
(26, 'BOLIVIA - BO', '591', 'Bs.'),
(27, 'BONAIRE, SINT EUSTATIUS AND SABA - BQ', '599', '$'),
(28, 'BOSNIA AND HERZEGOVINA - BA', '387', 'KM'),
(29, 'BOTSWANA - BW', '267', 'P'),
(30, 'BOUVET ISLAND - BV', '0055', 'kr'),
(31, 'BRAZIL - BR', '55', 'R$'),
(32, 'BRITISH INDIAN OCEAN TERRITORY - IO', '246', '$'),
(33, 'BRUNEI - BN', '673', 'B$'),
(34, 'BULGARIA - BG', '359', 'Лв.'),
(35, 'BURKINA FASO - BF', '226', 'CFA'),
(36, 'BURUNDI - BI', '257', 'FBu'),
(37, 'CAMBODIA - KH', '855', 'KHR'),
(38, 'CAMEROON - CM', '237', 'FCFA'),
(39, 'CANADA - CA', '1', '$'),
(40, 'CAPE VERDE - CV', '238', '$'),
(41, 'CAYMAN ISLANDS - KY', '+1-345', '$'),
(42, 'CENTRAL AFRICAN REPUBLIC - CF', '236', 'FCFA'),
(43, 'CHAD - TD', '235', 'FCFA'),
(44, 'CHILE - CL', '56', '$'),
(45, 'CHINA - CN', '86', '¥'),
(46, 'CHRISTMAS ISLAND - CX', '61', '$'),
(47, 'COCOS (KEELING) ISLANDS - CC', '61', '$'),
(48, 'COLOMBIA - CO', '57', '$'),
(49, 'COMOROS - KM', '269', 'CF'),
(50, 'CONGO - CG', '242', 'FC'),
(51, 'COOK ISLANDS - CK', '682', '$'),
(52, 'COSTA RICA - CR', '506', '₡'),
(53, 'COTE D\'IVOIRE (IVORY COAST) - CI', '225', 'CFA'),
(54, 'CROATIA - HR', '385', 'kn'),
(55, 'CUBA - CU', '53', '$'),
(56, 'CURAÇAO - CW', '599', 'ƒ'),
(57, 'CYPRUS - CY', '357', '€'),
(58, 'CZECH REPUBLIC - CZ', '420', 'Kč'),
(59, 'DEMOCRATIC REPUBLIC OF THE CONGO - CD', '243', 'FC'),
(60, 'DENMARK - DK', '45', 'Kr.'),
(61, 'DJIBOUTI - DJ', '253', 'Fdj'),
(62, 'DOMINICA - DM', '+1-767', '$'),
(63, 'DOMINICAN REPUBLIC - DO', '+1-809 and 1-829', '$'),
(64, 'EAST TIMOR - TL', '670', '$'),
(65, 'ECUADOR - EC', '593', '$'),
(66, 'EGYPT - EG', '20', 'ج.م'),
(67, 'EL SALVADOR - SV', '503', '$'),
(68, 'EQUATORIAL GUINEA - GQ', '240', 'FCFA'),
(69, 'ERITREA - ER', '291', 'Nfk'),
(70, 'ESTONIA - EE', '372', '€'),
(71, 'ETHIOPIA - ET', '251', 'Nkf'),
(72, 'FALKLAND ISLANDS - FK', '500', '£'),
(73, 'FAROE ISLANDS - FO', '298', 'Kr.'),
(74, 'FIJI ISLANDS - FJ', '679', 'FJ$'),
(75, 'FINLAND - FI', '358', '€'),
(76, 'FRANCE - FR', '33', '€'),
(77, 'FRENCH GUIANA - GF', '594', '€'),
(78, 'FRENCH POLYNESIA - PF', '689', '₣'),
(79, 'FRENCH SOUTHERN TERRITORIES - TF', '262', '€'),
(80, 'GABON - GA', '241', 'FCFA'),
(81, 'GAMBIA THE - GM', '220', 'D'),
(82, 'GEORGIA - GE', '995', 'ლ'),
(83, 'GERMANY - DE', '49', '€'),
(84, 'GHANA - GH', '233', 'GH₵'),
(85, 'GIBRALTAR - GI', '350', '£'),
(86, 'GREECE - GR', '30', '€'),
(87, 'GREENLAND - GL', '299', 'Kr.'),
(88, 'GRENADA - GD', '+1-473', '$'),
(89, 'GUADELOUPE - GP', '590', '€'),
(90, 'GUAM - GU', '+1-671', '$'),
(91, 'GUATEMALA - GT', '502', 'Q'),
(92, 'GUERNSEY AND ALDERNEY - GG', '+44-1481', '£'),
(93, 'GUINEA - GN', '224', 'FG'),
(94, 'GUINEA-BISSAU - GW', '245', 'CFA'),
(95, 'GUYANA - GY', '592', '$'),
(96, 'HAITI - HT', '509', 'G'),
(97, 'HEARD ISLAND AND MCDONALD ISLANDS - HM', '672', '$'),
(98, 'HONDURAS - HN', '504', 'L'),
(99, 'HONG KONG S.A.R. - HK', '852', '$'),
(100, 'HUNGARY - HU', '36', 'Ft'),
(101, 'ICELAND - IS', '354', 'kr'),
(102, 'INDIA - IN', '91', '₹'),
(103, 'INDONESIA - ID', '62', 'Rp'),
(104, 'IRAN - IR', '98', '﷼'),
(105, 'IRAQ - IQ', '964', 'د.ع'),
(106, 'IRELAND - IE', '353', '€'),
(107, 'ISRAEL - IL', '972', '₪'),
(108, 'ITALY - IT', '39', '€'),
(109, 'JAMAICA - JM', '+1-876', 'J$'),
(110, 'JAPAN - JP', '81', '¥'),
(111, 'JERSEY - JE', '+44-1534', '£'),
(112, 'JORDAN - JO', '962', 'ا.د'),
(113, 'KAZAKHSTAN - KZ', '7', 'лв'),
(114, 'KENYA - KE', '254', 'KSh'),
(115, 'KIRIBATI - KI', '686', '$'),
(116, 'KOSOVO - XK', '383', '€'),
(117, 'KUWAIT - KW', '965', 'ك.د'),
(118, 'KYRGYZSTAN - KG', '996', 'лв'),
(119, 'LAOS - LA', '856', '₭'),
(120, 'LATVIA - LV', '371', '€'),
(121, 'LEBANON - LB', '961', '£'),
(122, 'LESOTHO - LS', '266', 'L'),
(123, 'LIBERIA - LR', '231', '$'),
(124, 'LIBYA - LY', '218', 'د.ل'),
(125, 'LIECHTENSTEIN - LI', '423', 'CHf'),
(126, 'LITHUANIA - LT', '370', '€'),
(127, 'LUXEMBOURG - LU', '352', '€'),
(128, 'MACAU S.A.R. - MO', '853', '$'),
(129, 'MACEDONIA - MK', '389', 'ден'),
(130, 'MADAGASCAR - MG', '261', 'Ar'),
(131, 'MALAWI - MW', '265', 'MK'),
(132, 'MALAYSIA - MY', '60', 'RM'),
(133, 'MALDIVES - MV', '960', 'Rf'),
(134, 'MALI - ML', '223', 'CFA'),
(135, 'MALTA - MT', '356', '€'),
(136, 'MAN (ISLE OF) - IM', '+44-1624', '£'),
(137, 'MARSHALL ISLANDS - MH', '692', '$'),
(138, 'MARTINIQUE - MQ', '596', '€'),
(139, 'MAURITANIA - MR', '222', 'MRU'),
(140, 'MAURITIUS - MU', '230', '₨'),
(141, 'MAYOTTE - YT', '262', '€'),
(142, 'MEXICO - MX', '52', '$'),
(143, 'MICRONESIA - FM', '691', '$'),
(144, 'MOLDOVA - MD', '373', 'L'),
(145, 'MONACO - MC', '377', '€'),
(146, 'MONGOLIA - MN', '976', '₮'),
(147, 'MONTENEGRO - ME', '382', '€'),
(148, 'MONTSERRAT - MS', '+1-664', '$'),
(149, 'MOROCCO - MA', '212', 'DH'),
(150, 'MOZAMBIQUE - MZ', '258', 'MT'),
(151, 'MYANMAR - MM', '95', 'K'),
(152, 'NAMIBIA - NA', '264', '$'),
(153, 'NAURU - NR', '674', '$'),
(154, 'NEPAL - NP', '977', '₨'),
(155, 'NETHERLANDS - NL', '31', '€'),
(156, 'NEW CALEDONIA - NC', '687', '₣'),
(157, 'NEW ZEALAND - NZ', '64', '$'),
(158, 'NICARAGUA - NI', '505', 'C$'),
(159, 'NIGER - NE', '227', 'CFA'),
(160, 'NIGERIA - NG', '234', '₦'),
(161, 'NIUE - NU', '683', '$'),
(162, 'NORFOLK ISLAND - NF', '672', '$'),
(163, 'NORTH KOREA - KP', '850', '₩'),
(164, 'NORTHERN MARIANA ISLANDS - MP', '+1-670', '$'),
(165, 'NORWAY - NO', '47', 'kr'),
(166, 'OMAN - OM', '968', '.ع.ر'),
(167, 'PAKISTAN - PK', '92', '₨'),
(168, 'PALAU - PW', '680', '$'),
(169, 'PALESTINIAN TERRITORY OCCUPIED - PS', '970', '₪'),
(170, 'PANAMA - PA', '507', 'B/.'),
(171, 'PAPUA NEW GUINEA - PG', '675', 'K'),
(172, 'PARAGUAY - PY', '595', '₲'),
(173, 'PERU - PE', '51', 'S/.'),
(174, 'PHILIPPINES - PH', '63', '₱'),
(175, 'PITCAIRN ISLAND - PN', '870', '$'),
(176, 'POLAND - PL', '48', 'zł'),
(177, 'PORTUGAL - PT', '351', '€'),
(178, 'PUERTO RICO - PR', '+1-787 and 1-939', '$'),
(179, 'QATAR - QA', '974', 'ق.ر'),
(180, 'REUNION - RE', '262', '€'),
(181, 'ROMANIA - RO', '40', 'lei'),
(182, 'RUSSIA - RU', '7', '₽'),
(183, 'RWANDA - RW', '250', 'FRw'),
(184, 'SAINT HELENA - SH', '290', '£'),
(185, 'SAINT KITTS AND NEVIS - KN', '+1-869', '$'),
(186, 'SAINT LUCIA - LC', '+1-758', '$'),
(187, 'SAINT PIERRE AND MIQUELON - PM', '508', '€'),
(188, 'SAINT VINCENT AND THE GRENADINES - VC', '+1-784', '$'),
(189, 'SAINT-BARTHELEMY - BL', '590', '€'),
(190, 'SAINT-MARTIN (FRENCH PART) - MF', '590', '€'),
(191, 'SAMOA - WS', '685', 'SAT'),
(192, 'SAN MARINO - SM', '378', '€'),
(193, 'SAO TOME AND PRINCIPE - ST', '239', 'Db'),
(194, 'SAUDI ARABIA - SA', '966', '﷼'),
(195, 'SENEGAL - SN', '221', 'CFA'),
(196, 'SERBIA - RS', '381', 'din'),
(197, 'SEYCHELLES - SC', '248', 'SRe'),
(198, 'SIERRA LEONE - SL', '232', 'Le'),
(199, 'SINGAPORE - SG', '65', '$'),
(200, 'SINT MAARTEN (DUTCH PART) - SX', '1721', 'ƒ'),
(201, 'SLOVAKIA - SK', '421', '€'),
(202, 'SLOVENIA - SI', '386', '€'),
(203, 'SOLOMON ISLANDS - SB', '677', 'Si$'),
(204, 'SOMALIA - SO', '252', 'Sh.so.'),
(205, 'SOUTH AFRICA - ZA', '27', 'R'),
(206, 'SOUTH GEORGIA - GS', '500', '£'),
(207, 'SOUTH KOREA - KR', '82', '₩'),
(208, 'SOUTH SUDAN - SS', '211', '£'),
(209, 'SPAIN - ES', '34', '€'),
(210, 'SRI LANKA - LK', '94', 'Rs'),
(211, 'SUDAN - SD', '249', '.س.ج'),
(212, 'SURINAME - SR', '597', '$'),
(213, 'SVALBARD AND JAN MAYEN ISLANDS - SJ', '47', 'kr'),
(214, 'SWAZILAND - SZ', '268', 'E'),
(215, 'SWEDEN - SE', '46', 'kr'),
(216, 'SWITZERLAND - CH', '41', 'CHf'),
(217, 'SYRIA - SY', '963', 'LS'),
(218, 'TAIWAN - TW', '886', '$'),
(219, 'TAJIKISTAN - TJ', '992', 'SM'),
(220, 'TANZANIA - TZ', '255', 'TSh'),
(221, 'THAILAND - TH', '66', '฿'),
(222, 'THE BAHAMAS - BS', '+1-242', 'B$'),
(223, 'TOGO - TG', '228', 'CFA'),
(224, 'TOKELAU - TK', '690', '$'),
(225, 'TONGA - TO', '676', '$'),
(226, 'TRINIDAD AND TOBAGO - TT', '+1-868', '$'),
(227, 'TUNISIA - TN', '216', 'ت.د'),
(228, 'TURKEY - TR', '90', '₺'),
(229, 'TURKMENISTAN - TM', '993', 'T'),
(230, 'TURKS AND CAICOS ISLANDS - TC', '+1-649', '$'),
(231, 'TUVALU - TV', '688', '$'),
(232, 'UGANDA - UG', '256', 'USh'),
(233, 'UKRAINE - UA', '380', '₴'),
(234, 'UNITED ARAB EMIRATES - AE', '971', 'إ.د'),
(235, 'UNITED KINGDOM - GB', '44', '£'),
(236, 'UNITED STATES - US', '1', '$'),
(237, 'UNITED STATES MINOR OUTLYING ISLANDS - UM', '1', '$'),
(238, 'URUGUAY - UY', '598', '$'),
(239, 'UZBEKISTAN - UZ', '998', 'лв'),
(240, 'VANUATU - VU', '678', 'VT'),
(241, 'VATICAN CITY STATE (HOLY SEE) - VA', '379', '€'),
(242, 'VENEZUELA - VE', '58', 'Bs'),
(243, 'VIETNAM - VN', '84', '₫'),
(244, 'VIRGIN ISLANDS (BRITISH) - VG', '+1-284', '$'),
(245, 'VIRGIN ISLANDS (US) - VI', '+1-340', '$'),
(246, 'WALLIS AND FUTUNA ISLANDS - WF', '681', '₣'),
(247, 'WESTERN SAHARA - EH', '212', 'MAD'),
(248, 'YEMEN - YE', '967', '﷼'),
(249, 'ZAMBIA - ZM', '260', 'ZK'),
(250, 'ZIMBABWE - ZW', '263', '$');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
