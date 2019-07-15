-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jul 2019 pada 10.19
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtugaslearning`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbjurusan`
--

CREATE TABLE `tbjurusan` (
  `JURUSAN_ID` int(10) NOT NULL,
  `NAMA` char(15) NOT NULL,
  `ALAMAT` varchar(30) NOT NULL,
  `NIM` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbmatkul`
--

CREATE TABLE `tbmatkul` (
  `MATKUL_ID` int(10) NOT NULL,
  `NAMA` char(15) NOT NULL,
  `NIM` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbquery`
--

CREATE TABLE `tbquery` (
  `Query_ID` int(10) NOT NULL,
  `ISI` varchar(100) NOT NULL,
  `TGL_POST` varchar(15) NOT NULL,
  `NIM` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbsiswa`
--

CREATE TABLE `tbsiswa` (
  `NIM` int(10) NOT NULL,
  `NAMA` char(20) NOT NULL,
  `ALAMAT` varchar(30) NOT NULL,
  `HP` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbstudycenter`
--

CREATE TABLE `tbstudycenter` (
  `CENTER_ID` int(7) NOT NULL,
  `NAMA` varchar(7) NOT NULL,
  `lokasi` varchar(20) NOT NULL,
  `NIM` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbukt`
--

CREATE TABLE `tbukt` (
  `ID_UKT` int(15) NOT NULL,
  `tgl_bayar` int(10) NOT NULL,
  `NIM` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbjurusan`
--
ALTER TABLE `tbjurusan`
  ADD PRIMARY KEY (`JURUSAN_ID`),
  ADD KEY `index` (`NIM`);

--
-- Indeks untuk tabel `tbmatkul`
--
ALTER TABLE `tbmatkul`
  ADD PRIMARY KEY (`MATKUL_ID`),
  ADD KEY `NIM` (`NIM`);

--
-- Indeks untuk tabel `tbquery`
--
ALTER TABLE `tbquery`
  ADD PRIMARY KEY (`Query_ID`),
  ADD KEY `NIM` (`NIM`);

--
-- Indeks untuk tabel `tbsiswa`
--
ALTER TABLE `tbsiswa`
  ADD PRIMARY KEY (`NIM`);

--
-- Indeks untuk tabel `tbstudycenter`
--
ALTER TABLE `tbstudycenter`
  ADD PRIMARY KEY (`CENTER_ID`),
  ADD KEY `NIM` (`NIM`);

--
-- Indeks untuk tabel `tbukt`
--
ALTER TABLE `tbukt`
  ADD PRIMARY KEY (`ID_UKT`),
  ADD KEY `NIM` (`NIM`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbjurusan`
--
ALTER TABLE `tbjurusan`
  ADD CONSTRAINT `tbjurusan_ibfk_1` FOREIGN KEY (`NIM`) REFERENCES `tbsiswa` (`NIM`);

--
-- Ketidakleluasaan untuk tabel `tbmatkul`
--
ALTER TABLE `tbmatkul`
  ADD CONSTRAINT `tbmatkul_ibfk_1` FOREIGN KEY (`NIM`) REFERENCES `tbsiswa` (`NIM`);

--
-- Ketidakleluasaan untuk tabel `tbquery`
--
ALTER TABLE `tbquery`
  ADD CONSTRAINT `tbquery_ibfk_1` FOREIGN KEY (`NIM`) REFERENCES `tbsiswa` (`NIM`);

--
-- Ketidakleluasaan untuk tabel `tbstudycenter`
--
ALTER TABLE `tbstudycenter`
  ADD CONSTRAINT `tbstudycenter_ibfk_1` FOREIGN KEY (`NIM`) REFERENCES `tbsiswa` (`NIM`);

--
-- Ketidakleluasaan untuk tabel `tbukt`
--
ALTER TABLE `tbukt`
  ADD CONSTRAINT `tbukt_ibfk_1` FOREIGN KEY (`NIM`) REFERENCES `tbsiswa` (`NIM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
