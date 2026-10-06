-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: booksm-2026-leeduck0712.f.aivencloud.com    Database: BookSM
-- ------------------------------------------------------
-- Server version	8.0.45

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '90499d31-20f6-11f1-b7c8-4efedf74091f:1-80,
cb14f72c-32f6-11f1-bfc3-ceafe2f45def:1-1249,
e863c99b-2289-11f1-bc43-6e55f5ed5578:1-131';

--
-- Table structure for table `ChiTietDH`
--

DROP TABLE IF EXISTS `ChiTietDH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ChiTietDH` (
  `maDH` varchar(20) NOT NULL,
  `maSach` varchar(20) NOT NULL,
  `soLuong` int NOT NULL,
  `giaBan` decimal(12,2) NOT NULL,
  `maKM` varchar(20) DEFAULT NULL,
  `thanhTien` decimal(15,2) NOT NULL,
  PRIMARY KEY (`maDH`,`maSach`),
  KEY `maSach` (`maSach`),
  KEY `maKM` (`maKM`),
  CONSTRAINT `ChiTietDH_ibfk_1` FOREIGN KEY (`maDH`) REFERENCES `DonHang` (`maDH`) ON DELETE CASCADE,
  CONSTRAINT `ChiTietDH_ibfk_2` FOREIGN KEY (`maSach`) REFERENCES `Sach` (`maSach`),
  CONSTRAINT `ChiTietDH_ibfk_3` FOREIGN KEY (`maKM`) REFERENCES `KhuyenMai` (`maKM`),
  CONSTRAINT `ChiTietDH_chk_1` CHECK ((`soLuong` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ChiTietDH`
--

LOCK TABLES `ChiTietDH` WRITE;
/*!40000 ALTER TABLE `ChiTietDH` DISABLE KEYS */;
INSERT INTO `ChiTietDH` VALUES ('DH_0001','S002',1,79000.00,NULL,79000.00),('DH_0002','S001',1,77400.00,'FS_TODAY',77400.00),('DH177573034537','S003',1,195000.00,NULL,195000.00),('DH177573034537','S007',3,30150.00,NULL,90450.00),('DH177573034537','S013',1,88000.00,NULL,88000.00),('DH177573070138','S001',1,86000.00,NULL,86000.00),('DH177573070138','S002',1,71100.00,NULL,71100.00),('DH177573070138','S003',1,195000.00,NULL,195000.00),('DH177573112037','S003',1,195000.00,NULL,195000.00),('DH177578903420','S002',1,71100.00,NULL,71100.00),('DH177579143719','S007',1,45000.00,NULL,45000.00),('DH177580276939','S007',1,45000.00,NULL,45000.00),('DH177580408671','S013',1,88000.00,NULL,88000.00),('DH177587039784','S013',1,88000.00,NULL,88000.00),('DH177587133691','S002',1,79000.00,NULL,79000.00),('DH177597830913','S015',1,195000.00,NULL,195000.00),('DH177597845647','S015',40,195000.00,NULL,7800000.00),('DH177597977012','S013',1,88000.00,NULL,88000.00),('DH177598003046','S007',1,45000.00,NULL,45000.00),('DH177615183118','S021',13,82000.00,NULL,1066000.00),('DH177615274267','S002',1,10000.00,NULL,10000.00),('DH177615472754','S018',1,25000.00,NULL,25000.00),('DH177615572775','S024',1,85500.00,NULL,85500.00),('DH177615582534','S024',1,85500.00,NULL,85500.00),('DH177615680595','S001',1,86000.00,NULL,86000.00),('DH177615746590','S024',1,85500.00,NULL,85500.00),('DH177616301555','S024',7,85500.00,NULL,598500.00),('DH177621726942','S022',1,72000.00,NULL,72000.00),('DH177622572430','S021',1,82000.00,NULL,82000.00),('DH177622572430','S022',1,72000.00,NULL,72000.00),('DH177623218373','S012',1,75000.00,NULL,75000.00),('DH177623218373','S022',1,72000.00,NULL,72000.00),('DH177623221142','S006',1,135000.00,NULL,135000.00),('DH177625528235','S015',4,195000.00,NULL,780000.00),('DH177631249297','S006',1,135000.00,NULL,135000.00),('DH177631269974','S006',1,135000.00,NULL,135000.00),('DH177631777541','S006',1,135000.00,NULL,135000.00),('DH177632189445','S006',1,135000.00,NULL,135000.00),('DH177632189445','S024',1,85500.00,NULL,85500.00),('DH177632278590','S002',1,79000.00,NULL,79000.00);
/*!40000 ALTER TABLE `ChiTietDH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ChiTietKhuyenMai`
--

DROP TABLE IF EXISTS `ChiTietKhuyenMai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ChiTietKhuyenMai` (
  `maKM` varchar(20) NOT NULL,
  `maSach` varchar(20) NOT NULL,
  `phanTramGiam` int NOT NULL,
  `soLuongKhuyenMai` int DEFAULT '0',
  PRIMARY KEY (`maKM`,`maSach`),
  KEY `maSach` (`maSach`),
  CONSTRAINT `ChiTietKhuyenMai_ibfk_1` FOREIGN KEY (`maKM`) REFERENCES `KhuyenMai` (`maKM`) ON DELETE CASCADE,
  CONSTRAINT `ChiTietKhuyenMai_ibfk_2` FOREIGN KEY (`maSach`) REFERENCES `Sach` (`maSach`) ON DELETE CASCADE,
  CONSTRAINT `ChiTietKhuyenMai_chk_1` CHECK ((`phanTramGiam` in (10,22,33)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ChiTietKhuyenMai`
--

LOCK TABLES `ChiTietKhuyenMai` WRITE;
/*!40000 ALTER TABLE `ChiTietKhuyenMai` DISABLE KEYS */;
INSERT INTO `ChiTietKhuyenMai` VALUES ('aaaaaa','S011',10,50),('FS_TODAY','S001',10,20),('FS_TODAY','S003',22,50),('FS_TODAY_2','S002',10,40),('FS_TODAY_2','S003',22,40),('FS_TODAY_2','S007',33,40),('SALE_TEST','S024',22,50),('sale13/4','S009',10,40),('sale13/4','S015',10,4),('test123','S006',10,50),('test123','S008',10,50),('test123','S017',10,50),('test123','S022',10,50),('test123','S024',10,10);
/*!40000 ALTER TABLE `ChiTietKhuyenMai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ChiTietPN`
--

DROP TABLE IF EXISTS `ChiTietPN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ChiTietPN` (
  `maPN` varchar(20) NOT NULL,
  `maSach` varchar(20) NOT NULL,
  `soLuongNhap` int NOT NULL,
  `giaNhap` decimal(12,2) NOT NULL,
  `chietKhau` float DEFAULT '0',
  `thanhTien` decimal(15,2) NOT NULL,
  PRIMARY KEY (`maPN`,`maSach`),
  KEY `maSach` (`maSach`),
  CONSTRAINT `ChiTietPN_ibfk_1` FOREIGN KEY (`maPN`) REFERENCES `PhieuNhap` (`maPN`) ON DELETE CASCADE,
  CONSTRAINT `ChiTietPN_ibfk_2` FOREIGN KEY (`maSach`) REFERENCES `Sach` (`maSach`),
  CONSTRAINT `ChiTietPN_chk_1` CHECK ((`soLuongNhap` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ChiTietPN`
--

LOCK TABLES `ChiTietPN` WRITE;
/*!40000 ALTER TABLE `ChiTietPN` DISABLE KEYS */;
INSERT INTO `ChiTietPN` VALUES ('PN001','S001',150,86000.00,10,11610000.00),('PN002','S003',120,250000.00,15,25500000.00),('PN202604001','S024',10,90000.00,10,810000.00),('PN202604002','S007',1,10000.00,30,7000.00),('PN202604003','S023',1,50000.00,30,35000.00),('PN202604003','S025',2,40000.00,35,52000.00),('PN202604004','S010',50,130000.00,9,5915000.00),('PN202604005','S025',12,120000.00,30,1008000.00),('PN202604006','S001',20,75000.00,10,1350000.00),('PN202604006','S025',10,50000.00,10,450000.00);
/*!40000 ALTER TABLE `ChiTietPN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CongNo`
--

DROP TABLE IF EXISTS `CongNo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CongNo` (
  `maCN` int NOT NULL AUTO_INCREMENT,
  `maNCC` int NOT NULL,
  `tongNo` decimal(15,2) NOT NULL DEFAULT '0.00',
  `capNhatCuoi` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`maCN`),
  KEY `maNCC` (`maNCC`),
  CONSTRAINT `CongNo_ibfk_1` FOREIGN KEY (`maNCC`) REFERENCES `NhaCungCap` (`maNCC`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CongNo`
--

LOCK TABLES `CongNo` WRITE;
/*!40000 ALTER TABLE `CongNo` DISABLE KEYS */;
INSERT INTO `CongNo` VALUES (1,1,0.00,'2026-03-18 06:02:35'),(2,2,25500000.00,'2026-03-18 06:02:35'),(3,1,0.00,'2026-04-12 07:31:12'),(4,3,0.00,'2026-04-13 02:55:59'),(5,3,0.00,'2026-04-15 13:09:14'),(6,4,900000.00,'2026-04-16 11:42:38'),(7,3,1008000.00,'2026-04-15 14:16:32'),(8,1,1800000.00,'2026-04-16 13:54:12');
/*!40000 ALTER TABLE `CongNo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DanhGiaSach`
--

DROP TABLE IF EXISTS `DanhGiaSach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DanhGiaSach` (
  `maDG` int NOT NULL AUTO_INCREMENT,
  `maSach` varchar(20) NOT NULL,
  `maND` int NOT NULL,
  `diemDG` int DEFAULT NULL,
  `nhanXet` text,
  `ngayDG` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`maDG`),
  KEY `maSach` (`maSach`),
  KEY `maND` (`maND`),
  CONSTRAINT `DanhGiaSach_ibfk_1` FOREIGN KEY (`maSach`) REFERENCES `Sach` (`maSach`) ON DELETE CASCADE,
  CONSTRAINT `DanhGiaSach_ibfk_2` FOREIGN KEY (`maND`) REFERENCES `NguoiDung` (`maND`),
  CONSTRAINT `DanhGiaSach_chk_1` CHECK (((`diemDG` >= 1) and (`diemDG` <= 5)))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DanhGiaSach`
--

LOCK TABLES `DanhGiaSach` WRITE;
/*!40000 ALTER TABLE `DanhGiaSach` DISABLE KEYS */;
INSERT INTO `DanhGiaSach` VALUES (1,'S002',2,5,'Sách bọc màng co cẩn thận, nội dung rất hay!','2026-03-17 08:00:00'),(2,'S002',3,5,'dsfdsfdfsdfdsfsfsdfsfdsfdsfs','2026-04-14 16:13:57');
/*!40000 ALTER TABLE `DanhGiaSach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DiaChiGiaoHang`
--

DROP TABLE IF EXISTS `DiaChiGiaoHang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DiaChiGiaoHang` (
  `maDC` int NOT NULL AUTO_INCREMENT,
  `maND` int NOT NULL,
  `diaChiChiTiet` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `laMacDinh` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`maDC`),
  KEY `maND` (`maND`),
  CONSTRAINT `DiaChiGiaoHang_ibfk_1` FOREIGN KEY (`maND`) REFERENCES `NguoiDung` (`maND`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DiaChiGiaoHang`
--

LOCK TABLES `DiaChiGiaoHang` WRITE;
/*!40000 ALTER TABLE `DiaChiGiaoHang` DISABLE KEYS */;
INSERT INTO `DiaChiGiaoHang` VALUES (1,2,'123 Lê Lợi, Quận 1, TP.HCM',0),(3,3,'456 Trần Phú, Ba Đình, Hà Nội',0),(4,4,'abc',0),(5,4,'abc',0),(6,4,'abc',0),(7,6,'abc',1),(8,6,'abc',0),(9,3,'abc',0),(10,3,'aaa',0),(13,2,'long uyên (giờ hành chánh',1),(14,1,'118 UVK, long Xuyên',1),(15,1,'30 UVK, long Xuyên',0);
/*!40000 ALTER TABLE `DiaChiGiaoHang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DonHang`
--

DROP TABLE IF EXISTS `DonHang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DonHang` (
  `maDH` varchar(20) NOT NULL,
  `maND` int NOT NULL,
  `maDC` int NOT NULL,
  `maPT` int NOT NULL,
  `ngayDat` datetime DEFAULT CURRENT_TIMESTAMP,
  `tongTien` decimal(15,2) NOT NULL DEFAULT '0.00',
  `trangThai` enum('ChoDuyet','DangGiao','HoanThanh','DaHuy') DEFAULT 'ChoDuyet',
  PRIMARY KEY (`maDH`),
  KEY `maND` (`maND`),
  KEY `maDC` (`maDC`),
  KEY `maPT` (`maPT`),
  CONSTRAINT `DonHang_ibfk_1` FOREIGN KEY (`maND`) REFERENCES `NguoiDung` (`maND`),
  CONSTRAINT `DonHang_ibfk_2` FOREIGN KEY (`maDC`) REFERENCES `DiaChiGiaoHang` (`maDC`),
  CONSTRAINT `DonHang_ibfk_3` FOREIGN KEY (`maPT`) REFERENCES `PhuongThucThanhToan` (`maPT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DonHang`
--

LOCK TABLES `DonHang` WRITE;
/*!40000 ALTER TABLE `DonHang` DISABLE KEYS */;
INSERT INTO `DonHang` VALUES ('DH_0001',2,1,1,'2026-03-15 14:30:00',79000.00,'HoanThanh'),('DH_0002',3,3,2,'2026-03-17 10:15:00',77400.00,'DaHuy'),('DH177573034537',4,4,1,'2026-04-09 10:26:07',373450.00,'HoanThanh'),('DH177573070138',4,5,1,'2026-04-09 10:32:04',352100.00,'ChoDuyet'),('DH177573112037',4,6,2,'2026-04-09 10:39:01',195000.00,'DaHuy'),('DH177578903420',6,7,1,'2026-04-10 02:44:17',71100.00,'ChoDuyet'),('DH177579143719',6,8,1,'2026-04-10 03:24:20',45000.00,'ChoDuyet'),('DH177580276939',3,9,1,'2026-04-10 06:32:48',45000.00,'DangGiao'),('DH177580408671',3,10,1,'2026-04-10 06:54:45',88000.00,'DangGiao'),('DH177587039784',3,3,1,'2026-04-11 01:19:57',88000.00,'DaHuy'),('DH177587133691',6,8,1,'2026-04-11 01:35:36',79000.00,'HoanThanh'),('DH177597830913',6,7,1,'2026-04-12 07:18:29',195000.00,'ChoDuyet'),('DH177597845647',6,7,1,'2026-04-12 07:20:57',7800000.00,'DangGiao'),('DH177597977012',3,3,1,'2026-04-12 07:42:49',88000.00,'ChoDuyet'),('DH177598003046',3,3,1,'2026-04-12 14:47:09',45000.00,'ChoDuyet'),('DH177615183118',3,3,1,'2026-04-14 14:30:29',1066000.00,'ChoDuyet'),('DH177615274267',3,3,1,'2026-04-14 14:45:41',10000.00,'HoanThanh'),('DH177615472754',3,3,1,'2026-04-14 15:18:46',25000.00,'ChoDuyet'),('DH177615572775',3,3,1,'2026-04-14 15:35:25',85500.00,'DaHuy'),('DH177615582534',3,3,1,'2026-04-14 15:37:03',85500.00,'ChoDuyet'),('DH177615680595',3,3,1,'2026-04-14 15:53:23',86000.00,'DaHuy'),('DH177615746590',6,7,1,'2026-04-14 16:04:27',85500.00,'DaHuy'),('DH177616301555',3,3,2,'2026-04-14 17:36:53',598500.00,'HoanThanh'),('DH177621726942',3,3,1,'2026-04-15 08:41:12',72000.00,'DaHuy'),('DH177622572430',2,1,1,'2026-04-15 11:02:08',154000.00,'DaHuy'),('DH177623218373',2,13,1,'2026-04-15 12:49:47',147000.00,'DangGiao'),('DH177623221142',2,1,2,'2026-04-15 12:50:14',135000.00,'HoanThanh'),('DH177625528235',3,3,1,'2026-04-15 19:14:42',780000.00,'DaHuy'),('DH177631249297',1,15,1,'2026-04-16 11:08:10',135000.00,'DaHuy'),('DH177631269974',1,14,1,'2026-04-16 11:11:38',135000.00,'HoanThanh'),('DH177631777541',3,3,1,'2026-04-16 12:36:12',135000.00,'ChoDuyet'),('DH177632189445',3,3,2,'2026-04-16 13:44:51',220500.00,'HoanThanh'),('DH177632278590',3,3,1,'2026-04-16 13:59:42',79000.00,'ChoDuyet');
/*!40000 ALTER TABLE `DonHang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GioHang`
--

DROP TABLE IF EXISTS `GioHang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GioHang` (
  `maND` int NOT NULL,
  `maSach` varchar(20) NOT NULL,
  `soLuong` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`maND`,`maSach`),
  KEY `fk_gh_sach` (`maSach`),
  CONSTRAINT `fk_gh_nd` FOREIGN KEY (`maND`) REFERENCES `NguoiDung` (`maND`) ON DELETE CASCADE,
  CONSTRAINT `fk_gh_sach` FOREIGN KEY (`maSach`) REFERENCES `Sach` (`maSach`) ON DELETE CASCADE,
  CONSTRAINT `chk_gh_sl` CHECK ((`soLuong` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GioHang`
--

LOCK TABLES `GioHang` WRITE;
/*!40000 ALTER TABLE `GioHang` DISABLE KEYS */;
INSERT INTO `GioHang` VALUES (2,'S015',1),(7,'S015',1);
/*!40000 ALTER TABLE `GioHang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HinhAnhSach`
--

DROP TABLE IF EXISTS `HinhAnhSach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HinhAnhSach` (
  `maHA` int NOT NULL AUTO_INCREMENT,
  `maSach` varchar(20) NOT NULL,
  `urlAnh` varchar(255) NOT NULL,
  PRIMARY KEY (`maHA`),
  KEY `maSach` (`maSach`),
  CONSTRAINT `HinhAnhSach_ibfk_1` FOREIGN KEY (`maSach`) REFERENCES `Sach` (`maSach`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HinhAnhSach`
--

LOCK TABLES `HinhAnhSach` WRITE;
/*!40000 ALTER TABLE `HinhAnhSach` DISABLE KEYS */;
INSERT INTO `HinhAnhSach` VALUES (23,'S023','https://picsum.photos/seed/s023/300/400'),(25,'S024','/DoAn-Web/DoAn/HinhAnh/sach/ss024_1775995646.jpg'),(27,'S025','https://cdn.hstatic.net/products/200001055148/thanh-guom-diet-quy-tap-13_eb591860beac426e83fabbdb0c2c901b.jpg'),(28,'S022','/DoAn-Web/DoAn/HinhAnh/sach/ss022_1776301507.jpg'),(29,'S021','/DoAn-Web/DoAn/HinhAnh/sach/ss021_1776301539.jpg'),(30,'S020','/DoAn-Web/DoAn/HinhAnh/sach/ss020_1776301568.jpg'),(31,'S019','/DoAn-Web/DoAn/HinhAnh/sach/ss019_1776301602.jpg'),(32,'S018','/DoAn-Web/DoAn/HinhAnh/sach/ss018_1776301625.jpg'),(33,'S017','/DoAn-Web/DoAn/HinhAnh/sach/ss017_1776301655.jpg'),(34,'S016','/DoAn-Web/DoAn/HinhAnh/sach/ss016_1776301690.jpg'),(35,'S015','/DoAn-Web/DoAn/HinhAnh/sach/ss015_1776301721.jpg'),(36,'S014','/DoAn-Web/DoAn/HinhAnh/sach/ss014_1776301751.jpg'),(37,'S013','/DoAn-Web/DoAn/HinhAnh/sach/ss013_1776301837.jpg'),(38,'S012','/DoAn-Web/DoAn/HinhAnh/sach/ss012_1776301920.jpg'),(39,'S011','/DoAn-Web/DoAn/HinhAnh/sach/ss011_1776301944.jpg'),(40,'S010','/DoAn-Web/DoAn/HinhAnh/sach/ss010_1776302046.jpg'),(41,'S009','/DoAn-Web/DoAn/HinhAnh/sach/ss009_1776302081.jpg'),(43,'S008','/DoAn-Web/DoAn/HinhAnh/sach/ss008_1776302167.jpg'),(44,'S007','/DoAn-Web/DoAn/HinhAnh/sach/ss007_1776302203.jpg'),(45,'S006','/DoAn-Web/DoAn/HinhAnh/sach/ss006_1776302230.jpg'),(46,'S005','/DoAn-Web/DoAn/HinhAnh/sach/ss005_1776302265.jpg'),(47,'S004','/DoAn-Web/DoAn/HinhAnh/sach/ss004_1776302306.jpg'),(48,'S003','/DoAn-Web/DoAn/HinhAnh/sach/ss003_1776302344.jpg'),(49,'S002','/DoAn-Web/DoAn/HinhAnh/sach/ss002_1776302420.jpg'),(50,'S001','/DoAn-Web/DoAn/HinhAnh/sach/ss001_1776302450.jpg');
/*!40000 ALTER TABLE `HinhAnhSach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KhuyenMai`
--

DROP TABLE IF EXISTS `KhuyenMai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `KhuyenMai` (
  `maKM` varchar(20) NOT NULL,
  `tenKM` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ngayBatDau` datetime NOT NULL,
  `ngayKetThuc` datetime NOT NULL,
  PRIMARY KEY (`maKM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KhuyenMai`
--

LOCK TABLES `KhuyenMai` WRITE;
/*!40000 ALTER TABLE `KhuyenMai` DISABLE KEYS */;
INSERT INTO `KhuyenMai` VALUES ('aaaaaa','aaaaaaa','2026-04-12 14:48:00','2026-04-12 21:48:00'),('FS_TODAY','Flash Sale Giá Sốc - Giờ Vàng','2026-04-08 00:00:00','2026-04-08 23:59:59'),('FS_TODAY_2','Flash Sale Giá Sốc - Giờ Vàng','2026-04-08 00:00:00','2026-04-08 23:59:59'),('SALE_TEST','sale hàng mới nhập','2026-04-12 07:37:00','2026-04-12 17:37:00'),('sale13/4','sale sale','2026-04-13 14:45:00','2026-04-13 22:45:00'),('test123','sale sale 123','2026-04-14 14:25:00','2026-04-17 14:25:00');
/*!40000 ALTER TABLE `KhuyenMai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LichSuThanhToanPN`
--

DROP TABLE IF EXISTS `LichSuThanhToanPN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LichSuThanhToanPN` (
  `maLSTT` int NOT NULL AUTO_INCREMENT,
  `maPN` varchar(20) NOT NULL,
  `ngayThanhToan` datetime DEFAULT CURRENT_TIMESTAMP,
  `soTienTra` decimal(15,2) NOT NULL,
  `hinhThucTra` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ghiChu` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`maLSTT`),
  KEY `maPN` (`maPN`),
  CONSTRAINT `LichSuThanhToanPN_ibfk_1` FOREIGN KEY (`maPN`) REFERENCES `PhieuNhap` (`maPN`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LichSuThanhToanPN`
--

LOCK TABLES `LichSuThanhToanPN` WRITE;
/*!40000 ALTER TABLE `LichSuThanhToanPN` DISABLE KEYS */;
INSERT INTO `LichSuThanhToanPN` VALUES (1,'PN001','2026-02-01 09:00:00',11610000.00,'Chuyển khoản VCB','Thanh toán đứt phiếu PN001'),(2,'PN202604001','2026-04-12 07:31:12',810000.00,'Chuyển khoản VCB',''),(3,'PN202604002','2026-04-13 02:55:59',7000.00,'Tiền mặt',''),(4,'PN202604003','2026-04-15 13:07:07',40000.00,'Chuyển khoản','trả 40k'),(5,'PN202604003','2026-04-15 13:08:02',47.00,'Tiền mặt','trả đủ'),(6,'PN202604003','2026-04-15 13:09:14',46953.00,'Tiền mặt','trả nợ đủ'),(7,'PN202604004','2026-04-15 13:45:44',5000000.00,'Chuyển khoản','trả'),(8,'PN202604004','2026-04-16 11:42:38',15000.00,'Tiền mặt','trả 15k');
/*!40000 ALTER TABLE `LichSuThanhToanPN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NguoiDung`
--

DROP TABLE IF EXISTS `NguoiDung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NguoiDung` (
  `maND` int NOT NULL AUTO_INCREMENT,
  `tenND` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `sdt` int DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `ngayTao` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`maND`),
  UNIQUE KEY `sdt` (`sdt`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NguoiDung`
--

LOCK TABLES `NguoiDung` WRITE;
/*!40000 ALTER TABLE `NguoiDung` DISABLE KEYS */;
INSERT INTO `NguoiDung` VALUES (1,'Chủ Cửa Hàng (Admin)',987654321,'admin@booksm.com','2026-03-18 06:00:54'),(2,'Lê Minh Đức',901234567,'duc@gmail.com','2026-03-18 06:00:54'),(3,'Lê Thanh Hòa',912345678,'hoa@gmail.com','2026-03-18 06:00:54'),(4,'demo_TK_dabo',912346678,'demo@gmail.com','2026-03-18 06:00:54'),(5,'Trần Văn A',123654789,'vana123@gmail.com','2026-04-09 11:20:58'),(6,'demo_2',1524638756,'demo.a@gmail.com','2026-04-10 01:03:25'),(7,'Nguyễn Văn B',147852369,'vanb789@gmail.co','2026-04-13 11:42:17'),(8,'lethanhhoa',125436587,'','2026-04-13 08:08:53');
/*!40000 ALTER TABLE `NguoiDung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NhaCungCap`
--

DROP TABLE IF EXISTS `NhaCungCap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NhaCungCap` (
  `maNCC` int NOT NULL AUTO_INCREMENT,
  `tenNCC` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `sdt` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `chietKhauMacDinh` float DEFAULT '0',
  PRIMARY KEY (`maNCC`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NhaCungCap`
--

LOCK TABLES `NhaCungCap` WRITE;
/*!40000 ALTER TABLE `NhaCungCap` DISABLE KEYS */;
INSERT INTO `NhaCungCap` VALUES (1,'Công ty Phát Hành Sách FAHASA','1900636467','info@fahasa.com',10),(2,'Nhà sách Phương Nam','1900123456','contact@phuongnam.com',15),(3,'Công ty Demo','3212423535',NULL,30),(4,'công ty trách nhiệm hữu hạn 2 đứa mình',NULL,'2dua@gmail.com',9);
/*!40000 ALTER TABLE `NhaCungCap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NhaXuatBan`
--

DROP TABLE IF EXISTS `NhaXuatBan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NhaXuatBan` (
  `maNXB` int NOT NULL AUTO_INCREMENT,
  `tenNXB` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `diaChi` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`maNXB`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NhaXuatBan`
--

LOCK TABLES `NhaXuatBan` WRITE;
/*!40000 ALTER TABLE `NhaXuatBan` DISABLE KEYS */;
INSERT INTO `NhaXuatBan` VALUES (1,'NXB Trẻ','161 Lý Chính Thắng, TP.HCM'),(2,'NXB Tổng Hợp','62 Nguyễn Thị Minh Khai, TP.HCM'),(3,'NXB Thế Giới','46 Trần Hưng Đạo, Hà Nội'),(4,'NXB Nhã Nam','59 Đỗ Quang, Cầu Giấy, Hà Nội'),(5,'demo',NULL);
/*!40000 ALTER TABLE `NhaXuatBan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PhieuNhap`
--

DROP TABLE IF EXISTS `PhieuNhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PhieuNhap` (
  `maPN` varchar(20) NOT NULL,
  `tongLuongNhap` int DEFAULT '0',
  `ngayLap` datetime DEFAULT CURRENT_TIMESTAMP,
  `soTienDaThanhToan` decimal(15,2) DEFAULT '0.00',
  `tongTien` decimal(15,2) DEFAULT '0.00',
  `trangThai` enum('Waiting','Completed','Returned') DEFAULT 'Waiting',
  `maNCC` int NOT NULL,
  PRIMARY KEY (`maPN`),
  KEY `maNCC` (`maNCC`),
  CONSTRAINT `PhieuNhap_ibfk_1` FOREIGN KEY (`maNCC`) REFERENCES `NhaCungCap` (`maNCC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PhieuNhap`
--

LOCK TABLES `PhieuNhap` WRITE;
/*!40000 ALTER TABLE `PhieuNhap` DISABLE KEYS */;
INSERT INTO `PhieuNhap` VALUES ('PN001',150,'2026-02-01 08:00:00',11610000.00,11610000.00,'Completed',1),('PN002',120,'2026-03-10 10:00:00',0.00,25500000.00,'Waiting',2),('PN202604001',10,'2026-04-12 07:30:25',810000.00,810000.00,'Completed',1),('PN202604002',1,'2026-04-13 02:55:38',7000.00,7000.00,'Completed',3),('PN202604003',3,'2026-04-15 13:06:20',87000.00,87000.00,'Completed',3),('PN202604004',50,'2026-04-15 13:45:06',5015000.00,5915000.00,'Waiting',4),('PN202604005',12,'2026-04-15 14:16:31',0.00,1008000.00,'Waiting',3),('PN202604006',30,'2026-04-16 13:54:10',0.00,1800000.00,'Waiting',1);
