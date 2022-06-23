-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 23 Haz 2022, 10:15:47
-- Sunucu sürümü: 10.4.24-MariaDB
-- PHP Sürümü: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `eczane`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '123456');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `eczaneler`
--

CREATE TABLE `eczaneler` (
  `İlce` text NOT NULL,
  `EczaneAdi` text NOT NULL,
  `Telefon` text NOT NULL,
  `Adres` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `eczaneler`
--

INSERT INTO `eczaneler` (`İlce`, `EczaneAdi`, `Telefon`, `Adres`) VALUES
('Merkez', 'Akın Eczanesi', '02842123906', 'Saraçlar Caddesi, No:26 Merkez / Edirne'),
('Merkez', 'Altıerler Eczanesi', '02842362209', 'Kocasinan Mahallesi, Muammer Aksoy Caddesi, Firuz Apt. A-Blok No:81 Merkez / Edirne (Özel Ekol Hastanesi Karşısı)'),
('Merkez', 'Aytaç Eczanesi', '02842122424', 'Londra Asfaltı No:35 Merkez / Edirne (Bankalar Durağı Sultan Otel Karşısı)'),
('Merkez', 'Baca Eczanesi', '02842357322', 'Kocasinan Mahallesi, Akan 3 Apt No:13 Merkez / Edirne'),
('Merkez', 'Baraj Eczanesi', '02842364017', 'Birinci Murat Mahallesi, Zübeyde Hanım Caddesi, 36 Sokak, Elbiko 84 Apt. D-11 Merkez / Edirne'),
('Merkez', 'Begüm Eczanesi', '02842250730', 'Fatih Mahallesi, Ümran Akkan Caddesi, No:28/A-B Merkez / Edirne'),
('Merkez', 'Berkay Eczanesi', '02842355041', 'Fatih Mahallesi, Ümran Akkan Caddesi, 44 Sokak, Fatih Konakları No:9 Merkez / Edirne'),
('Merkez', 'Çakbil Eczanesi', '02842253195', 'Talatpaşa Caddesi, No:200 Merkez / Edirne'),
('Merkez', 'Can Eczanesi', '02845021128', 'Fatih Mahallesi, 10104. Cadde, Aliva Residance No:14/74 Merkez / Edirne (Sultan 1. Murat Devlet Hastanesi Karşısı)'),
('Merkez', 'Çebe Eczanesi', '02842255780', 'Yancıkçı Şahin Mahallesi, Atatürk Caddesi No:2/B Merkez / Edirne (Eski SSK Hastanesi Karşısı)'),
('Merkez', 'Cent Eczanesi', '02842252003', 'Sabuni Mahallesi, Çilingirler Caddesi, 25-Z09 Merkez / Edirne'),
('Merkez', 'Çiftçi Eczanesi', '022842350048', 'Fatih Mahallesi, 10104. Cadde No:1/8 Merkez / Edirne (Sultan 1. Murat Devlet Hastanesi Yolu Üzeri)'),
('Merkez', 'Deniz Eczanesi', '02842131406', 'Sarıcapaşa Mahallesi, Çukur Sokak No:25/11 Aşiyan Yokuşu Merkez / Edirne'),
('Merkez', 'Denizim Eczanesi', '02842140008', 'Abdurrahman Mahallesi, Tarlakapı Caddesi No:10-Z01 Merkez / Edirne (Değirmen Kavşağı 2M Migros Yanı)'),
('Merkez', 'Derdiman Eczanesi', '02842362238', 'Şükrüpaşa Mahallesi, Ahmet Yalçın Sarıgöl Caddesi, Şehit Yavuz Zogo Apt. No:16/11 Merkez / Edirne'),
('Merkez', 'Dinçer Eczanesi', '02842137388', 'Sükrüpaşa Mahallesi, Bahriye Üçok Caddesi, Gelibolu Sokak No:4 Merkez / Edirne'),
('Merkez', 'Doktoroğlu Eczanesi', '02845020005', 'Şükrüpaşa Mahallesi, Ahmet Yalçın Sarıgöl Caddesi No:11/12 Merkez / Edirne (Panorama Evleri Karşısı)'),
('Merkez', 'Doruk Eczanesi', '02842129601', 'Kocasinan Mahallesi, Şevki Arman Caddesi, No:10 Merkez / Edirne'),
('Merkez', 'Edirne Hayat Eczanesi', '02842253175', 'İstasyon Mahallesi, Gelincik Sokak No:12 Merkez / Edirne'),
('Merkez', 'Eray Eczanesi', '02842251523', 'Sabuni Mahallesi, Çilingirler Caddesi No:44 Merkez / Edirne'),
('Merkez', 'Eren Savaşçı Eczanesi', '02842366364', '1. Murat Mahallesi, Günaydın Sokak, Çakır 1 Apt. No:10 Merkez / Edirne (Margi Outlet Yanı)'),
('Merkez', 'Erkin Eczanesi', '02842124604', 'Şükrüpaşa Mahallesi, Bahriye Üçok Caddesi, No:28 Merkez / Edirne (Şükrüpaşa Aile Hekimliği Karşısı)'),
('Merkez', 'Ezgi Engin Eczanesi', '02842132547', 'Koop. Evleri Zübeyde Hanım Caddesi, Armağan Sitesi No:12/B Merkez / Edirne'),
('Merkez', 'Filiz Eczanesi', '02842124835', 'Sabuni Mahallesi, Kurt Dereli Mehmet Sokak, Muhittin Gülen İş Merkezi No:73 Merkez / Edirne (Ordu Evi Karşısı, Talatpaşa Asfaltı No:16/B)'),
('Merkez', 'Fıçıcıoğlu Eczanesi', '02842365505', 'Fatih Mahallesi, 27 Sokak, Nitaş Apt. No:3 Merkez / Edirne'),
('Merkez', 'Giray Eczanesi', '02842358060', 'Fatih Mahallesi, 10104. Cadde, Aliva Residence No:14/75 Merkez / Edirne (Sultan 1. Murat Devlet Hastanesi Karşısı)'),
('Merkez', 'Gizem Birkan Eczanesi', '02842356125', 'Şükrüpaşa Mahallesi, Bahriye Üçok Caddesi, Ela Apt. No:49 Merkez / Edirne'),
('Merkez', 'Gölet Eczanesi', '02842352023', 'Şükrüpaşa Mahallesi, Bülent Ecevit Bulvarı Uzun Kardeşler Sitesib-Blok No:15/B Merkez / Edirne'),
('Merkez', 'Gülden Eczanesi', '02842352800', '1.Murat Mahallesi, Güngör Mazlum Caddesi, Zübeyde Hanım Sitesi A Blok No:11 Merkez / Edirne (Ağız Ve Diş Sağlığı Hastanesi Yanı)'),
('Merkez', 'Günaydın Eczanesi', '02842362244', '1.Murat Mahallesi, Haşim İşcan Caddesi, Mavi Elif Sitesi C-Blok No:1/A Merkez / Edirne'),
('Merkez', 'Güneşim Eczanesi', '02843363636', 'Şükrüpaşa Mahallesi, Abdi İpekçi Caddesi, Tunasu Apt. No:11/14 Merkez / Edirne (Özgür Çocuklar Parkı Karşısı)'),
('Merkez', 'Gürak Eczanesi', '02842363737', 'Şükrüpaşa Mahallesi, Mithat Vardar Caddesi, D-Blok No:17 Merkez / Edirne (Mevlana Camii Karşısı)'),
('Merkez', 'Gürkan Eczanesi', '02842363111', 'Kocasinan Mahallesi, Muammer Aksoy Caddesi, 34 Sokak, Manolya Kent Apt. Altı Merkez / Edirne'),
('Merkez', 'Güven Eczanesi', '02842251543', 'Saraçlar Caddesi, No:9 Merkez / Edirne'),
('Merkez', 'Hatipoğlu Eczanesi', '02842138822', 'Abdurahman Mahallesi, Uzunkaldırım Caddesi, No:23 Merkez / Edirne'),
('Merkez', 'İncinur Eczanesi', '02842251435', 'Kıyık Caddesi, No:160 Merkez / Edirne'),
('Merkez', 'Kaya Eczanesi', '02842137759', 'Sarıcapaşa Mahallesi, Çukurçeşme Sokak No:7 Merkez / Edirne'),
('Merkez', 'Kıyık Eczanesi', '02842120096', 'Kıyık Caddesi, No:142/1 Merkez / Edirne'),
('Merkez', 'Koray Eczanesi', '02842126329', 'Sabunı Mahallesi, Yeni Çarşı No:21 Merkez / Edirne'),
('Merkez', 'Korkut Eczanesi', '02842255999', 'Sarıcapaşa Mahallesi, Çukurçeşme Sokak No:17 Merkez / Edirne (Eski Devlet Hastanesi Karşısı)'),
('Merkez', 'Kutlutaş Eczanesi', '02842350085', 'Kocasinan Mahallesi, Çamlık Konutları C Blok No:11 Merkez / Edirne'),
('Merkez', 'Mehmet Ay Eczanesi', '02842251503', 'Çilingirler Carsısı No:74 Merkez / Edirne'),
('Merkez', 'Mercan Eczanesi', '02842147292', 'Mithatpaşa Mahallesi, Londra Asfaltı No:25/B Merkez / Edirne'),
('Merkez', 'Meriç Eczanesi', '02842127961', 'Sabuni Mahallesi, İkikapılı Han Caddesi, Muhittin Günel İş Merkezi B-1 No:14 Merkez / Edirne'),
('Merkez', 'Murat Eczanesi', '02842123252', 'Sarıcapaşa Mahallesi, Çukur Çeşme Sokak No:3/1 Merkez / Edirne'),
('Merkez', 'Nar Eczanesi', '02842363435', 'Fatih Mahallesi, Alparslan Türkeş Caddesi No:14/76 Merkez / Edirne (1. Murat Devlet Hastanesi Karşısı)'),
('Merkez', 'Ömür Eczanesi', '02842252511', 'Çilingirler Çarşısı No:10/A Merkez / Edirne'),
('Merkez', 'Özdemir Eczanesi', '02842350002', 'Fatih Mahallesi, Ümran Akkan Caddesi, No:17/B Merkez / Edirne'),
('Merkez', 'Özgür Eczanesi', '02842148620', 'Dilaver Bey Mahallesi, Osmaniye Caddesi, No:89 Merkez / Edirne'),
('Merkez', 'Pamuk Eczanesi', '02842360303', 'Şükrüpaşa Mahallesi, Abdi İpekçi Caddesi No:56 İç Kapı No:17 Merkez / Edirne'),
('Merkez', 'Pirko Eczanesi', '02842255838', 'Mithatpaşa Mahallesi, Balıkpazarı Caddesi, No:30/C Merkez / Edirne'),
('Merkez', 'Reyhan Eczanesi', '02842253989', 'Dilaverbey Mahallesi, Balıkpazarı Caddesi No:39 Merkez / Edirne'),
('Merkez', 'Rukiye Kantar Eczanesi', '02842134647', 'Şükrüpaşa Mahallesi, Mithat Vardar Caddesi, 20 Z.01 (Tokatlılar Mevkii) Merkez / Edirne'),
('Merkez', 'Sağlam Eczanesi', '02842365588', 'Koca Sinan Mahallesi, Muammer Aksoy Caddesi, Ersın Nızam Apt. No:1 Merkez / Edirne'),
('Merkez', 'Sağlık Eczanesi', '02842252504', 'Sarıcapaşa Mahallesi, Çukurçesme Sokak No:2 Merkez / Edirne (Eski Devlet Hastanesi Karşısı)'),
('Merkez', 'Şahin Eczanesi', '02842133255', 'Eski İstanbul Caddesi No:57 Merkez / Edirne'),
('Merkez', 'Sancaklı Eczanesi', '0284212046', 'Dilaverbey Mahallesi, Balıkpazarı Caddesi, No:43/B Merkez / Edirne (Kaleiçi Özar Market Yanı)'),
('Merkez', 'Selimiye Eczanesi', '02842250833', 'Fatih Mahallesi, Ümran Akkan Caddesi, No:14 Merkez / Edirne'),
('Merkez', 'Seray Eczanesi', '02849991990', 'Şükrüpaşa Mahallesi, Bahriye Üçok Caddesi, No:61 Merkez / Edirne'),
('Merkez', 'Şeren Eczanesi', '02842268118', 'Barutluk Mahallesi, Ahmet Taşçı Caddesi, Nazmi Uzun Sokak, (Eski Toki İş Merkezi) No:21/9 Merkez / Edirne'),
('Merkez', 'Serhat Eczanesi', '02842137849', 'Kıyık Caddesi, No:83/A Merkez / Edirne'),
('Merkez', 'Şifa Eczanesi', '02842254636', 'Çavuşbey Mahallesi, Talatpaşa Caddesi, No:196/8 Merkez / Edirne'),
('Merkez', 'Şimşek Eczanesi', '02842363377', 'Tıp Fakültesı Kavşağı D-100 Karayolu Üzeri No:2 Merkez / Edirne (Tıp Fakültesi Hastanesi Karşısı)'),
('Merkez', 'Sözer Eczanesi', '02848989', 'Talatpaşa Mahallesi, Uzun Kaldırım Caddesi, Mezarlık Sokak No:5/A Merkez / Edirne'),
('Merkez', 'Süer Eczanesi', '02842354777', 'Kocasinan Mahallesi, Muammer Aksoy Caddesi, Yorulmaz Apt. No:48 Merkez / Edirne (Ekol Hastanesi Yanı)'),
('Merkez', 'Taşkıran Eczanesi', '02842120039', 'Sabuni Mahallesi, Çilingirler Caddesi No:40 Merkez / Edirne'),
('Merkez', 'Tekin Eczanesi', '02842251064', 'Yancıkçı Şahin Mahallesi, Atatürk Caddesi, No:1 Merkez / Edirne (Eski SSK Hastanesi Karşısı)'),
('Merkez', 'Trakya Eczanesi', '02842121328', 'Sarıcapaşa Mahallesi, Kadirhane Caddesi No:15 Merkez / Edirne (Özel Trakya Hastanesi Acil Karşısı)'),
('Merkez', 'Tülin Eczanesi', '02842120757', 'Nısancı Paşa Mahallesi, Kıyık Caddesi, No:1 Merkez / Edirne'),
('Merkez', 'Ülkü Eczanesi', '02842124596', 'Hükümet Caddesi, Gürkan Is Hanı No:18 Merkez / Edirne'),
('Merkez', 'Umut Eczanesi', '02842141573', 'Şükrüpaşa Mahallesi, Şehit Üsteğmen Efkan Yıldırım Caddesi, No:14 Merkez / Edirne'),
('Merkez', 'Uygar Eczanesi', '02842354212', 'Fatih Mahallesi, Ali Rıza Ataktürk Caddesi, No:1 Merkez / Edirne'),
('Merkez', 'Uzun Eczanesi', '02842360055', 'Şükrüpaşa Mahallesi, Ahmet Yalçın Sarıgöl Caddesi, Şehit Yavuz Zogo Apt. No:16 D:12 Merkez / Edirne (Özgür Çocuklar Parkı Karşısı, Panorama Evleri Yanı)'),
('Merkez', 'Yaşam Eczanesi', '02842133999', 'Medrese Ali Bey Mahallesi, Çukur Çeşme Sokak No:1 Merkez / Edirne'),
('Enez', 'Hayat Eczanesi', '02848116564', 'Yeni Mahallesi, Milli Egemenlik Caddesi, No:9/A Enez / Edirne'),
('Enez', 'Sağlık Eczanesi', '02848116090', 'Kale Caddesi, No:9/A Enez / Edirne'),
('Enez', 'Saygın Eczanesi', '02848116147', 'Gazi Ömerbey Mahallesi, Kale Caddesi, No:11 Enez / Edirne'),
('Havsa', 'Derman Eczanesi', '02843361549', '23 Kasım Caddesi, No:4/D Havsa / Edirne'),
('Havsa', 'Edirne Eczanesi', '02843360022', 'Yeni Mahallesi, Fatih Caddesi, No:287/1 Havsa'),
('Havsa', 'Gün Eczanesi', '02843361325', 'Hacı İsa Mahallesi, Fatih Caddesi, No:6 Havsa / Edirne'),
('Havsa', 'Havsa Eczanesi', '02843361045', 'Fatih Caddesi, No:14 Havsa / Edirne'),
('Havsa', 'Yavuz Eczanesi', '02843362473', 'Uzunköprü Caddesi, No:5/B Havsa / Edirne'),
('İpsala', 'Çınar Eczanesi', '02846161070', 'Serhat Pasjı No:212 İpsala / Edirne'),
('İpsala', 'Coşkun Eczanesi', '02846161050', 'Bayrambey Mahallesi, Enez Caddesi, No:2 İpsala / Edirne'),
('İpsala', 'Devranoğlu Eczanesi', '02846161117', 'Bayrambey Mahallesi, Enez Caddesi, No:28 İpsala / Edirne'),
('İpsala', 'Uysal Eczanesi', '02846161604', 'Bayrambey Mahallesi, Hastane Caddesi, No:5 İpsala / Edirne'),
('Keşan', 'Akar Eczanesi', '02847147173', 'Yukarı Zaferiye Mahallesi, Hastane Caddesi, No:26/2 Keşan / Edirne'),
('Keşan', 'Alkan Eczanesi', '02847143514', 'Y.Zaferiye Mahallesi, Şehit Piyade Uzman Çavuş Ergin Sokak No:42/B Keşan / Edirne'),
('Keşan', 'Banguoğlu Eczanesi', '02847140000', 'Mustafa Kemal Paşa Mahallesi, Rasim Ergene Caddesi, Ensa Apt. No:103/20 Keşan / Edirne'),
('Keşan', 'Bilge Nur Eczanesi', '02847141535', 'Yukarı Zaferiye Mahallesi, Şehit Piyade Çavuş Cahit Ergin Sokak No:30 Keşan / Edirne'),
('Keşan', 'Birgül Eczanesi', '02847148420', 'Demirciler Caddesi, No:23 Keşan / Edirne'),
('Keşan', 'Deniz Eczanesi', '02847140013', 'Aşağı Zaferiye Mahallesi, Mithat Gücüyener Caddesi, No:24/A Keşan / Edirne'),
('Keşan', 'Ebru Eczanesi', '02847154004', 'İnönü Caddesi, No:71/1 Keşan / Edirne'),
('Keşan', 'Erkan Eczanesi', '02847149790', 'Bakırcılar Caddesi, No:33 Keşan / Edirne'),
('Keşan', 'Gökhan Eczanesi', '02847147964', 'Ispat Cami Mahallesi, Kurtuluş Caddesi, No:103/B Keşan / Edirne'),
('Keşan', 'Gölemen Eczanesi', '02847145711', 'Demirciler Caddesi, No:25 Keşan / Edirne'),
('Keşan', 'Güven Eczanesi', '02847152361', 'Demirciler Caddesi, No:13 Keşan / Edirne'),
('Keşan', 'Hayat Eczanesi', '02847145548', 'Anafartalar Caddesi, No:86 A/8 Keşan / Edirne'),
('Keşan', 'Kanık Eczanesi', '02847153840', 'Rasım Ergene Caddesi, Sapçı Apt. No:36 Keşan / Edirne'),
('Keşan', 'Kuran Eczanesi', '02847151550', 'Aşağı Zaferiye Mahallesi, Mithat Gücüyener Caddesi, No:31 Keşan / Edirne'),
('Keşan', 'Mankaliye Eczanesi', '02847146162', 'Cumhuriyet Mahallesi, Muhtar Sokak, Muzaffer Güven Apt No:6/A Keşan / Edirne'),
('Keşan', 'Meriç Eczanesi', '02847142556', 'Yukarı Zaferiye Mahallesi, Demirciler Caddesi, Ahmet Öner İşhanı No:6 Keşan / Edirne'),
('Keşan', 'Merkez Eczanesi', '02847145579', 'Büyük Cami Mahallesi, Fevzi Çakmak Caddesi, No:32 Keşan / Edirne'),
('Keşan', 'Murat Eczanesi', '02847141044', 'Büyük Cami Mahallesi, Dr.Tayyip Akalın Caddesi, No:14/A Keşan'),
('Keşan', 'Ömür Eczanesi', '02847143516', 'Demirciler Caddesi, No:3/A 1 Keşan / Edirne'),
('Keşan', 'Pınar Eczanesi', '02847154353', 'Kurtuluş Caddesi, No:74-A/9 Keşan / Edirne'),
('Keşan', 'Serap Eczanesi', '02847151494', 'Yukarı Zaferiye Mahallesi, Çetin Emeç Caddesi, No:2 Keşan / Edirne'),
('Keşan', 'Simge Eczanesi', '02847148855', 'Ispat Cami Mahallesi, Kurtuluş Caddesi, No:73/A Keşan / Edirne'),
('Keşan', 'Sultan Eczanesi', '02847142121', 'Ispat Cami Mahallesi, İstiklal Caddesi, Öztarak Apt. No:1 Keşan / Edirne'),
('Keşan', 'Toker Eczanesi', '02847143565', 'Yukarı Zaferiye Mahallesi, Necati Iscan Caddesi, No:1 Keşan / Edirne'),
('Keşan', 'Türkkal Eczanesi', '02847149344', 'Aşağı Zaferiye Mahallesi, Evreşe Caddesi, No:1/E Blok No:2 Keşan / Edirne'),
('Keşan', 'Uğur Eczanesi', '02847147492', 'Fevzi Çakmak Caddesi, No:1 Keşan / Edirne'),
('Keşan', 'Uysal Eczanesi', '02847149020', 'Devlet Hastanesi Karşısı No:391 Keşan / Edirne'),
('Keşan', 'Yeni Eczanesi', '02847144430', 'İnönü Caddesi, No:21 Keşan / Edirne'),
('Lalapaşa', 'Beyhan Eczanesi', '02843214082', 'Merkez Mahallesi, Adem Yavuz Sokak, Yakup Usta Caddesi, No:1/B Lalapaşa / Edirne'),
('Lalapaşa', 'Sevil Eczanesi', '02843214032', 'Cumhuriyet Caddesi, No:36/B Lalapaşa / Edirne'),
('Meriç', 'Öden Eczanesi', '02844151419', 'Cumhuriyet Caddesi, No:6 Meriç / Edirne'),
('Meriç', 'Yeni Meriç Eczanesi', '02844151051', 'Artezyan Caddesi, No:1 Meriç / Edirne'),
('Süloğlu', 'İnci Eczanesi', '02843113366', 'Şafak Mahallesi, Edirne Caddesi, No:21/1 Süloğlu / Edirne'),
('Süloğlu', 'Süloğlu Eczanesi', '02843113689', 'Şafak Mahallesi, Edirne Caddesi, No:109/1 Süloğlu / Edirne'),
('Uzunköprü', 'Arzu Eczanesi', '02845139722', 'Muradiye Mahallesi, Kurtuluş Caddesi, No:11/B Uzunköprü / Edirne'),
('Uzunköprü', 'Aylin Eczanesi', '02845137235', 'Tellı Çesme Meydanı No:13/A Uzunköprü / Edirne'),
('Uzunköprü', 'Aytin Eczanesi', '02845132428', 'Muradiye Mahallesi, Keşan Caddesi, No:25 Uzunköprü / Edirne'),
('Uzunköprü', 'Başak Eczanesi', '02845132646', 'Rıza Efendi Mahallesi, Gazi Caddesi, No:92 Uzunköprü / Edirne'),
('Uzunköprü', 'Bizim Eczanesi', '02845131756', 'Kavak Mahallesi, Bülent Çakır Caddesi, No:52/1 Uzunköprü / Edirne'),
('Uzunköprü', 'Çağla Eczanesi', '02845135822', 'Anabacı Caddesi, No:39 Uzunköprü / Edirne'),
('Uzunköprü', 'Deva Eczanesi', '02845138540', 'Gazi Caddesi, No:98 Uzunköprü / Edirne'),
('Uzunköprü', 'Gencan Eczanesi', '02845135575', 'Habib Hoca Mahallesi, Yusuf Kirez Sokak No:8 Uzunköprü / Edirne'),
('Uzunköprü', 'Güneş Eczanesi', '02845136750', 'Gazi Caddesi, Tallı Çesme Meydanı No:50 Uzunköprü / Edirne'),
('Uzunköprü', 'Halit Orhon Eczanesi', '02845131333', 'Habip Hoca Mahallesi, Yusuf Kirez Sokak No:11 Uzunköprü / Edirne'),
('Uzunköprü', 'Hayat Eczanesi', '02845131172', 'Muradiye Cami Mahallesi, Cumhuriyet Caddesi, No:22 Uzunköprü / Edirne'),
('Uzunköprü', 'Kırkpınar Eczanesi', '02845131788', 'Keşan Caddesi, No:90/C Uzunköprü / Edirne'),
('Uzunköprü', 'Manga Eczanesi', '02845131295', 'Gazi Caddesi No:102 Uzunköprü / Edirne'),
('Uzunköprü', 'Meriç Eczanesi', '02845131512', 'Anabacı Caddesi, No:80/A Uzunköprü / Edirne'),
('Uzunköprü', 'Müge Eczanesi', '02845132161', 'Muradiye Mahallesi, Gazi Turhan Bey Caddesi, Altınkoza Sitesi No:65 C-Blok Uzunköprü / Edirne'),
('Uzunköprü', 'Özge Eczanesi', '02845137788', 'Gazi Caddesi, Kovancı Apt No:94/B Uzunköprü / Edirne'),
('Uzunköprü', 'Şifa Eczanesi', '02845133084', 'Gazi Caddesi, No:20 Uzunköprü / Edirne'),
('Uzunköprü', 'Sözer Eczanesi', '02845137833', 'Gazi Caddesi, No:48 Uzunköprü / Edirne'),
('Uzunköprü', 'Tufan Eczanesi', '02845133823', 'Keşan Caddesi, Bodur Pasajı No:10 Uzunköprü / Edirne'),
('Uzunköprü', 'Uğur Eczanesi', '02845132233', 'Kenen Evren Caddesi, No:31/A Uzunköprü / Edirne'),
('Uzunköprü', 'Vatan Eczanesi', '02845131062', 'Muradiye Mahallesi, Keşan Caddesi, No:49/ Uzunköprü / Edirne'),
('Uzunköprü', 'Yavuz Eczanesi', '02845131828', 'Muradiye Mahallesi, Gazi Caddesi, No:69/C Uzunköprü / Edirne');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tanimlieczaneler`
--

CREATE TABLE `tanimlieczaneler` (
  `id` int(11) NOT NULL,
  `İlce` text NOT NULL,
  `EczaneAdi` text NOT NULL,
  `Telefon` text NOT NULL,
  `Adres` text NOT NULL,
  `Tarih` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `tanimlieczaneler`
--
ALTER TABLE `tanimlieczaneler`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `tanimlieczaneler`
--
ALTER TABLE `tanimlieczaneler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
