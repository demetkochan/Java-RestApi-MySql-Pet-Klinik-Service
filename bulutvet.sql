-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 05 Eki 2021, 22:25:39
-- Sunucu sürümü: 10.4.20-MariaDB
-- PHP Sürümü: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `bulutvet`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `agenda`
--

CREATE TABLE `agenda` (
  `aid` int(11) NOT NULL,
  `active_checked` bit(1) DEFAULT NULL,
  `agenda_date` datetime DEFAULT NULL,
  `agenda_desc` varchar(255) DEFAULT NULL,
  `agenda_hours` varchar(255) DEFAULT NULL,
  `agenda_title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `agenda`
--

INSERT INTO `agenda` (`aid`, `active_checked`, `agenda_date`, `agenda_desc`, `agenda_hours`, `agenda_title`) VALUES
(2, b'0', '2021-09-25 03:00:00', 'sfsfr', '18:32', 'Sinema'),
(3, b'1', '2021-09-28 03:00:00', 'Randevu ertelendi', '19:\'5', 'Hasta Randevu');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `animal`
--

CREATE TABLE `animal` (
  `aid` int(11) NOT NULL,
  `cip_no` int(11) DEFAULT NULL,
  `cus_no` int(11) NOT NULL,
  `gender` int(11) NOT NULL,
  `karne_no` int(11) NOT NULL,
  `p_birth` datetime DEFAULT NULL,
  `p_name` varchar(255) DEFAULT NULL,
  `p_race` varchar(255) DEFAULT NULL,
  `p_type` varchar(255) DEFAULT NULL,
  `pcolor` varchar(255) DEFAULT NULL,
  `spayed` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `animal`
--

INSERT INTO `animal` (`aid`, `cip_no`, `cus_no`, `gender`, `karne_no`, `p_birth`, `p_name`, `p_race`, `p_type`, `pcolor`, `spayed`) VALUES
(1, 5, 1, 1, 55, '2013-09-22 00:20:15', 'Mutlu ', 'CESKY TERRİER', 'Köpek', 'Kahverengi', b'1'),
(2, 9, 1, 1, 3, '2020-04-12 03:00:00', 'Peri', 'Leonberger', 'Köpek', 'Siyah', b'0'),
(3, 6, 2, 2, 23, '2016-10-11 03:00:00', 'Paşa', 'SWEDİSH VALLHOUND', 'Köpek', 'Gri-Kahverengi', b'0'),
(4, 19, 3, 2, 47, '2017-09-11 00:20:04', 'Şans', 'MUNCHKİN', 'Kedi', 'Sarı', b'1'),
(5, 57, 6, 2, 55, '2007-09-30 03:00:00', 'Gece', 'Thoroughbred', 'At', 'Siyah', b'0'),
(6, 21, 4, 1, 21, '2012-06-20 03:00:00', 'Akkız', 'Sığır', 'Büyükbaş', 'Beyaz-Sarı', b'0'),
(7, 13, 5, 2, 65, '2015-08-28 01:17:23', 'Kara', 'Savannah', 'Kedi', 'Siyah-Gri', b'1'),
(8, 77, 5, 2, 66, '2019-09-06 03:00:00', 'Sirius', 'Nebelung', 'Kedi', 'Gri', b'1'),
(9, 190, 10, 2, 190, '2021-09-23 03:00:00', 'Pamuk', 'Tekir', 'Kedi', 'Beyaz', b'1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `box`
--

CREATE TABLE `box` (
  `box_id` int(11) NOT NULL,
  `retail_pro_search` int(11) NOT NULL,
  `sales_note` varchar(255) DEFAULT NULL,
  `sales_product_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `box`
--

INSERT INTO `box` (`box_id`, `retail_pro_search`, `sales_note`, `sales_product_amount`) VALUES
(1, 1, 'Sargı bezi 10 tane', 10),
(2, 2, 'Gençlik aşısı satıldı', 5),
(3, 9, 'Şeker satış', 55),
(4, 8, 'Oyuncak ALINDI', 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `box_customer`
--

CREATE TABLE `box_customer` (
  `bc_id` int(11) NOT NULL,
  `box_customer_amount` int(11) NOT NULL,
  `customer_name` int(11) NOT NULL,
  `customer_note` varchar(255) DEFAULT NULL,
  `product_name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `box_customer`
--

INSERT INTO `box_customer` (`bc_id`, `box_customer_amount`, `customer_name`, `customer_note`, `product_name`) VALUES
(1, 10, 8, 'hıug', 2),
(2, 20, 1, 'Ayşe sargı bezi aldı', 1),
(3, 2, 5, 'Deniz Oyuncak aldı', 8),
(4, 100, 7, 'Ağrı kesici alındı', 3),
(5, 5, 3, 'Ürün Satıldı', 9),
(7, 5, 3, 'Ürün Satıldı', 9);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `buying`
--

CREATE TABLE `buying` (
  `bid` int(11) NOT NULL,
  `bill_number` varchar(255) DEFAULT NULL,
  `buying_note` varchar(255) DEFAULT NULL,
  `buying_date` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `process` int(11) NOT NULL,
  `product_name` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `buying`
--

INSERT INTO `buying` (`bid`, `bill_number`, `buying_note`, `buying_date`, `name`, `process`, `product_name`, `total`) VALUES
(1, '46', 'Erkana satıldı', '2021-09-25 03:00:00', '4', 1, 2, 1840),
(3, '65', 'satıldı', '2021-09-26 03:00:00', '1', 2, 1, 368),
(4, '87', 'canan oyuncak', '2021-09-26 03:00:00', '3', 3, 8, 5520),
(5, '61', 'Erkandan Ağrı Kesici Alındı', '2021-09-27 03:00:00', '4', 2, 3, 4100);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `calendar_info`
--

CREATE TABLE `calendar_info` (
  `cid` int(11) NOT NULL,
  `cbg_color` varchar(255) DEFAULT NULL,
  `cborder_color` varchar(255) DEFAULT NULL,
  `ccolor` varchar(255) DEFAULT NULL,
  `cdrag_bg_color` varchar(255) DEFAULT NULL,
  `cname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `calendar_info`
--

INSERT INTO `calendar_info` (`cid`, `cbg_color`, `cborder_color`, `ccolor`, `cdrag_bg_color`, `cname`) VALUES
(1, '#9e5fff', '#9e5fff', '#ffffff', '#9e5fff', 'Randevu'),
(2, '#00a9ff', '#00a9ff', '#ffffff', '#00a9ff', 'Mübesil'),
(3, '#bbdc00', '#bbdc00', '#ffffff', '#bbdc00', 'Hasta'),
(4, '#ffbb3b', '#ffbb3b', '#ffffff', '#ffbb3b', 'Kişisel Takvim');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category_group`
--

CREATE TABLE `category_group` (
  `cg_id` int(11) NOT NULL,
  `cg_name` varchar(255) DEFAULT NULL,
  `cg_status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `category_group`
--

INSERT INTO `category_group` (`cg_id`, `cg_name`, `cg_status`) VALUES
(1, 'Aşı', b'1'),
(2, 'Vitamin', b'1'),
(3, ' Sağlık Malzemleri', b'1'),
(4, ' Mama', b'1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `customer`
--

CREATE TABLE `customer` (
  `cid` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `c_code` varchar(255) DEFAULT NULL,
  `c_email` varchar(255) NOT NULL,
  `c_mobile_phone` varchar(255) DEFAULT NULL,
  `c_no` varchar(255) NOT NULL,
  `c_note` varchar(255) DEFAULT NULL,
  `c_phone` varchar(255) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `csurname` varchar(255) NOT NULL,
  `il` varchar(255) NOT NULL,
  `ilce` varchar(255) DEFAULT NULL,
  `tax_administration` varchar(255) DEFAULT NULL,
  `tc_no` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `customer`
--

INSERT INTO `customer` (`cid`, `address`, `c_code`, `c_email`, `c_mobile_phone`, `c_no`, `c_note`, `c_phone`, `cname`, `csurname`, `il`, `ilce`, `tax_administration`, `tc_no`) VALUES
(1, '', '', 'aa@mail.com', '966665555', '1', '', '25863941', 'Ayşe', ' Pot', 'İzmir', 'Alsancak', 'A', '55555555'),
(2, 'Beşiktaş/İstanbul', '', 'zehra@mail.com', '851461', '2', 'Kuduz aşısı yapılacaktır.', '45464646', 'Zehra', ' Gök', 'İstanbul', 'Beşiktaş', 'B', '98562222'),
(3, 'A Mahallesi Sk:5854', '', 'k@mail.com', '', '3', 'Vitamin aşısı yapılacaktır.', '9585224145', 'Kemal', ' Zaman', 'Ankara', '', 'A', '847474848'),
(4, ' İstanbul/Kadıköy', ' ', 'ss@mail.com', ' ', '4', 'Kontrol', '52561111', ' Şakir', ' Kafkas', ' İstanbul', ' Kadıköy', ' B', ' 854845845'),
(5, 'C Mahallesi Sk:9585', ' ', 'deniz@mail.com', '11111111', '5', 'Kontrol', '202023030', 'Deniz', ' Yılmaz', 'Çanakkale', '', 'A', '3333333333'),
(6, '', ' ', 'tt@mail.com', '', '6', 'At Vebası ', '54152151', 'Tuğberk', ' Ok', 'Antalya', '', '', '33252333'),
(7, 'K Mahallesi Sk:9595', '', 'su@mail.com', '', '7', 'Gençlik Aşısı yapılacak', '12451564', 'Su', ' Yaz', 'Aydın', 'Efeler', 'A', '6512561256'),
(8, '', '', 'ilyada@mail.com', '', '10', 'sdfs', '8798796', 'İlayda', 'Güler', 'İstanbul', '', 'jfghfgj', '968978');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `customer_pay_sale`
--

CREATE TABLE `customer_pay_sale` (
  `cp_id` int(11) NOT NULL,
  `box_cus_date` datetime DEFAULT NULL,
  `c_name` varchar(255) DEFAULT NULL,
  `customer_bill_number` int(11) NOT NULL,
  `customer_process` int(11) NOT NULL,
  `sale_boxtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `customer_pay_sale`
--

INSERT INTO `customer_pay_sale` (`cp_id`, `box_cus_date`, `c_name`, `customer_bill_number`, `customer_process`, `sale_boxtotal`) VALUES
(2, '2021-09-25 03:00:00', 'İlayda', 23, 1, 920),
(3, '2021-09-26 03:00:00', 'Ayşe', 25, 2, 460),
(4, '2021-09-27 03:00:00', 'Deniz', 90, 3, 368),
(5, '2021-09-26 03:00:00', 'Su', 67, 3, 12300);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `depo`
--

CREATE TABLE `depo` (
  `depo_id` int(11) NOT NULL,
  `depo_name` varchar(255) DEFAULT NULL,
  `depo_status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `depo`
--

INSERT INTO `depo` (`depo_id`, `depo_name`, `depo_status`) VALUES
(1, 'Ana Depo', b'1'),
(2, 'K', b'0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `farm_stock`
--

CREATE TABLE `farm_stock` (
  `fsid` int(11) NOT NULL,
  `farm_vac` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `warehouse` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `farm_stock`
--

INSERT INTO `farm_stock` (`fsid`, `farm_vac`, `number`, `warehouse`) VALUES
(1, 1, 110, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `farm_vaccine`
--

CREATE TABLE `farm_vaccine` (
  `farm_vaccine_id` int(11) NOT NULL,
  `category_group_id` int(11) NOT NULL,
  `farm_vaccine_amount_fixed` bit(1) NOT NULL,
  `farm_vaccine_barcode` int(11) NOT NULL,
  `farm_vaccine_buying` int(11) NOT NULL,
  `farm_vaccine_buying_kdv` bit(1) NOT NULL,
  `farm_vaccine_code` int(11) NOT NULL,
  `farm_vaccine_kdv` int(11) NOT NULL,
  `farm_vaccine_name` varchar(255) DEFAULT NULL,
  `farm_vaccine_sales` int(11) NOT NULL,
  `farm_vaccine_sales_kdv` bit(1) NOT NULL,
  `farm_vaccine_status` bit(1) NOT NULL,
  `farm_vaccine_stock` int(11) NOT NULL,
  `farm_vaccine_tip` varchar(255) DEFAULT NULL,
  `farm_vaccine_type` varchar(255) DEFAULT NULL,
  `farm_vaccine_unit` varchar(255) DEFAULT NULL,
  `vendor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `farm_vaccine`
--

INSERT INTO `farm_vaccine` (`farm_vaccine_id`, `category_group_id`, `farm_vaccine_amount_fixed`, `farm_vaccine_barcode`, `farm_vaccine_buying`, `farm_vaccine_buying_kdv`, `farm_vaccine_code`, `farm_vaccine_kdv`, `farm_vaccine_name`, `farm_vaccine_sales`, `farm_vaccine_sales_kdv`, `farm_vaccine_status`, `farm_vaccine_stock`, `farm_vaccine_tip`, `farm_vaccine_type`, `farm_vaccine_unit`, `vendor_id`) VALUES
(1, 1, b'0', 10, 90, b'1', 10, 1, 'Çiftlik Vak', 150, b'0', b'0', 50, '2', '', '2', 2),
(2, 2, b'0', 8, 150, b'0', 8, 1, 'Çiftlik Vac22', 200, b'0', b'0', 50, '2', '', '1', 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `laboratuvar`
--

CREATE TABLE `laboratuvar` (
  `lid` int(11) NOT NULL,
  `animal_name` int(11) NOT NULL,
  `diagnosis` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `lab_type` int(11) NOT NULL,
  `cus_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `laboratuvar`
--

INSERT INTO `laboratuvar` (`lid`, `animal_name`, `diagnosis`, `image_name`, `lab_type`, `cus_no`) VALUES
(1, 3, 'Yabancı cisim tespit edildi.', NULL, 2, 0),
(3, 5, 'sdfghj', NULL, 2, 0),
(4, 3, '', 'C:\\fakepath\\rontgen.jpg', 2, 0),
(5, 7, '', 'C:\\fakepath\\rontgn.jpg', 1, 0),
(8, 4, 'jkhkl', '', 1, 0),
(17, 1, 'yjgh', '6cca094f-4a61-4e64-bdcf-3c9e2ccb7b54o.jpg', 2, 1),
(19, 9, 'thrbb', 'a2c70372-55c2-462c-b234-3392feb28628o.jpg', 2, 10);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `log`
--

CREATE TABLE `log` (
  `log_id` int(11) NOT NULL,
  `l_date` datetime DEFAULT NULL,
  `l_ip` varchar(255) DEFAULT NULL,
  `l_url` varchar(255) DEFAULT NULL,
  `lemail` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `lroles` varchar(255) DEFAULT NULL,
  `lsession_id` varchar(255) DEFAULT NULL,
  `lsurname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `log`
--

INSERT INTO `log` (`log_id`, `l_date`, `l_ip`, `l_url`, `lemail`, `lname`, `lroles`, `lsession_id`, `lsurname`) VALUES
(1, '2021-10-03 23:05:22', '0:0:0:0:0:0:0:1', '/vendor/add', 'anonymousUser', NULL, NULL, 'E842BA486A35048043A08D66E1DD9F19', NULL),
(2, '2021-10-03 23:06:07', '0:0:0:0:0:0:0:1', '/vendor/delete/14', 'anonymousUser', NULL, NULL, 'E842BA486A35048043A08D66E1DD9F19', NULL),
(3, '2021-10-03 23:27:33', '0:0:0:0:0:0:0:1', '/add', 'anonymousUser', NULL, NULL, 'E842BA486A35048043A08D66E1DD9F19', NULL),
(4, '2021-10-03 23:33:42', '0:0:0:0:0:0:0:1', '/add', 'anonymousUser', NULL, NULL, 'B3F38A844755154DE1A7CE8078BD2595', NULL),
(5, '2021-10-03 23:37:04', '0:0:0:0:0:0:0:1', '/search/Su%20y%C3%BCzd%C3%BC', 'anonymousUser', NULL, NULL, 'B3F38A844755154DE1A7CE8078BD2595', NULL),
(6, '2021-10-03 23:56:35', '0:0:0:0:0:0:0:1', '/case/add', 'anonymousUser', NULL, NULL, 'B3F38A844755154DE1A7CE8078BD2595', NULL),
(7, '2021-10-03 23:57:35', '0:0:0:0:0:0:0:1', '/case/list', 'anonymousUser', NULL, NULL, 'B3F38A844755154DE1A7CE8078BD2595', NULL),
(8, '2021-10-03 23:58:15', '0:0:0:0:0:0:0:1', '/case/delete/3', 'anonymousUser', NULL, NULL, 'B3F38A844755154DE1A7CE8078BD2595', NULL),
(9, '2021-10-03 23:58:25', '0:0:0:0:0:0:0:1', '/case/list', 'anonymousUser', NULL, NULL, 'B3F38A844755154DE1A7CE8078BD2595', NULL),
(10, '2021-10-04 00:17:33', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '0C00313780703EF6F5238232C29D4FA6', NULL),
(11, '2021-10-04 00:17:33', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, '0C00313780703EF6F5238232C29D4FA6', NULL),
(12, '2021-10-04 00:17:33', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, '0C00313780703EF6F5238232C29D4FA6', NULL),
(13, '2021-10-04 00:17:33', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, '0C00313780703EF6F5238232C29D4FA6', NULL),
(14, '2021-10-04 00:17:33', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, '0C00313780703EF6F5238232C29D4FA6', NULL),
(15, '2021-10-04 00:17:33', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, '0C00313780703EF6F5238232C29D4FA6', NULL),
(16, '2021-10-04 00:17:44', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '0C00313780703EF6F5238232C29D4FA6', NULL),
(17, '2021-10-04 00:17:44', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '0C00313780703EF6F5238232C29D4FA6', NULL),
(18, '2021-10-04 00:17:44', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '0C00313780703EF6F5238232C29D4FA6', NULL),
(19, '2021-10-04 00:17:44', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '0C00313780703EF6F5238232C29D4FA6', NULL),
(20, '2021-10-04 00:17:44', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '0C00313780703EF6F5238232C29D4FA6', NULL),
(21, '2021-10-04 00:17:44', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '0C00313780703EF6F5238232C29D4FA6', NULL),
(22, '2021-10-04 00:18:21', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '0C00313780703EF6F5238232C29D4FA6', NULL),
(23, '2021-10-04 00:18:21', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, '0C00313780703EF6F5238232C29D4FA6', NULL),
(24, '2021-10-04 00:18:21', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, '0C00313780703EF6F5238232C29D4FA6', NULL),
(25, '2021-10-04 00:18:21', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, '0C00313780703EF6F5238232C29D4FA6', NULL),
(26, '2021-10-04 00:18:21', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, '0C00313780703EF6F5238232C29D4FA6', NULL),
(27, '2021-10-04 00:18:21', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, '0C00313780703EF6F5238232C29D4FA6', NULL),
(28, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '0C00313780703EF6F5238232C29D4FA6', NULL),
(29, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '0C00313780703EF6F5238232C29D4FA6', NULL),
(30, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '0C00313780703EF6F5238232C29D4FA6', NULL),
(31, '2021-10-04 00:19:06', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '06EF13643E0C54946F51BF7F79661388', NULL),
(32, '2021-10-04 00:19:06', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, '06EF13643E0C54946F51BF7F79661388', NULL),
(33, '2021-10-04 00:19:06', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, '06EF13643E0C54946F51BF7F79661388', NULL),
(34, '2021-10-04 00:19:06', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, '06EF13643E0C54946F51BF7F79661388', NULL),
(35, '2021-10-04 00:19:06', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, '06EF13643E0C54946F51BF7F79661388', NULL),
(36, '2021-10-04 00:19:06', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, '06EF13643E0C54946F51BF7F79661388', NULL),
(37, '2021-10-04 00:28:01', '0:0:0:0:0:0:0:1', '/category/add', 'zehra@mail.com', 'Zehra', 'ROLE_ADMIN', '5F046B380C5ABD066406B35AD115F9F6', 'Kaya'),
(38, '2021-10-04 00:28:14', '0:0:0:0:0:0:0:1', '/category/add', 'zehra@mail.com', 'Zehra', 'ROLE_ADMIN', '5F046B380C5ABD066406B35AD115F9F6', 'Kaya'),
(39, '2021-10-04 00:29:05', '0:0:0:0:0:0:0:1', '/category/list', 'zehra@mail.com', 'Zehra', 'ROLE_ADMIN', '5F046B380C5ABD066406B35AD115F9F6', 'Kaya'),
(40, '2021-10-04 00:29:23', '0:0:0:0:0:0:0:1', '/category/delete/6', 'zehra@mail.com', 'Zehra', 'ROLE_ADMIN', '5F046B380C5ABD066406B35AD115F9F6', 'Kaya'),
(41, '2021-10-04 00:29:42', '0:0:0:0:0:0:0:1', '/category/delete/6', 'zehra@mail.com', 'Zehra', 'ROLE_ADMIN', '5F046B380C5ABD066406B35AD115F9F6', 'Kaya'),
(42, '2021-10-04 00:29:47', '0:0:0:0:0:0:0:1', '/category/list', 'zehra@mail.com', 'Zehra', 'ROLE_ADMIN', '5F046B380C5ABD066406B35AD115F9F6', 'Kaya'),
(43, '2021-10-04 00:37:06', '0:0:0:0:0:0:0:1', '/depo/add', 'zehra@mail.com', 'Zehra', 'ROLE_ADMIN', '5F046B380C5ABD066406B35AD115F9F6', 'Kaya'),
(44, '2021-10-04 00:38:21', '0:0:0:0:0:0:0:1', '/depo/list', 'zehra@mail.com', 'Zehra', 'ROLE_ADMIN', '5F046B380C5ABD066406B35AD115F9F6', 'Kaya'),
(45, '2021-10-04 00:38:41', '0:0:0:0:0:0:0:1', '/depo/list', 'zehra@mail.com', 'Zehra', 'ROLE_ADMIN', '5F046B380C5ABD066406B35AD115F9F6', 'Kaya'),
(46, '2021-10-04 00:38:50', '0:0:0:0:0:0:0:1', '/depo/delete/4', 'zehra@mail.com', 'Zehra', 'ROLE_ADMIN', '5F046B380C5ABD066406B35AD115F9F6', 'Kaya'),
(47, '2021-10-04 00:59:54', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '12391D43973FCDEC4C6527F34B4B9B4E', NULL),
(48, '2021-10-04 00:59:54', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, '12391D43973FCDEC4C6527F34B4B9B4E', NULL),
(49, '2021-10-04 00:59:54', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, '12391D43973FCDEC4C6527F34B4B9B4E', NULL),
(50, '2021-10-04 00:59:54', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, '12391D43973FCDEC4C6527F34B4B9B4E', NULL),
(51, '2021-10-04 00:59:54', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, '12391D43973FCDEC4C6527F34B4B9B4E', NULL),
(52, '2021-10-04 00:59:54', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, '12391D43973FCDEC4C6527F34B4B9B4E', NULL),
(53, '2021-10-04 00:59:56', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '12391D43973FCDEC4C6527F34B4B9B4E', NULL),
(54, '2021-10-04 00:59:56', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '12391D43973FCDEC4C6527F34B4B9B4E', NULL),
(55, '2021-10-04 00:59:56', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '12391D43973FCDEC4C6527F34B4B9B4E', NULL),
(56, '2021-10-04 01:10:11', '0:0:0:0:0:0:0:1', '/laboratuvar/upload', 'serkan@mail.com', 'Serkan', 'ROLE_DOCTOR', 'E4FE0B5CA25E9C917C2256982A59FDD3', 'Kaya'),
(57, '2021-10-04 01:12:52', '0:0:0:0:0:0:0:1', '/laboratuvar/list', 'serkan@mail.com', 'Serkan', 'ROLE_DOCTOR', 'E4FE0B5CA25E9C917C2256982A59FDD3', 'Kaya'),
(58, '2021-10-04 01:13:30', '0:0:0:0:0:0:0:1', '/laboratuvar/delete/20', 'serkan@mail.com', 'Serkan', 'ROLE_DOCTOR', 'E4FE0B5CA25E9C917C2256982A59FDD3', 'Kaya'),
(59, '2021-10-04 01:13:39', '0:0:0:0:0:0:0:1', '/laboratuvar/list', 'serkan@mail.com', 'Serkan', 'ROLE_DOCTOR', 'E4FE0B5CA25E9C917C2256982A59FDD3', 'Kaya'),
(60, '2021-10-04 01:18:04', '0:0:0:0:0:0:0:1', '/customer/add', 'serkan@mail.com', 'Serkan', 'ROLE_DOCTOR', 'E4FE0B5CA25E9C917C2256982A59FDD3', 'Kaya'),
(61, '2021-10-04 01:18:29', '0:0:0:0:0:0:0:1', '/customer/list', 'serkan@mail.com', 'Serkan', 'ROLE_DOCTOR', 'E4FE0B5CA25E9C917C2256982A59FDD3', 'Kaya'),
(62, '2021-10-04 01:18:45', '0:0:0:0:0:0:0:1', '/customer/list/1', 'serkan@mail.com', 'Serkan', 'ROLE_DOCTOR', 'E4FE0B5CA25E9C917C2256982A59FDD3', 'Kaya'),
(63, '2021-10-04 01:18:50', '0:0:0:0:0:0:0:1', '/customer/list/0', 'serkan@mail.com', 'Serkan', 'ROLE_DOCTOR', 'E4FE0B5CA25E9C917C2256982A59FDD3', 'Kaya'),
(64, '2021-10-04 01:19:35', '0:0:0:0:0:0:0:1', '/customer/delete/9', 'serkan@mail.com', 'Serkan', 'ROLE_DOCTOR', 'E4FE0B5CA25E9C917C2256982A59FDD3', 'Kaya'),
(65, '2021-10-04 01:23:55', '0:0:0:0:0:0:0:1', '/animal/add', 'serkan@mail.com', 'Serkan', 'ROLE_DOCTOR', 'E4FE0B5CA25E9C917C2256982A59FDD3', 'Kaya'),
(66, '2021-10-04 01:24:44', '0:0:0:0:0:0:0:1', '/customer/list', 'serkan@mail.com', 'Serkan', 'ROLE_DOCTOR', 'E4FE0B5CA25E9C917C2256982A59FDD3', 'Kaya'),
(67, '2021-10-04 01:24:49', '0:0:0:0:0:0:0:1', '/customer/list/0', 'serkan@mail.com', 'Serkan', 'ROLE_DOCTOR', 'E4FE0B5CA25E9C917C2256982A59FDD3', 'Kaya'),
(68, '2021-10-04 01:25:39', '0:0:0:0:0:0:0:1', '/animal/list', 'serkan@mail.com', 'Serkan', 'ROLE_DOCTOR', 'E4FE0B5CA25E9C917C2256982A59FDD3', 'Kaya'),
(69, '2021-10-04 01:26:14', '0:0:0:0:0:0:0:1', '/animal/delete/10', 'serkan@mail.com', 'Serkan', 'ROLE_DOCTOR', 'E4FE0B5CA25E9C917C2256982A59FDD3', 'Kaya'),
(70, '2021-10-04 09:16:42', '0:0:0:0:0:0:0:1', '/vendor/add', 'anonymousUser', NULL, NULL, '39798F180195BBD6586D6B4825FA2022', NULL),
(71, '2021-10-04 09:34:02', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '67A18E5C3273D9FD1660EF26C7AE0143', NULL),
(72, '2021-10-04 09:34:02', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, '67A18E5C3273D9FD1660EF26C7AE0143', NULL),
(73, '2021-10-04 09:34:02', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, '67A18E5C3273D9FD1660EF26C7AE0143', NULL),
(74, '2021-10-04 09:34:02', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, '67A18E5C3273D9FD1660EF26C7AE0143', NULL),
(75, '2021-10-04 09:34:02', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, '67A18E5C3273D9FD1660EF26C7AE0143', NULL),
(76, '2021-10-04 09:34:02', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, '67A18E5C3273D9FD1660EF26C7AE0143', NULL),
(77, '2021-10-04 09:37:21', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(78, '2021-10-04 09:37:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(79, '2021-10-04 09:37:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(80, '2021-10-04 09:37:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(81, '2021-10-04 09:37:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(82, '2021-10-04 09:37:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(83, '2021-10-04 09:37:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(84, '2021-10-04 09:37:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(85, '2021-10-04 09:37:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(86, '2021-10-04 09:37:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(87, '2021-10-04 09:37:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(88, '2021-10-04 09:37:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(89, '2021-10-04 09:37:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(90, '2021-10-04 09:37:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(91, '2021-10-04 09:37:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(92, '2021-10-04 09:37:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(93, '2021-10-04 09:37:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(94, '2021-10-04 09:37:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(95, '2021-10-04 09:37:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(96, '2021-10-04 09:37:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(97, '2021-10-04 09:37:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(98, '2021-10-04 09:37:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(99, '2021-10-04 09:37:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(100, '2021-10-04 09:37:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(101, '2021-10-04 09:37:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(102, '2021-10-04 09:37:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(103, '2021-10-04 09:37:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(104, '2021-10-04 09:37:32', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(105, '2021-10-04 09:37:32', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(106, '2021-10-04 09:37:32', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(107, '2021-10-04 09:37:32', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(108, '2021-10-04 09:37:32', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(109, '2021-10-04 09:37:32', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(110, '2021-10-04 09:37:32', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(111, '2021-10-04 09:37:32', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(112, '2021-10-04 09:37:32', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(113, '2021-10-04 09:37:32', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, 'F5D10BE123BF8B5532A6C8EE5EEFEAD0', NULL),
(114, '2021-10-04 09:40:24', '0:0:0:0:0:0:0:1', '/search/Su%20y%C3%BCzd%C3%BC', 'anonymousUser', NULL, NULL, '9351CFEB47CE5BD33F546BF66AE3D4D3', NULL),
(115, '2021-10-04 20:18:03', '0:0:0:0:0:0:0:1', '/product/listProduct', 'anonymousUser', NULL, NULL, 'A94163D0E530AA5D443D846806895CBE', NULL),
(116, '2021-10-04 20:20:32', '0:0:0:0:0:0:0:1', '/product/addProduct', 'anonymousUser', NULL, NULL, 'A94163D0E530AA5D443D846806895CBE', NULL),
(117, '2021-10-04 20:20:44', '0:0:0:0:0:0:0:1', '/product/listProduct', 'anonymousUser', NULL, NULL, 'A94163D0E530AA5D443D846806895CBE', NULL),
(118, '2021-10-04 20:21:28', '0:0:0:0:0:0:0:1', '/product/deleteProduct/10', 'anonymousUser', NULL, NULL, 'A94163D0E530AA5D443D846806895CBE', NULL),
(119, '2021-10-04 20:35:12', '0:0:0:0:0:0:0:1', '/product/addStock', 'anonymousUser', NULL, NULL, '99F665BBE92F85798D32F3AA3DE4426F', NULL),
(120, '2021-10-04 20:37:19', '0:0:0:0:0:0:0:1', '/product/listDepoStock/1', 'anonymousUser', NULL, NULL, '99F665BBE92F85798D32F3AA3DE4426F', NULL),
(121, '2021-10-04 20:38:29', '0:0:0:0:0:0:0:1', '/product/listDepoStock/1', 'anonymousUser', NULL, NULL, '99F665BBE92F85798D32F3AA3DE4426F', NULL),
(122, '2021-10-04 20:38:47', '0:0:0:0:0:0:0:1', '/product/deleteStock/10', 'anonymousUser', NULL, NULL, '99F665BBE92F85798D32F3AA3DE4426F', NULL),
(123, '2021-10-04 20:38:53', '0:0:0:0:0:0:0:1', '/product/listDepoStock/1', 'anonymousUser', NULL, NULL, '99F665BBE92F85798D32F3AA3DE4426F', NULL),
(124, '2021-10-04 20:39:07', '0:0:0:0:0:0:0:1', '/productDescription/stockDepo/1', 'anonymousUser', NULL, NULL, '67115B3964B92A446BD9B75ABB1F024C', NULL),
(125, '2021-10-04 20:46:05', '0:0:0:0:0:0:0:1', '/product/updateStock', 'anonymousUser', NULL, NULL, '99F665BBE92F85798D32F3AA3DE4426F', NULL),
(126, '2021-10-04 20:46:18', '0:0:0:0:0:0:0:1', '/product/listDepoStock/1', 'anonymousUser', NULL, NULL, '99F665BBE92F85798D32F3AA3DE4426F', NULL),
(127, '2021-10-04 21:30:58', '0:0:0:0:0:0:0:1', '/vaccine/listPetVaccine', 'anonymousUser', NULL, NULL, '849E84625F24250517FE11FA4DE14EE7', NULL),
(128, '2021-10-04 21:32:00', '0:0:0:0:0:0:0:1', '/vaccine/addPetVaccine', 'anonymousUser', NULL, NULL, '849E84625F24250517FE11FA4DE14EE7', NULL),
(129, '2021-10-04 21:32:17', '0:0:0:0:0:0:0:1', '/vaccine/addPetVaccine', 'anonymousUser', NULL, NULL, '849E84625F24250517FE11FA4DE14EE7', NULL),
(130, '2021-10-04 21:32:59', '0:0:0:0:0:0:0:1', '/vaccine/deletePetVaccine/3', 'anonymousUser', NULL, NULL, '849E84625F24250517FE11FA4DE14EE7', NULL),
(131, '2021-10-04 21:33:07', '0:0:0:0:0:0:0:1', '/vaccine/listPetVaccine', 'anonymousUser', NULL, NULL, '849E84625F24250517FE11FA4DE14EE7', NULL),
(132, '2021-10-04 21:35:33', '0:0:0:0:0:0:0:1', '/vaccine/addPetVaccine', 'anonymousUser', NULL, NULL, '849E84625F24250517FE11FA4DE14EE7', NULL),
(133, '2021-10-04 21:38:12', '0:0:0:0:0:0:0:1', '/vaccine/addPetStock', 'anonymousUser', NULL, NULL, '849E84625F24250517FE11FA4DE14EE7', NULL),
(134, '2021-10-04 21:39:14', '0:0:0:0:0:0:0:1', '/vaccine/deletePetStock/3', 'anonymousUser', NULL, NULL, '849E84625F24250517FE11FA4DE14EE7', NULL),
(135, '2021-10-04 21:39:52', '0:0:0:0:0:0:0:1', '/vaccine/listDepoPetStock/1', 'anonymousUser', NULL, NULL, '849E84625F24250517FE11FA4DE14EE7', NULL),
(136, '2021-10-04 21:42:25', '0:0:0:0:0:0:0:1', '/product/updatePetStock', 'anonymousUser', NULL, NULL, '849E84625F24250517FE11FA4DE14EE7', NULL),
(137, '2021-10-04 21:42:58', '0:0:0:0:0:0:0:1', '/vaccine/updatePetStock', 'anonymousUser', NULL, NULL, '849E84625F24250517FE11FA4DE14EE7', NULL),
(138, '2021-10-04 21:43:03', '0:0:0:0:0:0:0:1', '/vaccine/listDepoPetStock/1', 'anonymousUser', NULL, NULL, '849E84625F24250517FE11FA4DE14EE7', NULL),
(139, '2021-10-04 21:44:39', '0:0:0:0:0:0:0:1', '/vaccine/listFarmVaccine', 'anonymousUser', NULL, NULL, '849E84625F24250517FE11FA4DE14EE7', NULL),
(140, '2021-10-04 21:45:24', '0:0:0:0:0:0:0:1', '/vaccine/listFarmVaccine', 'anonymousUser', NULL, NULL, '849E84625F24250517FE11FA4DE14EE7', NULL),
(141, '2021-10-04 21:46:41', '0:0:0:0:0:0:0:1', '/vaccine/addFarmVaccine', 'anonymousUser', NULL, NULL, '849E84625F24250517FE11FA4DE14EE7', NULL),
(142, '2021-10-04 21:46:52', '0:0:0:0:0:0:0:1', '/vaccine/addFarmVaccine', 'anonymousUser', NULL, NULL, '849E84625F24250517FE11FA4DE14EE7', NULL),
(143, '2021-10-04 21:50:13', '0:0:0:0:0:0:0:1', '/vaccine/addFarmStock', 'anonymousUser', NULL, NULL, '849E84625F24250517FE11FA4DE14EE7', NULL),
(144, '2021-10-04 21:50:55', '0:0:0:0:0:0:0:1', '/vaccine/deleteFarmStock/3', 'anonymousUser', NULL, NULL, '849E84625F24250517FE11FA4DE14EE7', NULL),
(145, '2021-10-04 21:51:23', '0:0:0:0:0:0:0:1', '/vaccine/listDepoFarmStock/1', 'anonymousUser', NULL, NULL, '849E84625F24250517FE11FA4DE14EE7', NULL),
(146, '2021-10-04 21:51:58', '0:0:0:0:0:0:0:1', '/vaccine/listFarmVaccine', 'anonymousUser', NULL, NULL, '849E84625F24250517FE11FA4DE14EE7', NULL),
(147, '2021-10-04 21:52:06', '0:0:0:0:0:0:0:1', '/vaccine/deleteFarmVaccine/3', 'anonymousUser', NULL, NULL, '849E84625F24250517FE11FA4DE14EE7', NULL),
(148, '2021-10-04 21:52:20', '0:0:0:0:0:0:0:1', '/vaccine/listDepoFarmStock/1', 'anonymousUser', NULL, NULL, '849E84625F24250517FE11FA4DE14EE7', NULL),
(149, '2021-10-04 21:54:05', '0:0:0:0:0:0:0:1', '/vaccine/updateFarmStock', 'anonymousUser', NULL, NULL, '849E84625F24250517FE11FA4DE14EE7', NULL),
(150, '2021-10-04 21:54:10', '0:0:0:0:0:0:0:1', '/vaccine/listDepoFarmStock/1', 'anonymousUser', NULL, NULL, '849E84625F24250517FE11FA4DE14EE7', NULL),
(151, '2021-10-04 21:59:59', '0:0:0:0:0:0:0:1', '/clinicalStatistics/listProcess', 'anonymousUser', NULL, NULL, '849E84625F24250517FE11FA4DE14EE7', NULL),
(152, '2021-10-04 22:43:07', '0:0:0:0:0:0:0:1', '/buying/list', 'anonymousUser', NULL, NULL, '38CBB64B3CA8D4A852CAD836EE267106', NULL),
(153, '2021-10-04 22:52:20', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '06E04B16CAD252A2CF14ABA6FCF9E8B7', NULL),
(154, '2021-10-04 22:52:20', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, '06E04B16CAD252A2CF14ABA6FCF9E8B7', NULL),
(155, '2021-10-04 22:52:20', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, '06E04B16CAD252A2CF14ABA6FCF9E8B7', NULL),
(156, '2021-10-04 22:52:20', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, '06E04B16CAD252A2CF14ABA6FCF9E8B7', NULL),
(157, '2021-10-04 22:52:20', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, '06E04B16CAD252A2CF14ABA6FCF9E8B7', NULL),
(158, '2021-10-04 22:52:20', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, '06E04B16CAD252A2CF14ABA6FCF9E8B7', NULL),
(159, '2021-10-04 22:52:20', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, '06E04B16CAD252A2CF14ABA6FCF9E8B7', NULL),
(160, '2021-10-04 22:52:20', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, '06E04B16CAD252A2CF14ABA6FCF9E8B7', NULL),
(161, '2021-10-04 22:52:20', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, '06E04B16CAD252A2CF14ABA6FCF9E8B7', NULL),
(162, '2021-10-04 22:52:20', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, '06E04B16CAD252A2CF14ABA6FCF9E8B7', NULL),
(163, '2021-10-04 23:01:52', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '06E04B16CAD252A2CF14ABA6FCF9E8B7', NULL),
(164, '2021-10-04 23:01:52', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, '06E04B16CAD252A2CF14ABA6FCF9E8B7', NULL),
(165, '2021-10-04 23:01:52', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, '06E04B16CAD252A2CF14ABA6FCF9E8B7', NULL),
(166, '2021-10-04 23:01:52', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, '06E04B16CAD252A2CF14ABA6FCF9E8B7', NULL),
(167, '2021-10-04 23:01:52', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, '06E04B16CAD252A2CF14ABA6FCF9E8B7', NULL),
(168, '2021-10-04 23:01:52', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, '06E04B16CAD252A2CF14ABA6FCF9E8B7', NULL),
(169, '2021-10-04 23:01:52', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '06E04B16CAD252A2CF14ABA6FCF9E8B7', NULL),
(170, '2021-10-04 23:01:52', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, '06E04B16CAD252A2CF14ABA6FCF9E8B7', NULL),
(171, '2021-10-04 23:01:52', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, '06E04B16CAD252A2CF14ABA6FCF9E8B7', NULL),
(172, '2021-10-04 23:01:52', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, '06E04B16CAD252A2CF14ABA6FCF9E8B7', NULL),
(173, '2021-10-04 23:01:52', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, '06E04B16CAD252A2CF14ABA6FCF9E8B7', NULL),
(174, '2021-10-04 23:01:52', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, '06E04B16CAD252A2CF14ABA6FCF9E8B7', NULL),
(175, '2021-10-04 23:01:53', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, '06E04B16CAD252A2CF14ABA6FCF9E8B7', NULL),
(176, '2021-10-04 23:01:53', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, '06E04B16CAD252A2CF14ABA6FCF9E8B7', NULL),
(177, '2021-10-04 23:01:53', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, '06E04B16CAD252A2CF14ABA6FCF9E8B7', NULL),
(178, '2021-10-04 23:01:53', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, '06E04B16CAD252A2CF14ABA6FCF9E8B7', NULL),
(179, '2021-10-04 23:15:32', '0:0:0:0:0:0:0:1', '/settings/add', 'anonymousUser', NULL, NULL, '4E9F69838B2BF61B9808896C204D2EFB', NULL),
(180, '2021-10-04 23:15:37', '0:0:0:0:0:0:0:1', '/settings/add', 'anonymousUser', NULL, NULL, '4E9F69838B2BF61B9808896C204D2EFB', NULL),
(181, '2021-10-04 23:18:29', '0:0:0:0:0:0:0:1', '/settings/delete/9', 'anonymousUser', NULL, NULL, '6D301362709409DD8260059D11458130', NULL),
(182, '2021-10-04 23:28:24', '0:0:0:0:0:0:0:1', '/animal/delete/10', 'anonymousUser', NULL, NULL, 'EAF6B16FB761AB2F3D37ACC3A0989042', NULL),
(183, '2021-10-04 23:41:05', '0:0:0:0:0:0:0:1', '/sales/boxadd', 'anonymousUser', NULL, NULL, 'EAF6B16FB761AB2F3D37ACC3A0989042', NULL),
(184, '2021-10-05 15:49:37', '0:0:0:0:0:0:0:1', '/password/add/demet@mail.com', 'anonymousUser', NULL, NULL, 'C16202DD284168FBCFFA023F779B991B', NULL),
(185, '2021-10-05 15:49:54', '0:0:0:0:0:0:0:1', '/password/add/demet@mail.com', 'anonymousUser', NULL, NULL, 'C16202DD284168FBCFFA023F779B991B', NULL),
(186, '2021-10-05 15:50:29', '0:0:0:0:0:0:0:1', '/password/add/demet@mail.com', 'anonymousUser', NULL, NULL, 'C16202DD284168FBCFFA023F779B991B', NULL),
(187, '2021-10-05 15:52:26', '0:0:0:0:0:0:0:1', '/password/add/demet@mail.com', 'anonymousUser', NULL, NULL, 'C0046B14B84BCDBBD1E3DF865B7125D1', NULL),
(188, '2021-10-05 15:53:56', '0:0:0:0:0:0:0:1', '/password/add/demet@mail.com', 'anonymousUser', NULL, NULL, 'F2BF5FE8FB0560CD16C14B44920D1C24', NULL),
(189, '2021-10-05 15:54:51', '0:0:0:0:0:0:0:1', '/password/add/demet@mail.com', 'anonymousUser', NULL, NULL, '3C2760F9FBC315BE6554F3391E4AD3EE', NULL),
(190, '2021-10-05 16:01:25', '0:0:0:0:0:0:0:1', '/password/add/demet@mail.com', 'anonymousUser', NULL, NULL, 'D3DE0814A0F5206E656B82A3F09A2FC5', NULL),
(191, '2021-10-05 17:56:40', '0:0:0:0:0:0:0:1', '/password/add/ezgi@mail.com', 'anonymousUser', NULL, NULL, 'EE80F5E7F41F2F3A82774F6681A7637F', NULL),
(192, '2021-10-05 17:58:49', '0:0:0:0:0:0:0:1', '/dashboard/total', 'ezgi@mail.com', 'Ezgi', 'ROLE_ADMIN', '3795647BB70814E0F20B4C575DBB3558', 'Kemer'),
(193, '2021-10-05 17:59:08', '0:0:0:0:0:0:0:1', '/dashboard/totalSaleCount', 'ezgi@mail.com', 'Ezgi', 'ROLE_ADMIN', '3795647BB70814E0F20B4C575DBB3558', 'Kemer'),
(194, '2021-10-05 17:59:56', '0:0:0:0:0:0:0:1', '/dashboard/totalSaleCount', 'ezgi@mail.com', 'Ezgi', 'ROLE_ADMIN', '0F69D8FACAAE6BD696B57B28D9BD9836', 'Kemer'),
(195, '2021-10-05 18:01:50', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '0B65D5CD67C285CB1FFEC734BF397340', NULL),
(196, '2021-10-05 18:01:50', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, '0B65D5CD67C285CB1FFEC734BF397340', NULL),
(197, '2021-10-05 18:01:50', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, '0B65D5CD67C285CB1FFEC734BF397340', NULL),
(198, '2021-10-05 18:01:50', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, '0B65D5CD67C285CB1FFEC734BF397340', NULL),
(199, '2021-10-05 18:01:50', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, '0B65D5CD67C285CB1FFEC734BF397340', NULL),
(200, '2021-10-05 18:01:50', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, '0B65D5CD67C285CB1FFEC734BF397340', NULL),
(201, '2021-10-05 18:01:50', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, '0B65D5CD67C285CB1FFEC734BF397340', NULL),
(202, '2021-10-05 18:01:50', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, '0B65D5CD67C285CB1FFEC734BF397340', NULL),
(203, '2021-10-05 18:01:50', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, '0B65D5CD67C285CB1FFEC734BF397340', NULL),
(204, '2021-10-05 18:01:50', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, '0B65D5CD67C285CB1FFEC734BF397340', NULL),
(205, '2021-10-05 18:03:45', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, 'EE4E9DA6EB73E5515909BD8A0B2BC321', NULL),
(206, '2021-10-05 18:03:45', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, 'EE4E9DA6EB73E5515909BD8A0B2BC321', NULL),
(207, '2021-10-05 18:03:45', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, 'EE4E9DA6EB73E5515909BD8A0B2BC321', NULL),
(208, '2021-10-05 18:03:45', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, 'EE4E9DA6EB73E5515909BD8A0B2BC321', NULL),
(209, '2021-10-05 18:03:45', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, 'EE4E9DA6EB73E5515909BD8A0B2BC321', NULL),
(210, '2021-10-05 18:03:45', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, 'EE4E9DA6EB73E5515909BD8A0B2BC321', NULL),
(211, '2021-10-05 18:03:46', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, 'EE4E9DA6EB73E5515909BD8A0B2BC321', NULL),
(212, '2021-10-05 18:03:46', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, 'EE4E9DA6EB73E5515909BD8A0B2BC321', NULL),
(213, '2021-10-05 18:03:46', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, 'EE4E9DA6EB73E5515909BD8A0B2BC321', NULL),
(214, '2021-10-05 18:03:46', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, 'EE4E9DA6EB73E5515909BD8A0B2BC321', NULL),
(215, '2021-10-05 18:13:47', '0:0:0:0:0:0:0:1', '/password/add/ezgi@mail.com', 'anonymousUser', NULL, NULL, 'E91BCC85F811F994A7EBE02708D86F8A', NULL),
(216, '2021-10-05 18:14:37', '0:0:0:0:0:0:0:1', '/dashboard/totalSaleCount', 'ezgi@mail.com', 'Ezgi', 'ROLE_ADMIN', '9AA7F2310AADB935E560EFB1E676C292', 'Kemer'),
(217, '2021-10-05 18:16:17', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, 'B97E494E9DF1C337EF338FEBE3FDAEDC', NULL),
(218, '2021-10-05 18:16:17', '0:0:0:0:0:0:0:1', '/favicon.ico', 'anonymousUser', NULL, NULL, 'B97E494E9DF1C337EF338FEBE3FDAEDC', NULL),
(219, '2021-10-05 18:22:39', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, 'B97E494E9DF1C337EF338FEBE3FDAEDC', NULL),
(220, '2021-10-05 18:22:40', '0:0:0:0:0:0:0:1', '/favicon.ico', 'anonymousUser', NULL, NULL, 'B97E494E9DF1C337EF338FEBE3FDAEDC', NULL),
(221, '2021-10-05 18:47:38', '0:0:0:0:0:0:0:1', '/password/add/ezgi@mail.com', 'anonymousUser', NULL, NULL, 'E320499FE5B0EE27E78F6ECCF984EF08', NULL),
(222, '2021-10-05 18:48:11', '0:0:0:0:0:0:0:1', '/password/add/ezgi@mail.com', 'anonymousUser', NULL, NULL, 'E320499FE5B0EE27E78F6ECCF984EF08', NULL),
(223, '2021-10-05 20:22:24', '0:0:0:0:0:0:0:1', '/settings/list', 'ezgi@mail.com', 'Ezgi', 'ROLE_ADMIN', '028B7603ADA4A702A581C18E09226A30', 'Kemer'),
(224, '2021-10-05 20:26:21', '0:0:0:0:0:0:0:1', '/vendor/list', 'ezgi@mail.com', 'Ezgi', 'ROLE_ADMIN', '028B7603ADA4A702A581C18E09226A30', 'Kemer'),
(225, '2021-10-05 20:27:36', '0:0:0:0:0:0:0:1', '/vendor/list', 'anonymousUser', NULL, NULL, '82D962422A0AC30C1FF4353F8C8F5B06', NULL),
(226, '2021-10-05 20:29:36', '0:0:0:0:0:0:0:1', '/agenda/list', 'ezgi@mail.com', 'Ezgi', 'ROLE_ADMIN', '028B7603ADA4A702A581C18E09226A30', 'Kemer'),
(227, '2021-10-05 20:30:50', '0:0:0:0:0:0:0:1', '/dashboard/Calendarlist', 'ezgi@mail.com', 'Ezgi', 'ROLE_ADMIN', '028B7603ADA4A702A581C18E09226A30', 'Kemer'),
(228, '2021-10-05 20:31:08', '0:0:0:0:0:0:0:1', '/dashboard/customerCount', 'ezgi@mail.com', 'Ezgi', 'ROLE_ADMIN', '028B7603ADA4A702A581C18E09226A30', 'Kemer'),
(229, '2021-10-05 20:31:30', '0:0:0:0:0:0:0:1', '/dashboard/totalSaleCount', 'ezgi@mail.com', 'Ezgi', 'ROLE_ADMIN', '028B7603ADA4A702A581C18E09226A30', 'Kemer'),
(230, '2021-10-05 20:31:53', '0:0:0:0:0:0:0:1', '/dashboard/total', 'ezgi@mail.com', 'Ezgi', 'ROLE_ADMIN', '028B7603ADA4A702A581C18E09226A30', 'Kemer'),
(231, '2021-10-05 20:32:57', '0:0:0:0:0:0:0:1', '/dashboard/totalStockList', 'ezgi@mail.com', 'Ezgi', 'ROLE_ADMIN', '028B7603ADA4A702A581C18E09226A30', 'Kemer'),
(232, '2021-10-05 20:34:30', '0:0:0:0:0:0:0:1', '/clinicalStatistics/countLab', 'ezgi@mail.com', 'Ezgi', 'ROLE_ADMIN', '028B7603ADA4A702A581C18E09226A30', 'Kemer'),
(233, '2021-10-05 20:35:14', '0:0:0:0:0:0:0:1', '/clinicalStatistics/totalAnimal', 'ezgi@mail.com', 'Ezgi', 'ROLE_ADMIN', '028B7603ADA4A702A581C18E09226A30', 'Kemer'),
(234, '2021-10-05 20:35:30', '0:0:0:0:0:0:0:1', '/clinicalStatistics/totalSchedule', 'ezgi@mail.com', 'Ezgi', 'ROLE_ADMIN', '028B7603ADA4A702A581C18E09226A30', 'Kemer'),
(235, '2021-10-05 20:38:23', '0:0:0:0:0:0:0:1', '/clinicalStatistics/totalClinicList', 'ezgi@mail.com', 'Ezgi', 'ROLE_ADMIN', '028B7603ADA4A702A581C18E09226A30', 'Kemer'),
(236, '2021-10-05 20:39:56', '0:0:0:0:0:0:0:1', '/clinicalStatistics/listProcess', 'ezgi@mail.com', 'Ezgi', 'ROLE_ADMIN', '028B7603ADA4A702A581C18E09226A30', 'Kemer'),
(237, '2021-10-05 20:40:37', '0:0:0:0:0:0:0:1', '/payAction/payInList', 'ezgi@mail.com', 'Ezgi', 'ROLE_ADMIN', '028B7603ADA4A702A581C18E09226A30', 'Kemer'),
(238, '2021-10-05 20:41:26', '0:0:0:0:0:0:0:1', '/payAction/payActionProcess/3', 'ezgi@mail.com', 'Ezgi', 'ROLE_ADMIN', '028B7603ADA4A702A581C18E09226A30', 'Kemer'),
(239, '2021-10-05 20:42:52', '0:0:0:0:0:0:0:1', '/case/list', 'ezgi@mail.com', 'Ezgi', 'ROLE_ADMIN', '028B7603ADA4A702A581C18E09226A30', 'Kemer'),
(240, '2021-10-05 20:43:48', '0:0:0:0:0:0:0:1', '/depo/list', 'ezgi@mail.com', 'Ezgi', 'ROLE_ADMIN', '028B7603ADA4A702A581C18E09226A30', 'Kemer'),
(241, '2021-10-05 20:44:28', '0:0:0:0:0:0:0:1', '/laboratuvar/list', 'ezgi@mail.com', 'Ezgi', 'ROLE_ADMIN', '028B7603ADA4A702A581C18E09226A30', 'Kemer'),
(242, '2021-10-05 20:45:41', '0:0:0:0:0:0:0:1', '/customer/list/0', 'ezgi@mail.com', 'Ezgi', 'ROLE_ADMIN', '028B7603ADA4A702A581C18E09226A30', 'Kemer'),
(243, '2021-10-05 20:47:03', '0:0:0:0:0:0:0:1', '/animal/list', 'ezgi@mail.com', 'Ezgi', 'ROLE_ADMIN', '028B7603ADA4A702A581C18E09226A30', 'Kemer'),
(244, '2021-10-05 20:50:54', '0:0:0:0:0:0:0:1', '/animal/add', 'ezgi@mail.com', 'Ezgi', 'ROLE_ADMIN', '028B7603ADA4A702A581C18E09226A30', 'Kemer'),
(245, '2021-10-05 20:51:59', '0:0:0:0:0:0:0:1', '/animal/add', 'ezgi@mail.com', 'Ezgi', 'ROLE_ADMIN', '028B7603ADA4A702A581C18E09226A30', 'Kemer'),
(246, '2021-10-05 21:14:59', '0:0:0:0:0:0:0:1', '/vendor/add', 'anonymousUser', NULL, NULL, '6D34EEF683A0385240C3B3BCD14B2109', NULL),
(247, '2021-10-05 21:15:20', '0:0:0:0:0:0:0:1', '/vendor/add', 'anonymousUser', NULL, NULL, '6D34EEF683A0385240C3B3BCD14B2109', NULL),
(248, '2021-10-05 21:17:13', '0:0:0:0:0:0:0:1', '/search/Su%20y%C3%BCzd%C3%BC', 'anonymousUser', NULL, NULL, '6D34EEF683A0385240C3B3BCD14B2109', NULL),
(249, '2021-10-05 21:17:51', '0:0:0:0:0:0:0:1', '/buying/list', 'anonymousUser', NULL, NULL, '6D34EEF683A0385240C3B3BCD14B2109', NULL),
(250, '2021-10-05 21:18:10', '0:0:0:0:0:0:0:1', '/buying/vendorlist', 'anonymousUser', NULL, NULL, '6D34EEF683A0385240C3B3BCD14B2109', NULL),
(251, '2021-10-05 21:18:30', '0:0:0:0:0:0:0:1', '/buying/vendorProductlist/4', 'anonymousUser', NULL, NULL, '6D34EEF683A0385240C3B3BCD14B2109', NULL),
(252, '2021-10-05 21:20:22', '0:0:0:0:0:0:0:1', '/buying/add/3', 'anonymousUser', NULL, NULL, '6D34EEF683A0385240C3B3BCD14B2109', NULL),
(253, '2021-10-05 21:24:48', '0:0:0:0:0:0:0:1', '/sales/boxadd', 'anonymousUser', NULL, NULL, '6D34EEF683A0385240C3B3BCD14B2109', NULL),
(254, '2021-10-05 21:25:54', '0:0:0:0:0:0:0:1', '/sales/retailSale/2/5', 'anonymousUser', NULL, NULL, '6D34EEF683A0385240C3B3BCD14B2109', NULL),
(255, '2021-10-05 21:28:02', '0:0:0:0:0:0:0:1', '/sales/boxadd', 'anonymousUser', NULL, NULL, '6D34EEF683A0385240C3B3BCD14B2109', NULL),
(256, '2021-10-05 21:28:35', '0:0:0:0:0:0:0:1', '/sales/retailSale/2/5', 'anonymousUser', NULL, NULL, '6D34EEF683A0385240C3B3BCD14B2109', NULL),
(257, '2021-10-05 21:30:36', '0:0:0:0:0:0:0:1', '/sales/retailSale/9/55', 'anonymousUser', NULL, NULL, '6D34EEF683A0385240C3B3BCD14B2109', NULL),
(258, '2021-10-05 21:31:32', '0:0:0:0:0:0:0:1', '/sales/retailSale/9/55', 'anonymousUser', NULL, NULL, '6D34EEF683A0385240C3B3BCD14B2109', NULL),
(259, '2021-10-05 21:31:41', '0:0:0:0:0:0:0:1', '/sales/retailSale/9/55', 'anonymousUser', NULL, NULL, '6D34EEF683A0385240C3B3BCD14B2109', NULL),
(260, '2021-10-05 21:32:24', '0:0:0:0:0:0:0:1', '/sales/retailSale/8/3', 'anonymousUser', NULL, NULL, '6D34EEF683A0385240C3B3BCD14B2109', NULL),
(261, '2021-10-05 21:33:08', '0:0:0:0:0:0:0:1', '/sales/retailSale/8/3', 'anonymousUser', NULL, NULL, '6D34EEF683A0385240C3B3BCD14B2109', NULL),
(262, '2021-10-05 21:33:23', '0:0:0:0:0:0:0:1', '/sales/productList', 'anonymousUser', NULL, NULL, '6D34EEF683A0385240C3B3BCD14B2109', NULL),
(263, '2021-10-05 21:34:06', '0:0:0:0:0:0:0:1', '/sales/customerPaylist', 'anonymousUser', NULL, NULL, '6D34EEF683A0385240C3B3BCD14B2109', NULL),
(264, '2021-10-05 21:34:22', '0:0:0:0:0:0:0:1', '/sales/customerList', 'anonymousUser', NULL, NULL, '6D34EEF683A0385240C3B3BCD14B2109', NULL),
(265, '2021-10-05 21:36:22', '0:0:0:0:0:0:0:1', '/sales/boxCustomeradd', 'anonymousUser', NULL, NULL, '6D34EEF683A0385240C3B3BCD14B2109', NULL),
(266, '2021-10-05 21:37:35', '0:0:0:0:0:0:0:1', '/sales/customerPaySale/9/10/3', 'anonymousUser', NULL, NULL, '6D34EEF683A0385240C3B3BCD14B2109', NULL),
(267, '2021-10-05 21:43:50', '0:0:0:0:0:0:0:1', '/sales/customerPaySale/8/2/5', 'anonymousUser', NULL, NULL, '6D34EEF683A0385240C3B3BCD14B2109', NULL),
(268, '2021-10-05 21:44:40', '0:0:0:0:0:0:0:1', '/sales/customerList', 'anonymousUser', NULL, NULL, '6D34EEF683A0385240C3B3BCD14B2109', NULL),
(269, '2021-10-05 21:58:05', '0:0:0:0:0:0:0:1', '/sales/customerPaySale/8/2/5', 'anonymousUser', NULL, NULL, '75EA68CFBBB1CB6508FA36C94D364A8E', NULL),
(270, '2021-10-05 22:01:40', '0:0:0:0:0:0:0:1', '/sales/customerPaySale/8/2/5', 'anonymousUser', NULL, NULL, '5A7AADA670ECA61A5984F3086CFC319B', NULL),
(271, '2021-10-05 22:02:44', '0:0:0:0:0:0:0:1', '/sales/customerPaySale/8/2/5', 'anonymousUser', NULL, NULL, '5A7AADA670ECA61A5984F3086CFC319B', NULL),
(272, '2021-10-05 22:04:08', '0:0:0:0:0:0:0:1', '/search/Su%20y%C3%BCzd%C3%BC', 'anonymousUser', NULL, NULL, '5A7AADA670ECA61A5984F3086CFC319B', NULL),
(273, '2021-10-05 22:05:56', '0:0:0:0:0:0:0:1', '/sales/customerPaySale/1/20/1', 'anonymousUser', NULL, NULL, '5A7AADA670ECA61A5984F3086CFC319B', NULL),
(274, '2021-10-05 22:09:36', '0:0:0:0:0:0:0:1', '/product/listProduct', 'anonymousUser', NULL, NULL, '5A7AADA670ECA61A5984F3086CFC319B', NULL),
(275, '2021-10-05 22:10:25', '0:0:0:0:0:0:0:1', '/product/listProduct', 'anonymousUser', NULL, NULL, '5A7AADA670ECA61A5984F3086CFC319B', NULL),
(276, '2021-10-05 22:12:56', '0:0:0:0:0:0:0:1', '/product/listDepoStock/1', 'anonymousUser', NULL, NULL, '5A7AADA670ECA61A5984F3086CFC319B', NULL),
(277, '2021-10-05 22:13:35', '0:0:0:0:0:0:0:1', '/product/listDepoStock/1', 'anonymousUser', NULL, NULL, '5A7AADA670ECA61A5984F3086CFC319B', NULL),
(278, '2021-10-05 22:14:20', '0:0:0:0:0:0:0:1', '/product/listProduct', 'anonymousUser', NULL, NULL, '5A7AADA670ECA61A5984F3086CFC319B', NULL),
(279, '2021-10-05 22:18:06', '0:0:0:0:0:0:0:1', '/product/updateStock', 'anonymousUser', NULL, NULL, '5A7AADA670ECA61A5984F3086CFC319B', NULL),
(280, '2021-10-05 22:18:12', '0:0:0:0:0:0:0:1', '/product/listDepoStock/1', 'anonymousUser', NULL, NULL, '5A7AADA670ECA61A5984F3086CFC319B', NULL),
(281, '2021-10-05 22:19:19', '0:0:0:0:0:0:0:1', '/product/deleteStock/6', 'anonymousUser', NULL, NULL, '5A7AADA670ECA61A5984F3086CFC319B', NULL),
(282, '2021-10-05 22:19:22', '0:0:0:0:0:0:0:1', '/product/listDepoStock/1', 'anonymousUser', NULL, NULL, '5A7AADA670ECA61A5984F3086CFC319B', NULL),
(283, '2021-10-05 22:20:43', '0:0:0:0:0:0:0:1', '/vaccine/listPetVaccine', 'anonymousUser', NULL, NULL, '5A7AADA670ECA61A5984F3086CFC319B', NULL),
(284, '2021-10-05 22:21:44', '0:0:0:0:0:0:0:1', '/vaccine/deletePetVaccine/4', 'anonymousUser', NULL, NULL, '5A7AADA670ECA61A5984F3086CFC319B', NULL),
(285, '2021-10-05 22:21:48', '0:0:0:0:0:0:0:1', '/vaccine/listPetVaccine', 'anonymousUser', NULL, NULL, '5A7AADA670ECA61A5984F3086CFC319B', NULL),
(286, '2021-10-05 22:23:22', '0:0:0:0:0:0:0:1', '/vaccine/listDepoPetStock/1', 'anonymousUser', NULL, NULL, '5A7AADA670ECA61A5984F3086CFC319B', NULL),
(287, '2021-10-05 22:25:16', '0:0:0:0:0:0:0:1', '/vaccine/listFarmVaccine', 'anonymousUser', NULL, NULL, '5A7AADA670ECA61A5984F3086CFC319B', NULL),
(288, '2021-10-05 22:26:16', '0:0:0:0:0:0:0:1', '/vaccine/listDepoFarmStock/1', 'anonymousUser', NULL, NULL, '5A7AADA670ECA61A5984F3086CFC319B', NULL),
(289, '2021-10-05 22:44:28', '0:0:0:0:0:0:0:1', '/redis/post', 'anonymousUser', NULL, NULL, 'CF0370071882124DD668B957A35EB472', NULL),
(290, '2021-10-05 22:44:38', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'CF0370071882124DD668B957A35EB472', NULL),
(291, '2021-10-05 22:46:14', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, '252857A9FDB22952D1864E09EC3ADCCB', NULL),
(292, '2021-10-05 22:46:25', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, '252857A9FDB22952D1864E09EC3ADCCB', NULL),
(293, '2021-10-05 22:46:31', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, '252857A9FDB22952D1864E09EC3ADCCB', NULL),
(294, '2021-10-05 22:46:38', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, '252857A9FDB22952D1864E09EC3ADCCB', NULL),
(295, '2021-10-05 22:46:52', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, '252857A9FDB22952D1864E09EC3ADCCB', NULL),
(296, '2021-10-05 22:49:42', '0:0:0:0:0:0:0:1', '/redis/list', 'anonymousUser', NULL, NULL, '9DDCCBB854DCA76BC6DFB2B205BCB7BA', NULL),
(297, '2021-10-05 22:50:25', '0:0:0:0:0:0:0:1', '/redis/list', 'anonymousUser', NULL, NULL, '8AE4391822E990D996D5B066A2836D57', NULL),
(298, '2021-10-05 22:52:09', '0:0:0:0:0:0:0:1', '/redis/list', 'anonymousUser', NULL, NULL, '90B9BD776DF95909CCB6D63A85029181', NULL),
(299, '2021-10-05 22:55:04', '0:0:0:0:0:0:0:1', '/redis/list', 'anonymousUser', NULL, NULL, '579EB51C6A74202FFB387930CB12341B', NULL),
(300, '2021-10-05 22:56:57', '0:0:0:0:0:0:0:1', '/redis/list', 'anonymousUser', NULL, NULL, 'F170D1BB6A8AAC3FFCD4E886A928D2E6', NULL),
(301, '2021-10-05 22:57:47', '0:0:0:0:0:0:0:1', '/redis/list', 'anonymousUser', NULL, NULL, 'F3640643AE1CF5B00FD8A5C707871926', NULL),
(302, '2021-10-05 22:57:57', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'F3640643AE1CF5B00FD8A5C707871926', NULL),
(303, '2021-10-05 22:58:04', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'F3640643AE1CF5B00FD8A5C707871926', NULL),
(304, '2021-10-05 22:58:09', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'F3640643AE1CF5B00FD8A5C707871926', NULL),
(305, '2021-10-05 22:58:16', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'F3640643AE1CF5B00FD8A5C707871926', NULL),
(306, '2021-10-05 22:58:21', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'F3640643AE1CF5B00FD8A5C707871926', NULL),
(307, '2021-10-05 22:58:36', '0:0:0:0:0:0:0:1', '/redis/list', 'anonymousUser', NULL, NULL, 'F3640643AE1CF5B00FD8A5C707871926', NULL),
(308, '2021-10-05 23:12:31', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '105752E37A3D7523934A7B7FCC1C4F25', NULL),
(309, '2021-10-05 23:12:31', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, '105752E37A3D7523934A7B7FCC1C4F25', NULL),
(310, '2021-10-05 23:12:31', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, '105752E37A3D7523934A7B7FCC1C4F25', NULL),
(311, '2021-10-05 23:12:31', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, '105752E37A3D7523934A7B7FCC1C4F25', NULL),
(312, '2021-10-05 23:12:31', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, '105752E37A3D7523934A7B7FCC1C4F25', NULL),
(313, '2021-10-05 23:12:31', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, '105752E37A3D7523934A7B7FCC1C4F25', NULL),
(314, '2021-10-05 23:12:32', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, '105752E37A3D7523934A7B7FCC1C4F25', NULL),
(315, '2021-10-05 23:12:32', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, '105752E37A3D7523934A7B7FCC1C4F25', NULL),
(316, '2021-10-05 23:12:32', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, '105752E37A3D7523934A7B7FCC1C4F25', NULL),
(317, '2021-10-05 23:12:32', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, '105752E37A3D7523934A7B7FCC1C4F25', NULL),
(318, '2021-10-05 23:12:32', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, '105752E37A3D7523934A7B7FCC1C4F25', NULL),
(319, '2021-10-05 23:12:45', '0:0:0:0:0:0:0:1', '/redis/list', 'anonymousUser', NULL, NULL, '105752E37A3D7523934A7B7FCC1C4F25', NULL),
(320, '2021-10-05 23:15:09', '0:0:0:0:0:0:0:1', '/search/Su%20y%C3%BCzd%C3%BC', 'anonymousUser', NULL, NULL, '105752E37A3D7523934A7B7FCC1C4F25', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `new_case`
--

CREATE TABLE `new_case` (
  `case_id` int(11) NOT NULL,
  `case_name` varchar(255) DEFAULT NULL,
  `case_status` bit(1) NOT NULL,
  `case_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `new_case`
--

INSERT INTO `new_case` (`case_id`, `case_name`, `case_status`, `case_type`) VALUES
(1, 'A', b'1', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pet_stock`
--

CREATE TABLE `pet_stock` (
  `psid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `depo` int(11) NOT NULL,
  `pet_vac` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `pet_stock`
--

INSERT INTO `pet_stock` (`psid`, `amount`, `depo`, `pet_vac`) VALUES
(1, 70, 1, 1),
(2, 100, 1, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pet_vaccine`
--

CREATE TABLE `pet_vaccine` (
  `pet_vaccine_id` int(11) NOT NULL,
  `category_group_cg_id` int(11) NOT NULL,
  `pet_vaccine_amount_fixed` bit(1) NOT NULL,
  `pet_vaccine_barcode` int(11) NOT NULL,
  `pet_vaccine_buying` int(11) NOT NULL,
  `pet_vaccine_buying_kdv` bit(1) NOT NULL,
  `pet_vaccine_code` int(11) NOT NULL,
  `pet_vaccine_kdv` int(11) NOT NULL,
  `pet_vaccine_name` varchar(255) DEFAULT NULL,
  `pet_vaccine_number` int(11) NOT NULL,
  `pet_vaccine_sales` int(11) NOT NULL,
  `pet_vaccine_sales_kdv` bit(1) NOT NULL,
  `pet_vaccine_status` bit(1) NOT NULL,
  `pet_vaccine_stock` int(11) NOT NULL,
  `pet_vaccine_tip` varchar(255) DEFAULT NULL,
  `pet_vaccine_type` varchar(255) DEFAULT NULL,
  `pet_vaccine_unit` varchar(255) DEFAULT NULL,
  `vendor_vid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `pet_vaccine`
--

INSERT INTO `pet_vaccine` (`pet_vaccine_id`, `category_group_cg_id`, `pet_vaccine_amount_fixed`, `pet_vaccine_barcode`, `pet_vaccine_buying`, `pet_vaccine_buying_kdv`, `pet_vaccine_code`, `pet_vaccine_kdv`, `pet_vaccine_name`, `pet_vaccine_number`, `pet_vaccine_sales`, `pet_vaccine_sales_kdv`, `pet_vaccine_status`, `pet_vaccine_stock`, `pet_vaccine_tip`, `pet_vaccine_type`, `pet_vaccine_unit`, `vendor_vid`) VALUES
(1, 1, b'0', 66, 50, b'1', 2, 8, 'Gençlik Aşısı', 2, 100, b'1', b'1', 100, '3', '', '1', 3),
(2, 1, b'0', 6, 200, b'0', 6, 1, 'pet vacc1', 2, 250, b'0', b'0', 50, '1', '', '2', 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `category_group_cg_id` int(11) NOT NULL,
  `product_amount_fixed` bit(1) NOT NULL,
  `product_barcode` int(11) NOT NULL,
  `product_buying` int(11) NOT NULL,
  `product_buying_kdv` bit(1) NOT NULL,
  `product_code` int(11) NOT NULL,
  `product_kdv` int(11) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_sales` int(11) NOT NULL,
  `product_sales_kdv` bit(1) NOT NULL,
  `product_status` bit(1) NOT NULL,
  `product_stock` int(11) NOT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `product_unit` varchar(255) DEFAULT NULL,
  `vendor_vid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `product`
--

INSERT INTO `product` (`product_id`, `category_group_cg_id`, `product_amount_fixed`, `product_barcode`, `product_buying`, `product_buying_kdv`, `product_code`, `product_kdv`, `product_name`, `product_sales`, `product_sales_kdv`, `product_status`, `product_stock`, `product_type`, `product_unit`, `vendor_vid`) VALUES
(1, 1, b'0', 2, 20, b'0', 5, 8, 'Sargı Bezi', 25, b'1', b'1', 50, '2', '1', 1),
(2, 1, b'1', 9, 50, b'0', 1, 8, 'Gençlik Aşısı', 100, b'0', b'1', 100, '2', '3', 4),
(3, 3, b'0', 32, 100, b'1', 3, 18, 'Ağrı Kesici', 150, b'1', b'1', 13, '2', '1', 4),
(8, 3, b'0', 34, 150, b'0', 34, 8, 'Oyuncak', 200, b'1', b'0', 30, '3', '2', 3),
(9, 3, b'0', 78, 50, b'0', 78, 8, 'Şeker', 100, b'1', b'0', 50, '3', '2', 11);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `retail_sale`
--

CREATE TABLE `retail_sale` (
  `rid` int(11) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `sale_date` datetime DEFAULT NULL,
  `sale_process` int(11) NOT NULL,
  `saletotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `retail_sale`
--

INSERT INTO `retail_sale` (`rid`, `product_name`, `sale_date`, `sale_process`, `saletotal`) VALUES
(1, 'Sargı Bezi', '2021-09-25 03:00:00', 1, 230),
(2, 'Gençlik Aşısı', '2021-09-25 03:00:00', 1, 460),
(3, 'Şeker', '2021-09-27 03:00:00', 3, 5060);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'ROLE_CUSTOMER'),
(2, 'ROLE_ADMIN'),
(3, 'ROLE_DOCTOR'),
(4, 'ROLE_SECRETARY');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `schedule_calendar`
--

CREATE TABLE `schedule_calendar` (
  `sid` int(11) NOT NULL,
  `bg_color` varchar(255) DEFAULT NULL,
  `border_color` varchar(255) DEFAULT NULL,
  `calendar_id` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `drag_bg_color` varchar(255) DEFAULT NULL,
  `due_date_class` varchar(255) DEFAULT NULL,
  `end` varchar(255) DEFAULT NULL,
  `id` varchar(255) DEFAULT NULL,
  `is_all_day` bit(1) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `raw` varchar(255) DEFAULT NULL,
  `start` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `schedule_calendar`
--

INSERT INTO `schedule_calendar` (`sid`, `bg_color`, `border_color`, `calendar_id`, `category`, `color`, `drag_bg_color`, `due_date_class`, `end`, `id`, `is_all_day`, `location`, `raw`, `start`, `state`, `title`) VALUES
(7, '#00a9ff', '#00a9ff', '2', 'time', '#ffffff', '#00a9ff', '', 'Wed Sep 22 2021 14:30:00 GMT+0300 (GMT+03:00)', 'daaa0fc1-05d0-5ec3-aec0-838d89598677', b'0', 'İstanbul', 'public', 'Wed Sep 22 2021 13:30:00 GMT+0300 (GMT+03:00)', 'Busy', 'İlaç'),
(8, '#ffbb3b', '#ffbb3b', '4', 'time', '#ffffff', '#ffbb3b', '', 'Thu Sep 23 2021 18:30:00 GMT+0300 (GMT+03:00)', '95995834-5bb3-5e2e-b981-21aa0616035f', b'0', 'İstanbul', 'public', 'Thu Sep 23 2021 12:00:00 GMT+0300 (GMT+03:00)', 'Busy', 'Sinema'),
(9, '#ffbb3b', '#ffbb3b', '4', 'allday', '#ffffff', '#ffbb3b', '', 'Fri Sep 24 2021 23:59:59 GMT+0300 (GMT+03:00)', '67cbcf88-fd67-5d8e-87ff-0118b5bf70fb', b'1', 'İstanbul', 'public', 'Fri Sep 24 2021 00:00:00 GMT+0300 (GMT+03:00)', 'Free', 'Tatil'),
(11, '#bbdc00', '#bbdc00', '3', 'time', '#ffffff', '#bbdc00', '', 'Sat Sep 25 2021 12:30:00 GMT+0300 (GMT+03:00)', '71ca5538-8193-5467-aeb3-c8b8ad693f3d', NULL, 'poopo', 'public', 'Sat Sep 25 2021 09:00:00 GMT+0300 (GMT+03:00)', 'Busy', 'Hasta Randevu'),
(12, '#00a9ff', '#00a9ff', '2', 'time', '#ffffff', '#00a9ff', '', 'Thu Sep 23 2021 07:30:00 GMT+0300 (GMT+03:00)', '0e94a32a-2c55-55d6-9c31-51e7b62aa5e4', b'0', 'İstanbul', 'public', 'Thu Sep 23 2021 04:30:00 GMT+0300 (GMT+03:00)', 'Busy', 'İlaç Alma'),
(13, '#9e5fff', '#9e5fff', '1', 'time', '#ffffff', '#9e5fff', '', 'Sat Sep 25 2021 04:00:00 GMT+0300 (GMT+03:00)', 'a42cfadd-cb48-56d3-a249-d1ecd76794c4', b'0', 'Ankara', 'public', 'Sat Sep 25 2021 00:30:00 GMT+0300 (GMT+03:00)', 'Busy', 'Hasta Randevu'),
(14, '#00a9ff', '#00a9ff', '2', 'time', '#ffffff', '#00a9ff', '', 'Mon Sep 27 2021 19:30:00 GMT+0300 (GMT+03:00)', 'e2aef42d-c825-5c6c-9c40-757ec2b51a7c', NULL, 'Ankara', 'public', 'Mon Sep 27 2021 15:30:00 GMT+0300 (GMT+03:00)', 'Busy', 'İlaççççç');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `stock`
--

CREATE TABLE `stock` (
  `sid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `depo` int(11) NOT NULL,
  `product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `stock`
--

INSERT INTO `stock` (`sid`, `amount`, `depo`, `product`) VALUES
(2, 100, 1, 2),
(3, 50, 1, 3),
(5, 20, 1, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `us`
--

CREATE TABLE `us` (
  `id` varchar(255) NOT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `us`
--

INSERT INTO `us` (`id`, `browser`, `login_time`, `username`) VALUES
('7b55b4ce-80dd-48ea-a7fe-8838f61530b4', 'Chrome', '2021-10-03 19:07:17', 'USERNAME-1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `token_expired` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`id`, `email`, `enabled`, `first_name`, `last_name`, `password`, `phone`, `status`, `token_expired`) VALUES
(1, 'ali@gmail.com', b'1', 'Ali', 'Bilmem', '$2a$10$RZ1xEc3MSJiJreBBSIhsse9Io0KZrwZi.cZ.bvofImxAgJMmzfLhe', '78578567', b'0', b'1'),
(2, 'veli@mail.com', b'1', 'Veli', 'Yaz', '$2a$10$QwOUJGsTUheHwQZN9XTGeeUTEz3VvW2IEs3wLeLh3kdpGjFxanEpW', '535656', b'0', b'1'),
(3, 'demet@mail.com', b'1', 'Demet', 'Koçhan', '$2a$10$z//wMb9FcCSJbiAyUpU7s.Rh5CLuTiG/pP6O4Hj4w/wOGz/.F9.xC', '564564', b'0', b'1'),
(4, 'kenan@mail.com', b'1', 'Kenan', 'Yılmaz', '$2a$10$8uavAMA6SUFQDssVmCpYquIFqon250MKrMg2j8L//fMW5t3z2ZtWu', '986678', b'0', b'1'),
(5, 'zehra@mail.com', b'1', 'Zehra', 'Kaya', '$2a$10$xkCqqYpmYMOm6TirGpJiRu3Uea6VQNsZ4KCq3D28FXGDeKwKLCTku', '78585857', b'0', b'1'),
(6, 'serkan@mail.com', b'1', 'Serkan', 'Kaya', '$2a$10$f1TcuqbGb.Bj2RkYp80o3uE86/vrXg8BSgGeMoMRoXfpC41vPG2Ge', '09876', b'0', b'1'),
(7, 'ilayda@mail.com', b'1', 'ilayda', 'güler', '$2a$10$.dyxQgnhv8DS6SMkoU544uXRICCSfPvGllVRqt3rzIO2n/MSoN9a.', '425425', b'0', b'1'),
(8, 'ezgi@mail.com', b'1', 'Ezgi', 'Kemer', '$2a$10$dxC53bDbrZ/8cS4UR/u.hOtVbirZPA2UqHSo0JT7U11H0C9jLlfgW', '487726', b'0', b'1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 3),
(5, 2),
(6, 3),
(7, 3),
(8, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `vendor`
--

CREATE TABLE `vendor` (
  `id` int(11) NOT NULL,
  `vendor_email` varchar(255) DEFAULT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  `vendor_phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `vendor`
--

INSERT INTO `vendor` (`id`, `vendor_email`, `vendor_name`, `vendor_phone`) VALUES
(1, 'kerem@mail.com', 'A', '4864864865'),
(3, 'cnn@mail.com', 'Canan', '888888'),
(4, 'erkan@mail.com', 'Erkan', '555555'),
(5, 'zzzz@mail.com', 'Zeki', '95959'),
(11, 'ahmet@mail.com', 'Ahmet', '98797'),
(12, 'kemal@mail.com', 'kemallll', '968046'),
(13, 'sinan@mail.com', 'Sinan', '789345');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`aid`);

--
-- Tablo için indeksler `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`aid`),
  ADD UNIQUE KEY `UK_io8tye9u1sq921yfel0r7uibh` (`cip_no`);

--
-- Tablo için indeksler `box`
--
ALTER TABLE `box`
  ADD PRIMARY KEY (`box_id`);

--
-- Tablo için indeksler `box_customer`
--
ALTER TABLE `box_customer`
  ADD PRIMARY KEY (`bc_id`);

--
-- Tablo için indeksler `buying`
--
ALTER TABLE `buying`
  ADD PRIMARY KEY (`bid`);

--
-- Tablo için indeksler `calendar_info`
--
ALTER TABLE `calendar_info`
  ADD PRIMARY KEY (`cid`);

--
-- Tablo için indeksler `category_group`
--
ALTER TABLE `category_group`
  ADD PRIMARY KEY (`cg_id`);

--
-- Tablo için indeksler `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`);

--
-- Tablo için indeksler `customer_pay_sale`
--
ALTER TABLE `customer_pay_sale`
  ADD PRIMARY KEY (`cp_id`);

--
-- Tablo için indeksler `depo`
--
ALTER TABLE `depo`
  ADD PRIMARY KEY (`depo_id`);

--
-- Tablo için indeksler `farm_stock`
--
ALTER TABLE `farm_stock`
  ADD PRIMARY KEY (`fsid`);

--
-- Tablo için indeksler `farm_vaccine`
--
ALTER TABLE `farm_vaccine`
  ADD PRIMARY KEY (`farm_vaccine_id`);

--
-- Tablo için indeksler `laboratuvar`
--
ALTER TABLE `laboratuvar`
  ADD PRIMARY KEY (`lid`);

--
-- Tablo için indeksler `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`log_id`);

--
-- Tablo için indeksler `new_case`
--
ALTER TABLE `new_case`
  ADD PRIMARY KEY (`case_id`);

--
-- Tablo için indeksler `pet_stock`
--
ALTER TABLE `pet_stock`
  ADD PRIMARY KEY (`psid`);

--
-- Tablo için indeksler `pet_vaccine`
--
ALTER TABLE `pet_vaccine`
  ADD PRIMARY KEY (`pet_vaccine_id`);

--
-- Tablo için indeksler `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Tablo için indeksler `retail_sale`
--
ALTER TABLE `retail_sale`
  ADD PRIMARY KEY (`rid`);

--
-- Tablo için indeksler `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `schedule_calendar`
--
ALTER TABLE `schedule_calendar`
  ADD PRIMARY KEY (`sid`);

--
-- Tablo için indeksler `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`sid`);

--
-- Tablo için indeksler `us`
--
ALTER TABLE `us`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users_roles`
--
ALTER TABLE `users_roles`
  ADD KEY `FKt4v0rrweyk393bdgt107vdx0x` (`role_id`),
  ADD KEY `FKgd3iendaoyh04b95ykqise6qh` (`user_id`);

--
-- Tablo için indeksler `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `agenda`
--
ALTER TABLE `agenda`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `animal`
--
ALTER TABLE `animal`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `box`
--
ALTER TABLE `box`
  MODIFY `box_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `box_customer`
--
ALTER TABLE `box_customer`
  MODIFY `bc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `buying`
--
ALTER TABLE `buying`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `calendar_info`
--
ALTER TABLE `calendar_info`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `category_group`
--
ALTER TABLE `category_group`
  MODIFY `cg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `customer`
--
ALTER TABLE `customer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `customer_pay_sale`
--
ALTER TABLE `customer_pay_sale`
  MODIFY `cp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `depo`
--
ALTER TABLE `depo`
  MODIFY `depo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `farm_stock`
--
ALTER TABLE `farm_stock`
  MODIFY `fsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `farm_vaccine`
--
ALTER TABLE `farm_vaccine`
  MODIFY `farm_vaccine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `laboratuvar`
--
ALTER TABLE `laboratuvar`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `log`
--
ALTER TABLE `log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- Tablo için AUTO_INCREMENT değeri `new_case`
--
ALTER TABLE `new_case`
  MODIFY `case_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `pet_stock`
--
ALTER TABLE `pet_stock`
  MODIFY `psid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `pet_vaccine`
--
ALTER TABLE `pet_vaccine`
  MODIFY `pet_vaccine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `retail_sale`
--
ALTER TABLE `retail_sale`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `schedule_calendar`
--
ALTER TABLE `schedule_calendar`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `stock`
--
ALTER TABLE `stock`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `FKgd3iendaoyh04b95ykqise6qh` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKt4v0rrweyk393bdgt107vdx0x` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
