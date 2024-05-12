-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2024 at 07:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental_kendaraan`
--

-- --------------------------------------------------------

--
-- Table structure for table `datarental`
--

CREATE TABLE `datarental` (
  `kode_rental` int(11) NOT NULL,
  `nama_customer` varchar(30) NOT NULL,
  `no_telp_customer` varchar(15) NOT NULL,
  `tipe_kendaraan` varchar(7) NOT NULL,
  `nama_kendaraan` varchar(30) NOT NULL,
  `biaya_perjam` int(11) NOT NULL,
  `lama_waktu_sewa` int(11) NOT NULL,
  `total_biaya` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `datarental`
--

INSERT INTO `datarental` (`kode_rental`, `nama_customer`, `no_telp_customer`, `tipe_kendaraan`, `nama_kendaraan`, `biaya_perjam`, `lama_waktu_sewa`, `total_biaya`) VALUES
(2, 'Rentol Kumar', '082221223', 'Mobil', 'Pagani Huayra', 400000, 10, 4000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datarental`
--
ALTER TABLE `datarental`
  ADD PRIMARY KEY (`kode_rental`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datarental`
--
ALTER TABLE `datarental`
  MODIFY `kode_rental` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
