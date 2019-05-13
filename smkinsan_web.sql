-- MySQL dump 10.16  Distrib 10.2.23-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: smkinsan_web
-- ------------------------------------------------------
-- Server version	10.2.23-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_agenda`
--

DROP TABLE IF EXISTS `tbl_agenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_agenda` (
  `agenda_id` int(11) NOT NULL AUTO_INCREMENT,
  `agenda_nama` varchar(200) DEFAULT NULL,
  `agenda_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `agenda_deskripsi` text DEFAULT NULL,
  `agenda_mulai` date DEFAULT NULL,
  `agenda_selesai` date DEFAULT NULL,
  `agenda_tempat` varchar(90) DEFAULT NULL,
  `agenda_waktu` varchar(30) DEFAULT NULL,
  `agenda_keterangan` varchar(200) DEFAULT NULL,
  `agenda_author` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`agenda_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_agenda`
--

LOCK TABLES `tbl_agenda` WRITE;
/*!40000 ALTER TABLE `tbl_agenda` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_agenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_album`
--

DROP TABLE IF EXISTS `tbl_album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_album` (
  `album_id` int(11) NOT NULL AUTO_INCREMENT,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT 0,
  `album_cover` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`album_id`),
  KEY `album_pengguna_id` (`album_pengguna_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_album`
--

LOCK TABLES `tbl_album` WRITE;
/*!40000 ALTER TABLE `tbl_album` DISABLE KEYS */;
INSERT INTO `tbl_album` (`album_id`, `album_nama`, `album_tanggal`, `album_pengguna_id`, `album_author`, `album_count`, `album_cover`) VALUES (5,'All','2019-04-11 07:48:47',5,'Ali Yasin',8,'d7cc1de6e463f293789317a7b4eabf49.jpg');
/*!40000 ALTER TABLE `tbl_album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_files`
--

DROP TABLE IF EXISTS `tbl_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_files` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text DEFAULT NULL,
  `file_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_download` int(11) DEFAULT 0,
  `file_data` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_files`
--

LOCK TABLES `tbl_files` WRITE;
/*!40000 ALTER TABLE `tbl_files` DISABLE KEYS */;
INSERT INTO `tbl_files` (`file_id`, `file_judul`, `file_deskripsi`, `file_tanggal`, `file_oleh`, `file_download`, `file_data`) VALUES (13,'Test','testing','2019-04-15 05:05:04','Ali',0,'cbfb0abe6b587743c4bffe0bb8501094.pdf');
/*!40000 ALTER TABLE `tbl_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_galeri`
--

DROP TABLE IF EXISTS `tbl_galeri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_galeri` (
  `galeri_id` int(11) NOT NULL AUTO_INCREMENT,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `galeri_gambar` varchar(40) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`galeri_id`),
  KEY `galeri_album_id` (`galeri_album_id`),
  KEY `galeri_pengguna_id` (`galeri_pengguna_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_galeri`
--

LOCK TABLES `tbl_galeri` WRITE;
/*!40000 ALTER TABLE `tbl_galeri` DISABLE KEYS */;
INSERT INTO `tbl_galeri` (`galeri_id`, `galeri_judul`, `galeri_tanggal`, `galeri_gambar`, `galeri_album_id`, `galeri_pengguna_id`, `galeri_author`) VALUES (4,'Diskusi Pemilihan Ketua Osis','2017-01-21 14:04:53','9b10fa300633f62f105e9b52789fc8f3.jpg',3,1,'M Fikri Setiadi'),(5,'Panitia Pemilu Osis','2017-01-22 04:13:20','0ec0c2f9aae6501d7ed7930995d48b57.jpg',3,1,'M Fikri Setiadi'),(6,'Proses Pemilu Osis','2017-01-22 04:13:43','bfbe6cc1c8096f5f36c68e93da53c248.jpg',3,1,'M Fikri Setiadi'),(7,'Belajar dengan native speaker','2017-01-24 01:26:22','831e5ad43ccc3c851d50c128ff095541.jpg',1,1,'M Fikri Setiadi'),(8,'Diskusi dengan native speaker','2017-01-24 01:27:05','84afbf1d3ad45932f1d7ac47b8a00949.jpg',1,1,'M Fikri Setiadi'),(9,'Foto bareng native speaker','2017-01-24 01:27:28','a99ab060d5d5bf8c96f24fe385f7dd8b.jpg',1,1,'M Fikri Setiadi'),(10,'Foto bareng native speaker','2017-01-24 01:28:40','d70cedba6391b7b3c74b914efd82953f.jpg',1,1,'M Fikri Setiadi'),(11,'Foto bareng native speaker','2017-01-24 01:28:54','10de99f425b9961ce1e87c5e5575f8f4.jpg',1,1,'M Fikri Setiadi'),(12,'Belajar sambil bermain','2017-01-24 01:31:42','9df82241493b94d1e06b461129cf57b2.jpg',4,1,'M Fikri Setiadi'),(13,'Belajar sambil bermain','2017-01-24 01:31:55','5374415f11683ad6dd31572a7bbf8a7b.jpg',4,1,'M Fikri Setiadi'),(14,'Belajar komputer programming','2017-01-24 01:32:24','82b91bd35706b21c3ab04e205e358eb6.jpg',4,1,'M Fikri Setiadi'),(15,'Belajar komputer programming','2017-01-24 01:32:34','93048f2a103987bce8c8ec8d6912de06.jpg',4,1,'M Fikri Setiadi'),(16,'Belajar komputer programming','2017-01-24 01:32:44','41f46be181f2f8452c2041b5e79a05a5.jpg',4,1,'M Fikri Setiadi'),(17,'Belajar sambil bermain','2017-01-24 01:33:08','2858b0555c252690e293d29b922ba8e6.jpg',4,1,'M Fikri Setiadi'),(18,'Makan bersama','2017-01-24 01:33:24','90d67328e33a31d3f5eecd7dcb25b55d.jpg',4,1,'M Fikri Setiadi'),(19,'test','2019-04-11 07:49:48','73b578783d0157802157bcfc191998e6.jpg',5,5,'Ali Yasin'),(21,'test','2019-04-15 07:35:39','f2bce0e181b736af86ea9c71001f0fc2.jpg',5,5,'Ali Yasin'),(22,'test','2019-04-15 07:36:13','1fb0541bba79f82eaa616d4e1c8a065d.jpg',5,5,'Ali Yasin'),(23,'test','2019-04-15 07:37:21','1424664da1ed9938bc96e90b7bd39245.jpg',5,5,'Ali Yasin'),(25,'test','2019-04-15 07:38:20','347a4f402cc8848505da6b72c161ad30.jpg',5,5,'Ali Yasin'),(26,'test','2019-04-15 07:38:38','7be54b07929e0bf7c1bf90dfc4853379.jpg',5,5,'Ali Yasin'),(27,'test','2019-04-15 07:38:55','6838fd18fdadc775f00da4991039ab18.jpg',5,5,'Ali Yasin'),(28,'test','2019-04-15 07:39:08','ed1becf80cfdffab9ad97855bb6e3424.jpg',5,5,'Ali Yasin');
/*!40000 ALTER TABLE `tbl_galeri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_guru`
--

DROP TABLE IF EXISTS `tbl_guru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_guru` (
  `guru_id` int(11) NOT NULL AUTO_INCREMENT,
  `guru_nip` varchar(30) DEFAULT NULL,
  `guru_nama` varchar(70) DEFAULT NULL,
  `guru_jenkel` varchar(2) DEFAULT NULL,
  `guru_tmp_lahir` varchar(80) DEFAULT NULL,
  `guru_tgl_lahir` varchar(80) DEFAULT NULL,
  `guru_mapel` varchar(120) DEFAULT NULL,
  `guru_photo` varchar(40) DEFAULT NULL,
  `guru_tgl_input` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`guru_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_guru`
--

LOCK TABLES `tbl_guru` WRITE;
/*!40000 ALTER TABLE `tbl_guru` DISABLE KEYS */;
INSERT INTO `tbl_guru` (`guru_id`, `guru_nip`, `guru_nama`, `guru_jenkel`, `guru_tmp_lahir`, `guru_tgl_lahir`, `guru_mapel`, `guru_photo`, `guru_tgl_input`) VALUES (9,'-','Ibu Syarifah','P','test','test','test','26cd95a2fe6961fe9a6db2777d1a14e1.jpeg','2019-04-11 08:07:48');
/*!40000 ALTER TABLE `tbl_guru` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_inbox`
--

DROP TABLE IF EXISTS `tbl_inbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL AUTO_INCREMENT,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text DEFAULT NULL,
  `inbox_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `inbox_status` int(11) DEFAULT 1 COMMENT '1=Belum dilihat, 0=Telah dilihat',
  PRIMARY KEY (`inbox_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_inbox`
--

LOCK TABLES `tbl_inbox` WRITE;
/*!40000 ALTER TABLE `tbl_inbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_inbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_kategori`
--

DROP TABLE IF EXISTS `tbl_kategori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kategori`
--

LOCK TABLES `tbl_kategori` WRITE;
/*!40000 ALTER TABLE `tbl_kategori` DISABLE KEYS */;
INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES (5,'Multimedia','2016-09-06 06:19:26'),(6,'Adminstrasi Perkantoran','2016-09-07 02:51:09'),(13,'Pariwisata','2017-01-13 13:20:31');
/*!40000 ALTER TABLE `tbl_kategori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_kelas`
--

DROP TABLE IF EXISTS `tbl_kelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_kelas` (
  `kelas_id` int(11) NOT NULL AUTO_INCREMENT,
  `kelas_nama` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`kelas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kelas`
--

LOCK TABLES `tbl_kelas` WRITE;
/*!40000 ALTER TABLE `tbl_kelas` DISABLE KEYS */;
INSERT INTO `tbl_kelas` (`kelas_id`, `kelas_nama`) VALUES (8,'Kelas X MM'),(9,'Kelas XI MM'),(10,'Kelas XII MM'),(11,'Kelas X AP'),(12,'Kelas XI AP'),(13,'Kelas XII AP'),(14,'Kelas X PAR'),(15,'Kelas XI PAR'),(16,'Kelas XII PAR');
/*!40000 ALTER TABLE `tbl_kelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_komentar`
--

DROP TABLE IF EXISTS `tbl_komentar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_komentar` (
  `komentar_id` int(11) NOT NULL AUTO_INCREMENT,
  `komentar_nama` varchar(30) DEFAULT NULL,
  `komentar_email` varchar(50) DEFAULT NULL,
  `komentar_isi` varchar(120) DEFAULT NULL,
  `komentar_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `komentar_status` varchar(2) DEFAULT NULL,
  `komentar_tulisan_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`komentar_id`),
  KEY `komentar_tulisan_id` (`komentar_tulisan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_komentar`
--

LOCK TABLES `tbl_komentar` WRITE;
/*!40000 ALTER TABLE `tbl_komentar` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_komentar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_log_aktivitas`
--

DROP TABLE IF EXISTS `tbl_log_aktivitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_log_aktivitas` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_nama` text DEFAULT NULL,
  `log_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `log_ip` varchar(20) DEFAULT NULL,
  `log_pengguna_id` int(11) DEFAULT NULL,
  `log_icon` blob DEFAULT NULL,
  `log_jenis_icon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `log_pengguna_id` (`log_pengguna_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_log_aktivitas`
--

LOCK TABLES `tbl_log_aktivitas` WRITE;
/*!40000 ALTER TABLE `tbl_log_aktivitas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_log_aktivitas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pengguna`
--

DROP TABLE IF EXISTS `tbl_pengguna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL AUTO_INCREMENT,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text DEFAULT NULL,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT 1,
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT current_timestamp(),
  `pengguna_photo` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`pengguna_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pengguna`
--

LOCK TABLES `tbl_pengguna` WRITE;
/*!40000 ALTER TABLE `tbl_pengguna` DISABLE KEYS */;
INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_facebook`, `pengguna_twitter`, `pengguna_linkdin`, `pengguna_google_plus`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES (5,'Ali Yasin',NULL,'L','admin','21232f297a57a5a743894a0e4a801fc3',NULL,'aliyasin.dev@gmail.com','085810470993',NULL,NULL,NULL,NULL,1,'1','2019-04-11 07:44:20','bbe1a3e71d5419116e22414f4f0ba5be.png');
/*!40000 ALTER TABLE `tbl_pengguna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pengumuman`
--

DROP TABLE IF EXISTS `tbl_pengumuman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pengumuman` (
  `pengumuman_id` int(11) NOT NULL AUTO_INCREMENT,
  `pengumuman_judul` varchar(150) DEFAULT NULL,
  `pengumuman_deskripsi` text DEFAULT NULL,
  `pengumuman_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengumuman_author` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`pengumuman_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pengumuman`
--

LOCK TABLES `tbl_pengumuman` WRITE;
/*!40000 ALTER TABLE `tbl_pengumuman` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_pengumuman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pengunjung`
--

