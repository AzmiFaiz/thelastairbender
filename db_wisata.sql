-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2018 at 02:52 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_wisata`
--

-- --------------------------------------------------------

--
-- Table structure for table `foto`
--

CREATE TABLE `foto` (
  `id_foto` int(10) DEFAULT NULL,
  `id_objek_wisata` int(10) DEFAULT NULL,
  `nama_foto` varchar(100) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `harga_tiket_masuk`
--

CREATE TABLE `harga_tiket_masuk` (
  `id_harga_tiket_masuk` int(10) DEFAULT NULL,
  `id_objek_wisata` int(10) DEFAULT NULL,
  `nama_tiket_masuk` varchar(100) DEFAULT NULL,
  `harga` int(10) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_wisata_suka`
--

CREATE TABLE `jenis_wisata_suka` (
  `id_jenis_wisata_suka` int(10) DEFAULT NULL,
  `id_wisatawan` int(10) DEFAULT NULL,
  `jenis_wisata_suka` varchar(100) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `keluhan`
--

CREATE TABLE `keluhan` (
  `id_keluhan` int(10) DEFAULT NULL,
  `id_wisatawan` int(10) DEFAULT NULL,
  `id_pemerintah` int(10) DEFAULT NULL,
  `id_objek_wisata` int(10) DEFAULT NULL,
  `id_lokasi` int(10) DEFAULT NULL,
  `judul_keluhan` varchar(100) DEFAULT NULL,
  `isi_keluhan` varchar(100) DEFAULT NULL,
  `hari` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `tindak_lanjut` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `id_lokasi` int(10) DEFAULT NULL,
  `nama_lokasi` varchar(100) DEFAULT NULL,
  `id_objek_wisata` int(10) DEFAULT NULL,
  `id_pengelola` int(10) DEFAULT NULL,
  `propinsi` varchar(100) DEFAULT NULL,
  `kota_kabupaten` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  `kelurahan_desa` varchar(100) DEFAULT NULL,
  `jalan` varchar(100) DEFAULT NULL,
  `telepon` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `lokasi_gps` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `objek_wisata`
--

CREATE TABLE `objek_wisata` (
  `id_objek_wisata` int(10) DEFAULT NULL,
  `jenis_wisata` varchar(100) DEFAULT NULL,
  `nama_objek_wisata` varchar(100) DEFAULT NULL,
  `hari_operasional` varchar(100) DEFAULT NULL,
  `jam_operasional` varchar(100) DEFAULT NULL,
  `kapasitas` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pengelola` int(10) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `no_hp` varchar(100) DEFAULT NULL,
  `jenis_pekerjaan` varchar(100) DEFAULT NULL,
  `alamat_rumah` varchar(100) DEFAULT NULL,
  `alamat_domisili` varchar(100) DEFAULT NULL,
  `agama` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai_dinas`
--

CREATE TABLE `pegawai_dinas` (
  `id_pemerintah` int(10) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `no_hp` varchar(100) DEFAULT NULL,
  `jenis_pekerjaan` varchar(100) DEFAULT NULL,
  `alamat_rumah` varchar(100) DEFAULT NULL,
  `alamat_domisili` varchar(100) DEFAULT NULL,
  `agama` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pemerintah`
--

CREATE TABLE `pemerintah` (
  `id_pemerintah` int(10) DEFAULT NULL,
  `nama_dinas` varchar(100) DEFAULT NULL,
  `hari_operasional` varchar(100) DEFAULT NULL,
  `jam_operasional` varchar(100) DEFAULT NULL,
  `propinsi_lokasi` varchar(100) DEFAULT NULL,
  `kota_kabupaten_lokasi` varchar(100) DEFAULT NULL,
  `kecamatan_lokasi` varchar(100) DEFAULT NULL,
  `kelurahan_desa_lokasi` varchar(100) DEFAULT NULL,
  `nama_jalan_lokasi` varchar(100) DEFAULT NULL,
  `telepon` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `lokasi_gps` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan_peralatan`
--

CREATE TABLE `pemesanan_peralatan` (
  `id_pemesanan_peralatan` int(10) DEFAULT NULL,
  `id_pemesanan_tiket` int(10) DEFAULT NULL,
  `id_wisatawan` int(10) DEFAULT NULL,
  `id_objek_wisata` int(10) DEFAULT NULL,
  `hari` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `id_peralatan` int(10) DEFAULT NULL,
  `jumlah_peralatan` int(10) DEFAULT NULL,
  `total_harga` int(10) DEFAULT NULL,
  `id_pegawai` int(10) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan_tiket`
--

CREATE TABLE `pemesanan_tiket` (
  `id_pemesanan_tiket` int(10) DEFAULT NULL,
  `id_wisatawan` int(10) DEFAULT NULL,
  `id_objek_wisata` int(10) DEFAULT NULL,
  `hari` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `id_harga_tiket_masuk` int(10) DEFAULT NULL,
  `jumlah_tiket` int(10) DEFAULT NULL,
  `total_harga` int(10) DEFAULT NULL,
  `id_pegawai` int(10) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengelola`
--

CREATE TABLE `pengelola` (
  `id_pengelola` int(10) DEFAULT NULL,
  `nama_pengelola` varchar(100) DEFAULT NULL,
  `id_objek_wisata` int(10) DEFAULT NULL,
  `id_pegawai` int(10) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `peralatan`
--

CREATE TABLE `peralatan` (
  `id_peralatan` int(10) DEFAULT NULL,
  `id_objek_wisata` int(10) DEFAULT NULL,
  `id_lokasi` int(10) DEFAULT NULL,
  `id_pengelola` int(10) DEFAULT NULL,
  `jenis_pealatan` varchar(100) DEFAULT NULL,
  `nama_peralatan` varchar(100) DEFAULT NULL,
  `jumlah` int(10) DEFAULT NULL,
  `harga_sewa` int(10) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `perizinan`
--

CREATE TABLE `perizinan` (
  `id_perizinan` int(10) DEFAULT NULL,
  `id_pemerintah` int(10) DEFAULT NULL,
  `id_objek_wisata` int(10) DEFAULT NULL,
  `id_pengelola` int(10) DEFAULT NULL,
  `id_lokasi` int(10) DEFAULT NULL,
  `id_pegawai` int(10) DEFAULT NULL,
  `id_pegawai_dinas` int(10) DEFAULT NULL,
  `jenis_perizinan` varchar(100) DEFAULT NULL,
  `keperluan` varchar(100) DEFAULT NULL,
  `tanggal_berkas_masuk` date DEFAULT NULL,
  `tanggal_berkas_keluar` varchar(100) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `izin_berakhir_tanggal` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id_review` int(10) DEFAULT NULL,
  `id_wisatawan` int(10) DEFAULT NULL,
  `id_objek_wisata` int(10) DEFAULT NULL,
  `id_lokasi` int(10) DEFAULT NULL,
  `judul_review` varchar(100) DEFAULT NULL,
  `isi_review` varchar(100) DEFAULT NULL,
  `hari` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transportasi`
--

CREATE TABLE `transportasi` (
  `id_transportasi` int(10) DEFAULT NULL,
  `id_lokasi` int(10) DEFAULT NULL,
  `id_objek_wisata` int(10) DEFAULT NULL,
  `jenis_kendaraan` varchar(100) DEFAULT NULL,
  `no_trayek` varchar(100) DEFAULT NULL,
  `jurusan` varchar(100) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_video` int(10) DEFAULT NULL,
  `id_objek_wisata` int(10) DEFAULT NULL,
  `nama_video` varchar(100) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wistawan`
--

CREATE TABLE `wistawan` (
  `id_wisatawan` int(10) DEFAULT NULL,
  `no_hp` varchar(100) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat_rumah` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `jenis_pekerjaan` varchar(100) DEFAULT NULL,
  `pendapatan_per_bulan` int(10) DEFAULT NULL,
  `alamat_domisili` varchar(100) DEFAULT NULL,
  `agama` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `anggaran_wisata` int(10) DEFAULT NULL,
  `id_jenis_wisata_suka` int(10) DEFAULT NULL,
  `lokasi_gps` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
