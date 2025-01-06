-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2018 at 11:23 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpusjav`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama_admin` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_admin`) VALUES
('A0001', 'agung', '123', 'Muhammad Agung Ramdhani');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` varchar(30) NOT NULL,
  `judul` varchar(30) NOT NULL,
  `pengarang` varchar(30) NOT NULL,
  `penerbit` varchar(30) NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `deskripsi` text NOT NULL,
  `stok` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul`, `pengarang`, `penerbit`, `kategori`, `deskripsi`, `stok`) VALUES
('B0001', 'Atomic Habits', 'James Clear', 'Gramedia', 'Bantuan Diri', 'Atomic Habits menyajikan berbagai tips yang didasarkan pada ilmu sains untuk membantu kita memperbaiki diri. Melalui pengetahuan ilmiah, buku ini memberikan dasar yang kuat untuk memahami psikologi di balik pembentukan kebiasaan.', 8),
('B0002', 'Sebuah Seni Untuk Bersikap Bodo Amat', 'Mark Manson', 'Gramedia', 'Bantuan Diri', 'buku karya Mark Manson berjudul Sebuah Seni untuk Bersikap Bodo Amat membawa perspektif yang segar terhadap konsep tersebut. Buku ini mengajak pembaca untuk melihat diri mereka dengan jujur dan menerima kenyataan bahwa manusia adalah makhluk yang tidak sempurna.', 5),
('B0003', 'Guru Aini', 'Andrea Hirata', 'Gramedia', 'Pendidikan', 'Melalui keberanian dan ketekunan seorang guru matematika bernama Desi, buku terlaris di Indonesia karya Andrea Hirata ini memaparkan realitas pahit di dunia pendidikan tanah air. ', 3);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `npm` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `fakultas` varchar(30) NOT NULL,
  `jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`npm`, `nama`, `fakultas`, `jurusan`) VALUES
('312310823', 'Muhammad Agung Ramdhani', 'Teknik', 'Teknik Informatika'),
('312310817', 'Mail Santosa', 'Teknik', 'Teknik Informatika'),
('312310822', 'Dafa Nur Haikal', 'Teknik', 'Teknik Informatika'),
('312310819', 'Kukuh Heri Setiawan', 'Teknik', 'Teknik Informatika');


-- --------------------------------------------------------

--
-- Table structure for table `pinjaman`
--

CREATE TABLE `pinjaman` (
  `id_pinjam` varchar(30) NOT NULL,
  `npm` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `id_buku` varchar(30) NOT NULL,
  `judul` varchar(30) NOT NULL,
  `jumlah` int(30) NOT NULL,
  `tgl_pinjam` varchar(30) NOT NULL,
  `tgl_balik` varchar(30) NOT NULL,
  `denda` int(30) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pinjaman`
--

INSERT INTO `pinjaman` (`id_pinjam`, `npm`, `nama`, `id_buku`, `judul`, `jumlah`, `tgl_pinjam`, `tgl_balik`, `denda`, `status`) VALUES
('P0001', '312310823', 'Muhammad Agung Ramdhani', 'B0001', 'Atomic Habits', 1, '01 November 2024', '05 November 2024', 0, 'Sudah Kembali');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`npm`);

--
-- Indexes for table `pinjaman`
--
ALTER TABLE `pinjaman`
  ADD PRIMARY KEY (`id_pinjam`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