DROP TABLE IF EXISTS `tbl_pengunjung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT,
  `pengunjung_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pengunjung_id`)
) ENGINE=InnoDB AUTO_INCREMENT=950 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pengunjung`
--

LOCK TABLES `tbl_pengunjung` WRITE;
/*!40000 ALTER TABLE `tbl_pengunjung` DISABLE KEYS */;
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES (926,'2019-04-15 05:15:01','::1','Chrome'),(927,'2019-04-15 07:58:57','192.168.42.129','Chrome'),(928,'2019-04-18 12:04:30','::1','Chrome'),(929,'2019-04-18 17:12:29','::1','Chrome'),(930,'2019-04-21 12:47:11','114.4.78.30','Chrome'),(931,'2019-04-22 04:22:43','61.94.35.4','Chrome'),(932,'2019-04-22 05:46:49','36.79.69.191','Chrome'),(933,'2019-04-22 12:10:00','62.4.14.206','Firefox'),(934,'2019-04-22 17:00:23','43.230.130.6','Chrome'),(935,'2019-04-22 17:02:14','64.233.172.205','Chrome'),(936,'2019-04-24 04:04:17','120.188.32.52','Chrome'),(937,'2019-04-24 05:56:12','114.5.212.14','Chrome'),(938,'2019-04-24 14:54:45','120.188.32.17','Chrome'),(939,'2019-04-24 21:32:19','13.233.145.123','Other'),(940,'2019-04-25 07:42:31','120.188.32.17','Chrome'),(941,'2019-04-28 18:20:23','120.188.7.1','Chrome'),(942,'2019-04-30 17:03:18','120.188.93.50','Chrome'),(943,'2019-05-06 21:01:26','138.197.10.118','Mozilla'),(944,'2019-05-08 14:32:34','120.188.5.254','Chrome'),(945,'2019-05-11 10:08:44','66.249.71.125','Googlebot'),(946,'2019-05-11 18:08:10','120.188.32.134','Chrome'),(947,'2019-05-11 18:30:56','114.4.213.148','Chrome'),(948,'2019-05-13 04:35:47','64.233.172.201','Chrome'),(949,'2019-05-13 05:36:46','120.188.35.225','Chrome');
/*!40000 ALTER TABLE `tbl_pengunjung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_siswa`
--

DROP TABLE IF EXISTS `tbl_siswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_siswa` (
  `siswa_id` int(11) NOT NULL AUTO_INCREMENT,
  `siswa_nis` varchar(20) DEFAULT NULL,
  `siswa_nama` varchar(70) DEFAULT NULL,
  `siswa_jenkel` varchar(2) DEFAULT NULL,
  `siswa_kelas_id` int(11) DEFAULT NULL,
  `siswa_photo` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`siswa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_siswa`
--

LOCK TABLES `tbl_siswa` WRITE;
/*!40000 ALTER TABLE `tbl_siswa` DISABLE KEYS */;
INSERT INTO `tbl_siswa` (`siswa_id`, `siswa_nis`, `siswa_nama`, `siswa_jenkel`, `siswa_kelas_id`, `siswa_photo`) VALUES (3,'-','Test','L',8,'60495628130aeaec9518cbaa543f9038.jpg');
/*!40000 ALTER TABLE `tbl_siswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_testimoni`
--

DROP TABLE IF EXISTS `tbl_testimoni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_testimoni` (
  `testimoni_id` int(11) NOT NULL AUTO_INCREMENT,
  `testimoni_nama` varchar(30) DEFAULT NULL,
  `testimoni_isi` varchar(120) DEFAULT NULL,
  `testimoni_email` varchar(35) DEFAULT NULL,
  `testimoni_tanggal` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`testimoni_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_testimoni`
--

LOCK TABLES `tbl_testimoni` WRITE;
/*!40000 ALTER TABLE `tbl_testimoni` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_testimoni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tulisan`
--

DROP TABLE IF EXISTS `tbl_tulisan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL AUTO_INCREMENT,
  `tulisan_judul` varchar(100) DEFAULT NULL,
  `tulisan_isi` text DEFAULT NULL,
  `tulisan_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT 0,
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tulisan_id`),
  KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tulisan`
--

LOCK TABLES `tbl_tulisan` WRITE;
/*!40000 ALTER TABLE `tbl_tulisan` DISABLE KEYS */;
INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`) VALUES (26,'PROGRAM KEAHLIAN MULTIMEDIA','<p>Kompetensi keahlian Multimedia adalah salah satu kom-li atau jurusan yang lumayan atraktif dan sangat kompleks cakupannya. Karena ditargetkan siswa/i Multimedia mampu bekerja di bidang TIK yang ada kaitannya dengan Design Grafis, Fotografi, Sinema, Video, Audio, Animasi, Multimedia Interaktif dan Web Design.<br />\r\n<br />\r\nVisi Multimedia SMK Insan Aqilah 3 Depok :<br />\r\nSentra Multimedia Kreatif Purbalingga<br />\r\n<br />\r\nMisi Multimedia SMK Insan Aqilah 3 Depok :</p>\r\n\r\n<p>1. Menanamkan nilai-nilai moral dalam bidang&nbsp; TIK</p>\r\n\r\n<p>2. Membentuk karakter kreatif dan mandiri dalam bidang multimedia</p>\r\n\r\n<p>3. Mengembangkan potensi kreatif&nbsp;warga multimedia</p>\r\n\r\n<p>Materi yang dipelajari di Kompetensi Keahlian Multimedia :</p>\r\n\r\n<ol>\r\n	<li>Design Grafis Manual</li>\r\n	<li>Typografi</li>\r\n	<li>Design Grafis Komputer</li>\r\n	<li>Fotografi</li>\r\n	<li>Sinematografi</li>\r\n	<li>Video Editing</li>\r\n	<li>Sound Editing</li>\r\n	<li>Animasi</li>\r\n	<li>Pembuatan Web &amp; Design Web</li>\r\n	<li>Spesial Efek</li>\r\n	<li>3D Modelling &amp; Animasi 3D</li>\r\n	<li>Multimedia Interaktif</li>\r\n</ol>\r\n','2019-04-15 07:29:26',5,'Multimedia',1,'afb765e3fc380653efa2dd1731fc5bbd.png',5,'Ali Yasin',1),(27,'PROGRAM KEAHLIAN ADMINISTRASI PERKANTORAN','<p>Program Keahlian Administrasi Perkantoran SMK Insan Aqilah 3 Depok berdiri sejak tahun 2011 dan menjadi salah satu SMK Swasta di Sawangan - Depok yang sukses mendidik para tenaga administrator yang tersebar di perusahaan nasional maupun multinasional disekitarnya</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Visi Program Keahlian</p>\r\n\r\n<p>&ldquo;Menghasilkan tamatan yang professional dalam bidang tenaga administrasi, sehingga mampu mengambil peluang dan kesempatan yang ada dipasar pada umumnya, dalam pasar Regional, Nasional dan Internasional&rdquo;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Misi Program Keahlian</p>\r\n\r\n<p>a. Menghasilkan tamatan yang terampil sebagai administrator perusahaan skala kecil dan menengah yang professional</p>\r\n\r\n<p>b. Menghasilkan tamatan yang mampu bersaing untuk mengisi peluang di dunia usaha dan dunia Industri</p>\r\n\r\n<p>c. Menghasilkan tenaga kerja yang memiliki kemampuan untuk mengembangkan kewirausahaan secara professional.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Peluang Kerja</p>\r\n\r\n<p>Staf Administrasi kantor, Receptionis, Juru tik, Teller, Operator telpon,</p>\r\n\r\n<p>Laboratorium yang dimiliki :</p>\r\n\r\n<p>1. Mengetik Manual/ Listrik</p>\r\n\r\n<p>2. Model Kantor</p>\r\n\r\n<p>3. Pertemuan / Rapat</p>\r\n\r\n<p>4. Jamuan makan/ Table Manners</p>\r\n\r\n<p>5. Komputer</p>\r\n\r\n<p>Keunggulan program ini adalah :</p>\r\n\r\n<p>1. Mempunyai Program software Tata Persuratan secara Komputerisasi yang mungkin baru sekolah kami yang memiliki program ini. Program ini untuk menunjang praktik Mail Handling dan Sistem Kearsipan</p>\r\n\r\n<p>2. Memiliki Radio Sekolah untuk praktik siswa dalam mengaplikasikan ketrampilan dasar komunikasi, serta untuk tempat siswa mengapresiasikan jiwa seninya</p>\r\n','2019-04-15 07:30:51',6,'Adminstrasi Perkantoran',0,'69c4a29edbf391e2a16e2cc4c62f704b.png',5,'Ali Yasin',1),(28,'PROGRAM KEAHLIAN PARIWISATA','<p>SMK Insan Aqilah 3 Depok sebagai salah satu SMK Pariwisata unggulan di wilayahnya dengan lokasi yang strategis, berada di daerah Sawangan, Depok. SMK Insan Aqilah 3 Depok bertujuan menyiapkan siswa-siswanya untuk :</p>\r\n\r\n<ul>\r\n	<li>Memasuki lapangan kerja secara profesional dan mampu mengembangkan diri&nbsp;</li>\r\n	<li>Mengisi tenaga muda di dunia usaha dan industri pariwisata, mendidik siswa yang berbudi luhur&nbsp;</li>\r\n	<li>Dapat beradaptasi dalam lingkungan kerja dan masyarakat luas.</li>\r\n</ul>\r\n\r\n<p>Dengan mempergunakan kuriklm KTSP berbasis Pariwisata, belajar mengajar dalam bentuk ceramah, diskusi, praktik mata pelajaran perhotelan, travel dan tata boga. Praktik kerja industri dilaksanakan dihotel berbintang, biro perjalanan umum, perusahaan penerbangan, restoran nasional dan internasional serta industri pariwisata lainnya. Pengenalan wilayah kekawasan wisata untuk menambah wawasan.</p>\r\n','2019-04-15 07:32:36',13,'Pariwisata',0,'73272b26f8326d0a126f7a5004a255be.png',5,'Ali Yasin',1);
/*!40000 ALTER TABLE `tbl_tulisan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'smkinsan_web'
--

--
-- Dumping routines for database 'smkinsan_web'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-13 14:22:13
