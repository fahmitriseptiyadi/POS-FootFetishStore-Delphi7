-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2022 at 11:29 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokosepatu`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar_sepatu`
--

CREATE TABLE `daftar_sepatu` (
  `id_sepatu` varchar(20) NOT NULL,
  `nama_sepatu` varchar(50) NOT NULL,
  `jenis_sepatu` varchar(20) NOT NULL,
  `brand` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `daftar_sepatu`
--

INSERT INTO `daftar_sepatu` (`id_sepatu`, `nama_sepatu`, `jenis_sepatu`, `brand`) VALUES
('SPT-162207', 'Misky', 'Low', 'Ventela'),
('SPT-162231', 'Honshones', 'High', 'NoBrands'),
('SPT-164001', 'Retrodge', 'High', 'Compass');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pembelian`
--

CREATE TABLE `detail_pembelian` (
  `Id_detail_pembelian` int(11) NOT NULL,
  `no_faktur_pembelian` varchar(20) NOT NULL,
  `id_detail_sepatu` int(11) NOT NULL,
  `jumlah_sepatu` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_pembelian`
--

INSERT INTO `detail_pembelian` (`Id_detail_pembelian`, `no_faktur_pembelian`, `id_detail_sepatu`, `jumlah_sepatu`, `harga_beli`, `total_harga`, `status`) VALUES
(19, 'LPC-FT-095431', 14, 20, 200000, 4000000, 'Belum Konfirmasi'),
(20, 'LPC-FT-120409', 12, 10, 275000, 2750000, 'Belum Konfirmasi'),
(21, 'LPC-FT-144900', 12, 20, 300000, 6000000, 'Belum Konfirmasi');

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `id_detail_penjualan` int(11) NOT NULL,
  `id_detail_sepatu` int(11) NOT NULL,
  `harga_sepatu` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detail_sepatu`
--

CREATE TABLE `detail_sepatu` (
  `id_detail_sepatu` int(11) NOT NULL,
  `id_sepatu` varchar(20) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `varian` varchar(20) NOT NULL,
  `warna` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_sepatu`
--

INSERT INTO `detail_sepatu` (`id_detail_sepatu`, `id_sepatu`, `satuan`, `varian`, `warna`) VALUES
(12, 'SPT-164001', 'satuan', 'Matcha', 'White'),
(13, 'SPT-162231', 'satuan', 'Mist', 'BlackWhite (BW)'),
(14, 'SPT-162207', 'satuan', 'oldis', 'Blue');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(50) DEFAULT NULL,
  `jenis_kelamin` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `tlp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `jenis_kelamin`, `alamat`, `tlp`) VALUES
(1, 'Fahmi', 'Laki - Laki', 'Jl.RH Abdul Halim, Cigugur Tengah, Cimahi\r\n', '085156516353'),
(2, 'Nanda', 'Perempuan', 'Jl.Pesanten, Cigugur Tengah, Cimahi\r\n\r\n', '085157517345');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `no_faktur_pembelian` varchar(20) NOT NULL,
  `tgl_pembelian` date NOT NULL,
  `id_supplier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`no_faktur_pembelian`, `tgl_pembelian`, `id_supplier`) VALUES
('LPC-FT-095431', '2022-04-21', 1),
('LPC-FT-120409', '2022-04-21', 1),
('LPC-FT-144900', '2022-04-21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_user` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `no_tlp_user` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `no_faktur_penjualan` varchar(20) NOT NULL,
  `tgl_penjualan` date NOT NULL,
  `id_pelanggan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stok_sepatu`
--

CREATE TABLE `stok_sepatu` (
  `id_stok` varchar(50) NOT NULL,
  `id_detail_sepatu` int(11) NOT NULL,
  `harga_sepatu` int(20) NOT NULL,
  `jumlah_stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `alamat_supplier` varchar(70) NOT NULL,
  `tlp_supplier` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `alamat_supplier`, `tlp_supplier`) VALUES
(1, 'PT. Compass', 'Cimahi, Jawa Barat', '021-001-354'),
(2, 'PT.Ventela', 'Cimahi Utara, Kota Cimahi, 40513\r\n', '021-3320-354'),
(3, 'PT. NoBrands', 'Jln. Soekarno-Hatta No 590 Ruko MTC Blok D65, Sekejati, Kec. Buahbatu,', '083820510009');

-- --------------------------------------------------------

--
-- Table structure for table `temp_pembelian`
--

CREATE TABLE `temp_pembelian` (
  `id_detail_sepatu` varchar(50) NOT NULL DEFAULT '0',
  `harga_beli_sepatu` int(11) NOT NULL,
  `jumlah_beli` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `temp_pembelian`
--

INSERT INTO `temp_pembelian` (`id_detail_sepatu`, `harga_beli_sepatu`, `jumlah_beli`, `total_harga`) VALUES
('13', 200000, 20, 4000000);

-- --------------------------------------------------------

--
-- Table structure for table `temp_penjualan`
--

CREATE TABLE `temp_penjualan` (
  `id_detail_sepatu` varchar(20) NOT NULL,
  `harga` int(20) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `total_harga` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_sepatu`
--
ALTER TABLE `daftar_sepatu`
  ADD PRIMARY KEY (`id_sepatu`);

--
-- Indexes for table `detail_pembelian`
--
ALTER TABLE `detail_pembelian`
  ADD PRIMARY KEY (`Id_detail_pembelian`);

--
-- Indexes for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`id_detail_penjualan`);

--
-- Indexes for table `detail_sepatu`
--
ALTER TABLE `detail_sepatu`
  ADD PRIMARY KEY (`id_detail_sepatu`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`no_faktur_pembelian`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`no_faktur_penjualan`);

--
-- Indexes for table `stok_sepatu`
--
ALTER TABLE `stok_sepatu`
  ADD PRIMARY KEY (`id_stok`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `temp_pembelian`
--
ALTER TABLE `temp_pembelian`
  ADD PRIMARY KEY (`id_detail_sepatu`);

--
-- Indexes for table `temp_penjualan`
--
ALTER TABLE `temp_penjualan`
  ADD PRIMARY KEY (`id_detail_sepatu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_pembelian`
--
ALTER TABLE `detail_pembelian`
  MODIFY `Id_detail_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  MODIFY `id_detail_penjualan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail_sepatu`
--
ALTER TABLE `detail_sepatu`
  MODIFY `id_detail_sepatu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
