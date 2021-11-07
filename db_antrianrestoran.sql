-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2021 at 10:53 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_antrianrestoran`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_antrian`
--

CREATE TABLE `tb_antrian` (
  `id_pesanan` varchar(12) NOT NULL,
  `id_cluster` varchar(9) NOT NULL,
  `id_menu` varchar(4) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `no_antri` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_antrian`
--

INSERT INTO `tb_antrian` (`id_pesanan`, `id_cluster`, `id_menu`, `jumlah`, `no_antri`) VALUES
('AG0711212002', '071121002', 'AG02', 2, 1),
('MA0711211001', '071121001', 'MA01', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_menu`
--

CREATE TABLE `tb_menu` (
  `id_menu` varchar(4) NOT NULL,
  `nama_menu` varchar(25) NOT NULL,
  `harga_menu` int(11) NOT NULL,
  `kategori_menu` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_menu`
--

INSERT INTO `tb_menu` (`id_menu`, `nama_menu`, `harga_menu`, `kategori_menu`) VALUES
('AB01', 'Ayam Bakar', 14000, 'AB'),
('AB02', 'Ayam Bakar Madu', 16000, 'AB'),
('AG01', 'Ayam Goreng', 7000, 'AG'),
('AG02', 'Ayam Penyet', 10000, 'AG'),
('AG03', 'Ayam Geprek', 14000, 'AG'),
('MA01', 'Mie Ayam', 10000, 'MA'),
('MA02', 'Bakso', 10000, 'MA'),
('MA03', 'Mie Ayam Bakso', 15000, 'MA');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_pesanan` varchar(12) NOT NULL,
  `id_menu` varchar(4) NOT NULL,
  `kategori_menu` varchar(25) NOT NULL,
  `nama_menu` varchar(25) NOT NULL,
  `harga_menu` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_antrian`
--
ALTER TABLE `tb_antrian`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- Indexes for table `tb_menu`
--
ALTER TABLE `tb_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_pesanan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
