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
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `IdPegawai` char(10) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `NoHp` varchar(15) NOT NULL,
  `Posisi` varchar(50) NOT NULL,
  `Gaji` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`IdPegawai`, `Nama`, `Alamat`, `NoHp`, `Posisi`, `Gaji`) VALUES
('Peg01', 'Afifah Firdausy', 'Surabaya', '085987098345', 'Admin', 3000000),
('Peg02', 'Hajar Riwanto', 'Jombang', '098765432234', 'Content Editor', 3500000),
('Peg03', 'Anggita Prameswari', 'Yogyakarta', '085678934512', 'Content Writer', 3500000),
('Peg04', 'Lalita Hila', 'Kediri', '0984672516487', 'Interaction Designer', 4000000),
('Peg05', 'Harun Hilal Abdi', 'Malang', '098456729846', 'Marketing', 3500000),
('Peg06', 'Sasa Lalisa', 'Malang', '098352849283', 'Master Teacher', 4500000),
('Peg07', 'Rama Marada', 'Jakarta', '098645738291', 'Operational and Financial ', 4500000),
('Peg08', 'Hendra Kurniawan', 'TulungAgung', '098456728984', 'QA Analyst', 5000000),
('Peg09', 'Rara Rasinta', 'Surabaya', '098456729874', 'Sales', 3000000),
('Peg10', 'Gafa Haruna', 'Jombang', '076534628645', 'Web Developer ', 6000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`IdPegawai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
