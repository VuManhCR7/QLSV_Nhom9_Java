-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2022 at 09:19 AM
-- Server version: 8.0.29
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlysinhvien`
--

-- --------------------------------------------------------

--
-- Table structure for table `dangnhap`
--

DROP TABLE IF EXISTS `dangnhap`;
CREATE TABLE `dangnhap` (
  `maTaiKhoan` varchar(30) NOT NULL,
  `tenTaiKhoan` varchar(100) DEFAULT NULL,
  `matKhau` varchar(100) DEFAULT NULL,
  `quyen` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dangnhap`
--

INSERT INTO `dangnhap` (`maTaiKhoan`, `tenTaiKhoan`, `matKhau`, `quyen`) VALUES
('Adminacc3', 'admin', '12345678', 'admin'),
('GVacc2', 'giangvienIT', '123456', 'gv'),
('SVacc1', 'Manhvuit285', 'manhvu2001', 'sv');

-- --------------------------------------------------------

--
-- Table structure for table `diemthi`
--

DROP TABLE IF EXISTS `diemthi`;
CREATE TABLE `diemthi` (
  `maHP` varchar(20) NOT NULL,
  `maSV` int NOT NULL,
  `diemLan1` float DEFAULT NULL,
  `diemLan2` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `diemthi`
--

INSERT INTO `diemthi` (`maHP`, `maSV`, `diemLan1`, `diemLan2`) VALUES
('HP03', 2019605728, 8.5, 9),
('HP04', 2019605728, 9.5, 7);

-- --------------------------------------------------------

--
-- Table structure for table `giangvien`
--

DROP TABLE IF EXISTS `giangvien`;
CREATE TABLE `giangvien` (
  `maGV` int NOT NULL,
  `hoTen_GV` varchar(30) DEFAULT NULL,
  `ngaySinh_GV` date DEFAULT NULL,
  `gioiTinh_GV` int DEFAULT NULL,
  `queQuan_GV` varchar(100) DEFAULT NULL,
  `email_GV` varchar(30) DEFAULT NULL,
  `soDT_GV` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `giangvien`
--

INSERT INTO `giangvien` (`maGV`, `hoTen_GV`, `ngaySinh_GV`, `gioiTinh_GV`, `queQuan_GV`, `email_GV`, `soDT_GV`) VALUES
(1, 'Nguyen Trung Phu', '1980-12-05', 1, 'Ha Noi', 'phuhaui@gmail.com', '0912345678'),
(2, 'Phi Cong Manh', '1986-02-09', 1, 'Ha Tinh', 'Manhhaui@gmail.com', '0912345678');

-- --------------------------------------------------------

--
-- Table structure for table `hocphan`
--

DROP TABLE IF EXISTS `hocphan`;
CREATE TABLE `hocphan` (
  `maHP` varchar(20) NOT NULL,
  `tenHP` varchar(30) DEFAULT NULL,
  `soTinChi` float DEFAULT NULL,
  `maGV` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hocphan`
--

INSERT INTO `hocphan` (`maHP`, `tenHP`, `soTinChi`, `maGV`) VALUES
('HP01', 'Do Hoa May Tinh', 3, 1),
('HP02', 'Lap Trinh Java', 3, 2),
('HP03', 'Lap Trinh ASP.Net', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `hocphan_lop`
--

DROP TABLE IF EXISTS `hocphan_lop`;
CREATE TABLE `hocphan_lop` (
  `maLop` int NOT NULL,
  `maHP` varchar(20) NOT NULL,
  `hocKy` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hocphan_lop`
--

INSERT INTO `hocphan_lop` (`maLop`, `maHP`, `hocKy`) VALUES
(2003, 'HP03', 5),
(2003, 'HP04', 7);

-- --------------------------------------------------------

--
-- Table structure for table `khoa`
--

DROP TABLE IF EXISTS `khoa`;
CREATE TABLE `khoa` (
  `maKhoa` int NOT NULL,
  `tenKhoa` varchar(30) DEFAULT NULL,
  `ngayThanhLap` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `khoa`
--

INSERT INTO `khoa` (`maKhoa`, `tenKhoa`, `ngayThanhLap`) VALUES
(1001, 'Cong nghe thong tin', '1990-03-15'),
(1002, 'Ke toan', '1999-12-20');

-- --------------------------------------------------------

--
-- Table structure for table `lop`
--

DROP TABLE IF EXISTS `lop`;
CREATE TABLE `lop` (
  `maLop` int NOT NULL,
  `tenLop` varchar(30) DEFAULT NULL,
  `khoa` varchar(20) DEFAULT NULL,
  `heDaoTao` varchar(20) DEFAULT NULL,
  `namNhapHoc` int DEFAULT NULL,
  `siSo` int DEFAULT NULL,
  `maKhoa` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `lop`
--

INSERT INTO `lop` (`maLop`, `tenLop`, `khoa`, `heDaoTao`, `namNhapHoc`, `siSo`, `maKhoa`) VALUES
(2003, 'KeToan5', 'K14', 'Dai Hoc', 2019, 70, 1001),
(2004, 'Du Lich 2', 'K14', 'Dai Hoc', 2019, 65, 1002),
(2005, 'Quan Tri Nhan Luc 3', 'K14', 'Dai Hoc', 2019, 68, 1002);

-- --------------------------------------------------------

--
-- Table structure for table `sinhvien`
--

DROP TABLE IF EXISTS `sinhvien`;
CREATE TABLE `sinhvien` (
  `maSV` int NOT NULL,
  `hoTen` varchar(30) NOT NULL,
  `ngaySinh` date DEFAULT NULL,
  `gioiTinh` int DEFAULT NULL,
  `queQuan` varchar(100) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `soDT` varchar(12) DEFAULT NULL,
  `maLop` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sinhvien`
--

INSERT INTO `sinhvien` (`maSV`, `hoTen`, `ngaySinh`, `gioiTinh`, `queQuan`, `email`, `soDT`, `maLop`) VALUES
(2019605728, 'Vu Minh Manh', '2001-05-28', 1, 'Thai Binh', 'vumanh358@gmail.com', '0967295815', 2003),
(2019605729, 'Nguyen Khanh Binh', '2002-08-24', 2, 'Thai Binh', 'binh@gmail.com', '0967295815', 2003),
(2019605730, 'Pham Tra My', '2002-08-21', 2, 'Ha Noi', 'tramyPham@gmail.com', '0989299180', 2003);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dangnhap`
--
ALTER TABLE `dangnhap`
  ADD PRIMARY KEY (`maTaiKhoan`);

--
-- Indexes for table `diemthi`
--
ALTER TABLE `diemthi`
  ADD PRIMARY KEY (`maHP`,`maSV`);

--
-- Indexes for table `giangvien`
--
ALTER TABLE `giangvien`
  ADD PRIMARY KEY (`maGV`);

--
-- Indexes for table `hocphan`
--
ALTER TABLE `hocphan`
  ADD PRIMARY KEY (`maHP`),
  ADD KEY `GV_HP` (`maGV`);

--
-- Indexes for table `hocphan_lop`
--
ALTER TABLE `hocphan_lop`
  ADD PRIMARY KEY (`maLop`,`maHP`);

--
-- Indexes for table `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`maKhoa`);

--
-- Indexes for table `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`maLop`),
  ADD KEY `lop_khoa` (`maKhoa`);

--
-- Indexes for table `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`maSV`),
  ADD KEY `sinhvien_lop` (`maLop`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `giangvien`
--
ALTER TABLE `giangvien`
  MODIFY `maGV` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `khoa`
--
ALTER TABLE `khoa`
  MODIFY `maKhoa` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;

--
-- AUTO_INCREMENT for table `lop`
--
ALTER TABLE `lop`
  MODIFY `maLop` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2006;

--
-- AUTO_INCREMENT for table `sinhvien`
--
ALTER TABLE `sinhvien`
  MODIFY `maSV` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2019605731;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hocphan`
--
ALTER TABLE `hocphan`
  ADD CONSTRAINT `GV_HP` FOREIGN KEY (`maGV`) REFERENCES `giangvien` (`maGV`);

--
-- Constraints for table `lop`
--
ALTER TABLE `lop`
  ADD CONSTRAINT `lop_khoa` FOREIGN KEY (`maKhoa`) REFERENCES `khoa` (`maKhoa`);

--
-- Constraints for table `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD CONSTRAINT `sinhvien_lop` FOREIGN KEY (`maLop`) REFERENCES `lop` (`maLop`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
