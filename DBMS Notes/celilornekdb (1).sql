-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 16 Kas 2020, 10:56:29
-- Sunucu sürümü: 5.7.31
-- PHP Sürümü: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `celilornekdb`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bolum`
--

DROP TABLE IF EXISTS `bolum`;
CREATE TABLE IF NOT EXISTS `bolum` (
  `bolum_id` int(5) NOT NULL,
  `bolum_adi` varchar(30) CHARACTER SET utf8 NOT NULL,
  `aciklama` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `eposta` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`bolum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `bolum`
--

INSERT INTO `bolum` (`bolum_id`, `bolum_adi`, `aciklama`, `eposta`) VALUES
(1, 'Bil. Müh.', 'Bilgisayar Mühendisliği Bölümü', 'cem@marmara.edu.tr'),
(2, 'Elo. Müh.', 'Elektronik Mühendisliği Bölümü', 'muhammed@marmara.edu.tr'),
(3, 'Bil. Pro.', 'Bilgisayar Programcılığı Bölümü', 'akif@marmara.edu.tr'),
(4, 'Elek. Tek.', 'Elektronik ve Haberleşme Teknolojisi Bölümü', 'selim@marmara.edu.tr');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ders`
--

DROP TABLE IF EXISTS `ders`;
CREATE TABLE IF NOT EXISTS `ders` (
  `ders_id` int(5) NOT NULL,
  `ders_adi` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ders_kodu` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `kredi` int(2) DEFAULT NULL,
  `bolum_id` int(5) DEFAULT NULL,
  PRIMARY KEY (`ders_id`),
  KEY `bolum_id` (`bolum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ders`
--

INSERT INTO `ders` (`ders_id`, `ders_adi`, `ders_kodu`, `kredi`, `bolum_id`) VALUES
(1, 'Veritabanı YS', 'CENG 351', 3, 1),
(2, 'İşletim Sistemleri', 'CENG 341', 3, 1),
(3, 'Nesne Tabanlı Programlama', 'CENG 101', 5, 1),
(4, 'Elektroniğe Giriş', 'EE 101', 2, 2),
(5, 'İstatistik', 'IE 301', 2, 4),
(6, 'Bilgisayar Ağları', 'EE 202', 4, 2),
(7, 'Yazılım Mimari ve Tasarımı', 'CENG 102', 3, 3),
(8, 'Mobil Programlama', 'IE 208', 3, 4),
(9, 'Algoritma ve Programlamaya Giriş', 'CP 299', 2, 4),
(10, 'Ayrık Matematik', 'ENV 299', 3, 3),
(11, 'İnternet Programlama', 'CENG 299', 5, 1),
(12, 'Yaz Stajı', 'EE 299', 1, 2),
(13, 'Gömülü Sistemler', 'EE ', 3, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogrenci`
--

DROP TABLE IF EXISTS `ogrenci`;
CREATE TABLE IF NOT EXISTS `ogrenci` (
  `ogrenci_no` int(5) NOT NULL,
  `adi` varchar(30) CHARACTER SET utf8 NOT NULL,
  `soyadi` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `dogum_yeri` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `bolum_id` int(5) DEFAULT NULL,
  PRIMARY KEY (`ogrenci_no`),
  KEY `bolum_id` (`bolum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ogrenci`
--

INSERT INTO `ogrenci` (`ogrenci_no`, `adi`, `soyadi`, `dogum_yeri`, `bolum_id`) VALUES
(1, 'Ali', 'Arı', 'Eskişehir', 1),
(2, 'Ahmet', 'Sezgin', 'Ankara', 1),
(3, 'Leyla', 'Sezer', 'Kocaeli', 1),
(4, 'Cengiz', 'Türkoğlu', 'Manisa', 2),
(5, 'Aziz', 'Süleymanoğlu', 'İstanbul', 2),
(6, 'Taylan', 'Şanlı', 'Kars', 3),
(7, 'Kemal', 'İnce', 'Adana', 3),
(8, 'Özcan', 'Cemal', 'İzmir', 4),
(9, 'Öznur', 'Kurtoğlu', 'Bolu', 2),
(10, 'Pelin', 'Taş', 'Balıkesir', 4),
(11, 'Sevgi', 'Tan', 'İzmir', 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogrenci_ders`
--

DROP TABLE IF EXISTS `ogrenci_ders`;
CREATE TABLE IF NOT EXISTS `ogrenci_ders` (
  `ogrenci_no` int(5) NOT NULL,
  `ders_id` int(5) NOT NULL,
  `not` float DEFAULT NULL,
  PRIMARY KEY (`ogrenci_no`,`ders_id`),
  KEY `ders_id` (`ders_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ogrenci_ders`
--

INSERT INTO `ogrenci_ders` (`ogrenci_no`, `ders_id`, `not`) VALUES
(1, 1, 3),
(1, 3, 2.5),
(1, 4, 3.5),
(1, 6, 3),
(1, 9, 4),
(1, 10, 3),
(2, 1, 4),
(2, 2, 4),
(2, 3, 4),
(2, 4, 4),
(2, 5, 4),
(2, 6, 4),
(2, 7, 4),
(2, 8, 4),
(2, 9, 4),
(2, 10, 3),
(2, 11, 4),
(3, 1, 4),
(3, 2, 4),
(3, 3, 4),
(3, 4, 4),
(3, 5, 4),
(3, 6, 4),
(3, 7, 4),
(3, 8, 4),
(3, 9, 4),
(3, 10, 3),
(3, 11, 3.5),
(4, 1, 2.5),
(4, 5, 1.5),
(5, 1, 3),
(5, 2, NULL),
(5, 3, NULL),
(5, 5, 1.5),
(5, 11, 3.5),
(5, 13, NULL),
(6, 2, 4),
(7, 1, 2.5),
(7, 2, 3),
(7, 5, 1.5),
(7, 8, 1.5),
(8, 2, 3.5),
(8, 7, 1.5),
(9, 1, NULL),
(10, 2, 4),
(10, 8, 3),
(11, 8, 1);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `ogrenci_ders_listesi`
-- (Asıl görünüm için aşağıya bakın)
--
DROP VIEW IF EXISTS `ogrenci_ders_listesi`;
CREATE TABLE IF NOT EXISTS `ogrenci_ders_listesi` (
`adi` varchar(30)
,`soyadi` varchar(30)
,`ders_adi` varchar(50)
,`ders_kodu` varchar(50)
,`kredi` int(2)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogretmen`
--

DROP TABLE IF EXISTS `ogretmen`;
CREATE TABLE IF NOT EXISTS `ogretmen` (
  `ogretmen_id` int(5) NOT NULL,
  `adi` varchar(30) CHARACTER SET utf8 NOT NULL,
  `soyadi` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `dogum_yeri` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `bolum_id` int(5) DEFAULT NULL,
  PRIMARY KEY (`ogretmen_id`),
  KEY `bolum_id` (`bolum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ogretmen`
--

INSERT INTO `ogretmen` (`ogretmen_id`, `adi`, `soyadi`, `dogum_yeri`, `bolum_id`) VALUES
(1, 'Sezer', 'Can', 'Amasya', 1),
(2, 'Cem', 'Taha', 'İstanbul', 1),
(3, 'Deniz', 'Çimen', 'Mersin', 1),
(4, 'Tuyan', 'Çağlar', 'İstanbul', 2),
(5, 'Furkan', 'Çelen', 'İstanbul', 3),
(6, 'Tahsin', 'Uğur', 'İzmir', 4),
(7, 'Merve', 'Çağlar', 'Amasya', 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogretmen_ders`
--

DROP TABLE IF EXISTS `ogretmen_ders`;
CREATE TABLE IF NOT EXISTS `ogretmen_ders` (
  `ogretmen_id` int(5) NOT NULL,
  `ders_id` int(5) NOT NULL,
  PRIMARY KEY (`ogretmen_id`,`ders_id`),
  KEY `ders_id` (`ders_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ogretmen_ders`
--

INSERT INTO `ogretmen_ders` (`ogretmen_id`, `ders_id`) VALUES
(1, 1),
(3, 2),
(2, 3),
(4, 4),
(7, 5),
(4, 6),
(5, 7),
(6, 8),
(7, 9),
(5, 10),
(1, 11),
(4, 12);

-- --------------------------------------------------------

--
-- Görünüm yapısı `ogrenci_ders_listesi`
--
DROP TABLE IF EXISTS `ogrenci_ders_listesi`;

DROP VIEW IF EXISTS `ogrenci_ders_listesi`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ogrenci_ders_listesi`  AS  select `ogrenci`.`adi` AS `adi`,`ogrenci`.`soyadi` AS `soyadi`,`ders`.`ders_adi` AS `ders_adi`,`ders`.`ders_kodu` AS `ders_kodu`,`ders`.`kredi` AS `kredi` from ((`ogrenci_ders` join `ogrenci` on((`ogrenci_ders`.`ogrenci_no` = `ogrenci`.`ogrenci_no`))) join `ders` on((`ogrenci_ders`.`ders_id` = `ders`.`ders_id`))) ;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `ders`
--
ALTER TABLE `ders`
  ADD CONSTRAINT `ders_ibfk_1` FOREIGN KEY (`bolum_id`) REFERENCES `bolum` (`bolum_id`);

--
-- Tablo kısıtlamaları `ogrenci`
--
ALTER TABLE `ogrenci`
  ADD CONSTRAINT `ogrenci_ibfk_1` FOREIGN KEY (`bolum_id`) REFERENCES `bolum` (`bolum_id`);

--
-- Tablo kısıtlamaları `ogrenci_ders`
--
ALTER TABLE `ogrenci_ders`
  ADD CONSTRAINT `ogrenci_ders_ibfk_1` FOREIGN KEY (`ogrenci_no`) REFERENCES `ogrenci` (`ogrenci_no`),
  ADD CONSTRAINT `ogrenci_ders_ibfk_2` FOREIGN KEY (`ders_id`) REFERENCES `ders` (`ders_id`);

--
-- Tablo kısıtlamaları `ogretmen`
--
ALTER TABLE `ogretmen`
  ADD CONSTRAINT `ogretmen_ibfk_1` FOREIGN KEY (`bolum_id`) REFERENCES `bolum` (`bolum_id`);

--
-- Tablo kısıtlamaları `ogretmen_ders`
--
ALTER TABLE `ogretmen_ders`
  ADD CONSTRAINT `ogretmen_ders_ibfk_1` FOREIGN KEY (`ogretmen_id`) REFERENCES `ogretmen` (`ogretmen_id`),
  ADD CONSTRAINT `ogretmen_ders_ibfk_2` FOREIGN KEY (`ders_id`) REFERENCES `ders` (`ders_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
