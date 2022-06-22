-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2022 at 08:05 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ruang_siswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `video_pembelajaran`
--

CREATE TABLE `video_pembelajaran` (
  `KodeVideo` char(10) NOT NULL,
  `Kode_Paket` char(10) NOT NULL,
  `Judul` varchar(50) NOT NULL,
  `Video` varchar(500) NOT NULL,
  `Rangkuman` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `video_pembelajaran`
--

INSERT INTO `video_pembelajaran` (`KodeVideo`, `Kode_Paket`, `Judul`, `Video`, `Rangkuman`) VALUES
('V1', 'P1', '[Paket Gold] Jenis-Jenis Protista Mirip Hewan (Pro', 'https://youtu.be/YqKurbKGs5c', ''),
('V10', 'P1', '[Paket Gold]  Pengertian dan Cara Penyelesaian Per', 'https://youtu.be/JImfjsDelU8', ''),
('V11', 'P2', 'Pengertian dan Cara Penyelesaian Pertidaksamaan', 'https://youtu.be/JImfjsDelU8', ''),
('V12', 'P3', 'Pengertian dan Cara Penyelesaian Pertidaksamaan', 'https://youtu.be/JImfjsDelU8', ''),
('V2', 'P2', 'Jenis-Jenis Protista Mirip Hewan (Protozoa) ', 'https://youtu.be/YqKurbKGs5c', ''),
('V3', 'P3', 'Jenis-Jenis Protista Mirip Hewan (Protozoa) ', 'https://youtu.be/YqKurbKGs5c', ''),
('V4', 'P1', '[Paket Gold]  Menghitung Gerak Vertikal dalam Perm', 'https://youtu.be/_ZRb42pLa7k', ''),
('V5', 'P2', 'Menghitung Gerak Vertikal dalam Permainan Tenis', 'https://youtu.be/_ZRb42pLa7k', ''),
('V6', 'P3', 'Menghitung Gerak Vertikal dalam Permainan Tenis', 'https://youtu.be/_ZRb42pLa7k', ''),
('V7', 'P1', '[Paket Gold] Mengenal Aspek Ekonomi Pada Masa Praa', 'https://youtu.be/-ABUX8QwwZw', ''),
('V8', 'P2', 'Mengenal Aspek Ekonomi Pada Masa Praaksara', 'https://youtu.be/-ABUX8QwwZw', ''),
('V9', 'P3', 'Mengenal Aspek Ekonomi Pada Masa Praaksara', 'https://youtu.be/-ABUX8QwwZw', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `video_pembelajaran`
--
ALTER TABLE `video_pembelajaran`
  ADD PRIMARY KEY (`KodeVideo`),
  ADD KEY `Kode_Paket` (`Kode_Paket`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `video_pembelajaran`
--
ALTER TABLE `video_pembelajaran`
  ADD CONSTRAINT `video_pembelajaran_ibfk_1` FOREIGN KEY (`Kode_Paket`) REFERENCES `paket_belajar` (`KodePaket`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
