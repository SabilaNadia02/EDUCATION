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
-- Table structure for table `paket_belajar`
--

CREATE TABLE `paket_belajar` (
  `KodePaket` char(10) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Benefit` varchar(500) NOT NULL,
  `Harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paket_belajar`
--

INSERT INTO `paket_belajar` (`KodePaket`, `Nama`, `Benefit`, `Harga`) VALUES
('P1', 'Gold', 'Semua akses video pembelajaran, semua akses rangkuman pembelajaran, kartu anggota, dan konsultasi bersama course.', 3000000),
('P2', 'Silver', 'Sebagian akses video pembelajaran, sebagian akses rangkuman pembelajaran, dan kartu anggota. ', 2500000),
('P3', 'Perunggu', 'Sebagian akses video pembelajaran dan sebagian akses rangkuman pembelajaran.', 1500000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `paket_belajar`
--
ALTER TABLE `paket_belajar`
  ADD PRIMARY KEY (`KodePaket`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
