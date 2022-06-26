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
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `NoArtikel` int(11) NOT NULL,
  `Judul` varchar(100) NOT NULL,
  `Penulis` varchar(50) NOT NULL,
  `Publish` date NOT NULL,
  `Link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`NoArtikel`, `Judul`, `Penulis`, `Publish`, `Link`) VALUES
(1, 'Tips Manajemen Kelas untuk Menyambut Tahun Ajaran Baru', 'Amira', '2022-06-13', 'https://blog.kocoschools.com/2022/06/#:~:text=Tips%20Manajemen%20Kelas%20untuk%20Menyambut%20Tahun%2'),
(2, '10 Kegiatan Kelas Virtual Menyenangkan Sebelum Libur Sekolah', 'Amira', '2022-06-13', 'https://blog.kocoschools.com/10-kegiatan-kelas-virtual-menyenangkan-sebelum-libur-sekolah/'),
(3, '8 Film Tentang Masa Depan Dunia Pendidikan & Sekolah Digital', 'Amira', '2022-06-10', 'https://blog.kocoschools.com/8-film-tentang-masa-depan-dunia-pendidikan-sekolah-digital/'),
(4, 'Manfaat Learning Management System (LMS) dalam Pembelajaran Abad 21', 'Amira', '2022-06-10', 'https://blog.kocoschools.com/2022/06/#:~:text=Manfaat%20Learning%20Management%20System%20(LMS)%20dal'),
(5, '15 Web dan Aplikasi Baca Buku Online Gratis. Legal dan Bermanfaat!\r\n', 'Amira', '2022-05-19', 'https://blog.kocoschools.com/15-web-dan-aplikasi-baca-buku-online-gratis/'),
(6, 'Mau Ujian Online? Ketahui Dulu Pedoman dan Tipsnya di sini!', 'Amira', '2022-05-19', 'https://blog.kocoschools.com/mau-ujian-online-ketahui-dulu-pedoman-dan-tipsnya/'),
(7, 'Teropong Pendidikan Informal', 'Amira', '2022-06-22', 'https://www.kompasiana.com/oman85/62b28bdbbb4486690321f7d2/teropong-pendidikan-informal'),
(8, 'Menanamkan Sikap Anti Korupsi pada Remaja Milenial dalam Pembelajaran Pendidikan', 'Amira', '2022-06-22', 'https://www.kompasiana.com/fifialeyda2760/62b2a6193835006d34191675/menanamkan-sikap-anti-korupsi-pad'),
(9, 'Metaverse: Platform Pembelajaran yang Ternyata Sudah Ada di Sekitar Kita!', 'Amira', '2022-06-22', 'https://www.kompasiana.com/risda1701/62a443abbb44866d7b1e0a52/metaverse-platform-pembelajaran-yang-t'),
(10, 'Industri Kampus Vs Kampus Industri', 'Amira', '2022-06-22', 'https://www.kompasiana.com/rizi1987/62b259d338350065fc606342/industri-kampus-vs-kampus-industri');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`NoArtikel`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `NoArtikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
