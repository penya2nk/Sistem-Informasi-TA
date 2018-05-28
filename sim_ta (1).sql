-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28 Mei 2018 pada 07.32
-- Versi Server: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sim_ta`
--
CREATE DATABASE IF NOT EXISTS `sim_ta` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sim_ta`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `td_review`
--

DROP TABLE IF EXISTS `td_review`;
CREATE TABLE `td_review` (
  `id` int(11) NOT NULL,
  `hasil_review` varchar(100) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `tmst_ta_id` int(11) NOT NULL,
  `tmst_dosen_nip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmst_bimbingan`
--

DROP TABLE IF EXISTS `tmst_bimbingan`;
CREATE TABLE `tmst_bimbingan` (
  `id` int(11) NOT NULL,
  `tmst_ta_id` int(11) NOT NULL,
  `tmst_mahasiswa_nim` varchar(15) NOT NULL,
  `tmst_dosen_nip` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmst_dosen`
--

DROP TABLE IF EXISTS `tmst_dosen`;
CREATE TABLE `tmst_dosen` (
  `nip` varchar(50) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `no_hp` varchar(30) NOT NULL,
  `kuota` int(10) DEFAULT NULL,
  `tmst_prodi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tmst_dosen`
--

INSERT INTO `tmst_dosen` (`nip`, `nama`, `no_hp`, `kuota`, `tmst_prodi_id`) VALUES
('197104082001121003', 'Wahyu Kurnia Dewanto, S.Kom., M.T.', '081 252 449 69', NULL, 0),
('197111151998021001', 'Adi Heru Utomo, S.Kom., M.Kom.', '085236010820', NULL, 0),
('197709292005011003', 'Didit Rahmat Hartadi S.Kom., M.T.', '085 234 609 168', NULL, 0),
('197808192005022001', 'Ika Widiastuti, S.ST., M.T.', '081 249 794 912', NULL, 0),
('198005172008121002', 'Dwi Putro Sarwo S, S.Kom., M.Kom.', '085 641 500 007', NULL, 0),
('198106152006041002', 'Syamsul Arifin, S.Kom., M.Cs.', '081 249 515 151', NULL, 0),
('198301092018031001', 'Hermawan Arief Putranto, S.T., M.T.', '081 252 465 655', NULL, 0),
('198302032006041003', 'Hendra Yufit Riskiawan, S.Kom., M.Cs.', '085 649 222 290', NULL, 0),
('198606092008122004', 'Nanik Anita M. ,S.ST.,M.T.', '081234909509', NULL, 0),
('198807022016101001', 'Husin, S.Kom., M.MT.', '081 338 338 833', NULL, 0),
('198903292015031001', 'Taufiq Rizaldi, S.ST.,M.T.', '081 332 010 455', NULL, 0),
('199104292017101001', 'Faisal Lutfi Afriansyah, S.Kom., M.T.', '081 136 205 000', NULL, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmst_mahasiswa`
--

DROP TABLE IF EXISTS `tmst_mahasiswa`;
CREATE TABLE `tmst_mahasiswa` (
  `nim` varchar(15) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `golongan` char(5) DEFAULT NULL,
  `tmst_prodi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tmst_mahasiswa`
--

INSERT INTO `tmst_mahasiswa` (`nim`, `nama`, `golongan`, `tmst_prodi_id`) VALUES
('123', 'asd', 'B', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmst_penelitian`
--

DROP TABLE IF EXISTS `tmst_penelitian`;
CREATE TABLE `tmst_penelitian` (
  `id` int(11) NOT NULL,
  `judul_penelitian` varchar(100) DEFAULT NULL,
  `kuota` int(6) DEFAULT NULL,
  `tmst_dosen_nip` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmst_prodi`
--

DROP TABLE IF EXISTS `tmst_prodi`;
CREATE TABLE `tmst_prodi` (
  `id` int(11) NOT NULL,
  `nama_prodi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tmst_prodi`
--

INSERT INTO `tmst_prodi` (`id`, `nama_prodi`) VALUES
(1, 'Manajemen Informatika'),
(2, 'Teknik Informatika'),
(3, 'Teknik Komputer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmst_proposal`
--

DROP TABLE IF EXISTS `tmst_proposal`;
CREATE TABLE `tmst_proposal` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `waktu` time DEFAULT NULL,
  `tempat` varchar(50) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `tmst_mahasiswa_nim` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmst_ta`
--

DROP TABLE IF EXISTS `tmst_ta`;
CREATE TABLE `tmst_ta` (
  `id` int(11) NOT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `tgl_input` date DEFAULT NULL,
  `deskripsi` varchar(100) DEFAULT NULL,
  `tmst_mahasiswa_nim` varchar(15) NOT NULL,
  `tmst_dosen_nip` varchar(15) NOT NULL,
  `tmst_penelitian_id` int(11) NOT NULL,
  `kategori` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmst_ta_final`
--

DROP TABLE IF EXISTS `tmst_ta_final`;
CREATE TABLE `tmst_ta_final` (
  `id` int(11) NOT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `tgl_input` date DEFAULT NULL,
  `deskripsi` varchar(100) DEFAULT NULL,
  `tmst_mahasiswa_nim` varchar(15) NOT NULL,
  `tmst_dosen_nip` varchar(15) NOT NULL,
  `tmst_penelitian_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmst_user`
--

DROP TABLE IF EXISTS `tmst_user`;
CREATE TABLE `tmst_user` (
  `id` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `level` int(5) DEFAULT NULL,
  `tmst_mahasiswa_nim` varchar(15) DEFAULT NULL,
  `tmst_dosen_nip` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tmst_user`
--

INSERT INTO `tmst_user` (`id`, `password`, `level`, `tmst_mahasiswa_nim`, `tmst_dosen_nip`) VALUES
(1, '123', 4, '123', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `td_review`
--
ALTER TABLE `td_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_td_review_tmst_ta1_idx` (`tmst_ta_id`),
  ADD KEY `fk_td_review_tmst_dosen1_idx` (`tmst_dosen_nip`);

--
-- Indexes for table `tmst_bimbingan`
--
ALTER TABLE `tmst_bimbingan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tmst_bimbingan_tmst_ta1_idx` (`tmst_ta_id`),
  ADD KEY `fk_tmst_bimbingan_tmst_mahasiswa1_idx` (`tmst_mahasiswa_nim`),
  ADD KEY `fk_tmst_bimbingan_tmst_dosen1_idx` (`tmst_dosen_nip`);

--
-- Indexes for table `tmst_dosen`
--
ALTER TABLE `tmst_dosen`
  ADD PRIMARY KEY (`nip`),
  ADD KEY `fk_tmst_dosen_tmst_prodi1_idx` (`tmst_prodi_id`);

--
-- Indexes for table `tmst_mahasiswa`
--
ALTER TABLE `tmst_mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `fk_tmst_mahasiswa_tmst_prodi_idx` (`tmst_prodi_id`);

--
-- Indexes for table `tmst_penelitian`
--
ALTER TABLE `tmst_penelitian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tmst_penelitian_tmst_dosen1_idx` (`tmst_dosen_nip`);

--
-- Indexes for table `tmst_prodi`
--
ALTER TABLE `tmst_prodi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tmst_proposal`
--
ALTER TABLE `tmst_proposal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tmst_proposal_tmst_mahasiswa1_idx` (`tmst_mahasiswa_nim`);

--
-- Indexes for table `tmst_ta`
--
ALTER TABLE `tmst_ta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tmst_ta_tmst_mahasiswa1_idx` (`tmst_mahasiswa_nim`),
  ADD KEY `fk_tmst_ta_tmst_dosen1_idx` (`tmst_dosen_nip`),
  ADD KEY `fk_tmst_ta_tmst_penelitian1_idx` (`tmst_penelitian_id`);

--
-- Indexes for table `tmst_ta_final`
--
ALTER TABLE `tmst_ta_final`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tmst_ta_final_tmst_mahasiswa1_idx` (`tmst_mahasiswa_nim`),
  ADD KEY `fk_tmst_ta_final_tmst_dosen1_idx` (`tmst_dosen_nip`),
  ADD KEY `fk_tmst_ta_final_tmst_penelitian1_idx` (`tmst_penelitian_id`);

--
-- Indexes for table `tmst_user`
--
ALTER TABLE `tmst_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tmst_user_tmst_mahasiswa1_idx` (`tmst_mahasiswa_nim`),
  ADD KEY `fk_tmst_user_tmst_dosen1_idx` (`tmst_dosen_nip`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `td_review`
--
ALTER TABLE `td_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tmst_bimbingan`
--
ALTER TABLE `tmst_bimbingan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tmst_penelitian`
--
ALTER TABLE `tmst_penelitian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tmst_prodi`
--
ALTER TABLE `tmst_prodi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tmst_proposal`
--
ALTER TABLE `tmst_proposal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tmst_ta`
--
ALTER TABLE `tmst_ta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tmst_ta_final`
--
ALTER TABLE `tmst_ta_final`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tmst_user`
--
ALTER TABLE `tmst_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `td_review`
--
ALTER TABLE `td_review`
  ADD CONSTRAINT `fk_td_review_tmst_dosen1` FOREIGN KEY (`tmst_dosen_nip`) REFERENCES `tmst_dosen` (`nip`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_td_review_tmst_ta1` FOREIGN KEY (`tmst_ta_id`) REFERENCES `tmst_ta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `tmst_bimbingan`
--
ALTER TABLE `tmst_bimbingan`
  ADD CONSTRAINT `fk_tmst_bimbingan_tmst_dosen1` FOREIGN KEY (`tmst_dosen_nip`) REFERENCES `tmst_dosen` (`nip`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tmst_bimbingan_tmst_mahasiswa1` FOREIGN KEY (`tmst_mahasiswa_nim`) REFERENCES `tmst_mahasiswa` (`nim`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tmst_bimbingan_tmst_ta1` FOREIGN KEY (`tmst_ta_id`) REFERENCES `tmst_ta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `tmst_dosen`
--
ALTER TABLE `tmst_dosen`
  ADD CONSTRAINT `fk_tmst_dosen_tmst_prodi1` FOREIGN KEY (`tmst_prodi_id`) REFERENCES `tmst_prodi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `tmst_mahasiswa`
--
ALTER TABLE `tmst_mahasiswa`
  ADD CONSTRAINT `fk_tmst_mahasiswa_tmst_prodi` FOREIGN KEY (`tmst_prodi_id`) REFERENCES `tmst_prodi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `tmst_penelitian`
--
ALTER TABLE `tmst_penelitian`
  ADD CONSTRAINT `fk_tmst_penelitian_tmst_dosen1` FOREIGN KEY (`tmst_dosen_nip`) REFERENCES `tmst_dosen` (`nip`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `tmst_proposal`
--
ALTER TABLE `tmst_proposal`
  ADD CONSTRAINT `fk_tmst_proposal_tmst_mahasiswa1` FOREIGN KEY (`tmst_mahasiswa_nim`) REFERENCES `tmst_mahasiswa` (`nim`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `tmst_ta`
--
ALTER TABLE `tmst_ta`
  ADD CONSTRAINT `fk_tmst_ta_tmst_dosen1` FOREIGN KEY (`tmst_dosen_nip`) REFERENCES `tmst_dosen` (`nip`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tmst_ta_tmst_mahasiswa1` FOREIGN KEY (`tmst_mahasiswa_nim`) REFERENCES `tmst_mahasiswa` (`nim`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tmst_ta_tmst_penelitian1` FOREIGN KEY (`tmst_penelitian_id`) REFERENCES `tmst_penelitian` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `tmst_ta_final`
--
ALTER TABLE `tmst_ta_final`
  ADD CONSTRAINT `fk_tmst_ta_final_tmst_dosen1` FOREIGN KEY (`tmst_dosen_nip`) REFERENCES `tmst_dosen` (`nip`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tmst_ta_final_tmst_mahasiswa1` FOREIGN KEY (`tmst_mahasiswa_nim`) REFERENCES `tmst_mahasiswa` (`nim`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tmst_ta_final_tmst_penelitian1` FOREIGN KEY (`tmst_penelitian_id`) REFERENCES `tmst_penelitian` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `tmst_user`
--
ALTER TABLE `tmst_user`
  ADD CONSTRAINT `fk_tmst_user_tmst_dosen1` FOREIGN KEY (`tmst_dosen_nip`) REFERENCES `tmst_dosen` (`nip`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tmst_user_tmst_mahasiswa1` FOREIGN KEY (`tmst_mahasiswa_nim`) REFERENCES `tmst_mahasiswa` (`nim`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;