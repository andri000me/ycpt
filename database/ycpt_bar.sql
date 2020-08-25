-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 22 Mar 2020 pada 05.13
-- Versi Server: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ycpt_new`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `nama`, `username`, `password`, `foto`) VALUES
(2, 'Nuryanto', 'sukunraya43', 'c718ef0672f5fa23955a8381a59d8b52', 'admin.png'),
(3, 'Hernanda', 'Hernanda', '1e21d885875ce28ecd17872f40e67e05', 'Nanda1.png'),
(4, 'GSS', 'Admin', '1e21d885875ce28ecd17872f40e67e05', 'GSS_1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pembayaran`
--

CREATE TABLE `detail_pembayaran` (
  `id_detail_pembayaran` int(11) NOT NULL,
  `id_pembayaran` int(11) NOT NULL,
  `id_setting_pembayaran` int(11) NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pembayaran_psb`
--

CREATE TABLE `detail_pembayaran_psb` (
  `id_detail_pembayaran_psb` int(11) NOT NULL,
  `id_pembayaran_psb` int(11) NOT NULL,
  `id_setting_pembayaran_psb` int(11) NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_pembayaran_psb`
--

INSERT INTO `detail_pembayaran_psb` (`id_detail_pembayaran_psb`, `id_pembayaran_psb`, `id_setting_pembayaran_psb`, `nominal`) VALUES
(1, 1, 1, 1000000),
(2, 2, 3, 1200000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `id_unit_pendidikan` int(11) NOT NULL,
  `id_tipe_kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `kelas`, `id_unit_pendidikan`, `id_tipe_kelas`) VALUES
(1, 'IPA 1', 3, 2),
(2, 'IPS 1', 3, 1),
(3, 'IPA 3', 3, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas_siswa`
--

CREATE TABLE `kelas_siswa` (
  `id_kelas_siswa` int(11) NOT NULL,
  `id_tahun_ajaran` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `id_unit_pendidikan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas_siswa`
--

INSERT INTO `kelas_siswa` (`id_kelas_siswa`, `id_tahun_ajaran`, `id_kelas`, `id_unit_pendidikan`) VALUES
(3, 4, 2, 3),
(4, 4, 1, 3),
(5, 4, 3, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas_siswa_detail`
--

CREATE TABLE `kelas_siswa_detail` (
  `id_kelas_siswa_detail` int(11) NOT NULL,
  `id_kelas_siswa` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas_siswa_detail`
--

INSERT INTO `kelas_siswa_detail` (`id_kelas_siswa_detail`, `id_kelas_siswa`, `id_siswa`) VALUES
(2, 4, 1),
(3, 4, 2),
(4, 4, 3),
(5, 4, 4),
(6, 4, 5),
(7, 4, 6),
(8, 4, 7),
(9, 4, 8),
(10, 4, 9),
(11, 4, 10),
(12, 4, 11),
(13, 4, 12),
(14, 4, 13),
(15, 4, 14),
(16, 4, 15),
(17, 4, 16),
(18, 4, 17),
(19, 4, 18),
(20, 4, 19),
(21, 4, 20),
(22, 4, 21),
(23, 4, 22),
(24, 4, 23),
(25, 4, 24),
(26, 4, 25),
(27, 3, 26),
(28, 3, 27),
(29, 3, 28),
(30, 3, 29),
(31, 3, 30),
(32, 3, 31),
(33, 3, 32),
(34, 3, 33),
(35, 3, 34),
(36, 3, 35),
(37, 3, 36),
(38, 5, 37),
(39, 5, 38),
(40, 5, 39),
(41, 5, 40),
(42, 5, 41),
(43, 5, 42),
(44, 5, 43),
(45, 5, 44),
(46, 5, 45),
(47, 5, 46),
(48, 5, 47),
(49, 5, 48),
(50, 5, 49),
(51, 5, 50);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `id_tahun_ajaran` int(11) NOT NULL,
  `id_kelas_siswa_detail` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `tanggal`, `id_tahun_ajaran`, `id_kelas_siswa_detail`) VALUES
(1, '2020-03-08', 4, 1),
(2, '2020-03-08', 4, 27),
(3, '2020-03-08', 4, 27),
(4, '2020-03-08', 4, 27),
(5, '2020-03-08', 4, 27),
(6, '2020-03-08', 4, 27),
(7, '2020-03-08', 4, 27),
(8, '2020-03-08', 4, 27),
(9, '2020-03-08', 4, 27),
(10, '2020-03-08', 4, 38),
(11, '2020-03-08', 4, 2),
(12, '2020-03-08', 4, 38),
(13, '2020-03-08', 4, 38);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran_psb`
--

CREATE TABLE `pembayaran_psb` (
  `id_pembayaran_psb` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `id_tahun_ajaran` int(11) NOT NULL,
  `id_daftar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran_psb`
--

INSERT INTO `pembayaran_psb` (`id_pembayaran_psb`, `tanggal`, `id_tahun_ajaran`, `id_daftar`) VALUES
(1, '2020-03-08', 4, 2),
(2, '2020-03-08', 4, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran2`
--

CREATE TABLE `pendaftaran2` (
  `id_daftar` int(11) NOT NULL,
  `id_tahun_ajaran` int(11) NOT NULL,
  `nomor_daftar` varchar(20) NOT NULL,
  `tanggal_daftar` date NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nama_ortu` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `jenis_kelamin` varchar(20) DEFAULT 'Laki-laki',
  `sekolah_asal` varchar(100) NOT NULL,
  `id_unit_pendidikan` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pendaftaran2`
--

INSERT INTO `pendaftaran2` (`id_daftar`, `id_tahun_ajaran`, `nomor_daftar`, `tanggal_daftar`, `nama_lengkap`, `tempat_lahir`, `tanggal_lahir`, `nama_ortu`, `alamat`, `jenis_kelamin`, `sekolah_asal`, `id_unit_pendidikan`, `status`) VALUES
(1, 3, '00001', '2020-03-07', 'Daniel Siregar', 'Kalimantan', '2020-03-05', 'Wisnu', 'Kalimantan', 'Perempuan', 'SMA Bagimu Negeri', 1, 'Pending'),
(2, 4, '00001', '2020-03-08', 'Wisnu Putra Pratama', 'Brebes', '2020-03-08', 'Nurkholis', 'Losari', 'Laki-Laki', 'SMP N 03 Tanjung', 3, 'Pending'),
(3, 4, '00002', '2020-03-08', 'Dewi Savitri', 'Brebes', '2020-03-08', 'Endang', 'Kersana', 'Perempuan', 'SMP Yanida', 3, 'Pending');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting_pembayaran`
--

CREATE TABLE `setting_pembayaran` (
  `id_setting_pembayaran` int(11) NOT NULL,
  `id_unit_pendidikan` int(11) NOT NULL,
  `id_tahun_ajaran` int(11) NOT NULL,
  `id_tipe_pembayaran` int(11) NOT NULL,
  `id_tipe_kelas` int(11) NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `setting_pembayaran`
--

INSERT INTO `setting_pembayaran` (`id_setting_pembayaran`, `id_unit_pendidikan`, `id_tahun_ajaran`, `id_tipe_pembayaran`, `id_tipe_kelas`, `nominal`) VALUES
(1, 3, 4, 41, 1, 250000),
(2, 3, 4, 41, 2, 200000),
(3, 3, 4, 41, 3, 150000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting_pembayaran_psb`
--

CREATE TABLE `setting_pembayaran_psb` (
  `id_setting_pembayaran_psb` int(11) NOT NULL,
  `id_unit_pendidikan` int(11) NOT NULL,
  `id_tahun_ajaran` int(11) NOT NULL,
  `id_tipe_pembayaran` int(11) NOT NULL,
  `nominal` int(11) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL DEFAULT 'Laki-laki'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `setting_pembayaran_psb`
--

INSERT INTO `setting_pembayaran_psb` (`id_setting_pembayaran_psb`, `id_unit_pendidikan`, `id_tahun_ajaran`, `id_tipe_pembayaran`, `nominal`, `jenis_kelamin`) VALUES
(1, 3, 4, 49, 1000000, 'All'),
(2, 3, 4, 47, 1000000, 'Laki-Laki'),
(3, 3, 4, 48, 1200000, 'Perempuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `id_tahun_ajaran` int(11) NOT NULL,
  `nis` varchar(100) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nama_ortu` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `id_unit_pendidikan` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL DEFAULT 'Laki-laki',
  `id_kelas_siswa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `id_tahun_ajaran`, `nis`, `nama_siswa`, `tempat_lahir`, `tanggal_lahir`, `nama_ortu`, `alamat`, `id_unit_pendidikan`, `status`, `jenis_kelamin`, `id_kelas_siswa`) VALUES
(1, 4, '7314', 'Abdi Amiral Afsal', 'Makassar', '0000-00-00', 'Fahrur Zaenudin', 'Asrama Wiratama Blok K 45 No 40 Pudak Payung ', 3, 'Aktif', 'Laki-laki', 1),
(2, 4, '7315', 'Adhitya Iman Ramadhan', 'Semarang', '0000-00-00', 'Listiyono', 'Gang Maerasari No. 23 RT 4 RW 2 Tembalang', 3, 'Aktif', 'Laki-laki', 1),
(3, 4, '7316', 'Adinda Annisa Raffah', 'Semarang', '2004-04-01', 'Pujianto', 'Jl. Kepodang Timur III/B-123 RT 4 RW 12 Pudak Payung', 3, 'Aktif', 'Laki-laki', 1),
(4, 4, '7317', 'Akbar Nur Rochman', 'Semarang', '0000-00-00', 'Saifoel Bachri', 'Jl. Kepodang Raya A-100 RT 1 RW 14 Pudakpayung', 3, 'Aktif', 'Laki-laki', 1),
(5, 4, '7318', 'Alya Nasywa Ramadhany', 'Kabupaten Semarang', '0000-00-00', 'Djari', 'Jl. Bima II No. 7 Rt. 7 Rw. 10 Mapagan Ungaran', 3, 'Aktif', 'Laki-laki', 1),
(6, 4, '7319', 'Anisa Novia Ramadhani', 'Semarang', '0000-00-00', 'Sudiarto', 'Candi Karangpanas 736 RT 6 RW 1 Jatingaleh Candisari Tembalang', 3, 'Aktif', 'Laki-laki', 1),
(7, 4, '7320', 'Anissetya Maharani F', 'Semarang', '0000-00-00', 'Rasidjan', 'Tembalang RT 6 RW 4 Tembalang', 3, 'Aktif', 'Laki-laki', 1),
(8, 4, '7321', 'Ariq Farhan Althaf', 'Magelang', '0000-00-00', 'Nurdi Adi Windaka', 'Perum Kartika Asri Rt. 5 Rw. 15 ', 3, 'Aktif', 'Laki-laki', 1),
(9, 4, '7322', 'Asok Ilzhan Nasuda', 'Boyolali', '0000-00-00', 'Sudarmi', 'Karanganyar Banyumanik RT 1 RW 1 Banyumanik', 3, 'Aktif', 'Laki-laki', 1),
(10, 4, '7323', 'Devan Pradana Putra', 'Semarang', '0000-00-00', 'Sardi Mulyono', 'Jl. Menoreh Tengah XII Sampangan Gajah Mungkur', 3, 'Aktif', 'Laki-laki', 1),
(11, 4, '7324', 'Egi Junaidi', 'Semarang', '2004-05-03', 'Aang Junaidi', 'Perum Gedawang Pesona Asri Blog G No. 2 Gedawang', 3, 'Aktif', 'Laki-laki', 1),
(12, 4, '7325', 'Fara Fatika Aprisekawati', 'Semarang', '0000-00-00', 'M. Eko Soesanto', 'Perum Gedawang Pesona Asri II No. 3 RT2 RW 8 Gedawang', 3, 'Aktif', 'Laki-laki', 1),
(13, 4, '7326', 'Febryan Bima Ristin Akbar Satriawan', 'Kendal', '2004-01-02', 'Aries Muryadi', 'Jalan Waru Timur No. 29 Pedalangan', 3, 'Aktif', 'Laki-laki', 1),
(14, 4, '7327', 'Hardian Nur Aisya', 'Semarang', '0000-00-00', 'Hari Kristiyono', 'Kepodang Timur I/B-15 RT 1 RW 12 Pudakpayung', 3, 'Aktif', 'Laki-laki', 1),
(15, 4, '7328', 'Irham Sidiq ', 'Bandung', '0000-00-00', 'Idang Ismail', 'Mess Zonet No. 6 Wiratama Jl. Perintis Kemerdekaan', 3, 'Aktif', 'Laki-laki', 1),
(16, 4, '7329', 'Jelita Ayu Puspita', 'Semarang', '2004-09-07', 'Kusno', 'Plasansari Rt. 04 Rw. 09 Srondol Kulon Banyumanik', 3, 'Aktif', 'Laki-laki', 1),
(17, 4, '7330', 'Kinanti Rosfi', 'Semarang', '0000-00-00', 'Pribadi', 'Bangunharjo Banyumanik Rt. 04 Rw. 05', 3, 'Aktif', 'Laki-laki', 1),
(18, 4, '7331', 'Kurnia Sando Pradana', 'Semarang', '0000-00-00', 'Widodo', 'Bukit Cemara Indah II C b 14, Meteseh', 3, 'Aktif', 'Laki-laki', 1),
(19, 4, '7332', 'Maharani Citradewi', 'Semarang', '2004-06-05', 'Panut Sugihno', 'Perum Kartika Asri Blok A 4 No. 11 Pudakpayung', 3, 'Aktif', 'Laki-laki', 1),
(20, 4, '7333', 'Muhammad Agung Senoaji', 'Semarang', '2004-12-02', 'Edi Sugiarto', 'Asrama Ex Brigif V Rt. 02 Rw. 03 Srondol Wetan', 3, 'Aktif', 'Laki-laki', 1),
(21, 4, '7334', 'Novita Sari', 'Semarang', '2002-07-10', 'Ruslan', 'DK. Kedungsari Rt. 03 Rw. 08 Kel. Rowosari Kec. Tembalang', 3, 'Aktif', 'Laki-laki', 1),
(22, 4, '7335', 'Puteri Aprilinda Dewi', 'Semarang', '2004-11-04', 'Isnanto', 'Gondang Barat II No. 38', 3, 'Aktif', 'Laki-laki', 1),
(23, 4, '7336', 'Ramadhandi Raihan Fatih Wiyanto', 'Kabupaten Semarang', '2003-08-11', 'Teguh Wijayanto', 'Bumirejo Pudak Payung Rt. 06 Rw. 06 ', 3, 'Aktif', 'Laki-laki', 1),
(24, 4, '7337', 'Selfany Yohandoko', 'Semarang', '2002-09-02', 'Heksi Handoko', 'Bukit Kelapa Kopyor III/BH-24 RT 1 RW 4 Meteseh Tembalang', 3, 'Aktif', 'Laki-laki', 1),
(25, 4, '7338', 'Sevina Agustine', 'Semarang', '2004-01-08', 'Nardi', 'Jl. Gondang Barat 1 No. 4 Tembalang', 3, 'Aktif', 'Laki-laki', 1),
(26, 4, '7339', 'Shinta Widya Sari', 'Semarang', '0000-00-00', 'Widodo', 'Srondol Kulon Rt. 02 Rw. 07 Banyumanik', 3, 'Aktif', 'Laki-laki', 2),
(27, 4, '7340', 'Teuku Firdaus Satria Indiarto', 'Madiun', '0000-00-00', 'Sudarto', 'Asrama Brigif V K 38 / 4 RT 3 RW 3 Srondol Kulon', 3, 'Aktif', 'Laki-laki', 2),
(28, 4, '7341', 'Triska Amilia Savira', 'Semarang', '0000-00-00', 'Hartono', 'Jl. Kepodang Timur VII/B-217 RT 7 RW 12 Pudakpayung Banyumanik', 3, 'Aktif', 'Laki-laki', 2),
(29, 4, '7342', 'Adinda Hanifah Nur Fadhilah', 'Semarang', '0000-00-00', 'Ari Supriyanto', 'Jl. Sirojudin Gang Arjuna No. 8A Rt 02/Rw 03 Tembalang', 3, 'Aktif', 'Laki-laki', 2),
(30, 4, '7343', 'Akbar Ibnusina Caesar', 'Kab. Semarang', '2003-01-12', 'Suhono', 'Desa Leyangan Rt. 01 Rw. 01 Ungaran Timur', 3, 'Aktif', 'Laki-laki', 2),
(31, 4, '7344', 'Anisa Ayunda Kintasari', 'Semarang', '0000-00-00', 'Masdari', 'Jl. Temu Giring Rt 4 Rw 4 Banyumanik', 3, 'Aktif', 'Laki-laki', 2),
(32, 4, '7345', 'Anniza Ayu Berlianna Citra Della', 'Semarang', '0000-00-00', 'Waluyo', 'Jl. Baskoro No. 69 Rt. 03 Rw. 07 Tembalang', 3, 'Aktif', 'Laki-laki', 2),
(33, 4, '7346', 'Catur Muhammad Rossi Papalangi', 'Makassar', '0000-00-00', 'Istejo', 'Jl. Rumpun Diponegoro VI/88 D RT 3 RW 7 Banyumanik', 3, 'Aktif', 'Laki-laki', 2),
(34, 4, '7347', 'Danu Putra Ardiyan', 'Klaten', '0000-00-00', 'Sukardi', 'Perum Kartika Asri Blok B2 No. 10 RT 4 RW 15 Pudak Payung', 3, 'Aktif', 'Laki-laki', 2),
(35, 4, '7348', 'Dea Destalia Nanar', 'Semarang', '0000-00-00', 'R. Nanar arif Joko Waluyo', 'Graha Sendangmulyo Blok EE-II No. 1 RT 1 RW 26 Sendangmulyo', 3, 'Aktif', 'Laki-laki', 2),
(36, 4, '7349', 'Eden Liviany Hartanto', 'Kabupaten Semarang', '0000-00-00', 'Sutanto', 'Pudak Payung RT 6 RW 4', 3, 'Aktif', 'Laki-laki', 2),
(37, 4, '7350', 'Elvy Faza Pridyana', 'Semarang', '0000-00-00', 'Ngudiyono', 'Jl. Mulawarman Selatan RT 5 RW 2 Jabungan', 3, 'Aktif', 'Laki-laki', 3),
(38, 4, '7351', 'Esadhipa Raif Syihabuddin', 'Kabupaten Semarang', '2002-10-12', 'Mulus Budianto', 'Jl. Tanjung Sari I RT 08 RW 02 Sumurboto', 3, 'Aktif', 'Laki-laki', 3),
(39, 4, '7352', 'Firman Apriansyah El Nurahman', 'Kab. Semarang', '0000-00-00', 'Surahman', 'Grafika Widya Graha 2 RT 4 RW 10 Gedawang Banyumanik', 3, 'Aktif', 'Laki-laki', 3),
(40, 4, '7353', 'Ganis Ayunda Priyani', 'Demak', '0000-00-00', 'Supriyono', 'Jl. Durian Utara III Rt. 03 Rw. 02 Srondol Wetan Pedalangan', 3, 'Aktif', 'Laki-laki', 3),
(41, 4, '7354', 'Grace Marveline Lucky Hantiono', 'Semarang', '0000-00-00', 'Lucky Yohanes Siswandi', 'Jl. Sendang Elo No. 19 Rt. 01 Rw. 02 Banyumanik Semarang', 3, 'Aktif', 'Laki-laki', 3),
(42, 4, '7355', 'I Bagus Kurnia Prabuningrat', 'Semarang', '0000-00-00', 'Andri Hananto', 'Jl. Bendo No. 4 A Banyumanik', 3, 'Aktif', 'Laki-laki', 3),
(43, 4, '7356', 'Ika Diyansari', 'Semarang', '0000-00-00', 'Kasmian', 'Srondol Kulon Rt. 04 Rw. 07', 3, 'Aktif', 'Laki-laki', 3),
(44, 4, '7357', 'Insania Maharani', 'Demak', '2004-07-03', 'Abdul Salim', 'Sumberejo RT 2 RW 8 Mranggen Demak / Jl. Banjarsari tembalang', 3, 'Aktif', 'Laki-laki', 3),
(45, 4, '7358', 'Maria Cornellysta Putri Bintoro', 'Semarang', '0000-00-00', 'Petrus Dimas Satriyo Bintoro', 'Asrama Brimob Gombel RT 1 RW 6 Tinjomoyo Banyumanik', 3, 'Aktif', 'Laki-laki', 3),
(46, 4, '7359', 'Marisha Fitriany', 'Kabupaten Semarang', '0000-00-00', 'Margono', 'Graha Sapta Asri Jl. Tembalang Selatan III / No. 81', 3, 'Aktif', 'Laki-laki', 3),
(47, 4, '7360', 'Mita Amelia Andreani', 'Kendal', '2004-07-04', 'Muh. Fauzan', 'Jl. Ace No. 33 B Srondol Wetan Banyumanik', 3, 'Aktif', 'Laki-laki', 3),
(48, 4, '7361', 'Revalino Ghani Noer Arifin', 'Semarang', '2004-11-08', 'Zaenal Arifin', 'Banjarsari gg Almanar 35-B RT 2 RW 1 Tembalang', 3, 'Aktif', 'Laki-laki', 3),
(49, 4, '7362', 'Roy Isa Asshiddiqy', 'Semarang', '0000-00-00', 'Sukamto', 'Jl. Durian Dalam Srondol II No. 28 RT 6 RW 1 Srondol Wetan', 3, 'Aktif', 'Laki-laki', 3),
(50, 4, '7363', 'Sandy Cahyo Utomo Ilham', 'Semarang', '2000-10-18', 'Ahmad Widodo', 'Jl. Prof Suharso No. 07', 3, 'Aktif', 'Laki-laki', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa_tes`
--

CREATE TABLE `siswa_tes` (
  `id_siswa` int(11) NOT NULL,
  `id_tahun_ajaran` int(11) NOT NULL,
  `nis` varchar(100) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nama_ortu` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `id_unit_pendidikan` int(11) NOT NULL,
  `id_kelas_siswa` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahun_ajaran`
--

CREATE TABLE `tahun_ajaran` (
  `id_tahun_ajaran` int(11) NOT NULL,
  `tahun_ajaran` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tahun_ajaran`
--

INSERT INTO `tahun_ajaran` (`id_tahun_ajaran`, `tahun_ajaran`) VALUES
(1, '2017/2018'),
(2, '2018/2019'),
(3, '2019/2020'),
(4, '2020/2021');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tipe_kelas`
--

CREATE TABLE `tipe_kelas` (
  `id_tipe_kelas` int(11) NOT NULL,
  `nama_tipe_kelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tipe_kelas`
--

INSERT INTO `tipe_kelas` (`id_tipe_kelas`, `nama_tipe_kelas`) VALUES
(1, 'X'),
(2, 'XI'),
(3, 'XII'),
(4, 'VII'),
(5, 'VIII'),
(6, 'IX');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tipe_pembayaran`
--

CREATE TABLE `tipe_pembayaran` (
  `id_tipe_pembayaran` int(11) NOT NULL,
  `tipe_pembayaran` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tipe_pembayaran`
--

INSERT INTO `tipe_pembayaran` (`id_tipe_pembayaran`, `tipe_pembayaran`) VALUES
(1, 'Paket Seragam Sekolah'),
(2, 'Pakaian Olahraga'),
(3, 'Pakaian Praktek'),
(4, 'Kegiatan MPLS'),
(7, 'DAFTAR ULANG/SARANA PRASARANA'),
(8, 'UPKOS SEMESTER 1 (GANJIL)'),
(9, 'PENILAIAN AKHIR SEMESTER GANJIL'),
(10, 'PENILAIAN AKHIR TAHUN'),
(11, 'UN/UAS'),
(12, 'Tabungan'),
(17, 'SPP Bulan Januari'),
(18, 'SPP Bulan Februari'),
(19, 'SPP Bulan Maret'),
(20, 'SPP Bulan April'),
(21, 'SPP Bulan Mei'),
(22, 'SPP Bulan Juni'),
(23, 'SPP Bulan Juli'),
(24, 'SPP Bulan Agustus'),
(25, 'SPP Bulan September'),
(26, 'SPP Bulan Oktober'),
(27, 'SPP Bulan November'),
(28, 'SPP Bulan Desember'),
(29, 'Uang Pangkal TAV'),
(30, 'Uang Pangkal TKR'),
(31, 'UPKOS SEMESTER 2 (GENAP)'),
(33, 'UANG PENDAFTARAN'),
(34, 'UPKOS PER TAHUN'),
(35, 'UPKOS BULAN JULI'),
(36, 'UPKOS BULAN AGUSTUS'),
(37, 'UPKOS BULAN SEPTEMBER'),
(38, 'UPKOS BULAN OKTOBER'),
(39, 'UPKOS BULAN NOPEMBER'),
(40, 'UPKOS BULAN DESEMBER'),
(41, 'UPKOS BULAN JANUARI'),
(42, 'UPKOS BULAN PEBRUARI'),
(43, 'UPKOS BULAN MARET'),
(44, 'UPKOS BULAN APRIL'),
(45, 'UPKOS BULAN MEI'),
(46, 'UPKOS BULAN JUNI'),
(47, 'Paket Seragam Sekolah (Laki-Laki)'),
(48, 'Paket Seragam Sekolah (Perempuan)'),
(49, 'UANG PANGKAL/UP'),
(50, 'UPKOS PERTAHUN KLS X'),
(51, 'UPKOS PERTAHUN KLS XI'),
(52, 'UPKOS PERTAHUN KLS XII');

-- --------------------------------------------------------

--
-- Struktur dari tabel `unit_pendidikan`
--

CREATE TABLE `unit_pendidikan` (
  `id_unit_pendidikan` int(11) NOT NULL,
  `unit_pendidikan` varchar(100) NOT NULL,
  `alamat_sekolah` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `unit_pendidikan`
--

INSERT INTO `unit_pendidikan` (`id_unit_pendidikan`, `unit_pendidikan`, `alamat_sekolah`) VALUES
(1, 'SMP MARDISISWA 1', 'Jl. Sukun Raya No. 45 Srondol Wetan Banyumanik Semarang'),
(2, 'SMP MARDISISWA 2', ' Jl. Soekarno-Hatta No. 12 Semarang'),
(3, 'SMA MARDISISWA', 'Jl. Sukun Raya No. 45 Srondol Wetan Banyumanik Semarang'),
(4, 'SMK JAYAWISATA', 'Jl. Sukun Raya No. 45 Srondol Wetan Banyumanik Semarang'),
(5, 'SMK TLOGOSARI', ' Jl. Soekarno-Hatta No. 12 Semarang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_unit_pendidikan` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `id_unit_pendidikan`, `foto`) VALUES
(1, 'Admin SMP MARDISISWA 1', 'smpmardisiswa1', '3e3a8a9da6ad02d8b032d4ab02222a5e', 1, 'user1.png'),
(2, 'Admin SMP MARDISISWA 2', 'smpmardisiswa2', 'fae01d4ee6963b74a037e46b2cf436cf', 2, 'user2.png'),
(3, 'Admin SMA MARDISISWA', 'smamardisiswa', '01cfcd4f6b8770febfb40cb906715822', 3, 'logo_smarsis.jpg'),
(4, 'Admin SMK JAYAWISATA', 'smkjayawisata', '865dfd78bf1cf97c678fd6bb754ed57c', 4, 'logo_smk.jpg'),
(5, 'Admin SMK TLOGOSARI', 'smktlogosari', 'c802c151d1d6c118a0c68531cb28bee6', 5, 'logo_smk_tlogosari.png'),
(8, 'Nuryanto', 'smktlogosari', '4b10f03867fa35cd410f1d60d51170fa', 5, ''),
(9, 'Nuryanto', 'smkjayawisata', '4b10f03867fa35cd410f1d60d51170fa', 4, ''),
(10, 'Nuryanto', 'smamardisiswa', '4b10f03867fa35cd410f1d60d51170fa', 3, ''),
(11, 'Nuryanto', 'smpmardisiswa2', '4b10f03867fa35cd410f1d60d51170fa', 2, ''),
(12, 'Nuryanto', 'smpmardisiswa1', '4b10f03867fa35cd410f1d60d51170fa', 1, ''),
(13, 'TEST', 'test', '827ccb0eea8a706c4c34a16891f84e7b', 3, ''),
(14, 'wisnu', 'wisnu', '202cb962ac59075b964b07152d234b70', 3, 'download.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_pembayaran`
--
ALTER TABLE `detail_pembayaran`
  ADD PRIMARY KEY (`id_detail_pembayaran`);

--
-- Indexes for table `detail_pembayaran_psb`
--
ALTER TABLE `detail_pembayaran_psb`
  ADD PRIMARY KEY (`id_detail_pembayaran_psb`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `kelas_siswa`
--
ALTER TABLE `kelas_siswa`
  ADD PRIMARY KEY (`id_kelas_siswa`);

--
-- Indexes for table `kelas_siswa_detail`
--
ALTER TABLE `kelas_siswa_detail`
  ADD PRIMARY KEY (`id_kelas_siswa_detail`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `pembayaran_psb`
--
ALTER TABLE `pembayaran_psb`
  ADD PRIMARY KEY (`id_pembayaran_psb`);

--
-- Indexes for table `pendaftaran2`
--
ALTER TABLE `pendaftaran2`
  ADD PRIMARY KEY (`id_daftar`);

--
-- Indexes for table `setting_pembayaran`
--
ALTER TABLE `setting_pembayaran`
  ADD PRIMARY KEY (`id_setting_pembayaran`);

--
-- Indexes for table `setting_pembayaran_psb`
--
ALTER TABLE `setting_pembayaran_psb`
  ADD PRIMARY KEY (`id_setting_pembayaran_psb`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `siswa_tes`
--
ALTER TABLE `siswa_tes`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  ADD PRIMARY KEY (`id_tahun_ajaran`);

--
-- Indexes for table `tipe_kelas`
--
ALTER TABLE `tipe_kelas`
  ADD PRIMARY KEY (`id_tipe_kelas`);

--
-- Indexes for table `tipe_pembayaran`
--
ALTER TABLE `tipe_pembayaran`
  ADD PRIMARY KEY (`id_tipe_pembayaran`);

--
-- Indexes for table `unit_pendidikan`
--
ALTER TABLE `unit_pendidikan`
  ADD PRIMARY KEY (`id_unit_pendidikan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `detail_pembayaran`
--
ALTER TABLE `detail_pembayaran`
  MODIFY `id_detail_pembayaran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail_pembayaran_psb`
--
ALTER TABLE `detail_pembayaran_psb`
  MODIFY `id_detail_pembayaran_psb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kelas_siswa`
--
ALTER TABLE `kelas_siswa`
  MODIFY `id_kelas_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kelas_siswa_detail`
--
ALTER TABLE `kelas_siswa_detail`
  MODIFY `id_kelas_siswa_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pembayaran_psb`
--
ALTER TABLE `pembayaran_psb`
  MODIFY `id_pembayaran_psb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pendaftaran2`
--
ALTER TABLE `pendaftaran2`
  MODIFY `id_daftar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `setting_pembayaran`
--
ALTER TABLE `setting_pembayaran`
  MODIFY `id_setting_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `setting_pembayaran_psb`
--
ALTER TABLE `setting_pembayaran_psb`
  MODIFY `id_setting_pembayaran_psb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `siswa_tes`
--
ALTER TABLE `siswa_tes`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  MODIFY `id_tahun_ajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tipe_kelas`
--
ALTER TABLE `tipe_kelas`
  MODIFY `id_tipe_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tipe_pembayaran`
--
ALTER TABLE `tipe_pembayaran`
  MODIFY `id_tipe_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `unit_pendidikan`
--
ALTER TABLE `unit_pendidikan`
  MODIFY `id_unit_pendidikan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
