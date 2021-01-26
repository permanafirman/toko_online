-- MySQL dump 10.13  Distrib 5.7.24, for Win64 (x86_64)
--
-- Host: localhost    Database: toko_online
-- ------------------------------------------------------
-- Server version	5.7.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tabel_barang`
--

DROP TABLE IF EXISTS `tabel_barang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabel_barang` (
  `id_barang` int(20) NOT NULL AUTO_INCREMENT,
  `nama_barang` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `stok` int(11) NOT NULL DEFAULT '0',
  `harga` int(11) NOT NULL DEFAULT '0',
  `gambar` text NOT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabel_barang`
--

LOCK TABLES `tabel_barang` WRITE;
/*!40000 ALTER TABLE `tabel_barang` DISABLE KEYS */;
INSERT INTO `tabel_barang` VALUES (10,'Jam Tangan ','Jam Tangan Murah','Elektronik',100000,12000,'jam_tangan3.png'),(13,'Sepatu','Converse','Pakaian Pria',100,800000,'sepatu11.jpg'),(14,'Baju Bayi','Baju Bayi usia 6 bulan','Pakaian Anak-anak',12,700,'baju_bayi.jpg'),(15,'Kamera','Kamera','Elektronik',12,29000,'kamera.jpg'),(16,'Bola ','Bola Sepak spec','Peralatan Olahraga',10,12000,'bola.jpg'),(17,'Gamis','Gamis Kondangan','Pakaian Wanita',12,12222,'gamis.jpg');
/*!40000 ALTER TABLE `tabel_barang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabel_invoice`
--

DROP TABLE IF EXISTS `tabel_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabel_invoice` (
  `id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `tanggal_pesan` datetime DEFAULT NULL,
  `batas_bayar` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabel_invoice`
--

LOCK TABLES `tabel_invoice` WRITE;
/*!40000 ALTER TABLE `tabel_invoice` DISABLE KEYS */;
INSERT INTO `tabel_invoice` VALUES (00000000004,'Jajang','Jalan kecapi I','2021-01-26 06:22:28','2021-01-27 06:22:28'),(00000000005,'Firman','Cangkudu','2021-01-26 06:23:32','2021-01-27 06:23:32');
/*!40000 ALTER TABLE `tabel_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabel_pesanan`
--

DROP TABLE IF EXISTS `tabel_pesanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabel_pesanan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_invoice` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL DEFAULT '',
  `jumlah` int(11) NOT NULL DEFAULT '0',
  `harga` int(11) NOT NULL DEFAULT '0',
  `pilihan` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabel_pesanan`
--

LOCK TABLES `tabel_pesanan` WRITE;
/*!40000 ALTER TABLE `tabel_pesanan` DISABLE KEYS */;
INSERT INTO `tabel_pesanan` VALUES (1,4,14,'Kamera DSL',1,700,'0'),(2,4,15,'cek',1,150,'0'),(3,4,13,'Sepatu Ortus',1,800000,'0'),(4,4,10,'Jam Tangan Hotman',1,12000,'0'),(5,5,10,'Jam Tangan Hotman',1,12000,'0');
/*!40000 ALTER TABLE `tabel_pesanan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabel_user`
--

DROP TABLE IF EXISTS `tabel_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabel_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '0',
  `role_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabel_user`
--

LOCK TABLES `tabel_user` WRITE;
/*!40000 ALTER TABLE `tabel_user` DISABLE KEYS */;
INSERT INTO `tabel_user` VALUES (1,'admin','admin','merdeka',1),(2,'user','user','user',2),(3,'Firman Permana','admin','merdeka',2);
/*!40000 ALTER TABLE `tabel_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-26 13:53:21
