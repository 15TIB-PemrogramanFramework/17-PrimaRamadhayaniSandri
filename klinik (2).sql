-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 20, 2017 at 04:27 PM
-- Server version: 5.7.15-log
-- PHP Version: 5.6.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `klinik`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', '123'),
('sandri', '456');

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id_dokter` int(10) NOT NULL,
  `nama_dokter` varchar(100) NOT NULL,
  `alamat_dokter` varchar(100) NOT NULL,
  `tgl_lahir` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `nama_dokter`, `alamat_dokter`, `tgl_lahir`, `jenis_kelamin`) VALUES
(1, 'Sabwan Yulio', 'Benai', '14 juni 1990', 'Laki-laki'),
(2, 'Tetra Dona Asmira', 'Pulau Ingu', '14 oktober 1982', 'Perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama_member` varchar(50) NOT NULL,
  `alamat_member` varchar(50) NOT NULL,
  `nohp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `username`, `password`, `nama_member`, `alamat_member`, `nohp`) VALUES
(3, 'a', '123', 'aa', 'usa', '0'),
(4, 'mima', '123', 'mima', 'rumbai', '0'),
(5, 'mima1', '123', 'mima', 'rumbai', '0'),
(6, 'adek', '111', 'adek', 'usa', '2222'),
(7, 'desi', 'desi', 'desi suci', 'pekanbaru', '08712288'),
(8, 'nana', 'nana', 'nana ana', 'usa', '12345'),
(9, 'ani', '123', 'ani ani', 'rumbqi', '1234'),
(10, 'ana', 'ana', 'ana24', 'usa', '2345');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id_obat` int(10) NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `jenis_obat` varchar(100) NOT NULL,
  `jumlah` int(50) NOT NULL,
  `harga` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id_obat`, `nama_obat`, `jenis_obat`, `jumlah`, `harga`) VALUES
(1, 'candesartan', 'hipertensi', 20, 3000),
(4, 'termorek', 'demam', 2, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id_staff` int(10) NOT NULL,
  `nama_staff` varchar(50) NOT NULL,
  `alamat_staff` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id_staff`, `nama_staff`, `alamat_staff`, `jabatan`) VALUES
(1, 'Diska Wirtawela ', 'koto sentajo', 'Bidan'),
(2, 'NS.Sundari', 'Muaro Sentajo', 'Perawat'),
(4, 'Rika Hermawati', 'Poboan Hilir', 'Bidan');

-- --------------------------------------------------------

--
-- Table structure for table `waktutemu`
--

CREATE TABLE `waktutemu` (
  `id_waktutemu` int(10) NOT NULL,
  `id_dokter` int(10) NOT NULL,
  `username` int(10) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `jam` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `waktutemu`
--

INSERT INTO `waktutemu` (`id_waktutemu`, `id_dokter`, `username`, `tanggal`, `jam`) VALUES
(17, 2, 4, '2014-12-11', '19.00'),
(18, 1, 4, '2015-12-11', '10.00'),
(19, 1, 6, '2017-09-10', '14.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `id_member` (`id_member`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- Indexes for table `waktutemu`
--
ALTER TABLE `waktutemu`
  ADD PRIMARY KEY (`id_waktutemu`),
  ADD KEY `id_dokter` (`id_dokter`),
  ADD KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id_dokter` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id_obat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id_staff` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `waktutemu`
--
ALTER TABLE `waktutemu`
  MODIFY `id_waktutemu` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `waktutemu`
--
ALTER TABLE `waktutemu`
  ADD CONSTRAINT `waktutemu_ibfk_1` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`),
  ADD CONSTRAINT `waktutemu_ibfk_2` FOREIGN KEY (`username`) REFERENCES `member` (`id_member`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
