/*
SQLyog Ultimate v10.42 
MySQL - 5.5.5-10.1.21-MariaDB : Database - kritik
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kritik` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `kritik`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

/*Table structure for table `posting` */

DROP TABLE IF EXISTS `posting`;

CREATE TABLE `posting` (
  `id_posting` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) NOT NULL,
  `id` varchar(20) NOT NULL,
  `judul_posting` varchar(10) NOT NULL,
  `status` enum('like','dislike') DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_posting`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `posting` */

/*Table structure for table `sk_dosen` */

DROP TABLE IF EXISTS `sk_dosen`;

CREATE TABLE `sk_dosen` (
  `id_dosen` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nip` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `no_telp` varchar(15) DEFAULT NULL,
  `alamat` text,
  `foto` varchar(100) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  KEY `id_dosen` (`id_dosen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sk_dosen` */

/*Table structure for table `sk_mahasiswa` */

DROP TABLE IF EXISTS `sk_mahasiswa`;

CREATE TABLE `sk_mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT,
  `nim` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_mahasiswa`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `sk_mahasiswa` */

insert  into `sk_mahasiswa`(`id_mahasiswa`,`nim`,`password`,`nama`,`alamat`,`no_telp`,`foto`,`email`) values (1,'','','','',NULL,NULL,NULL),(2,'','','','',NULL,NULL,NULL),(3,'','','','',NULL,NULL,NULL),(4,'','','','',NULL,NULL,NULL),(5,'','','','',NULL,NULL,NULL),(6,'','','','',NULL,NULL,NULL),(7,'','','','',NULL,NULL,NULL),(8,'','','','',NULL,NULL,NULL),(9,'','','','',NULL,NULL,NULL),(10,'','','','',NULL,NULL,NULL),(11,'','','','',NULL,NULL,NULL),(12,'','','','',NULL,NULL,NULL),(13,'','','','',NULL,NULL,NULL),(14,'','','','',NULL,NULL,NULL),(15,'','','','',NULL,NULL,NULL),(16,'','','','',NULL,NULL,NULL),(17,'','','','',NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
