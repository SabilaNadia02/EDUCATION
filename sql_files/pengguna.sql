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
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `IdPengguna` int(11) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `NoHp` varchar(15) NOT NULL,
  `Kode_Paket` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`IdPengguna`, `Nama`, `Alamat`, `NoHp`, `Kode_Paket`) VALUES
(1, 'Adina Aafia Ayudia', 'Surabaya', '076245167478', 'P1'),
(2, 'Batari Bulan ', 'Malang', '0983426174732', 'P2'),
(3, 'Citra Cheryl ', 'Malang', '093627183618', 'P3'),
(4, 'Danita Daya Cempaka', 'Kediri', '098354271890', 'P1'),
(5, 'Eleanor Eve', 'Yogyakarta', '098352416789', 'P2'),
(6, 'Freya Fitri Grizelle', 'Jakarta', '085367231413', 'P3'),
(7, 'Haira Hanasta Hala', 'Yogyakarta', '063425178936', 'P3'),
(8, 'Ira Iswari', 'Jombang', '074526719873', 'P1'),
(9, 'Kiara Kamira', 'Malang', '098345278946', 'P2'),
(10, 'Lanita Lili Lingga', 'Jombang', '063425678982', 'P3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`IdPengguna`),
  ADD KEY `Kode_Paket` (`Kode_Paket`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `IdPengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD CONSTRAINT `pengguna_ibfk_1` FOREIGN KEY (`Kode_Paket`) REFERENCES `paket_belajar` (`KodePaket`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
