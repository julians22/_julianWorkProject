-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Feb 2020 pada 08.39
-- Versi server: 10.1.35-MariaDB
-- Versi PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hc`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `departemen`
--

CREATE TABLE `departemen` (
  `id` int(11) NOT NULL,
  `nama_departemen` varchar(122) NOT NULL,
  `dep_head` varchar(8) NOT NULL,
  `div_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `departemen`
--

INSERT INTO `departemen` (`id`, `nama_departemen`, `dep_head`, `div_id`) VALUES
(1, 'CEO Office', '#N/A', 1),
(2, 'Corporate Development', 'CG000446', 1),
(3, 'Corporate PMO', 'CG000241', 1),
(4, 'Product Development', 'CG000609', 1),
(5, 'Estate Acquisition', 'CG000046', 2),
(6, 'MNO Sales', '#N/A', 2),
(7, 'Estate Development', '#N/A', 2),
(8, 'Regional Sales', 'CG000111', 2),
(9, 'Sales Account 1', 'CG000225', 2),
(10, 'Sales Account 2', 'CG000153', 2),
(11, 'Finance', '#N/A', 3),
(12, 'Corp. Finance & Commercial Control', 'CG000208', 3),
(13, 'Corp. Secretary & Legal', 'CG000010', 3),
(14, 'Finance & Accounting', 'CG000054', 3),
(15, 'Information Technology', 'CG000314', 3),
(16, 'Procurement and Supply Chain', 'CG000520', 3),
(17, 'Delivery', '#N/A', 4),
(18, 'Engineering Design', 'CG000217', 4),
(19, 'Field Maintenance', 'CG000552', 4),
(20, 'Implementation Account 1', 'CG000063', 4),
(21, 'Implementation Account 2', 'CG000267', 4),
(22, 'iVAS', '#N/A', 5),
(23, 'Internet Sales', 'CG000585', 5),
(24, 'iVAS Delivery', 'CG000378', 5),
(25, 'VAS Sales', '2019-4', 5),
(26, 'Human Capital', '#N/A', 6),
(27, 'Compensation & Benefit', 'CG000067', 6),
(28, 'General Affairs', 'CG000422', 6),
(29, 'Organization Development', 'CG000619', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `divisi`
--

CREATE TABLE `divisi` (
  `id` int(11) NOT NULL,
  `division` varchar(122) NOT NULL,
  `nik_div_head` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `divisi`
--

INSERT INTO `divisi` (`id`, `division`, `nik_div_head`) VALUES
(1, 'CEO Office', 'CG000001'),
(2, 'MNO Sales', 'CG000003'),
(3, 'Finance', 'CG000002'),
(4, 'Delivery', 'CG000219'),
(5, 'iVAS', 'CG000569'),
(6, 'Human Capital', 'CG000006');

-- --------------------------------------------------------

--
-- Struktur dari tabel `employe`
--

CREATE TABLE `employe` (
  `id` int(11) NOT NULL,
  `nik` varchar(8) NOT NULL,
  `password` varchar(122) NOT NULL,
  `emp_name` varchar(122) NOT NULL,
  `is_active` int(1) NOT NULL,
  `position_id` int(11) NOT NULL,
  `level_org` varchar(50) NOT NULL,
  `id_dep` int(11) NOT NULL,
  `id_div` int(11) NOT NULL,
  `id_entity` int(11) NOT NULL,
  `role_id` int(1) NOT NULL,
  `akses_surat_id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `employe`
--

INSERT INTO `employe` (`id`, `nik`, `password`, `emp_name`, `is_active`, `position_id`, `level_org`, `id_dep`, `id_div`, `id_entity`, `role_id`, `akses_surat_id`) VALUES
(1, 'CG000002', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Hartanto Kusmanto', 1, 138, 'N', 11, 3, 3, 3, 0),
(2, 'CG000003', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Yuana Susatyo', 1, 299, 'N', 19, 2, 4, 3, 0),
(3, 'CG000006', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Michael Loebis', 1, 196, 'N', 26, 6, 4, 2, 1),
(4, 'CG000007', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Evi Ihdina Eksir', 1, 177, 'N-3 & Below', 16, 3, 3, 3, 0),
(5, 'CG000008', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Erwin Fuadi', 1, 21, 'N-3 & Below', 18, 4, 3, 3, 0),
(6, 'CG000009', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Syarifuddin', 1, 92, 'N-3 & Below', 19, 4, 3, 3, 0),
(7, 'CG000010', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Wiwik Septriandewi', 1, 130, 'N-1', 13, 3, 3, 3, 0),
(8, 'CG000011', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Mulayana Haris', 1, 155, 'N-2', 15, 3, 3, 3, 0),
(9, 'CG000012', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Harni Marwati', 1, 153, 'N-3 & Below', 14, 3, 3, 3, 0),
(10, 'CG000014', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Herry Nugroho', 1, 64, 'N-2', 20, 4, 4, 3, 0),
(11, 'CG000015', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Akhmad Sopan Mukti', 1, 260, 'N-3 & Below', 24, 5, 4, 3, 0),
(12, 'CG000017', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Deddy Rosadi K.', 1, 32, 'N-3 & Below', 19, 4, 4, 3, 0),
(13, 'CG000028', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Rachmat', 1, 30, 'N-3 & Below', 19, 4, 4, 3, 0),
(14, 'CG000030', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Joko Purnomo', 1, 257, 'N-3 & Below', 24, 5, 4, 3, 0),
(15, 'CG000035', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Dimas Danung Prianggono', 1, 223, 'N-3 & Below', 10, 2, 4, 3, 0),
(16, 'CG000036', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Sutarko', 1, 192, 'N-3 & Below', 28, 6, 3, 2, 2),
(17, 'CG000037', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Karina Afriyanti', 1, 136, 'N-2', 13, 3, 3, 3, 0),
(18, 'CG000038', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Rosita', 1, 175, 'N-3 & Below', 16, 3, 4, 3, 0),
(19, 'CG000039', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Suhardi', 1, 61, 'N-3 & Below', 21, 4, 3, 3, 0),
(20, 'CG000040', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Risqa Fudianti', 1, 82, 'N-3 & Below', 21, 4, 3, 3, 0),
(21, 'CG000042', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Benny Suhancolo', 1, 291, 'N-3 & Below', 7, 2, 4, 3, 0),
(22, 'CG000043', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Rusda Rachmawati', 1, 174, 'N-3 & Below', 16, 3, 4, 3, 0),
(23, 'CG000044', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Roni', 1, 122, 'N-3 & Below', 12, 3, 4, 3, 0),
(24, 'CG000045', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'M. Syarif Hidayatulloh', 1, 116, 'N-3 & Below', 19, 4, 4, 3, 0),
(25, 'CG000046', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Rinto Suharmoko', 1, 277, 'N-1', 5, 2, 4, 3, 0),
(26, 'CG000048', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Joe Niandhika Baskoro', 1, 249, 'N-3 & Below', 24, 5, 4, 3, 0),
(27, 'CG000049', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Alimin Nasri', 1, 184, 'N-3 & Below', 28, 6, 3, 2, 2),
(28, 'CG000050', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Bayu Febriant Purba', 1, 232, 'Functional', 22, 5, 4, 3, 0),
(29, 'CG000051', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Wawan Hermawan Indra Kesuma', 1, 116, 'N-3 & Below', 19, 4, 4, 3, 0),
(30, 'CG000052', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Suci Roghayah', 1, 168, 'N-3 & Below', 16, 3, 3, 3, 0),
(31, 'CG000053', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Shinta Risnawatie', 1, 150, 'N-2', 14, 3, 3, 3, 0),
(32, 'CG000054', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Rosi Rachmawati', 1, 147, 'N-1', 14, 3, 3, 3, 0),
(33, 'CG000057', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Radhitya Ivannov Putra', 1, 75, 'N-3 & Below', 21, 4, 4, 3, 0),
(34, 'CG000059', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Sarono', 1, 15, 'N-3 & Below', 18, 4, 4, 3, 0),
(35, 'CG000060', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Yuana Oktafiani', 1, 140, 'N-3 & Below', 14, 3, 4, 3, 0),
(36, 'CG000063', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Anas Saiful Bakhri', 1, 63, 'N-1', 20, 4, 3, 3, 0),
(37, 'CG000065', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Siti Sari Fatimah', 1, 54, 'N-3 & Below', 21, 4, 4, 3, 0),
(38, 'CG000066', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Kilpatrick Pattinaya', 1, 223, 'N-3 & Below', 25, 5, 4, 3, 0),
(39, 'CG000067', '$2y$10$0ahMmPQrl2OWGUKftUD1.e1GlL/Z6VIU.wErg/etYcnB8AiPzLWTa', 'Ayu Kurnia Agustin', 1, 182, 'N-1', 27, 6, 3, 2, 2),
(40, 'CG000068', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Yessy Meilani', 1, 187, 'N-2', 28, 6, 3, 2, 2),
(41, 'CG000069', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Seno Suroso', 1, 280, 'N-3 & Below', 5, 2, 4, 3, 0),
(42, 'CG000072', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Indri Nur Hikmawati', 1, 79, 'N-3 & Below', 21, 4, 3, 3, 0),
(43, 'CG000073', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Eva Cipta Ningrum', 1, 137, 'Functional', 13, 3, 3, 3, 0),
(44, 'CG000074', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Gina Pratiwi Hermina Dewi', 1, 68, 'N-3 & Below', 20, 4, 4, 3, 0),
(45, 'CG000077', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Sofyan', 1, 310, 'N-2', 10, 2, 4, 3, 0),
(46, 'CG000079', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Adi Margono', 1, 185, 'N-3 & Below', 28, 6, 4, 2, 2),
(47, 'CG000082', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Ahmad Taqiyuddin', 1, 0, 'N-3 & Below', 19, 4, 4, 3, 0),
(48, 'CG000087', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Ari Chandra Adryanto', 1, 260, 'N-3 & Below', 24, 5, 4, 3, 0),
(49, 'CG000088', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Arief Fadilah', 1, 16, 'N-3 & Below', 18, 4, 4, 3, 0),
(50, 'CG000094', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Bayu Renawiyati', 1, 143, 'N-3 & Below', 14, 3, 4, 3, 0),
(51, 'CG000095', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Bonny Arfian', 1, 21, 'N-3 & Below', 18, 4, 4, 3, 0),
(52, 'CG000097', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Carwito', 1, 55, 'N-3 & Below', 20, 4, 4, 3, 0),
(53, 'CG000100', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Deni Wahyudin', 1, 259, 'N-3 & Below', 24, 5, 4, 3, 0),
(54, 'CG000102', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Dian Ajeng Puspita', 1, 154, 'N-3 & Below', 14, 3, 4, 3, 0),
(55, 'CG000103', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Dian Febriyanti', 1, 189, 'N-3 & Below', 28, 6, 4, 2, 2),
(56, 'CG000104', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Dicky Hermanto', 1, 118, 'N-3 & Below', 19, 4, 4, 3, 0),
(57, 'CG000106', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Dyan Kusumawardhani', 1, 123, 'N-3 & Below', 12, 3, 4, 3, 0),
(58, 'CG000109', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Edwinda Ramadhani', 1, 22, 'N-2', 18, 4, 4, 3, 0),
(59, 'CG000110', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Efendi Syarifudin', 1, 180, 'N-3 & Below', 16, 3, 4, 3, 0),
(60, 'CG000111', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Eko Budi Wibowo', 1, 297, 'N-1', 8, 2, 4, 3, 0),
(61, 'CG000112', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Firman Joko Puspito', 1, 56, 'N-3 & Below', 20, 4, 4, 3, 0),
(62, 'CG000113', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Franciska Tini Lestari', 1, 62, 'N-3 & Below', 19, 4, 4, 3, 0),
(63, 'CG000114', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Hardiawan', 1, 107, 'N-2', 19, 4, 4, 3, 0),
(64, 'CG000117', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Hendra Triyana', 1, 110, 'N-3 & Below', 19, 4, 4, 3, 0),
(65, 'CG000118', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Hengky Hardiyanto', 1, 58, 'N-3 & Below', 20, 4, 4, 3, 0),
(66, 'CG000121', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Imam Syafii', 1, 184, 'N-3 & Below', 28, 6, 4, 2, 2),
(67, 'CG000123', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Intan Rachmayanti', 1, 17, 'Functional', 18, 4, 4, 3, 0),
(68, 'CG000124', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Irma Yanti', 1, 91, 'N-3 & Below', 19, 4, 4, 3, 0),
(69, 'CG000128', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Joni', 1, 20, 'N-2', 18, 4, 4, 3, 0),
(70, 'CG000133', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Lia Yuliati', 1, 176, 'N-3 & Below', 16, 3, 4, 3, 0),
(71, 'CG000134', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Linda Aryani', 1, 118, 'N-3 & Below', 19, 4, 4, 3, 0),
(72, 'CG000136', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Lutfi Hanafi', 1, 249, 'N-3 & Below', 24, 5, 4, 3, 0),
(73, 'CG000138', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'M. Ridwan', 1, 118, 'N-3 & Below', 19, 4, 4, 3, 0),
(74, 'CG000140', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Marisa Purnasari', 1, 66, 'N-3 & Below', 20, 4, 4, 3, 0),
(75, 'CG000146', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Muhsin Sobri', 1, 16, 'N-3 & Below', 18, 4, 4, 3, 0),
(76, 'CG000151', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Pritta Septianingsih', 1, 41, 'Functional', 19, 4, 4, 3, 0),
(77, 'CG000153', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Richard Oktavianus', 1, 311, 'N-1', 10, 2, 4, 3, 0),
(78, 'CG000157', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Saardan', 1, 42, 'N-3 & Below', 19, 4, 4, 3, 0),
(79, 'CG000159', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Siti Umamah', 1, 191, 'N-3 & Below', 28, 6, 4, 2, 2),
(80, 'CG000161', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Sri Dewi Rahayu', 1, 223, 'N-3 & Below', 25, 5, 4, 3, 0),
(81, 'CG000162', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Sudarmono', 1, 47, 'N-3 & Below', 19, 4, 4, 3, 0),
(82, 'CG000163', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Suharto', 1, 75, 'N-3 & Below', 21, 4, 4, 3, 0),
(83, 'CG000164', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Supriyanto', 1, 259, 'N-3 & Below', 24, 5, 4, 3, 0),
(84, 'CG000165', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Sutarjo', 1, 76, 'N-3 & Below', 19, 4, 4, 3, 0),
(85, 'CG000166', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Suyitno', 1, 57, 'N-3 & Below', 20, 4, 4, 3, 0),
(86, 'CG000171', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Triswanto', 1, 144, 'N-3 & Below', 14, 3, 4, 3, 0),
(87, 'CG000176', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Yunus Andriyanto', 1, 289, 'N-3 & Below', 7, 2, 4, 3, 0),
(88, 'CG000177', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Zaenal Arifin', 1, 113, 'N-3 & Below', 19, 4, 4, 3, 0),
(89, 'CG000179', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Alvin Setiadi', 1, 180, 'N-3 & Below', 16, 3, 4, 3, 0),
(90, 'CG000180', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Dian Haryanto', 1, 164, 'N-2', 15, 3, 3, 3, 0),
(91, 'CG000182', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Feri Fachrudin Adinegara', 1, 279, 'N-2', 5, 2, 3, 3, 0),
(92, 'CG000184', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Abdul Hamid Wijaya', 1, 40, 'N-2', 19, 4, 3, 3, 0),
(93, 'CG000187', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Putri Permatasari', 1, 76, 'N-3 & Below', 19, 4, 4, 3, 0),
(94, 'CG000189', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Dewi Retno Sembodo', 1, 181, 'N-2', 27, 6, 4, 2, 2),
(95, 'CG000190', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Iwan Setiawan', 1, 39, 'N-2', 19, 4, 4, 3, 0),
(96, 'CG000191', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Ade Sukma Winata', 1, 243, 'Functional', 24, 5, 4, 3, 0),
(97, 'CG000193', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Hadi Wibowo', 1, 67, 'N-2', 21, 4, 3, 3, 0),
(98, 'CG000194', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Karina Farianti Safari', 1, 132, 'Functional', 13, 3, 4, 3, 0),
(99, 'CG000195', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Mega Triwulandari', 1, 300, 'Functional', 19, 2, 4, 3, 0),
(100, 'CG000196', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Andry Azis', 1, 280, 'N-3 & Below', 5, 2, 4, 3, 0),
(101, 'CG000198', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'R. Bambang Pantja Poerhandhoko', 1, 62, 'N-3 & Below', 20, 4, 3, 3, 0),
(102, 'CG000203', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Yuliantoro', 1, 172, 'N-3 & Below', 16, 3, 4, 3, 0),
(103, 'CG000204', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Slamet Afiyanto', 1, 110, 'N-3 & Below', 19, 4, 4, 3, 0),
(104, 'CG000207', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Andi Triyono', 1, 249, 'N-3 & Below', 24, 5, 4, 3, 0),
(105, 'CG000208', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Michael Hanindhya', 1, 127, 'N-1', 12, 3, 4, 3, 0),
(106, 'CG000209', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Irfan Sya\'roni', 1, 142, 'N-3 & Below', 14, 3, 4, 3, 0),
(107, 'CG000211', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Putu Verdika A', 1, 157, 'N-3 & Below', 15, 3, 4, 3, 0),
(108, 'CG000214', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Pricilia Puspita Dewi', 1, 106, 'N-3 & Below', 19, 4, 4, 3, 0),
(109, 'CG000215', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Ahmad Firdaus', 1, 26, 'N-3 & Below', 18, 4, 4, 3, 0),
(110, 'CG000217', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Herry Zulfan', 1, 18, 'N-1', 18, 4, 4, 3, 0),
(111, 'CG000218', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Endi Sudrajat', 1, 184, 'N-3 & Below', 28, 6, 3, 2, 2),
(112, 'CG000219', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Adi Mulyono', 1, 14, 'N', 17, 4, 3, 3, 0),
(113, 'CG000220', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Anastasia Christine', 1, 288, 'N-3 & Below', 7, 2, 4, 3, 0),
(114, 'CG000221', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Rusmanta', 1, 129, 'N-2', 13, 3, 4, 3, 0),
(115, 'CG000223', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Yulia Irawati', 1, 54, 'N-3 & Below', 20, 4, 3, 3, 0),
(116, 'CG000225', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Nurhidaya Rusdi', 1, 303, 'N-1', 9, 2, 3, 3, 0),
(117, 'CG000226', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Budi Arta K', 1, 31, 'N-3 & Below', 19, 4, 4, 3, 0),
(118, 'CG000227', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Hendra Permana', 1, 44, 'N-3 & Below', 19, 4, 3, 3, 0),
(119, 'CG000228', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Kitson Hutabarat', 1, 81, 'N-2', 21, 4, 3, 3, 0),
(120, 'CG000236', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Radi Rusmana', 1, 184, 'N-3 & Below', 28, 6, 4, 2, 2),
(121, 'CG000238', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Farid Ridwan', 1, 65, 'N-2', 20, 4, 3, 3, 0),
(122, 'CG000239', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Ribowo', 1, 103, 'N-3 & Below', 19, 4, 3, 3, 0),
(123, 'CG000241', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Henry Charles', 1, 6, 'N-1', 3, 1, 3, 3, 0),
(124, 'CG000243', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Noviana Fransiska Samosir', 1, 223, 'N-3 & Below', 10, 2, 3, 3, 0),
(125, 'CG000244', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Adhiskara Subandi', 1, 21, 'N-3 & Below', 18, 4, 4, 3, 0),
(126, 'CG000246', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Clara Joyce Kosasih', 1, 123, 'N-3 & Below', 12, 3, 3, 3, 0),
(127, 'CG000247', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Teja Permana', 1, 158, 'N-2', 15, 3, 4, 3, 0),
(128, 'CG000248', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Abdul Zahid', 1, 24, 'N-3 & Below', 18, 4, 4, 3, 0),
(129, 'CG000250', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Mejisal Jumawan', 1, 90, 'N-3 & Below', 21, 4, 3, 3, 0),
(130, 'CG000253', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Muksin', 1, 48, 'N-3 & Below', 19, 4, 4, 3, 0),
(131, 'CG000255', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Yuyun Fitriyani', 1, 76, 'N-3 & Below', 19, 4, 4, 3, 0),
(132, 'CG000259', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Cahya Dhamayanti', 1, 283, 'Functional', 7, 2, 4, 3, 0),
(133, 'CG000262', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Deni Syarif Hamdani', 1, 45, 'N-3 & Below', 19, 4, 3, 3, 0),
(134, 'CG000263', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Syaeful Yusuf Surawijaya', 1, 247, 'N-3 & Below', 24, 5, 4, 3, 0),
(135, 'CG000264', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Agus Heryadi', 1, 23, 'N-3 & Below', 18, 4, 4, 3, 0),
(136, 'CG000267', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Khaidir Kasim', 1, 78, 'N-1', 21, 4, 3, 3, 0),
(137, 'CG000268', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'M. Mahdi', 1, 118, 'N-3 & Below', 19, 4, 4, 3, 0),
(138, 'CG000269', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Eko Prastia Firmansyah', 1, 293, 'N-1', 7, 2, 3, 3, 0),
(139, 'CG000271', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Bayu Permono', 1, 76, 'N-3 & Below', 19, 4, 4, 3, 0),
(140, 'CG000272', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Henry Agus Pradipta', 1, 15, 'N-3 & Below', 18, 4, 4, 3, 0),
(141, 'CG000275', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Andrian Tantra', 1, 124, 'N-2', 12, 3, 4, 3, 0),
(142, 'CG000278', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Anne Effendi', 1, 190, 'N-1', 28, 6, 3, 2, 2),
(143, 'CG000282', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Ibnu Zulkarnaen', 1, 112, 'N-3 & Below', 19, 4, 4, 3, 0),
(144, 'CG000286', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Yudo Dwi Permana', 1, 90, 'N-3 & Below', 21, 4, 3, 3, 0),
(145, 'CG000287', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Fenny Haryanto', 1, 183, 'N-2', 27, 6, 4, 2, 2),
(146, 'CG000288', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Taqwim Kurniawan', 1, 275, 'N-3 & Below', 5, 2, 4, 3, 0),
(147, 'CG000289', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Giri Gumilar', 1, 289, 'N-3 & Below', 7, 2, 4, 3, 0),
(148, 'CG000291', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Oyon Karyono', 1, 119, 'N-3 & Below', 19, 4, 4, 3, 0),
(149, 'CG000294', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Rinal Divayana', 1, 128, 'N-3 & Below', 13, 3, 4, 3, 0),
(150, 'CG000295', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Tri Rahayu', 1, 35, 'N-3 & Below', 19, 4, 4, 3, 0),
(151, 'CG000296', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Fajar Sepdiantoro', 1, 113, 'N-3 & Below', 19, 4, 4, 3, 0),
(152, 'CG000297', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Mahyudin', 1, 59, 'N-3 & Below', 21, 4, 4, 3, 0),
(153, 'CG000299', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Nurhasan Bashiruddin', 1, 112, 'N-3 & Below', 19, 4, 3, 3, 0),
(154, 'CG000301', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Sapuroh', 1, 139, 'N-3 & Below', 14, 3, 3, 3, 0),
(155, 'CG000304', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Santoni', 1, 179, 'N-3 & Below', 16, 3, 4, 3, 0),
(156, 'CG000309', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Yuli Rahmanita', 1, 70, 'N-3 & Below', 21, 4, 3, 3, 0),
(157, 'CG000310', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Ade Ricky Kurniawan', 1, 249, 'N-3 & Below', 24, 5, 4, 3, 0),
(158, 'CG000314', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Setyo Wibowo', 1, 159, 'N-1', 15, 3, 3, 3, 0),
(159, 'CG000315', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Selvia Dwi Julisman', 1, 291, 'N-3 & Below', 7, 2, 4, 3, 0),
(160, 'CG000316', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Adita Novendianti', 1, 244, 'Functional', 24, 5, 3, 3, 0),
(161, 'CG000318', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Fiki Azkiya', 1, 163, 'N-3 & Below', 15, 3, 4, 3, 0),
(162, 'CG000320', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Supriyadi', 1, 97, 'N-3 & Below', 19, 4, 4, 3, 0),
(163, 'CG000324', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Bintang Cemerlang Yoghastika', 1, 121, 'N-2', 12, 3, 4, 3, 0),
(164, 'CG000325', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Rossa Laily', 1, 306, 'N-2', 9, 2, 3, 3, 0),
(165, 'CG000326', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Inayatun Nisa', 1, 223, 'N-1', 9, 2, 3, 3, 0),
(166, 'CG000327', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Griesye Widyaprimanika', 1, 19, 'N-2', 18, 4, 3, 3, 0),
(167, 'CG000329', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Mas Oka Hendriyana', 1, 186, 'N-2', 28, 6, 4, 2, 2),
(168, 'CG000331', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Abdul Hamid', 1, 175, 'N-3 & Below', 16, 3, 5, 3, 0),
(169, 'CG000333', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Aldhira Dwi Chandra', 1, 237, 'N-3 & Below', 24, 5, 5, 3, 0),
(170, 'CG000341', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Dedi Haris Widyatmoko', 1, 234, 'N-3 & Below', 24, 5, 5, 3, 0),
(171, 'CG000343', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Elisabeth Nanik Mitayani', 1, 280, 'N-3 & Below', 5, 2, 4, 3, 0),
(172, 'CG000344', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Fika Zulfia', 1, 251, 'N-3 & Below', 24, 5, 5, 3, 0),
(173, 'CG000348', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Hartiningdiah', 1, 143, 'N-3 & Below', 14, 3, 5, 3, 0),
(174, 'CG000351', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Indra Prayitno', 1, 249, 'N-3 & Below', 24, 5, 5, 3, 0),
(175, 'CG000353', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Lilik Sugiarto', 1, 104, 'N-2', 19, 4, 4, 3, 0),
(176, 'CG000358', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Randy Adhams', 1, 259, 'N-3 & Below', 24, 5, 5, 3, 0),
(177, 'CG000368', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Tri Budianto', 1, 208, 'N-3 & Below', 23, 5, 5, 3, 0),
(178, 'CG000372', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Fember Syarif Fahrudin', 1, 258, 'N-3 & Below', 24, 5, 5, 3, 0),
(179, 'CG000373', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Sandy Kusuma', 1, 13, 'Functional', 19, 2, 3, 3, 0),
(180, 'CG000378', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Aida Nurandini', 1, 245, 'N-1', 24, 5, 3, 3, 0),
(181, 'CG000379', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Saptoto', 1, 43, 'N-3 & Below', 19, 4, 4, 3, 0),
(182, 'CG000380', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Matthews Mora', 1, 67, 'N-2', 20, 4, 3, 3, 0),
(183, 'CG000384', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Adi Sutari', 1, 257, 'N-3 & Below', 24, 5, 5, 3, 0),
(184, 'CG000385', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Hapilus', 1, 264, 'N-3 & Below', 24, 5, 5, 3, 0),
(185, 'CG000389', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Dadang Herdiyanto Nugroho', 1, 80, 'N-2', 21, 4, 3, 3, 0),
(186, 'CG000399', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Monica Pricilia A Rusmadji', 1, 223, 'N-3 & Below', 9, 2, 3, 3, 0),
(187, 'CG000400', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Heri Susanto', 1, 143, 'N-3 & Below', 14, 3, 3, 3, 0),
(188, 'CG000402', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Bella Wilda Sayuti', 1, 133, 'N-3 & Below', 13, 3, 4, 3, 0),
(189, 'CG000410', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Abdilah Roni', 1, 76, 'N-3 & Below', 19, 4, 3, 3, 0),
(190, 'CG000411', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'FX Laga Satya Adi Pratama', 1, 287, 'N-2', 7, 2, 3, 3, 0),
(191, 'CG000414', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Intan Angga Samudra', 1, 161, 'N-3 & Below', 15, 3, 4, 3, 0),
(192, 'CG000415', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Akhirul Kurniawan Akbar', 1, 13, 'Functional', 22, 5, 4, 3, 0),
(193, 'CG000417', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Amar Fadhillah', 1, 165, 'N-2', 15, 3, 4, 3, 0),
(194, 'CG000422', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Iwan Hernawan', 1, 93, 'N-2', 19, 4, 4, 3, 0),
(195, 'CG000424', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Rizal Maulana', 1, 69, 'N-3 & Below', 20, 4, 3, 3, 0),
(196, 'CG000426', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Agustina', 1, 7, 'N-2', 3, 1, 3, 3, 0),
(197, 'CG000427', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Robby Ismail', 1, 304, 'N-2', 9, 2, 4, 3, 0),
(198, 'CG000428', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Richardo Nimrod Malton', 1, 271, 'N-2', 25, 5, 5, 3, 0),
(199, 'CG000429', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Wahyudi', 1, 195, 'Functional', 26, 6, 4, 1, 1),
(200, 'CG000435', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Riska Lestari', 1, 151, 'N-3 & Below', 14, 3, 4, 3, 0),
(201, 'CG000437', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Nanda Adiya Pradana', 1, 5, 'N-2', 3, 1, 4, 3, 0),
(202, 'CG000446', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Indra Yudison', 1, 3, 'N-1', 2, 1, 4, 3, 0),
(203, 'CG000448', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Rekso Prabowo', 1, 284, 'N-2', 7, 2, 4, 3, 0),
(204, 'CG000449', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Risha Octarina', 1, 68, 'N-3 & Below', 20, 4, 3, 3, 0),
(205, 'CG000450', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Reni Kristina', 1, 285, 'N-2', 7, 2, 4, 3, 0),
(206, 'CG000451', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Zaidan Rusyadi', 1, 60, 'N-3 & Below', 21, 4, 3, 3, 0),
(207, 'CG000452', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Titus David Haryono', 1, 117, 'N-3 & Below', 19, 4, 3, 3, 0),
(208, 'CG000455', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Andhika Juwandra', 1, 61, 'N-3 & Below', 21, 4, 3, 3, 0),
(209, 'CG000456', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Alfi Risqia', 1, 83, 'N-3 & Below', 21, 4, 3, 3, 0),
(210, 'CG000461', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Titi Wijayanti', 1, 83, 'N-3 & Below', 21, 4, 3, 3, 0),
(211, 'CG000462', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Gandi Hafissoma Ruskandar', 1, 194, 'Functional', 26, 6, 4, 1, 1),
(212, 'CG000464', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Dody Thema', 1, 184, 'N-3 & Below', 28, 6, 4, 2, 2),
(213, 'CG000465', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Arifianto Budiman', 1, 69, 'N-3 & Below', 21, 4, 3, 3, 0),
(214, 'CG000466', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Markus Yoyok Kustadi', 1, 62, 'N-3 & Below', 21, 4, 3, 3, 0),
(215, 'CG000467', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Fauzi Rachmatullah', 1, 59, 'N-3 & Below', 21, 4, 3, 3, 0),
(216, 'CG000468', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Ahmad Faisal Romadhon', 1, 76, 'N-3 & Below', 21, 4, 3, 3, 0),
(217, 'CG000470', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Ruzqi Eka Septiyana', 1, 53, 'N-3 & Below', 20, 4, 3, 3, 0),
(218, 'CG000471', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Jai Dewer', 1, 134, 'N-3 & Below', 13, 3, 4, 3, 0),
(219, 'CG000473', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Berry Satya Yudhistira', 1, 38, 'N-2', 19, 4, 3, 3, 0),
(220, 'CG000474', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Ida Bagus Made Adi Sanjaya', 1, 95, 'N-3 & Below', 19, 4, 4, 3, 0),
(221, 'CG000476', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Kumara Gadri Fataha', 1, 59, 'N-3 & Below', 20, 4, 3, 3, 0),
(222, 'CG000478', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Agus Triprasetyo Riadi', 1, 25, 'N-3 & Below', 18, 4, 3, 3, 0),
(223, 'CG000479', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Deddy Chairany', 1, 275, 'N-3 & Below', 5, 2, 4, 3, 0),
(224, 'CG000481', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Tulus Wiyono', 1, 60, 'N-3 & Below', 21, 4, 3, 3, 0),
(225, 'CG000482', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Bagus Rulianto', 1, 59, 'N-3 & Below', 21, 4, 3, 3, 0),
(226, 'CG000484', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Pitra Zayanosa', 1, 145, 'N-2', 14, 3, 4, 3, 0),
(227, 'CG000485', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Fernando', 1, 188, 'N-2', 28, 6, 4, 2, 2),
(228, 'CG000487', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Angga Kurniawan', 1, 248, 'N-2', 24, 5, 4, 3, 0),
(229, 'CG000488', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Budy Suryana', 1, 240, 'N-3 & Below', 24, 5, 4, 3, 0),
(230, 'CG000489', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Dede Fajaruddin', 1, 261, 'N-3 & Below', 24, 5, 4, 3, 0),
(231, 'CG000490', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Dede Nurhadi', 1, 257, 'N-3 & Below', 24, 5, 4, 3, 0),
(232, 'CG000491', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Gilbert Abednego', 1, 244, 'Functional', 24, 5, 4, 3, 0),
(233, 'CG000493', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Heri Mulya Haryoko', 1, 282, 'N-3 & Below', 7, 2, 4, 3, 0),
(234, 'CG000494', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Pamungkas Wijayanto', 1, 289, 'N-3 & Below', 7, 2, 4, 3, 0),
(235, 'CG000495', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Raka Pradana Putra', 1, 260, 'N-3 & Below', 24, 5, 4, 3, 0),
(236, 'CG000496', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Rosdiana Elmi Rochim', 1, 237, 'N-3 & Below', 24, 5, 4, 3, 0),
(237, 'CG000499', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Siti Wahyuni F Usman', 1, 223, 'N-3 & Below', 25, 5, 4, 3, 0),
(238, 'CG000500', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Tomi Ari Kurniawan', 1, 246, 'N-3 & Below', 24, 5, 4, 3, 0),
(239, 'CG000501', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Wawan Supriadi', 1, 21, 'N-3 & Below', 18, 4, 4, 3, 0),
(240, 'CG000502', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Rinsky Yonita', 1, 154, 'N-3 & Below', 14, 3, 4, 3, 0),
(241, 'CG000503', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Novi Sari Rosalin Gultom', 1, 140, 'N-3 & Below', 14, 3, 4, 3, 0),
(242, 'CG000504', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Billy Trifan Ibrahim', 1, 258, 'N-3 & Below', 24, 5, 4, 3, 0),
(243, 'CG000505', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Amelia Anastasya Lombogia', 1, 125, 'N-3 & Below', 12, 3, 4, 3, 0),
(244, 'CG000506', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Tira Yoedho', 1, 288, 'N-3 & Below', 7, 2, 4, 3, 0),
(245, 'CG000508', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Budiastuty Wahyuningsi', 1, 142, 'N-3 & Below', 14, 3, 4, 3, 0),
(246, 'CG000510', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Brillyant Devanty Fortunnela', 1, 288, 'N-3 & Below', 7, 2, 4, 3, 0),
(247, 'CG000511', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Funky Tri Doreta', 1, 114, 'N-2', 19, 4, 3, 3, 0),
(248, 'CG000512', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Adhisty Wulan Kusumawardani', 1, 223, 'N-3 & Below', 25, 5, 2, 3, 0),
(249, 'CG000513', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Mohamed Reza Hasyandi', 1, 2, 'N-2', 2, 1, 4, 3, 0),
(250, 'CG000514', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Khairunnisa Rizkiani', 1, 66, 'N-3 & Below', 21, 4, 3, 3, 0),
(251, 'CG000516', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Kurniati Sulthan', 1, 305, 'N-2', 9, 2, 4, 3, 0),
(252, 'CG000518', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Marta Angelina', 1, 201, 'N-2', 29, 6, 4, 2, 1),
(253, 'CG000519', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Nicolas Septian', 1, 169, 'N-3 & Below', 16, 3, 4, 3, 0),
(254, 'CG000520', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Henry Setiawan', 1, 173, 'N-1', 16, 3, 4, 3, 0),
(255, 'CG000521', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Thomas Galih Pratama Putra', 1, 162, 'N-3 & Below', 15, 3, 4, 3, 0),
(256, 'CG000522', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Natasha Soetio', 1, 148, 'N-2', 14, 3, 3, 3, 0),
(257, 'CG000523', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Retno Dian Prastoto', 1, 156, 'N-3 & Below', 15, 3, 3, 3, 0),
(258, 'CG000524', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Mike Afrianti', 1, 203, 'N-3 & Below', 23, 5, 5, 3, 0),
(259, 'CG000527', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Dwi Joko Rismanto', 1, 236, 'N-3 & Below', 24, 5, 5, 3, 0),
(260, 'CG000530', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Rian Herlangga', 1, 258, 'N-3 & Below', 24, 5, 5, 3, 0),
(261, 'CG000531', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Gina Despalma', 1, 122, 'N-3 & Below', 12, 3, 4, 3, 0),
(262, 'CG000532', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Nindi Femelia', 1, 251, 'N-3 & Below', 24, 5, 5, 3, 0),
(263, 'CG000533', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Fiqih Darussalam', 1, 160, 'N-3 & Below', 15, 3, 4, 3, 0),
(264, 'CG000536', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Rini Widyastuti Sis', 1, 223, 'N-1', 9, 2, 4, 3, 0),
(265, 'CG000537', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Mega Sefiani', 1, 151, 'N-3 & Below', 14, 3, 4, 3, 0),
(266, 'CG000538', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Sofyan Tsauri', 1, 239, 'N-3 & Below', 24, 5, 4, 3, 0),
(267, 'CG000539', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Diki Julkarnaen', 1, 50, 'N-3 & Below', 19, 4, 4, 3, 0),
(268, 'CG000540', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Bima Saputra Wijaya', 1, 131, 'N-2', 13, 3, 4, 3, 0),
(269, 'CG000542', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Halim Noor Hakim', 1, 61, 'N-3 & Below', 20, 4, 4, 3, 0),
(270, 'CG000543', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Eko Wibowo', 1, 250, 'N-3 & Below', 24, 5, 4, 3, 0),
(271, 'CG000544', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Satrio Budi Utomo', 1, 162, 'N-3 & Below', 15, 3, 4, 3, 0),
(272, 'CG000547', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Eko Santoso', 1, 260, 'N-3 & Below', 24, 5, 5, 3, 0),
(273, 'CG000548', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Syadza Millatina', 1, 68, 'N-3 & Below', 21, 4, 4, 3, 0),
(274, 'CG000549', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Tisca Pradana Hendra Praktika', 1, 94, 'N-3 & Below', 19, 4, 4, 3, 0),
(275, 'CG000551', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'M Dian Nur Cahyadi', 1, 238, 'N-2', 24, 5, 5, 3, 0),
(276, 'CG000552', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Ikhsan Wahyudie', 1, 102, 'N-1', 19, 4, 4, 3, 0),
(277, 'CG000553', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Mhd Luthfi Siregar', 1, 265, 'N-3 & Below', 24, 5, 4, 3, 0),
(278, 'CG000554', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Sinung Raharjo', 1, 12, 'N-2', 4, 1, 4, 3, 0),
(279, 'CG000555', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Meutia Ikawidjaja', 1, 200, 'N-2', 29, 6, 4, 2, 1),
(280, 'CG000557', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Lilik Rahayu', 1, 296, 'N-2', 8, 2, 4, 3, 0),
(281, 'CG000558', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Fiona Ayu Vianthi', 1, 295, 'N-2', 8, 2, 4, 3, 0),
(282, 'CG000560', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Erni Kusuma Asih Gilipanda', 1, 193, 'N-3 & Below', 28, 6, 4, 2, 2),
(283, 'CG000561', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Fitrah Fajar Buana', 1, 219, 'N-3 & Below', 23, 5, 5, 3, 0),
(284, 'CG000565', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Fandi Ali Mustika', 1, 254, 'N-3 & Below', 24, 5, 5, 3, 0),
(285, 'CG000566', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Leonardus Dony Panova', 1, 4, 'N-2', 2, 1, 4, 3, 0),
(286, 'CG000568', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Rinaldi Distanto Hakim', 1, 256, 'N-2', 24, 5, 4, 3, 0),
(287, 'CG000569', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Asep Suhendi', 1, 227, 'N', 22, 5, 3, 3, 0),
(288, 'CG000572', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Mamik Yuliana', 1, 105, 'N-3 & Below', 19, 4, 4, 3, 0),
(289, 'CG000573', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Dwi Cahyadi', 1, 270, 'N-3 & Below', 25, 5, 5, 3, 0),
(290, 'CG000574', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Rizky Fauzi', 1, 269, 'N-3 & Below', 25, 5, 5, 3, 0),
(291, 'CG000575', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Dwiki Maxi Rianto', 1, 163, 'N-3 & Below', 15, 3, 4, 3, 0),
(292, 'CG000576', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Danelia Brilliana Pusparani', 1, 280, 'N-3 & Below', 5, 2, 4, 3, 0),
(293, 'CG000577', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Gabe Eko Prasetia', 1, 223, 'N-3 & Below', 10, 2, 4, 3, 0),
(294, 'CG000578', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Muzakir Ilham', 1, 205, 'N-3 & Below', 23, 5, 5, 3, 0),
(295, 'CG000579', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Ragil Ario Priyambodo', 1, 202, 'N-3 & Below', 23, 5, 5, 3, 0),
(296, 'CG000582', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Delfita Siagian', 1, 126, 'N-3 & Below', 12, 3, 4, 3, 0),
(297, 'CG000583', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Tri Novalia Simorangkir', 1, 223, 'N-3 & Below', 9, 2, 4, 3, 0),
(298, 'CG000584', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Diajeng Adisti Adjaraji', 1, 120, 'N-2', 12, 3, 4, 3, 0),
(299, 'CG000585', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Andry Mulyono', 1, 216, 'N-1', 23, 5, 4, 3, 0),
(300, 'CG000586', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Muhammad Hindersyah', 1, 206, 'N-3 & Below', 23, 5, 5, 3, 0),
(301, 'CG000587', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Adhi Merdangga', 1, 252, 'N-3 & Below', 24, 5, 5, 3, 0),
(302, 'CG000588', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Yeni Octavia', 1, 235, 'N-3 & Below', 24, 5, 3, 3, 0),
(303, 'CG000589', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Hendro Setiawan', 1, 116, 'N-3 & Below', 19, 4, 3, 3, 0),
(304, 'CG000590', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Saimah Harahap', 1, 236, 'N-3 & Below', 24, 5, 5, 3, 0),
(305, 'CG000591', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Oki Hermawan', 1, 261, 'N-3 & Below', 24, 5, 5, 3, 0),
(306, 'CG000592', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Indra Budi Cahya Ardia', 1, 282, 'N-3 & Below', 7, 2, 3, 3, 0),
(307, 'CG000593', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Siti Maisah', 1, 236, 'N-3 & Below', 24, 5, 5, 3, 0),
(308, 'CG000594', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Fiki Maulana', 1, 33, 'N-3 & Below', 19, 4, 4, 3, 0),
(309, 'CG000595', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Eruyansyah', 1, 223, 'Functional', 22, 5, 5, 3, 0),
(310, 'CG000596', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Yunisya', 1, 108, 'Functional', 19, 4, 4, 3, 0),
(311, 'CG000597', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Shara Melysa', 1, 96, 'N-3 & Below', 19, 4, 4, 3, 0),
(312, 'CG000598', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Retno Dadari', 1, 178, 'N-2', 16, 3, 4, 3, 0),
(313, 'CG000599', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Eza Rinaldho Maystro', 1, 215, 'N-2', 23, 5, 5, 3, 0),
(314, 'CG000601', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Nurlia Listiarini', 1, 87, 'N-3 & Below', 21, 4, 3, 3, 0),
(315, 'CG000602', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'R. Rina Sabaria Kusumah', 1, 223, 'N-3 & Below', 10, 2, 4, 3, 0),
(316, 'CG000603', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Widi Widayat', 1, 98, 'N-3 & Below', 19, 4, 4, 3, 0),
(317, 'CG000606', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Fatmawati Sanusi', 1, 115, 'N-3 & Below', 19, 4, 4, 3, 0),
(318, 'CG000607', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Paniel Ebenezer Siringo Ringo', 1, 265, 'N-3 & Below', 24, 5, 4, 3, 0),
(319, 'CG000608', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Sastryani Syafri', 1, 294, 'N-2', 8, 2, 4, 3, 0),
(320, 'CG000609', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Fendi Sumarta', 1, 11, 'N-1', 4, 1, 4, 3, 0),
(321, 'CG000610', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Retno Prasetyorini', 1, 309, 'N-2', 10, 2, 4, 3, 0),
(322, 'CG000611', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Dimas Pratiko Saputra', 1, 116, 'N-3 & Below', 19, 4, 4, 3, 0),
(323, 'CG000612', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Adila Hedianto Putri', 1, 242, 'N-2', 24, 5, 4, 3, 0),
(324, 'CG000613', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Bresti Alma Mustikaningrum', 1, 7, 'N-2', 3, 1, 4, 3, 0),
(325, 'CG000614', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Resta Rachma Maranti', 1, 292, 'Functional', 7, 2, 4, 3, 0),
(326, 'CG000615', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Denny Priyatno', 1, 258, 'N-3 & Below', 24, 5, 5, 3, 0),
(327, 'CG000616', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Dena Utami', 1, 235, 'N-3 & Below', 24, 5, 5, 3, 0),
(328, 'CG000617', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Rendi Saputra', 1, 236, 'N-3 & Below', 24, 5, 5, 3, 0),
(329, 'CG000618', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Cintya Dwimarha', 1, 68, 'N-3 & Below', 20, 4, 4, 3, 0),
(330, 'CG000619', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Charles Gatan', 1, 199, 'N-1', 29, 6, 4, 2, 1),
(331, 'CG000620', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Rizka Ayu Citra', 1, 171, 'N-3 & Below', 16, 3, 4, 3, 0),
(332, 'CG000621', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Mochammad Dian Hariyana', 1, 118, 'N-3 & Below', 19, 4, 4, 3, 0),
(333, 'CG000622', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Gilang Dika Perdana', 1, 88, 'N-3 & Below', 21, 4, 3, 3, 0),
(334, 'CG000623', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Fathia Sena', 1, 223, 'N-3 & Below', 9, 2, 4, 3, 0),
(335, 'CG000624', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Dania Putri Anggiyani', 1, 207, 'N-3 & Below', 23, 5, 5, 3, 0),
(336, 'CG000625', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Dedi Irawan', 1, 261, 'N-3 & Below', 24, 5, 0, 3, 0),
(337, 'CG000625', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Prihambodo Dwi Sandhika', 1, 170, 'N-2', 16, 3, 4, 3, 0),
(338, 'CG000626', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Jimmy Tandean', 1, 226, 'N-2', 22, 5, 5, 3, 0),
(339, 'CG000627', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Dwi Hardyono', 1, 252, 'N-3 & Below', 24, 5, 5, 3, 0),
(340, 'CG000628', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Mamat Rohimat', 1, 69, 'N-3 & Below', 21, 4, 4, 3, 0),
(341, 'CG000629', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Rakhmat Ubaidillah Ahror', 1, 69, 'N-3 & Below', 21, 4, 4, 3, 0),
(342, 'CG000630', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Gusty Rachmaningrum', 1, 69, 'N-3 & Below', 20, 4, 4, 3, 0),
(343, 'CG000631', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Agung Prayitno', 1, 267, 'N-3 & Below', 24, 5, 5, 3, 0),
(344, 'CG000632', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Waki Supatmi', 1, 167, 'N-3 & Below', 16, 3, 4, 3, 0),
(345, 'CG000633', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Desilawati Rohmatika', 1, 219, 'N-3 & Below', 23, 5, 0, 3, 0),
(346, 'CG000634', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Yoseph Siagian', 1, 241, 'N-3 & Below', 24, 5, 0, 3, 0),
(347, 'CG000640', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Maria Febriyanti', 1, 144, 'N-3 & Below', 14, 3, 0, 3, 0),
(348, 'CG000641', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Muthia Nur Rahma', 1, 291, 'N-3 & Below', 7, 2, 0, 3, 0),
(349, 'CG000642', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Nurul Dwi Oktaviani', 1, 99, 'N-3 & Below', 19, 4, 0, 3, 0),
(350, 'CG000643', '$2y$10$GSUBKgE2SolIq9HKz/Bbde1xsoU2KWOOwfg1ThtJEqlysQozn1EZ6', 'Belafonti', 1, 272, 'N-1', 25, 5, 0, 3, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `entity`
--

CREATE TABLE `entity` (
  `id` int(11) NOT NULL,
  `nama_entity` varchar(11) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `entity`
--

INSERT INTO `entity` (`id`, `nama_entity`, `keterangan`) VALUES
(1, 'CG', 'Centratama Group'),
(2, 'CTI', 'PT. Centratama Telekomunikasi Indonesia  Tbk.'),
(3, 'CMI', 'PT. Centratama Menara Indonesia'),
(4, 'MAC', 'PT. MAC Sarana Djaya'),
(5, 'FSI', 'PT. Fastel Sarana Indonesia'),
(6, 'NQI', 'PT. Network Quality Indonesia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hub_kerja`
--

CREATE TABLE `hub_kerja` (
  `id` int(11) NOT NULL,
  `id_posisi` int(11) NOT NULL,
  `hubungan_int` text NOT NULL,
  `hubungan_eks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hub_kerja`
--

INSERT INTO `hub_kerja` (`id`, `id_posisi`, `hubungan_int`, `hubungan_eks`) VALUES
(1, 195, '<ul><li>All Dept. HC Div</li><li>IT Dept</li><li>PMO Dept</li></ul>', '<ul><li>Andal Software</li><li>Vendor IT</li></ul>'),
(11, 200, '<ul><li>Halo</li></ul>', '<b>-</b>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_surat`
--

CREATE TABLE `jenis_surat` (
  `id` int(11) NOT NULL,
  `jenis_surat` varchar(25) NOT NULL,
  `keterangan_surat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_surat`
--

INSERT INTO `jenis_surat` (`id`, `jenis_surat`, `keterangan_surat`) VALUES
(1, 'PKWT1', ''),
(2, 'PKWT2', ''),
(3, 'OFL', ''),
(4, 'SK-DIR', ''),
(5, 'Surat Keluar', ''),
(6, 'IM', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenjang_kar`
--

CREATE TABLE `jenjang_kar` (
  `id` int(11) NOT NULL,
  `id_posisi` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenjang_kar`
--

INSERT INTO `jenjang_kar` (`id`, `id_posisi`, `text`) VALUES
(1, 195, '<ul><li>Payroll Specialist</li><li>System Analyst &amp; Support Section Head</li><li>Compensation &amp; Benefit Dept. Head</li></ul>'),
(2, 200, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_approval`
--

CREATE TABLE `job_approval` (
  `id` int(11) NOT NULL,
  `nik` varchar(8) NOT NULL,
  `id_posisi` int(11) NOT NULL,
  `atasan1` varchar(8) NOT NULL,
  `atasan2` varchar(8) NOT NULL,
  `status_approval` enum('Dikirim','Disetujui1','Ditolak','Disetujui2') NOT NULL,
  `tanggal_pengajuan` int(11) NOT NULL,
  `tanggal_persetujuan` date NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `job_approval`
--

INSERT INTO `job_approval` (`id`, `nik`, `id_posisi`, `atasan1`, `atasan2`, `status_approval`, `tanggal_pengajuan`, `tanggal_persetujuan`, `is_active`) VALUES
(1, 'CG000429', 195, '196', '1', 'Dikirim', 1581564215, '0000-00-00', 1),
(2, 'CG000555', 200, '199', '196', 'Dikirim', 1581577457, '0000-00-00', 1),
(3, 'CG000518', 201, '199', '0', 'Dikirim', 1581577482, '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jumlah_staff`
--

CREATE TABLE `jumlah_staff` (
  `id` int(11) NOT NULL,
  `id_posisi` int(11) NOT NULL,
  `manager` int(11) NOT NULL,
  `supervisor` int(11) NOT NULL,
  `staff` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jumlah_staff`
--

INSERT INTO `jumlah_staff` (`id`, `id_posisi`, `manager`, `supervisor`, `staff`) VALUES
(3, 1, 0, 0, 0),
(4, 2, 0, 0, 0),
(5, 3, 0, 0, 0),
(6, 4, 0, 0, 0),
(7, 5, 0, 0, 0),
(8, 6, 0, 0, 0),
(9, 7, 0, 0, 0),
(10, 8, 0, 0, 0),
(11, 9, 0, 0, 0),
(12, 10, 0, 0, 0),
(13, 11, 0, 0, 0),
(14, 12, 0, 0, 0),
(15, 13, 0, 0, 0),
(16, 14, 0, 0, 0),
(17, 15, 0, 0, 0),
(18, 16, 0, 0, 0),
(19, 17, 0, 0, 0),
(20, 18, 0, 0, 0),
(21, 19, 0, 0, 0),
(22, 20, 0, 0, 0),
(23, 21, 0, 0, 0),
(24, 22, 0, 0, 0),
(25, 23, 0, 0, 0),
(26, 24, 0, 0, 0),
(27, 25, 0, 0, 0),
(28, 26, 0, 0, 0),
(29, 27, 0, 0, 0),
(30, 28, 0, 0, 0),
(31, 29, 0, 0, 0),
(32, 30, 0, 0, 0),
(33, 31, 0, 0, 0),
(34, 32, 0, 0, 0),
(35, 33, 0, 0, 0),
(36, 34, 0, 0, 0),
(37, 35, 0, 0, 0),
(38, 36, 0, 0, 0),
(39, 37, 0, 0, 0),
(40, 38, 0, 0, 0),
(41, 39, 0, 0, 0),
(42, 40, 0, 0, 0),
(43, 41, 0, 0, 0),
(44, 42, 0, 0, 0),
(45, 43, 0, 0, 0),
(46, 44, 0, 0, 0),
(47, 45, 0, 0, 0),
(48, 46, 0, 0, 0),
(49, 47, 0, 0, 0),
(50, 48, 0, 0, 0),
(51, 49, 0, 0, 0),
(52, 50, 0, 0, 0),
(53, 51, 0, 0, 0),
(54, 52, 0, 0, 0),
(55, 53, 0, 0, 0),
(56, 54, 0, 0, 0),
(57, 55, 0, 0, 0),
(58, 56, 0, 0, 0),
(59, 57, 0, 0, 0),
(60, 58, 0, 0, 0),
(61, 59, 0, 0, 0),
(62, 60, 0, 0, 0),
(63, 61, 0, 0, 0),
(64, 62, 0, 0, 0),
(65, 63, 0, 0, 0),
(66, 64, 0, 0, 0),
(67, 65, 0, 0, 0),
(68, 66, 0, 0, 0),
(69, 67, 0, 0, 0),
(70, 68, 0, 0, 0),
(71, 69, 0, 0, 0),
(72, 70, 0, 0, 0),
(73, 71, 0, 0, 0),
(74, 72, 0, 0, 0),
(75, 73, 0, 0, 0),
(76, 74, 0, 0, 0),
(77, 75, 0, 0, 0),
(78, 76, 0, 0, 0),
(79, 77, 0, 0, 0),
(80, 78, 0, 0, 0),
(81, 79, 0, 0, 0),
(82, 80, 0, 0, 0),
(83, 81, 0, 0, 0),
(84, 82, 0, 0, 0),
(85, 83, 0, 0, 0),
(86, 84, 0, 0, 0),
(87, 85, 0, 0, 0),
(88, 86, 0, 0, 0),
(89, 87, 0, 0, 0),
(90, 88, 0, 0, 0),
(91, 89, 0, 0, 0),
(92, 90, 0, 0, 0),
(93, 91, 0, 0, 0),
(94, 92, 0, 0, 0),
(95, 93, 0, 0, 0),
(96, 94, 0, 0, 0),
(97, 95, 0, 0, 0),
(98, 96, 0, 0, 0),
(99, 97, 0, 0, 0),
(100, 98, 0, 0, 0),
(101, 99, 0, 0, 0),
(102, 100, 0, 0, 0),
(103, 101, 0, 0, 0),
(104, 102, 0, 0, 0),
(105, 103, 0, 0, 0),
(106, 104, 0, 0, 0),
(107, 105, 0, 0, 0),
(108, 106, 0, 0, 0),
(109, 107, 0, 0, 0),
(110, 108, 0, 0, 0),
(111, 109, 0, 0, 0),
(112, 110, 0, 0, 0),
(113, 111, 0, 0, 0),
(114, 112, 0, 0, 0),
(115, 113, 0, 0, 0),
(116, 114, 0, 0, 0),
(117, 115, 0, 0, 0),
(118, 116, 0, 0, 0),
(119, 117, 0, 0, 0),
(120, 118, 0, 0, 0),
(121, 119, 0, 0, 0),
(122, 120, 0, 0, 0),
(123, 121, 0, 0, 0),
(124, 122, 0, 0, 0),
(125, 123, 0, 0, 0),
(126, 124, 0, 0, 0),
(127, 125, 0, 0, 0),
(128, 126, 0, 0, 0),
(129, 127, 0, 0, 0),
(130, 128, 0, 0, 0),
(131, 129, 0, 0, 0),
(132, 130, 0, 0, 0),
(133, 131, 0, 0, 0),
(134, 132, 0, 0, 0),
(135, 133, 0, 0, 0),
(136, 134, 0, 0, 0),
(137, 135, 0, 0, 0),
(138, 136, 0, 0, 0),
(139, 137, 0, 0, 0),
(140, 138, 0, 0, 0),
(141, 139, 0, 0, 0),
(142, 140, 0, 0, 0),
(143, 141, 0, 0, 0),
(144, 142, 0, 0, 0),
(145, 143, 0, 0, 0),
(146, 144, 0, 0, 0),
(147, 145, 0, 0, 0),
(148, 146, 0, 0, 0),
(149, 147, 0, 0, 0),
(150, 148, 0, 0, 0),
(151, 149, 0, 0, 0),
(152, 150, 0, 0, 0),
(153, 151, 0, 0, 0),
(154, 152, 0, 0, 0),
(155, 153, 0, 0, 0),
(156, 154, 0, 0, 0),
(157, 155, 0, 0, 0),
(158, 156, 0, 0, 0),
(159, 157, 0, 0, 0),
(160, 158, 0, 0, 0),
(161, 159, 0, 0, 0),
(162, 160, 0, 0, 0),
(163, 161, 0, 0, 0),
(164, 162, 0, 0, 0),
(165, 163, 0, 0, 0),
(166, 164, 0, 0, 0),
(167, 165, 0, 0, 0),
(168, 166, 0, 0, 0),
(169, 167, 0, 0, 0),
(170, 168, 0, 0, 0),
(171, 169, 0, 0, 0),
(172, 170, 0, 0, 0),
(173, 171, 0, 0, 0),
(174, 172, 0, 0, 0),
(175, 173, 0, 0, 0),
(176, 174, 0, 0, 0),
(177, 175, 0, 0, 0),
(178, 176, 0, 0, 0),
(179, 177, 0, 0, 0),
(180, 178, 0, 0, 0),
(181, 179, 0, 0, 0),
(182, 180, 0, 0, 0),
(183, 181, 0, 0, 0),
(184, 182, 0, 0, 0),
(185, 183, 0, 0, 0),
(186, 184, 0, 0, 0),
(187, 185, 0, 0, 0),
(188, 186, 0, 0, 0),
(189, 187, 0, 0, 0),
(190, 188, 0, 0, 0),
(191, 189, 0, 0, 0),
(192, 190, 0, 0, 0),
(193, 191, 0, 0, 0),
(194, 192, 0, 0, 0),
(195, 193, 0, 0, 0),
(196, 194, 0, 0, 0),
(197, 195, 0, 0, 0),
(198, 196, 0, 0, 0),
(199, 197, 0, 0, 0),
(200, 198, 0, 0, 0),
(201, 199, 0, 0, 0),
(202, 200, 1, 3, 6),
(203, 201, 0, 0, 0),
(204, 202, 0, 0, 0),
(205, 203, 0, 0, 0),
(206, 204, 0, 0, 0),
(207, 205, 0, 0, 0),
(208, 206, 0, 0, 0),
(209, 207, 0, 0, 0),
(210, 208, 0, 0, 0),
(211, 209, 0, 0, 0),
(212, 210, 0, 0, 0),
(213, 211, 0, 0, 0),
(214, 212, 0, 0, 0),
(215, 213, 0, 0, 0),
(216, 214, 0, 0, 0),
(217, 215, 0, 0, 0),
(218, 216, 0, 0, 0),
(219, 217, 0, 0, 0),
(220, 218, 0, 0, 0),
(221, 219, 0, 0, 0),
(222, 220, 0, 0, 0),
(223, 221, 0, 0, 0),
(224, 222, 0, 0, 0),
(225, 223, 0, 0, 0),
(226, 224, 0, 0, 0),
(227, 225, 0, 0, 0),
(228, 226, 0, 0, 0),
(229, 227, 0, 0, 0),
(230, 228, 0, 0, 0),
(231, 230, 0, 0, 0),
(232, 231, 0, 0, 0),
(233, 232, 0, 0, 0),
(234, 233, 0, 0, 0),
(235, 234, 0, 0, 0),
(236, 235, 0, 0, 0),
(237, 236, 0, 0, 0),
(238, 237, 0, 0, 0),
(239, 238, 0, 0, 0),
(240, 239, 0, 0, 0),
(241, 240, 0, 0, 0),
(242, 241, 0, 0, 0),
(243, 242, 0, 0, 0),
(244, 243, 0, 0, 0),
(245, 244, 0, 0, 0),
(246, 245, 0, 0, 0),
(247, 246, 0, 0, 0),
(248, 247, 0, 0, 0),
(249, 248, 0, 0, 0),
(250, 249, 0, 0, 0),
(251, 250, 0, 0, 0),
(252, 251, 0, 0, 0),
(253, 252, 0, 0, 0),
(254, 253, 0, 0, 0),
(255, 254, 0, 0, 0),
(256, 255, 0, 0, 0),
(257, 256, 0, 0, 0),
(258, 257, 0, 0, 0),
(259, 258, 0, 0, 0),
(260, 259, 0, 0, 0),
(261, 260, 0, 0, 0),
(262, 261, 0, 0, 0),
(263, 262, 0, 0, 0),
(264, 263, 0, 0, 0),
(265, 264, 0, 0, 0),
(266, 265, 0, 0, 0),
(267, 266, 0, 0, 0),
(268, 267, 0, 0, 0),
(269, 268, 0, 0, 0),
(270, 269, 0, 0, 0),
(271, 270, 0, 0, 0),
(272, 271, 0, 0, 0),
(273, 272, 0, 0, 0),
(274, 273, 0, 0, 0),
(275, 274, 0, 0, 0),
(276, 275, 0, 0, 0),
(277, 276, 0, 0, 0),
(278, 277, 0, 0, 0),
(279, 278, 0, 0, 0),
(280, 279, 0, 0, 0),
(281, 280, 0, 0, 0),
(282, 281, 0, 0, 0),
(283, 282, 0, 0, 0),
(284, 283, 0, 0, 0),
(285, 284, 0, 0, 0),
(286, 285, 0, 0, 0),
(287, 286, 0, 0, 0),
(288, 287, 0, 0, 0),
(289, 288, 0, 0, 0),
(290, 289, 0, 0, 0),
(291, 290, 0, 0, 0),
(292, 291, 0, 0, 0),
(293, 292, 0, 0, 0),
(294, 293, 0, 0, 0),
(295, 294, 0, 0, 0),
(296, 295, 0, 0, 0),
(297, 296, 0, 0, 0),
(298, 297, 0, 0, 0),
(299, 298, 0, 0, 0),
(300, 299, 0, 0, 0),
(301, 300, 0, 0, 0),
(302, 301, 0, 0, 0),
(303, 302, 0, 0, 0),
(304, 303, 0, 0, 0),
(305, 304, 0, 0, 0),
(306, 305, 0, 0, 0),
(307, 306, 0, 0, 0),
(308, 307, 0, 0, 0),
(309, 308, 0, 0, 0),
(310, 309, 0, 0, 0),
(311, 310, 0, 0, 0),
(312, 311, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kualifikasi`
--

CREATE TABLE `kualifikasi` (
  `id` int(11) NOT NULL,
  `id_posisi` int(11) NOT NULL,
  `pendidikan` text NOT NULL,
  `pengalaman` text NOT NULL,
  `pengetahuan` text NOT NULL,
  `kompetensi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kualifikasi`
--

INSERT INTO `kualifikasi` (`id`, `id_posisi`, `pendidikan`, `pengalaman`, `pengetahuan`, `kompetensi`) VALUES
(1, 195, 'S1 Sistem Informasi / Teknik Informatika', '2 Tahun sebagai HRIS', 'IT, Basic Programming', 'Microsoft Office'),
(2, 200, 'S1 Psikologi, Teknik Industri, Manajemen', 'Recruitment Staff', 'Alat tes psikologis,', 'Teknik interview, administrasi dan interpretasi tes psikologis');

-- --------------------------------------------------------

--
-- Struktur dari tabel `position`
--

CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `position_name` varchar(200) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `div_id` int(11) NOT NULL,
  `id_atasan1` int(11) NOT NULL,
  `id_atasan2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `position`
--

INSERT INTO `position` (`id`, `position_name`, `dept_id`, `div_id`, `id_atasan1`, `id_atasan2`) VALUES
(1, 'Chief Executive Officer', 1, 1, 0, 0),
(2, 'Corporate Development Analyst', 2, 1, 0, 0),
(3, 'Corporate Development Dept. Head', 2, 1, 0, 0),
(4, 'Internal Auditor', 2, 1, 0, 0),
(5, 'Business Process Analyst ', 3, 1, 0, 0),
(6, 'Corporate PMO Dept. Head', 3, 1, 0, 0),
(7, 'Data Controller', 3, 1, 0, 0),
(8, 'Quality Control', 3, 1, 0, 0),
(9, 'Digital Business Solution - 1', 4, 1, 0, 0),
(10, 'Digital Business Solution - 2', 4, 1, 0, 0),
(11, 'Pre Sales Dept. Head', 4, 1, 0, 0),
(12, 'Product Development Management', 4, 1, 0, 0),
(13, 'Solution Specialist', 4, 1, 0, 0),
(14, 'Delivery Division Head', 17, 4, 0, 0),
(15, 'Civil Engineer', 18, 4, 0, 0),
(16, 'Civil Sr. Engineer', 18, 4, 0, 0),
(17, 'Engineering Database Controller', 18, 4, 0, 0),
(18, 'Engineering Design Dept. Head', 18, 4, 0, 0),
(19, 'Engineering Section Head CME', 18, 4, 0, 0),
(20, 'Engineering Section Head RF', 18, 4, 0, 0),
(21, 'iVAS Design Sr. Engineer', 18, 4, 0, 0),
(22, 'iVAS Engineering Section Head', 18, 4, 0, 0),
(23, 'Optimization Sr. Engineer', 18, 4, 0, 0),
(24, 'Radio Design Engineer', 18, 4, 0, 0),
(25, 'Tower Material Controller', 18, 4, 0, 0),
(26, 'TS Engineer', 18, 4, 0, 0),
(27, 'Property Area 1', 19, 4, 0, 0),
(28, 'T&P Area 3', 19, 4, 0, 0),
(29, 'DAS Supervisor Area 3', 19, 4, 0, 0),
(30, 'DAS Supervisor Regional 1', 19, 4, 0, 0),
(31, 'DAS Supervisor Zona 3', 19, 4, 0, 0),
(32, 'DAS Supervisor Zona 4', 19, 4, 0, 0),
(33, 'DAS Supervisor Zona 5', 19, 4, 0, 0),
(34, 'Field Operations Admin Regional 1', 19, 4, 0, 0),
(35, 'Field Operations Admin Regional 2', 19, 4, 0, 0),
(36, 'Field Operations Admin Regional 3', 19, 4, 0, 0),
(37, 'Field Operations Dept Head', 19, 4, 0, 0),
(38, 'Field Operations Section Head Regional 1', 19, 4, 0, 0),
(39, 'Field Operations Section Head Regional 2', 19, 4, 0, 0),
(40, 'Field Operations Section Head Regional 3', 19, 4, 0, 0),
(41, 'Operation Data Controller', 19, 4, 0, 0),
(42, 'OSP Supervisor Regional 1', 19, 4, 0, 0),
(43, 'OSP Supervisor Regional 2', 19, 4, 0, 0),
(44, 'Property Regional 2', 19, 4, 0, 0),
(45, 'Property Regional 3', 19, 4, 0, 0),
(46, 'Sweeper Regional 1', 19, 4, 0, 0),
(47, 'Sweeper Regional 2', 19, 4, 0, 0),
(48, 'Sweeper Regional 3', 19, 4, 0, 0),
(49, 'T&P Supervisor Area 1', 19, 4, 0, 0),
(50, 'T&P Supervisor Regional 2', 19, 4, 0, 0),
(51, 'T&P Supervisor Zona 2', 19, 4, 0, 0),
(52, 'T&P Supervisor Zona 7', 19, 4, 0, 0),
(53, 'Acceptance Analyst', 20, 4, 0, 0),
(55, 'B2F Project Engineer', 20, 4, 0, 0),
(56, 'B2F Project Sr. Engineer', 20, 4, 0, 0),
(57, 'CME DAS Engineer', 20, 4, 0, 0),
(58, 'CME DAS Sr. Engineer', 20, 4, 0, 0),
(59, 'CME Engineer', 20, 4, 0, 0),
(60, 'CME Sr. Engineer', 20, 4, 0, 0),
(61, 'CME Supervisor', 20, 4, 0, 0),
(62, 'Electricity Supervisor', 20, 4, 0, 0),
(63, 'Implementation Account 1 Dept. Head', 20, 4, 0, 0),
(64, 'PM DAS & OSP', 20, 4, 0, 0),
(65, 'PM T&P', 20, 4, 0, 0),
(66, 'Project Support Admin', 20, 4, 0, 0),
(67, 'Project Support Section Head', 20, 4, 0, 0),
(68, 'SACME Admin', 20, 4, 0, 0),
(69, 'SITAC Sr. Engineer', 20, 4, 0, 0),
(70, 'Acceptance Coordinator', 21, 4, 0, 0),
(71, 'Acceptance Staff', 21, 4, 0, 0),
(72, 'CME Engineer', 21, 4, 0, 0),
(73, 'CME Sr. Engineer', 21, 4, 0, 0),
(74, 'CME Supervisor', 21, 4, 0, 0),
(75, 'DAS Engineer', 21, 4, 0, 0),
(76, 'Electricity Staff', 21, 4, 0, 0),
(77, 'Electricity Supervisor', 21, 4, 0, 0),
(78, 'Implementation Account 2 Dept. Head', 21, 4, 0, 0),
(79, 'Legal Support Staff', 21, 4, 0, 0),
(80, 'PM H3I & STI', 21, 4, 0, 0),
(81, 'PM XL', 21, 4, 0, 0),
(82, 'Project Admin Supervisor', 21, 4, 0, 0),
(83, 'Project Controller', 21, 4, 0, 0),
(84, 'Project Support Admin', 21, 4, 0, 0),
(85, 'Project Support Section Head', 21, 4, 0, 0),
(86, 'SACME Admin', 21, 4, 0, 0),
(87, 'SACME Doc Controller', 21, 4, 0, 0),
(88, 'SITAC Engineer', 21, 4, 0, 0),
(89, 'SITAC Sr. Engineer', 21, 4, 0, 0),
(90, 'SITAC Supervisor', 21, 4, 0, 0),
(91, 'Asset & Document Coordinator', 19, 4, 0, 0),
(92, 'Asset & Document Staff', 19, 4, 0, 0),
(93, 'Asset Management Section Head', 19, 4, 0, 0),
(94, 'DAS Audit Sr. Engineer', 19, 4, 0, 0),
(95, 'DAS Audit Supervisor', 19, 4, 0, 0),
(96, 'DAS BAPS Officer', 19, 4, 0, 0),
(97, 'DAS Material Control', 19, 4, 0, 0),
(98, 'DIS Back Office', 19, 4, 0, 0),
(99, 'Document Asset Staff', 19, 4, 0, 0),
(100, 'Electricity Staff', 19, 4, 0, 0),
(101, 'Electricity Supervisor', 19, 4, 0, 0),
(102, 'Field Maintenance Dept. Head', 19, 4, 0, 0),
(103, 'Helpdesk Coordinator', 19, 4, 0, 0),
(104, 'Helpdesk Section Head', 19, 4, 0, 0),
(105, 'Insurance', 19, 4, 0, 0),
(106, 'ISAT BAPS', 19, 4, 0, 0),
(107, 'Network Quality Section Head', 19, 4, 0, 0),
(108, 'Operation Controller', 19, 4, 0, 0),
(109, 'OSP Back Office', 19, 4, 0, 0),
(110, 'OSP DIS Helpdesk', 19, 4, 0, 0),
(111, 'Admin', 19, 4, 0, 0),
(112, 'Performance Analyst', 19, 4, 0, 0),
(113, 'Permit Staff', 19, 4, 0, 0),
(114, 'Re-contract & Recurring Section Head', 19, 4, 0, 0),
(115, 'T&P BAPS Officer', 19, 4, 0, 0),
(116, 'T&P DAS Helpdesk Staff', 19, 4, 0, 0),
(117, 'Tower Maintenance Sr. Engineer', 19, 4, 0, 0),
(118, 'Walktest Performance', 19, 4, 0, 0),
(119, 'Walktest Performance Supervisor', 19, 4, 0, 0),
(120, 'Account Receivable 1 Manager (Tsel, H3I, STI, Inux)\r\n', 12, 3, 0, 0),
(121, 'Account Receivable 2 Section Head (ISAT, XL, Smartfren, ISP)\r\n', 12, 3, 0, 0),
(122, 'AR Admin', 12, 3, 0, 0),
(123, 'AR Officer', 12, 3, 0, 0),
(124, 'Budget & Control Section Head', 12, 3, 0, 0),
(125, 'Budget Monitoring Officer', 12, 3, 0, 0),
(126, 'Commercial Control Officer', 12, 3, 0, 0),
(127, 'Corp. Finance & Commercial Control Dept. Head', 12, 3, 0, 0),
(128, 'Complaint, Litigation & General Support Staff', 13, 3, 0, 0),
(129, 'Corp. Counsel & Support Section Head', 13, 3, 0, 0),
(130, 'Corp. Secretary & Legal Dept. Head', 13, 3, 0, 0),
(131, 'Corporate Risk & Litigation Section Head', 13, 3, 0, 0),
(132, 'Corporate Secretary Support', 13, 3, 0, 0),
(133, 'Legal Documentation Staff', 13, 3, 0, 0),
(134, 'Legal Officer', 13, 3, 0, 0),
(135, 'Operation Legal Officer', 13, 3, 0, 0),
(136, 'Operational Legal Section Head', 13, 3, 0, 0),
(137, 'Secretary to Board of Directors', 13, 3, 0, 0),
(138, 'Finance Division Head', 11, 3, 0, 0),
(139, 'Account Payable Officer', 14, 3, 0, 0),
(140, 'Account Payable Staff', 14, 3, 0, 0),
(141, 'Accounting & Reporting', 14, 3, 0, 0),
(142, 'Accounting & Reporting Officer', 14, 3, 0, 0),
(143, 'Accounting & Reporting Staff', 14, 3, 0, 0),
(144, 'Asset Management Officer', 14, 3, 0, 0),
(145, 'Deputy to Finance & Accounting Head', 14, 3, 0, 0),
(146, 'ERP Controller', 14, 3, 0, 0),
(147, 'Finance & Accounting Dept. Head', 14, 3, 0, 0),
(148, 'Finance Section Head', 14, 3, 0, 0),
(149, 'Tax Audit Specialist', 14, 3, 0, 0),
(150, 'Tax Section Head', 14, 3, 0, 0),
(151, 'Tax Staff', 14, 3, 0, 0),
(152, 'Tax Supervisor', 14, 3, 0, 0),
(153, 'Treasury Officer', 14, 3, 0, 0),
(154, 'Treasury Staff', 14, 3, 0, 0),
(155, 'Hardware, Infrastucture & Network Support Section Head', 15, 3, 0, 0),
(156, 'Hardware, Network & Communication Support Staff', 15, 3, 0, 0),
(157, 'Infrastructure Email & Application Support', 15, 3, 0, 0),
(158, 'IT Business Support Section Head', 15, 3, 0, 0),
(159, 'IT Dept. Head', 15, 3, 0, 0),
(160, 'IT Support Staff', 15, 3, 0, 0),
(161, 'Network, Infrastructure Security & Performance', 15, 3, 0, 0),
(162, 'Programmer', 15, 3, 0, 0),
(163, 'System Analyst & Support Staff (Web & Mobile)', 15, 3, 0, 0),
(164, 'System Analyst & System Support Section Head', 15, 3, 0, 0),
(165, 'System Development Section Head', 15, 3, 0, 0),
(166, 'Buyer Manager', 16, 3, 0, 0),
(167, 'Buyer Officer', 16, 3, 0, 0),
(168, 'Buyer Officer GA, IT', 16, 3, 0, 0),
(169, 'Buyer Officer TnP', 16, 3, 0, 0),
(170, 'Buyer Section Head TnP, GA, IT', 16, 3, 0, 0),
(171, 'Buyer Staff', 16, 3, 0, 0),
(172, 'Invoice & PO Admin', 16, 3, 0, 0),
(173, 'Procurement & Supply Chain Dept. Head', 16, 3, 0, 0),
(174, 'Project & Maintenance Officer', 16, 3, 0, 0),
(175, 'Purchasing Admin', 16, 3, 0, 0),
(176, 'Strategic Sourcing & Vendor Relation Officer', 16, 3, 0, 0),
(177, 'Vendor Evaluation & Development Officer', 16, 3, 0, 0),
(178, 'Vendor Management Section Head', 16, 3, 0, 0),
(179, 'Warehouse Inventory', 16, 3, 0, 0),
(180, 'Warehouse Staff', 16, 3, 0, 0),
(181, 'Benefit Officer', 27, 6, 0, 0),
(182, 'Compensation & Benefit Dept. Head', 27, 6, 0, 0),
(183, 'Payroll Officer', 27, 6, 0, 0),
(184, 'Driver', 28, 6, 0, 0),
(185, 'Facilities Staff', 28, 6, 0, 0),
(186, 'GA Operation Section Head', 28, 6, 0, 0),
(187, 'GA Services Section Head', 28, 6, 0, 0),
(188, 'General Admin & Facilities Supervisor', 28, 6, 0, 0),
(189, 'General Admin Staff', 28, 6, 0, 0),
(190, 'General Affairs & GovRel Dept. Head', 28, 6, 0, 0),
(191, 'Services Coordinator', 28, 6, 0, 0),
(192, 'Transportation Coordinator', 28, 6, 0, 0),
(193, 'Travel Management Admin', 28, 6, 0, 0),
(194, 'Employee Relation & Safety Officer', 26, 6, 195, 0),
(195, 'HCIS Officer', 26, 6, 196, 1),
(196, 'Human Capital Division Head', 26, 6, 0, 0),
(197, 'HC Officer', 29, 6, 0, 0),
(198, 'Learning & Development Officer', 29, 6, 0, 0),
(199, 'Organization Development Dept. Head', 29, 6, 0, 0),
(200, 'Recruitment Officer', 29, 6, 199, 196),
(201, 'Talent & Performance Management Specialist', 29, 6, 0, 0),
(202, 'Retail Sales Supervisor', 23, 5, 0, 0),
(203, 'Account Executive Existing Building Sales I', 23, 5, 0, 0),
(204, 'Account Executive Existing Building Sales II', 23, 5, 0, 0),
(205, 'Account Executive New Segment Sales I', 23, 5, 0, 0),
(206, 'Account Executive New Segment Sales II', 23, 5, 0, 0),
(207, 'Account Manager & Partnership', 23, 5, 0, 0),
(208, 'Account Manager Existing Building Sales I', 23, 5, 0, 0),
(209, 'Account Manager Existing Building Sales II', 23, 5, 0, 0),
(210, 'Account Manager New Segment Sales I', 23, 5, 0, 0),
(211, 'Account Manager New Segment Sales II', 23, 5, 0, 0),
(212, 'AM & Partnership', 23, 5, 0, 0),
(213, 'Business Partnership Manager', 23, 5, 0, 0),
(214, 'Corporate Sales I Manager', 23, 5, 0, 0),
(215, 'Corporate Sales II Manager', 23, 5, 0, 0),
(216, 'Internet Sales Dept. Head', 23, 5, 0, 0),
(217, 'Retail Sales Manager', 23, 5, 0, 0),
(218, 'Retail Sales Supervisor', 23, 5, 0, 0),
(219, 'Sales Team Leader', 23, 5, 0, 0),
(220, 'Sales Team Leader 1', 23, 5, 0, 0),
(221, 'Sales Team Leader 2', 23, 5, 0, 0),
(222, 'Account Manager Jatim & Balnus', 22, 5, 0, 0),
(224, 'Account Executive Jawa Barat', 22, 5, 0, 0),
(225, 'Account Manager Makassar', 22, 5, 0, 0),
(226, 'Account Manager Medan', 22, 5, 0, 0),
(227, 'iVAS Division Head', 22, 5, 0, 0),
(228, 'Marketing Analyst', 22, 5, 0, 0),
(230, 'Marketing Manager', 22, 5, 0, 0),
(231, 'Solution Specialist', 22, 5, 0, 0),
(232, 'VAS Sales Support Manager', 22, 5, 0, 0),
(233, 'Commisioning Provisioning', 24, 5, 0, 0),
(234, 'Commisioning Provisioning Sr. Engineer', 24, 5, 0, 0),
(235, 'Corporate CRM Staff', 24, 5, 0, 0),
(236, 'Customer Care', 24, 5, 0, 0),
(237, 'Data & Billing Staff', 24, 5, 0, 0),
(238, 'Fault & Surveilance Section Head', 24, 5, 0, 0),
(239, 'Implemantation Team Cluster I', 24, 5, 0, 0),
(240, 'Implemantation Team Cluster II', 24, 5, 0, 0),
(241, 'Implementation Team Cluster II', 24, 5, 0, 0),
(242, 'iVAS Customer Support Section Head', 24, 5, 0, 0),
(243, 'iVAS Delivery Admin', 24, 5, 0, 0),
(244, 'iVAS Delivery Controller', 24, 5, 0, 0),
(245, 'iVAS Delivery Dept. Head', 24, 5, 0, 0),
(246, 'iVAS Implementation Manager I', 24, 5, 0, 0),
(247, 'iVAS Implementation Manager II', 24, 5, 0, 0),
(248, 'iVAS Implementation Section Head', 24, 5, 0, 0),
(249, 'NOC Engineer', 24, 5, 0, 0),
(250, 'Quality & Network Performance', 24, 5, 0, 0),
(251, 'Retail CRM Staff', 24, 5, 0, 0),
(252, 'Solution & Development Specialist', 24, 5, 0, 0),
(253, 'System Infrastructure', 24, 5, 0, 0),
(254, 'System Infrastructure Sr. Engineer', 24, 5, 0, 0),
(255, 'Team Cluster 1', 24, 5, 0, 0),
(256, 'Technical Assistance Center Section Head', 24, 5, 0, 0),
(257, 'TS Cluster 1', 24, 5, 0, 0),
(258, 'TS Cluster 2', 24, 5, 0, 0),
(259, 'TS Cluster 3', 24, 5, 0, 0),
(260, 'TS Cluster 4', 24, 5, 0, 0),
(261, 'TS Cluster 5', 24, 5, 0, 0),
(262, 'TS Cluster 6-1', 24, 5, 0, 0),
(263, 'TS Cluster 6-2', 24, 5, 0, 0),
(264, 'TS Cluster Bandung', 24, 5, 0, 0),
(265, 'TS Cluster Medan', 24, 5, 0, 0),
(266, 'TS Surabaya', 24, 5, 0, 0),
(267, 'VAS Production Sr. Engineer', 24, 5, 0, 0),
(269, 'Account Executive VAS I', 25, 5, 0, 0),
(270, 'Account Executive VAS II', 25, 5, 0, 0),
(271, 'Media Acquisition & Partnership Manager', 25, 5, 0, 0),
(272, 'VAS Dept Head', 25, 5, 0, 0),
(273, 'VAS Sales Manager I', 25, 5, 0, 0),
(274, 'VAS Sales Manager II', 25, 5, 0, 0),
(275, 'Estate Acquisition Spv Segment C & D', 5, 2, 0, 0),
(276, 'Estate Acquisition Controller', 5, 2, 0, 0),
(277, 'Estate Acquisition Dept. Head', 5, 2, 0, 0),
(278, 'Estate Acquisition Mgr Segment A & B', 5, 2, 0, 0),
(279, 'Estate Acquisition Mgr Segment C & D', 5, 2, 0, 0),
(280, 'Estate Acquisition Spv Segment A & B', 5, 2, 0, 0),
(281, 'Estate Acquisition Spv Segment C & D', 5, 2, 0, 0),
(282, 'Estate Dev. Supervisor Segment C', 7, 2, 0, 0),
(283, 'Estate Admin', 7, 2, 0, 0),
(284, 'Estate Dev. Manager Segment A Premium', 7, 2, 0, 0),
(285, 'Estate Dev. Manager Segment B Mall & University', 7, 2, 0, 0),
(286, 'Estate Dev. Manager Segment C Apartment & Office', 7, 2, 0, 0),
(287, 'Estate Dev. Manager Segment D Hotel & Hospital', 7, 2, 0, 0),
(288, 'Estate Dev. Supervisor Segment A', 7, 2, 0, 0),
(289, 'Estate Dev. Supervisor Segment B', 7, 2, 0, 0),
(290, 'Estate Dev. Supervisor Segment C', 7, 2, 0, 0),
(291, 'Estate Dev. Supervisor Segment D', 7, 2, 0, 0),
(292, 'Estate Development Controller', 7, 2, 0, 0),
(293, 'Estate Development Dept. Head', 7, 2, 0, 0),
(294, 'Account Manager Area Makassar', 8, 2, 0, 0),
(295, 'Account Manager Area Medan', 8, 2, 0, 0),
(296, 'Account Manager Area Surabaya', 8, 2, 0, 0),
(297, 'Regional Sales Dept. Head', 8, 2, 0, 0),
(298, 'Deputy to MNO Sales Div. Head', 6, 2, 0, 0),
(299, 'MNO Sales Division Head', 6, 2, 0, 0),
(300, 'Sales Admin', 6, 2, 0, 0),
(301, 'Solution Specialist', 6, 2, 0, 0),
(302, 'Account Executive', 9, 2, 0, 0),
(303, 'Sales Account 1 Dept. Head', 9, 2, 0, 0),
(304, 'Sr. Account Manager', 9, 2, 0, 0),
(305, 'Sr. Account Manager Indosat & Smartfren', 9, 2, 0, 0),
(306, 'Sr. Account Manager TSEL', 9, 2, 0, 0),
(308, 'Account Manager H3I/STI', 10, 2, 0, 0),
(309, 'Account Manager XL', 10, 2, 0, 0),
(310, 'Account Manager XL & H3I', 10, 2, 0, 0),
(311, 'Sales Account 2 Dept. Head', 10, 2, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `profile_jabatan`
--

CREATE TABLE `profile_jabatan` (
  `id` int(11) NOT NULL,
  `id_posisi` int(11) NOT NULL,
  `tujuan_jabatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `profile_jabatan`
--

INSERT INTO `profile_jabatan` (`id`, `id_posisi`, `tujuan_jabatan`) VALUES
(1, 195, '<ul><li>Memastikan HCIS system berjalan dengan baik dengan memaintain semua modul di Andal Paymaster serta memonitor data personal dan organisasi. Dalam perkembangan teknologi juga support kebutuhan system untuk mendukung kelancaran semua fungsi di Human Capital Division.</li></ul>'),
(5, 200, '<ul><li>Memastikan pemenuhan kebutuhan manpower sesuai dengan kualifikasi yang ditetapkan dengan<br />menjalankan proses rekrutmen, seleksi hingga onboarding karyawan.</li></ul>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `report`
--

CREATE TABLE `report` (
  `id_emp` int(11) NOT NULL,
  `emp_name` varchar(128) NOT NULL,
  `position_name` varchar(128) NOT NULL,
  `division` varchar(128) NOT NULL,
  `nama_departemen` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `report`
--

INSERT INTO `report` (`id_emp`, `emp_name`, `position_name`, `division`, `nama_departemen`) VALUES
(1, 'Nurul Dwi Oktaviani', 'Document Asset Staff', 'Delivery', 'Field Maintenance'),
(2, 'Maria Febriyanti', 'Asset Management Officer', 'Finance', 'Finance & Accounting'),
(3, 'Desilawati Rohmatika', 'Sales Team Leader', 'iVAS', 'Internet Sales'),
(4, 'Belafonti', 'VAS Dept Head', 'iVAS', 'VAS Sales'),
(5, 'Joseph Siagian', 'Implementation Team Cluster II', 'iVAS', 'iVAS Delivery'),
(6, 'Dedi Irawan', 'TS Cluster 5', 'iVAS', 'iVAS Delivery'),
(7, 'Muthia Nur Rahma', 'Estate Dev. Supervisor Segment D', 'MNO Sales', 'Estate Development'),
(8, 'Yan Raymond Jafri', 'Chief Executive Officer', 'CEO Office', 'Field Maintenance'),
(9, 'Hartanto Kusmanto', 'Finance Division Head', 'Finance', 'Finance'),
(10, 'Yuana Susatyo', 'MNO Sales Division Head', 'MNO Sales', 'Field Maintenance'),
(11, 'Michael Loebis', 'Human Capital Division Head', 'Human Capital', 'Human Capital'),
(12, 'Evi Ihdina Eksir', 'Vendor Evaluation & Development Officer', 'Finance', 'Procurement and Supply Chain'),
(13, 'Erwin Fuadi', 'iVAS Design Sr. Engineer', 'Delivery', 'Engineering Design'),
(14, 'Syarifuddin', 'Asset & Document Staff', 'Delivery', 'Field Maintenance'),
(15, 'Wiwik Septriandewi', 'Corp. Secretary & Legal Dept. Head', 'Finance', 'Corp. Secretary & Legal'),
(16, 'Mulayana Haris', 'Hardware, Infrastucture & Network Support Section Head', 'Finance', 'Information Technology'),
(17, 'Harni Marwati', 'Treasury Officer', 'Finance', 'Finance & Accounting'),
(18, 'Herry Nugroho', 'PM DAS & OSP', 'Delivery', 'Implementation Account 1'),
(19, 'Akhmad Sopan Mukti', 'TS Cluster 4', 'iVAS', 'iVAS Delivery'),
(20, 'Deddy Rosadi K.', 'DAS Supervisor Zona 4', 'Delivery', 'Field Maintenance'),
(21, 'Rachmat', 'DAS Supervisor Regional 1', 'Delivery', 'Field Maintenance'),
(22, 'Joko Purnomo', 'TS Cluster 1', 'iVAS', 'iVAS Delivery'),
(23, 'Dimas Danung Prianggono', 'Account Executive', 'MNO Sales', 'Sales Account 2'),
(24, 'Sutarko', 'Transportation Coordinator', 'Human Capital', 'General Affairs'),
(25, 'Karina Afriyanti', 'Operational Legal Section Head', 'Finance', 'Corp. Secretary & Legal'),
(26, 'Rosita', 'Purchasing Admin', 'Finance', 'Procurement and Supply Chain'),
(27, 'Suhardi', 'CME Supervisor', 'Delivery', 'Implementation Account 2'),
(28, 'Risqa Fudianti', 'Project Admin Supervisor', 'Delivery', 'Implementation Account 2'),
(29, 'Benny Suhancolo', 'Estate Dev. Supervisor Segment D', 'MNO Sales', 'Estate Development'),
(30, 'Rusda Rachmawati', 'Project & Maintenance Officer', 'Finance', 'Procurement and Supply Chain'),
(31, 'Roni', 'AR Admin', 'Finance', 'Corp. Finance & Commercial Control'),
(32, 'M. Syarif Hidayatulloh', 'T&P DAS Helpdesk Staff', 'Delivery', 'Field Maintenance'),
(33, 'Rinto Suharmoko', 'Estate Acquisition Dept. Head', 'MNO Sales', 'Estate Acquisition'),
(34, 'Joe Niandhika Baskoro', 'NOC Engineer', 'iVAS', 'iVAS Delivery'),
(35, 'Alimin Nasri', 'Driver', 'Human Capital', 'General Affairs'),
(36, 'Bayu Febriant Purba', 'VAS Sales Support Manager', 'iVAS', 'iVAS'),
(37, 'Wawan Hermawan Indra Kesuma', 'T&P DAS Helpdesk Staff', 'Delivery', 'Field Maintenance'),
(38, 'Suci Roghayah', 'Buyer Officer GA, IT', 'Finance', 'Procurement and Supply Chain'),
(39, 'Shinta Risnawatie', 'Tax Section Head', 'Finance', 'Finance & Accounting'),
(40, 'Rosi Rachmawati', 'Finance & Accounting Dept. Head', 'Finance', 'Finance & Accounting'),
(41, 'Radhitya Ivannov Putra', 'DAS Engineer', 'Delivery', 'Implementation Account 2'),
(42, 'Sarono', 'Civil Engineer', 'Delivery', 'Engineering Design'),
(43, 'Yuana Oktafiani', 'Account Payable Staff', 'Finance', 'Finance & Accounting'),
(44, 'Anas Saiful Bakhri', 'Implementation Account 1 Dept. Head', 'Delivery', 'Implementation Account 1'),
(45, 'Siti Sari Fatimah', 'Acceptance Staff', 'Delivery', 'Implementation Account 2'),
(46, 'Kilpatrick Pattinaya', 'Account Executive', 'iVAS', 'VAS Sales'),
(47, 'Ayu Kurnia Agustin', 'Compensation & Benefit Dept. Head', 'Human Capital', 'Compensation & Benefit'),
(48, 'Yessy Meilani', 'GA Services Section Head', 'Human Capital', 'General Affairs'),
(49, 'Seno Suroso', 'Estate Acquisition Spv Segment A & B', 'MNO Sales', 'Estate Acquisition'),
(50, 'Indri Nur Hikmawati', 'Legal Support Staff', 'Delivery', 'Implementation Account 2'),
(51, 'Eva Cipta Ningrum', 'Secretary to Board of Directors', 'Finance', 'Corp. Secretary & Legal'),
(52, 'Gina Pratiwi Hermina Dewi', 'SACME Admin', 'Delivery', 'Implementation Account 1'),
(53, 'Sofyan', 'Account Manager XL & H3I', 'MNO Sales', 'Sales Account 2'),
(54, 'Adi Margono', 'Facilities Staff', 'Human Capital', 'General Affairs'),
(56, 'Ari Chandra Adryanto', 'TS Cluster 4', 'iVAS', 'iVAS Delivery'),
(57, 'Arief Fadilah', 'Civil Sr. Engineer', 'Delivery', 'Engineering Design'),
(58, 'Bayu Renawiyati', 'Accounting & Reporting Staff', 'Finance', 'Finance & Accounting'),
(59, 'Bonny Arfian', 'iVAS Design Sr. Engineer', 'Delivery', 'Engineering Design'),
(60, 'Carwito', 'B2F Project Engineer', 'Delivery', 'Implementation Account 1'),
(61, 'Deni Wahyudin', 'TS Cluster 3', 'iVAS', 'iVAS Delivery'),
(62, 'Dian Ajeng Puspita', 'Treasury Staff', 'Finance', 'Finance & Accounting'),
(63, 'Dian Febriyanti', 'General Admin Staff', 'Human Capital', 'General Affairs'),
(64, 'Dicky Hermanto', 'Walktest Performance', 'Delivery', 'Field Maintenance'),
(65, 'Dyan Kusumawardhani', 'AR Officer', 'Finance', 'Corp. Finance & Commercial Control'),
(66, 'Edwinda Ramadhani', 'iVAS Engineering Section Head', 'Delivery', 'Engineering Design'),
(67, 'Efendi Syarifudin', 'Warehouse Staff', 'Finance', 'Procurement and Supply Chain'),
(68, 'Eko Budi Wibowo', 'Regional Sales Dept. Head', 'MNO Sales', 'Regional Sales'),
(69, 'Firman Joko Puspito', 'B2F Project Sr. Engineer', 'Delivery', 'Implementation Account 1'),
(70, 'Franciska Tini Lestari', 'Electricity Supervisor', 'Delivery', 'Field Maintenance'),
(71, 'Hardiawan', 'Network Quality Section Head', 'Delivery', 'Field Maintenance'),
(72, 'Hendra Triyana', 'OSP DIS Helpdesk', 'Delivery', 'Field Maintenance'),
(73, 'Hengky Hardiyanto', 'CME DAS Sr. Engineer', 'Delivery', 'Implementation Account 1'),
(74, 'Imam Syafii', 'Driver', 'Human Capital', 'General Affairs'),
(75, 'Intan Rachmayanti', 'Engineering Database Controller', 'Delivery', 'Engineering Design'),
(76, 'Irma Yanti', 'Asset & Document Coordinator', 'Delivery', 'Field Maintenance'),
(77, 'Joni', 'Engineering Section Head RF', 'Delivery', 'Engineering Design'),
(78, 'Lia Yuliati', 'Strategic Sourcing & Vendor Relation Officer', 'Finance', 'Procurement and Supply Chain'),
(79, 'Linda Aryani', 'Walktest Performance', 'Delivery', 'Field Maintenance'),
(80, 'Lutfi Hanafi', 'NOC Engineer', 'iVAS', 'iVAS Delivery'),
(81, 'M. Ridwan', 'Walktest Performance', 'Delivery', 'Field Maintenance'),
(82, 'Marisa Purnasari', 'Project Support Admin', 'Delivery', 'Implementation Account 1'),
(83, 'Muhsin Sobri', 'Civil Sr. Engineer', 'Delivery', 'Engineering Design'),
(84, 'Pritta Septianingsih', 'Operation Data Controller', 'Delivery', 'Field Maintenance'),
(85, 'Richard Oktavianus', 'Sales Account 2 Dept. Head', 'MNO Sales', 'Sales Account 2'),
(86, 'Saardan', 'OSP Supervisor Regional 1', 'Delivery', 'Field Maintenance'),
(87, 'Siti Umamah', 'Services Coordinator', 'Human Capital', 'General Affairs'),
(88, 'Sri Dewi Rahayu', 'Account Executive', 'iVAS', 'VAS Sales'),
(89, 'Sudarmono', 'Sweeper Regional 2', 'Delivery', 'Field Maintenance'),
(90, 'Suharto', 'DAS Engineer', 'Delivery', 'Implementation Account 2'),
(91, 'Supriyanto', 'TS Cluster 3', 'iVAS', 'iVAS Delivery'),
(92, 'Sutarjo', 'Electricity Staff', 'Delivery', 'Field Maintenance'),
(93, 'Suyitno', 'CME DAS Engineer', 'Delivery', 'Implementation Account 1'),
(94, 'Triswanto', 'Asset Management Officer', 'Finance', 'Finance & Accounting'),
(95, 'Yunus Andriyanto', 'Estate Dev. Supervisor Segment B', 'MNO Sales', 'Estate Development'),
(96, 'Zaenal Arifin', 'Permit Staff', 'Delivery', 'Field Maintenance'),
(97, 'Alvin Setiadi', 'Warehouse Staff', 'Finance', 'Procurement and Supply Chain'),
(98, 'Dian Haryanto', 'System Analyst & System Support Section Head', 'Finance', 'Information Technology'),
(99, 'Feri Fachrudin Adinegara', 'Estate Acquisition Mgr Segment C & D', 'MNO Sales', 'Estate Acquisition'),
(100, 'Abdul Hamid Wijaya', 'Field Operations Section Head Regional 3', 'Delivery', 'Field Maintenance'),
(101, 'Putri Permatasari', 'Electricity Staff', 'Delivery', 'Field Maintenance'),
(102, 'Dewi Retno Sembodo', 'Benefit Officer', 'Human Capital', 'Compensation & Benefit'),
(103, 'Iwan Setiawan', 'Field Operations Section Head Regional 2', 'Delivery', 'Field Maintenance'),
(104, 'Ade Sukma Winata', 'iVAS Delivery Admin', 'iVAS', 'iVAS Delivery'),
(105, 'Hadi Wibowo', 'Project Support Section Head', 'Delivery', 'Implementation Account 2'),
(106, 'Karina Farianti Safari', 'Corporate Secretary Support', 'Finance', 'Corp. Secretary & Legal'),
(107, 'Mega Triwulandari', 'Sales Admin', 'MNO Sales', 'Field Maintenance'),
(108, 'Andry Azis', 'Estate Acquisition Spv Segment A & B', 'MNO Sales', 'Estate Acquisition'),
(109, 'R. Bambang Pantja Poerhandhoko', 'Electricity Supervisor', 'Delivery', 'Implementation Account 1'),
(110, 'Yuliantoro', 'Invoice & PO Admin', 'Finance', 'Procurement and Supply Chain'),
(111, 'Slamet Afiyanto', 'OSP DIS Helpdesk', 'Delivery', 'Field Maintenance'),
(112, 'Andi Triyono', 'NOC Engineer', 'iVAS', 'iVAS Delivery'),
(113, 'Michael Hanindhya', 'Corp. Finance & Commercial Control Dept. Head', 'Finance', 'Corp. Finance & Commercial Control'),
(114, 'Irfan Sya\'roni', 'Accounting & Reporting Officer', 'Finance', 'Finance & Accounting'),
(115, 'Putu Verdika A', 'Infrastructure Email & Application Support', 'Finance', 'Information Technology'),
(116, 'Pricilia Puspita Dewi', 'ISAT BAPS', 'Delivery', 'Field Maintenance'),
(117, 'Ahmad Firdaus', 'TS Engineer', 'Delivery', 'Engineering Design'),
(118, 'Herry Zulfan', 'Engineering Design Dept. Head', 'Delivery', 'Engineering Design'),
(119, 'Endi Sudrajat', 'Driver', 'Human Capital', 'General Affairs'),
(120, 'Adi Mulyono', 'Delivery Division Head', 'Delivery', 'Delivery'),
(121, 'Anastasia Christine', 'Estate Dev. Supervisor Segment A', 'MNO Sales', 'Estate Development'),
(122, 'Rusmanta', 'Corp. Counsel & Support Section Head', 'Finance', 'Corp. Secretary & Legal'),
(123, 'Yulia Irawati', 'Acceptance Staff', 'Delivery', 'Implementation Account 1'),
(124, 'Nurhidaya Rusdi', 'Sales Account 1 Dept. Head', 'MNO Sales', 'Sales Account 1'),
(125, 'Budi Arta K', 'DAS Supervisor Zona 3', 'Delivery', 'Field Maintenance'),
(126, 'Hendra Permana', 'Property Regional 2', 'Delivery', 'Field Maintenance'),
(127, 'Kitson Hutabarat', 'PM XL', 'Delivery', 'Implementation Account 2'),
(128, 'Radi Rusmana', 'Driver', 'Human Capital', 'General Affairs'),
(129, 'Farid Ridwan', 'PM T&P', 'Delivery', 'Implementation Account 1'),
(130, 'Ribowo', 'Helpdesk Coordinator', 'Delivery', 'Field Maintenance'),
(131, 'Henry Charles', 'Corporate PMO Dept. Head', 'CEO Office', 'Corporate PMO'),
(132, 'Noviana Fransiska Samosir', 'Account Executive', 'MNO Sales', 'Sales Account 2'),
(133, 'Adhiskara Subandi', 'iVAS Design Sr. Engineer', 'Delivery', 'Engineering Design'),
(134, 'Clara Joyce Kosasih', 'AR Officer', 'Finance', 'Corp. Finance & Commercial Control'),
(135, 'Teja Permana', 'IT Business Support Section Head', 'Finance', 'Information Technology'),
(136, 'Abdul Zahid', 'Radio Design Engineer', 'Delivery', 'Engineering Design'),
(137, 'Mejisal Jumawan', 'SITAC Supervisor', 'Delivery', 'Implementation Account 2'),
(138, 'Muksin', 'Sweeper Regional 3', 'Delivery', 'Field Maintenance'),
(139, 'Yuyun Fitriyani', 'Electricity Staff', 'Delivery', 'Field Maintenance'),
(140, 'Cahya Dhamayanti', 'Estate Admin', 'MNO Sales', 'Estate Development'),
(141, 'Deni Syarif Hamdani', 'Property Regional 3', 'Delivery', 'Field Maintenance'),
(142, 'Syaeful Yusuf Surawijaya', 'iVAS Implementation Manager II', 'iVAS', 'iVAS Delivery'),
(143, 'Agus Heryadi', 'Optimization Sr. Engineer', 'Delivery', 'Engineering Design'),
(144, 'Khaidir Kasim', 'Implementation Account 2 Dept. Head', 'Delivery', 'Implementation Account 2'),
(145, 'M. Mahdi', 'Walktest Performance', 'Delivery', 'Field Maintenance'),
(146, 'Eko Prastia Firmansyah', 'Estate Development Dept. Head', 'MNO Sales', 'Estate Development'),
(147, 'Bayu Permono', 'Electricity Staff', 'Delivery', 'Field Maintenance'),
(148, 'Henry Agus Pradipta', 'Civil Engineer', 'Delivery', 'Engineering Design'),
(149, 'Andrian Tantra', 'Budget & Control Section Head', 'Finance', 'Corp. Finance & Commercial Control'),
(150, 'Anne Effendi', 'General Affairs & GovRel Dept. Head', 'Human Capital', 'General Affairs'),
(151, 'Ibnu Zulkarnaen', 'Performance Analyst', 'Delivery', 'Field Maintenance'),
(152, 'Yudo Dwi Permana', 'SITAC Supervisor', 'Delivery', 'Implementation Account 2'),
(153, 'Fenny Haryanto', 'Payroll Officer', 'Human Capital', 'Compensation & Benefit'),
(154, 'Taqwim Kurniawan', 'Estate Acquisition Spv Segment C & D', 'MNO Sales', 'Estate Acquisition'),
(155, 'Giri Gumilar', 'Estate Dev. Supervisor Segment B', 'MNO Sales', 'Estate Development'),
(156, 'Oyon Karyono', 'Walktest Performance Supervisor', 'Delivery', 'Field Maintenance'),
(157, 'Rinal Divayana', 'Complaint, Litigation & General Support Staff', 'Finance', 'Corp. Secretary & Legal'),
(158, 'Tri Rahayu', 'Field Operations Admin Regional 2', 'Delivery', 'Field Maintenance'),
(159, 'Fajar Sepdiantoro', 'Permit Staff', 'Delivery', 'Field Maintenance'),
(160, 'Mahyudin', 'CME Engineer', 'Delivery', 'Implementation Account 2'),
(161, 'Nurhasan Bashiruddin', 'Performance Analyst', 'Delivery', 'Field Maintenance'),
(162, 'Sapuroh', 'Account Payable Officer', 'Finance', 'Finance & Accounting'),
(163, 'Santoni', 'Warehouse Inventory', 'Finance', 'Procurement and Supply Chain'),
(164, 'Yuli Rahmanita', 'Acceptance Coordinator', 'Delivery', 'Implementation Account 2'),
(165, 'Ade Ricky Kurniawan', 'NOC Engineer', 'iVAS', 'iVAS Delivery'),
(166, 'Setyo Wibowo', 'IT Dept. Head', 'Finance', 'Information Technology'),
(167, 'Selvia Dwi Julisman', 'Estate Dev. Supervisor Segment D', 'MNO Sales', 'Estate Development'),
(168, 'Adita Novendianti', 'iVAS Delivery Controller', 'iVAS', 'iVAS Delivery'),
(169, 'Fiki Azkiya', 'System Analyst & Support Staff (Web & Mobile)', 'Finance', 'Information Technology'),
(170, 'Supriyadi', 'DAS Material Control', 'Delivery', 'Field Maintenance'),
(171, 'Bintang Cemerlang Yoghastika', 'Account Receivable 2 Section Head (ISAT, XL, Smartfren, ISP)\r\n', 'Finance', 'Corp. Finance & Commercial Control'),
(172, 'Rossa Laily', 'Sr. Account Manager TSEL', 'MNO Sales', 'Sales Account 1'),
(173, 'Inayatun Nisa', 'Account Executive', 'MNO Sales', 'Sales Account 1'),
(174, 'Griesye Widyaprimanika', 'Engineering Section Head CME', 'Delivery', 'Engineering Design'),
(175, 'Mas Oka Hendriyana', 'GA Operation Section Head', 'Human Capital', 'General Affairs'),
(176, 'Abdul Hamid', 'Purchasing Admin', 'Finance', 'Procurement and Supply Chain'),
(177, 'Aldhira Dwi Chandra', 'Data & Billing Staff', 'iVAS', 'iVAS Delivery'),
(178, 'Dedi Haris Widyatmoko', 'Commisioning Provisioning Sr. Engineer', 'iVAS', 'iVAS Delivery'),
(179, 'Elisabeth Nanik Mitayani', 'Estate Acquisition Spv Segment A & B', 'MNO Sales', 'Estate Acquisition'),
(180, 'Fika Zulfia', 'Retail CRM Staff', 'iVAS', 'iVAS Delivery'),
(181, 'Hartiningdiah', 'Accounting & Reporting Staff', 'Finance', 'Finance & Accounting'),
(182, 'Indra Prayitno', 'NOC Engineer', 'iVAS', 'iVAS Delivery'),
(183, 'Lilik Sugiarto', 'Helpdesk Section Head', 'Delivery', 'Field Maintenance'),
(184, 'Randy Adhams', 'TS Cluster 3', 'iVAS', 'iVAS Delivery'),
(185, 'Tri Budianto', 'Account Manager Existing Building Sales I', 'iVAS', 'Internet Sales'),
(186, 'Fember Syarif Fahrudin', 'TS Cluster 2', 'iVAS', 'iVAS Delivery'),
(187, 'Sandy Kusuma', 'Solution Specialist', 'MNO Sales', 'Field Maintenance'),
(188, 'Aida Nurandini', 'iVAS Delivery Dept. Head', 'iVAS', 'iVAS Delivery'),
(189, 'Saptoto', 'OSP Supervisor Regional 2', 'Delivery', 'Field Maintenance'),
(190, 'Matthews Mora', 'Project Support Section Head', 'Delivery', 'Implementation Account 1'),
(191, 'Adi Sutari', 'TS Cluster 1', 'iVAS', 'iVAS Delivery'),
(192, 'Hapilus', 'TS Cluster Bandung', 'iVAS', 'iVAS Delivery'),
(193, 'Dadang Herdiyanto Nugroho', 'PM H3I & STI', 'Delivery', 'Implementation Account 2'),
(194, 'Monica Pricilia A Rusmadji', 'Account Executive', 'MNO Sales', 'Sales Account 1'),
(195, 'Heri Susanto', 'Accounting & Reporting Staff', 'Finance', 'Finance & Accounting'),
(196, 'Bella Wilda Sayuti', 'Legal Documentation Staff', 'Finance', 'Corp. Secretary & Legal'),
(197, 'Abdilah Roni', 'Electricity Staff', 'Delivery', 'Field Maintenance'),
(198, 'FX Laga Satya Adi Pratama', 'Estate Dev. Manager Segment D Hotel & Hospital', 'MNO Sales', 'Estate Development'),
(199, 'Intan Angga Samudra', 'Network, Infrastructure Security & Performance', 'Finance', 'Information Technology'),
(200, 'Akhirul Kurniawan Akbar', 'Solution Specialist', 'iVAS', 'iVAS'),
(201, 'Amar Fadhillah', 'System Development Section Head', 'Finance', 'Information Technology'),
(202, 'Iwan Hernawan', 'Asset Management Section Head', 'Delivery', 'Field Maintenance'),
(203, 'Rizal Maulana', 'SITAC Sr. Engineer', 'Delivery', 'Implementation Account 1'),
(204, 'Agustina', 'Data Controller', 'CEO Office', 'Corporate PMO'),
(205, 'Robby Ismail', 'Sr. Account Manager', 'MNO Sales', 'Sales Account 1'),
(206, 'Richardo Nimrod Malton', 'Media Acquisition & Partnership Manager', 'iVAS', 'VAS Sales'),
(207, 'Wahyudi', 'HCIS Officer', 'Human Capital', 'Human Capital'),
(208, 'Riska Lestari', 'Tax Staff', 'Finance', 'Finance & Accounting'),
(209, 'Nanda Adiya Pradana', 'Business Process Analyst ', 'CEO Office', 'Corporate PMO'),
(210, 'Indra Yudison', 'Corporate Development Dept. Head', 'CEO Office', 'Corporate Development'),
(211, 'Rekso Prabowo', 'Estate Dev. Manager Segment A Premium', 'MNO Sales', 'Estate Development'),
(212, 'Risha Octarina', 'SACME Admin', 'Delivery', 'Implementation Account 1'),
(213, 'Reni Kristina', 'Estate Dev. Manager Segment B Mall & University', 'MNO Sales', 'Estate Development'),
(214, 'Zaidan Rusyadi', 'CME Sr. Engineer', 'Delivery', 'Implementation Account 2'),
(215, 'Titus David Haryono', 'Tower Maintenance Sr. Engineer', 'Delivery', 'Field Maintenance'),
(216, 'Andhika Juwandra', 'CME Supervisor', 'Delivery', 'Implementation Account 2'),
(217, 'Alfi Risqia', 'Project Controller', 'Delivery', 'Implementation Account 2'),
(218, 'Titi Wijayanti', 'Project Controller', 'Delivery', 'Implementation Account 2'),
(219, 'Gandi Hafissoma Ruskandar', 'Employee Relation & Safety Officer', 'Human Capital', 'Human Capital'),
(220, 'Dody Thema', 'Driver', 'Human Capital', 'General Affairs'),
(221, 'Arifianto Budiman', 'SITAC Sr. Engineer', 'Delivery', 'Implementation Account 2'),
(222, 'Markus Yoyok Kustadi', 'Electricity Supervisor', 'Delivery', 'Implementation Account 2'),
(223, 'Fauzi Rachmatullah', 'CME Engineer', 'Delivery', 'Implementation Account 2'),
(224, 'Ahmad Faisal Romadhon', 'Electricity Staff', 'Delivery', 'Implementation Account 2'),
(225, 'Ruzqi Eka Septiyana', 'Acceptance Analyst', 'Delivery', 'Implementation Account 1'),
(226, 'Jai Dewer', 'Legal Officer', 'Finance', 'Corp. Secretary & Legal'),
(227, 'Berry Satya Yudhistira', 'Field Operations Section Head Regional 1', 'Delivery', 'Field Maintenance'),
(228, 'Ida Bagus Made Adi Sanjaya', 'DAS Audit Supervisor', 'Delivery', 'Field Maintenance'),
(229, 'Kumara Gadri Fataha', 'CME Engineer', 'Delivery', 'Implementation Account 1'),
(230, 'Agus Triprasetyo Riadi', 'Tower Material Controller', 'Delivery', 'Engineering Design'),
(231, 'Deddy Chairany', 'Estate Acquisition Spv Segment C & D', 'MNO Sales', 'Estate Acquisition'),
(232, 'Tulus Wiyono', 'CME Sr. Engineer', 'Delivery', 'Implementation Account 2'),
(233, 'Bagus Rulianto', 'CME Engineer', 'Delivery', 'Implementation Account 2'),
(234, 'Pitra Zayanosa', 'Deputy to Finance & Accounting Head', 'Finance', 'Finance & Accounting'),
(235, 'Fernando', 'General Admin & Facilities Supervisor', 'Human Capital', 'General Affairs'),
(236, 'Angga Kurniawan', 'iVAS Implementation Section Head', 'iVAS', 'iVAS Delivery'),
(237, 'Budy Suryana', 'Implemantation Team Cluster II', 'iVAS', 'iVAS Delivery'),
(238, 'Dede Fajaruddin', 'TS Cluster 5', 'iVAS', 'iVAS Delivery'),
(239, 'Dede Nurhadi', 'TS Cluster 1', 'iVAS', 'iVAS Delivery'),
(240, 'Gilbert Abednego', 'iVAS Delivery Controller', 'iVAS', 'iVAS Delivery'),
(241, 'Heri Mulya Haryoko', 'Estate Dev. Supervisor Segment C', 'MNO Sales', 'Estate Development'),
(242, 'Pamungkas Wijayanto', 'Estate Dev. Supervisor Segment B', 'MNO Sales', 'Estate Development'),
(243, 'Raka Pradana Putra', 'TS Cluster 4', 'iVAS', 'iVAS Delivery'),
(244, 'Rosdiana Elmi Rochim', 'Data & Billing Staff', 'iVAS', 'iVAS Delivery'),
(245, 'Siti Wahyuni F Usman', 'Account Executive', 'iVAS', 'VAS Sales'),
(246, 'Tomi Ari Kurniawan', 'iVAS Implementation Manager I', 'iVAS', 'iVAS Delivery'),
(247, 'Wawan Supriadi', 'iVAS Design Sr. Engineer', 'Delivery', 'Engineering Design'),
(248, 'Rinsky Yonita', 'Treasury Staff', 'Finance', 'Finance & Accounting'),
(249, 'Novi Sari Rosalin Gultom', 'Account Payable Staff', 'Finance', 'Finance & Accounting'),
(250, 'Billy Trifan Ibrahim', 'TS Cluster 2', 'iVAS', 'iVAS Delivery'),
(251, 'Amelia Anastasya Lombogia', 'Budget Monitoring Officer', 'Finance', 'Corp. Finance & Commercial Control'),
(252, 'Tira Yoedho', 'Estate Dev. Supervisor Segment A', 'MNO Sales', 'Estate Development'),
(253, 'Budiastuty Wahyuningsi', 'Accounting & Reporting Officer', 'Finance', 'Finance & Accounting'),
(254, 'Brillyant Devanty Fortunnela', 'Estate Dev. Supervisor Segment A', 'MNO Sales', 'Estate Development'),
(255, 'Funky Tri Doreta', 'Re-contract & Recurring Section Head', 'Delivery', 'Field Maintenance'),
(256, 'Adhisty Wulan Kusumawardani', 'Account Executive', 'iVAS', 'VAS Sales'),
(257, 'Mohamed Reza Hasyandi', 'Corporate Development Analyst', 'CEO Office', 'Corporate Development'),
(258, 'Khairunnisa Rizkiani', 'Project Support Admin', 'Delivery', 'Implementation Account 2'),
(259, 'Kurniati Sulthan', 'Sr. Account Manager Indosat & Smartfren', 'MNO Sales', 'Sales Account 1'),
(260, 'Marta Angelina', 'Talent & Performance Management Specialist', 'Human Capital', 'Organization Development'),
(261, 'Nicolas Septian', 'Buyer Officer TnP', 'Finance', 'Procurement and Supply Chain'),
(262, 'Henry Setiawan', 'Procurement & Supply Chain Dept. Head', 'Finance', 'Procurement and Supply Chain'),
(263, 'Thomas Galih Pratama Putra', 'Programmer', 'Finance', 'Information Technology'),
(264, 'Natasha Soetio', 'Finance Section Head', 'Finance', 'Finance & Accounting'),
(265, 'Retno Dian Prastoto', 'Hardware, Network & Communication Support Staff', 'Finance', 'Information Technology'),
(266, 'Mike Afrianti', 'Account Executive Existing Building Sales I', 'iVAS', 'Internet Sales'),
(267, 'Dwi Joko Rismanto', 'Customer Care', 'iVAS', 'iVAS Delivery'),
(268, 'Rian Herlangga', 'TS Cluster 2', 'iVAS', 'iVAS Delivery'),
(269, 'Gina Despalma', 'AR Admin', 'Finance', 'Corp. Finance & Commercial Control'),
(270, 'Nindi Femelia', 'Retail CRM Staff', 'iVAS', 'iVAS Delivery'),
(271, 'Fiqih Darussalam', 'IT Support Staff', 'Finance', 'Information Technology'),
(272, 'Rini Widyastuti Sis', 'Account Executive', 'MNO Sales', 'Sales Account 1'),
(273, 'Mega Sefiani', 'Tax Staff', 'Finance', 'Finance & Accounting'),
(274, 'Sofyan Tsauri', 'Implemantation Team Cluster I', 'iVAS', 'iVAS Delivery'),
(275, 'Diki Julkarnaen', 'T&P Supervisor Regional 2', 'Delivery', 'Field Maintenance'),
(276, 'Bima Saputra Wijaya', 'Corporate Risk & Litigation Section Head', 'Finance', 'Corp. Secretary & Legal'),
(277, 'Halim Noor Hakim', 'CME Supervisor', 'Delivery', 'Implementation Account 1'),
(278, 'Eko Wibowo', 'Quality & Network Performance', 'iVAS', 'iVAS Delivery'),
(279, 'Satrio Budi Utomo', 'Programmer', 'Finance', 'Information Technology'),
(280, 'Eko Santoso', 'TS Cluster 4', 'iVAS', 'iVAS Delivery'),
(281, 'Syadza Millatina', 'SACME Admin', 'Delivery', 'Implementation Account 2'),
(282, 'Tisca Pradana Hendra Praktika', 'DAS Audit Sr. Engineer', 'Delivery', 'Field Maintenance'),
(283, 'M Dian Nur Cahyadi', 'Fault & Surveilance Section Head', 'iVAS', 'iVAS Delivery'),
(284, 'Ikhsan Wahyudie', 'Field Maintenance Dept. Head', 'Delivery', 'Field Maintenance'),
(285, 'Mhd Luthfi Siregar', 'TS Cluster Medan', 'iVAS', 'iVAS Delivery'),
(286, 'Sinung Raharjo', 'Product Development Management', 'CEO Office', 'Product Development'),
(287, 'Meutia Ikawidjaja', 'Recruitment Officer', 'Human Capital', 'Organization Development'),
(288, 'Lilik Rahayu', 'Account Manager Area Surabaya', 'MNO Sales', 'Regional Sales'),
(289, 'Fiona Ayu Vianthi', 'Account Manager Area Medan', 'MNO Sales', 'Regional Sales'),
(290, 'Erni Kusuma Asih Gilipanda', 'Travel Management Admin', 'Human Capital', 'General Affairs'),
(291, 'Fitrah Fajar Buana', 'Sales Team Leader', 'iVAS', 'Internet Sales'),
(292, 'Fandi Ali Mustika', 'System Infrastructure Sr. Engineer', 'iVAS', 'iVAS Delivery'),
(293, 'Leonardus Dony Panova', 'Internal Auditor', 'CEO Office', 'Corporate Development'),
(294, 'Rinaldi Distanto Hakim', 'Technical Assistance Center Section Head', 'iVAS', 'iVAS Delivery'),
(295, 'Asep Suhendi', 'iVAS Division Head', 'iVAS', 'iVAS'),
(296, 'Mamik Yuliana', 'Insurance', 'Delivery', 'Field Maintenance'),
(297, 'Dwi Cahyadi', 'Account Executive VAS II', 'iVAS', 'VAS Sales'),
(298, 'Rizky Fauzi', 'Account Executive VAS I', 'iVAS', 'VAS Sales'),
(299, 'Dwiki Maxi Rianto', 'System Analyst & Support Staff (Web & Mobile)', 'Finance', 'Information Technology'),
(300, 'Danelia Brilliana Pusparani', 'Estate Acquisition Spv Segment A & B', 'MNO Sales', 'Estate Acquisition'),
(301, 'Gabe Eko Prasetia', 'Account Executive', 'MNO Sales', 'Sales Account 2'),
(302, 'Muzakir Ilham', 'Account Executive New Segment Sales I', 'iVAS', 'Internet Sales'),
(303, 'Ragil Ario Priyambodo', 'Retail Sales Supervisor', 'iVAS', 'Internet Sales'),
(304, 'Delfita Siagian', 'Commercial Control Officer', 'Finance', 'Corp. Finance & Commercial Control'),
(305, 'Tri Novalia Simorangkir', 'Account Executive', 'MNO Sales', 'Sales Account 1'),
(306, 'Diajeng Adisti Adjaraji', 'Account Receivable 1 Manager (Tsel, H3I, STI, Inux)\r\n', 'Finance', 'Corp. Finance & Commercial Control'),
(307, 'Andry Mulyono', 'Internet Sales Dept. Head', 'iVAS', 'Internet Sales'),
(308, 'Muhammad Hindersyah', 'Account Executive New Segment Sales II', 'iVAS', 'Internet Sales'),
(309, 'Adhi Merdangga', 'Solution & Development Specialist', 'iVAS', 'iVAS Delivery'),
(310, 'Yeni Octavia', 'Corporate CRM Staff', 'iVAS', 'iVAS Delivery'),
(311, 'Hendro Setiawan', 'T&P DAS Helpdesk Staff', 'Delivery', 'Field Maintenance'),
(312, 'Saimah Harahap', 'Customer Care', 'iVAS', 'iVAS Delivery'),
(313, 'Oki Hermawan', 'TS Cluster 5', 'iVAS', 'iVAS Delivery'),
(314, 'Indra Budi Cahya Ardia', 'Estate Dev. Supervisor Segment C', 'MNO Sales', 'Estate Development'),
(315, 'Siti Maisah', 'Customer Care', 'iVAS', 'iVAS Delivery'),
(316, 'Fiki Maulana', 'DAS Supervisor Zona 5', 'Delivery', 'Field Maintenance'),
(317, 'Eruyansyah', 'Account Executive', 'iVAS', 'iVAS'),
(318, 'Yunisya', 'Operation Controller', 'Delivery', 'Field Maintenance'),
(319, 'Shara Melysa', 'DAS BAPS Officer', 'Delivery', 'Field Maintenance'),
(320, 'Retno Dadari', 'Vendor Management Section Head', 'Finance', 'Procurement and Supply Chain'),
(321, 'Eza Rinaldho Maystro', 'Corporate Sales II Manager', 'iVAS', 'Internet Sales'),
(322, 'Nurlia Listiarini', 'SACME Doc Controller', 'Delivery', 'Implementation Account 2'),
(323, 'R. Rina Sabaria Kusumah', 'Account Executive', 'MNO Sales', 'Sales Account 2'),
(324, 'Widi Widayat', 'DIS Back Office', 'Delivery', 'Field Maintenance'),
(325, 'Fatmawati Sanusi', 'T&P BAPS Officer', 'Delivery', 'Field Maintenance'),
(326, 'Paniel Ebenezer Siringo Ringo', 'TS Cluster Medan', 'iVAS', 'iVAS Delivery'),
(327, 'Sastryani Syafri', 'Account Manager Area Makassar', 'MNO Sales', 'Regional Sales'),
(328, 'Fendi Sumarta', 'Pre Sales Dept. Head', 'CEO Office', 'Product Development'),
(329, 'Retno Prasetyorini', 'Account Manager XL', 'MNO Sales', 'Sales Account 2'),
(330, 'Dimas Pratiko Saputra', 'T&P DAS Helpdesk Staff', 'Delivery', 'Field Maintenance'),
(331, 'Adila Hedianto Putri', 'iVAS Customer Support Section Head', 'iVAS', 'iVAS Delivery'),
(332, 'Bresti Alma Mustikaningrum', 'Data Controller', 'CEO Office', 'Corporate PMO'),
(333, 'Resta Rachma Maranti', 'Estate Development Controller', 'MNO Sales', 'Estate Development'),
(334, 'Denny Priyatno', 'TS Cluster 2', 'iVAS', 'iVAS Delivery'),
(335, 'Dena Utami', 'Corporate CRM Staff', 'iVAS', 'iVAS Delivery'),
(336, 'Rendi Saputra', 'Customer Care', 'iVAS', 'iVAS Delivery'),
(337, 'Cintya Dwimarha', 'SACME Admin', 'Delivery', 'Implementation Account 1'),
(338, 'Charles Gatan', 'Organization Development Dept. Head', 'Human Capital', 'Organization Development'),
(339, 'Rizka Ayu Citra', 'Buyer Staff', 'Finance', 'Procurement and Supply Chain'),
(340, 'Mochammad Dian Hariyana', 'Walktest Performance', 'Delivery', 'Field Maintenance'),
(341, 'Gilang Dika Perdana', 'SITAC Engineer', 'Delivery', 'Implementation Account 2'),
(342, 'Fathia Sena', 'Account Executive', 'MNO Sales', 'Sales Account 1'),
(343, 'Dania Putri Anggiyani', 'Account Manager & Partnership', 'iVAS', 'Internet Sales'),
(344, 'Prihambodo Dwi Sandhika', 'Buyer Section Head TnP, GA, IT', 'Finance', 'Procurement and Supply Chain'),
(345, 'Jimmy Tandean', 'Account Manager Medan', 'iVAS', 'iVAS'),
(346, 'Dwi Hardyono', 'Solution & Development Specialist', 'iVAS', 'iVAS Delivery'),
(347, 'Mamat Rohimat', 'SITAC Sr. Engineer', 'Delivery', 'Implementation Account 2'),
(348, 'Rakhmat Ubaidillah Ahror', 'SITAC Sr. Engineer', 'Delivery', 'Implementation Account 2'),
(349, 'Gusty Rachmaningrum', 'SITAC Sr. Engineer', 'Delivery', 'Implementation Account 1'),
(350, 'Agung Prayitno', 'VAS Production Sr. Engineer', 'iVAS', 'iVAS Delivery'),
(351, 'Waki Supatmi', 'Buyer Officer', 'Finance', 'Procurement and Supply Chain');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_surat`
--

CREATE TABLE `role_surat` (
  `id` int(11) NOT NULL,
  `role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role_surat`
--

INSERT INTO `role_surat` (`id`, `role`) VALUES
(1, 'High Level'),
(2, 'Low Level');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang_lingkup`
--

CREATE TABLE `ruang_lingkup` (
  `id` int(11) NOT NULL,
  `r_lingkup` text NOT NULL,
  `id_posisi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ruang_lingkup`
--

INSERT INTO `ruang_lingkup` (`id`, `r_lingkup`, `id_posisi`) VALUES
(3, '<b>-</b>', 195),
(4, '<p><strong>-</strong></p>', 184);

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_keluar`
--

CREATE TABLE `surat_keluar` (
  `id` int(11) NOT NULL,
  `no_surat` varchar(40) NOT NULL,
  `perihal` text NOT NULL,
  `pic` varchar(20) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jenis_surat` varchar(20) NOT NULL,
  `tahun` year(4) NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `surat_keluar`
--

INSERT INTO `surat_keluar` (`id`, `no_surat`, `perihal`, `pic`, `tanggal`, `jenis_surat`, `tahun`, `note`) VALUES
(1, '001/CG-HC/SKE/I/2020', 'MCU Sekar & Galih', 'Meutia', '2020-01-02 17:00:00', '5', 2020, ''),
(2, '002/MAC-HC/SKE/I/2020', 'Revisi Tgl Sponsor Visa Pak Halim', 'Dewi', '2020-01-02 17:00:00', '5', 2020, ''),
(3, '003/MAC-HC/SKE/I/2020', 'Psikotes Vicky Ferdian', 'Meutia', '2020-01-06 17:00:00', '5', 2020, ''),
(4, '004/FSI-HC/SKE/I/2020', 'Psiktotes Levana Kharisman', 'Meutia', '2020-01-06 17:00:00', '5', 2020, ''),
(5, '005/CMI-HC/SKE/I/2020', 'SK Berry Satya Yudhistira', 'Marta ', '2020-01-06 17:00:00', '5', 2020, ''),
(6, '006/MAC-HC/SKE/I/2020', 'SK Retno Prasetyorini', 'Marta ', '2020-01-06 17:00:00', '5', 2020, ''),
(7, '007/MAC-HC/SKE/I/2020', 'Permohonan izin event Natal ke BM TCC Batavia', 'Fernando', '2020-01-06 17:00:00', '5', 2020, ''),
(8, '008/CMI-HC/SKE/I/2020', 'Sponsor Visa YR - Spain', 'Dewi', '2020-01-07 17:00:00', '5', 2020, ''),
(9, '009/CG-HC/SKK/I/2020', 'Perubahan Upah', 'Fenny', '2020-01-08 17:00:00', '5', 2020, ''),
(10, '010/CG-HC/SKK/I/2020', 'Perubahan Upah', 'Fenny', '2020-01-08 17:00:00', '5', 2020, ''),
(11, '011/CG-HC/SKK/I/2020', 'Perubahan Upah', 'Fenny', '2020-01-08 17:00:00', '5', 2020, ''),
(12, '012/CG-HC/SKK/I/2020', 'Perubahan Upah', 'Fenny', '2020-01-08 17:00:00', '5', 2020, ''),
(13, '013/CG-HC/SKK/I/2020', 'Perubahan Upah', 'Fenny', '2020-01-08 17:00:00', '5', 2020, ''),
(14, '014/CG-HC/SKK/I/2020', 'Perubahan Upah', 'Fenny', '2020-01-08 17:00:00', '5', 2020, ''),
(15, '015/CG-HC/SKK/I/2020', 'Perubahan Upah', 'Fenny', '2020-01-08 17:00:00', '5', 2020, ''),
(16, '016/CG-HC/SKK/I/2020', 'Perubahan Upah', 'Fenny', '2020-01-08 17:00:00', '5', 2020, ''),
(17, '017/CG-HC/SKK/I/2020', 'Perubahan Upah', 'Fenny', '2020-01-08 17:00:00', '5', 2020, ''),
(18, '018/CG-HC/SKK/I/2020', 'Perubahan Upah', 'Fenny', '2020-01-08 17:00:00', '5', 2020, ''),
(19, '019/CG-HC/SKK/I/2020', 'Perubahan Upah', 'Fenny', '2020-01-08 17:00:00', '5', 2020, ''),
(20, '020/CG-HC/SKK/I/2020', 'Perubahan Upah', 'Fenny', '2020-01-08 17:00:00', '5', 2020, ''),
(21, '021/CG-HC/SKK/I/2020', 'Perubahan Upah', 'Fenny', '2020-01-08 17:00:00', '5', 2020, ''),
(22, '022/CG-HC/SKK/I/2020', 'Kompensasi Cuti Panjang', 'Fenny', '2020-01-08 17:00:00', '5', 2020, ''),
(23, '023/CMI-HC/SKE/I/2020', 'Pest Control', 'Adi Margono', '2020-01-09 17:00:00', '5', 2020, ''),
(24, '024/MAC-HC/SKE/I/2020', 'Pest Control', 'Adi Margono', '2020-01-09 17:00:00', '5', 2020, ''),
(25, '025/MAC-HC/SKE/I/2020', 'Perpanjangan STNK', 'Sutarko', '2020-01-12 17:00:00', '5', 2020, ''),
(26, '026/CG-HC/SKE/I/2020', 'Undangan Pembicara Raker', 'Marta ', '2020-01-12 17:00:00', '5', 2020, ''),
(27, '027/FSI-HC/SKK/I/2020', 'Mike Afrianti', 'Marta ', '2020-01-14 17:00:00', '5', 2020, ''),
(28, '028/FSI-HC/SKK/I/2020', 'Psikotes Meutia Ikawidjaja', 'Meutia', '2020-01-16 17:00:00', '5', 2020, ''),
(29, '029/FSI-HC/SKK/I/2020', 'MCU Rowland', 'Meutia', '2020-01-16 17:00:00', '5', 2020, ''),
(30, '030/FSI-HC/SR/I/2020', 'Surat Referensi Fandi Ali Mustika', 'Dewi', '2020-01-20 17:00:00', '5', 2020, ''),
(31, '031/FSI-HC/SR/I/2020', 'Surat Referensi Anggun Abadi', 'Dewi', '2020-01-20 17:00:00', '5', 2020, ''),
(32, '032/CG-HC/SKK/I/2020', 'Rahmat', 'Fenny', '2020-01-20 17:00:00', '5', 2020, ''),
(33, '033/CG-HC/SKK/I/2020', 'Wawan Hik', 'Fenny', '2020-01-20 17:00:00', '5', 2020, ''),
(34, '034/FSI-HC/SKE/I/2020', 'waiting?.', 'Raisya', '2020-01-20 17:00:00', '5', 2020, ''),
(35, '035/CG-HC/SKE/I/2020', 'waiting?.', 'Raisya', '2020-01-21 17:00:00', '5', 2020, ''),
(36, '036/MAC-HC/SKE/I/2020', 'waiting?.', 'Raisya', '2020-01-21 17:00:00', '5', 2020, ''),
(37, '037/MAC-HC/SKE/I/2020', 'waiting?.', 'waiting?', '2020-01-22 17:00:00', '5', 2020, ''),
(38, '038/CMI-HC/SKE/I/2020', 'waiting?.', 'waiting?', '2020-01-22 17:00:00', '5', 2020, ''),
(64, '001/CG-HC/IM/I/2020', 'Usulan Bantuan', 'Gandi', '2020-01-08 17:00:00', '6', 2020, ''),
(65, '002/CMI-HC/IM/I/2020', 'Gaji 1', 'Dewi', '2020-01-20 17:00:00', '6', 2020, ''),
(66, '003/MAC-HC/IM/I/2020', 'Gaji 2', 'Dewi', '2020-01-20 17:00:00', '6', 2020, ''),
(67, '004/FSI-HC/IM/I/2020', 'Gaji 3', 'Dewi', '2020-01-20 17:00:00', '6', 2020, ''),
(68, '005/CTI-HC/IM/I/2020', 'Gaji 4', 'Dewi', '2020-01-20 17:00:00', '6', 2020, ''),
(69, '039/CG-HC/SKE/I/2020', 'PO Plakat', 'Raisya', '2020-01-27 07:02:15', '5', 2020, ''),
(70, '001/MAC-HC/SK-DIR/I/2020', 'Penugasan Herry Zulfan', 'Meutia ', '2020-01-27 07:24:46', '4', 2020, ''),
(71, '001/CMI-HC/PKWT/I/2020', 'Sekar Sinaringati', 'Meutia', '2020-01-09 17:00:00', '1', 2020, 'Vendor Evaluation & Development (3 Feb 2020 - 2 Feb 2021)'),
(72, '002/MAC-HC/PKWT/I/2020', 'Galih Arghubi', 'Meutia', '2020-01-09 17:00:00', '1', 2020, 'Digital Business Solution (13 Jan 2020 - 12 Jan 2021)'),
(73, '003/CMI-HC/PP/I/2020', 'Sarah Dwikusuma', 'Meutia', '2020-01-09 17:00:00', '1', 2020, 'Intern Delivery (13 Jan 2020 - 12 Apr 2020)'),
(74, '004/MAC-HC/PKWT/I/2020', 'Mike Afrianti', 'Martha', '2020-01-09 17:00:00', '1', 2020, 'Account Executive (30 Jan 2020 - 29 Jan 2021)'),
(75, '001/FSI-HC/PKWT-2/I/2020', 'Dwi Cahyadi', 'Martha', '2020-01-09 17:00:00', '2', 2020, 'Account Executive (14 Feb 2020 - 13 Feb 2021)'),
(76, '002/FSI-HC/PKWT-2/I/2020', 'Rizky Fauzi', 'Martha', '2020-01-09 17:00:00', '2', 2020, 'Account Executive (19 Feb 2020 - 18 Feb 2021)'),
(77, '001/MAC-HC/OFL/I/2020', 'Galih Arghubi', 'Meutia', '2020-01-09 17:00:00', '3', 2020, 'Digital Business Solution, DOJ : 15 Jan 2020'),
(78, '002/CMI-HC/OFL/I/2020', 'Sekar Sinaringati', 'Meutia', '2020-01-09 17:00:00', '3', 2020, 'Vendor Evaluation, DOJ : 3 Feb 2020');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanggung_jawab`
--

CREATE TABLE `tanggung_jawab` (
  `id_tgjwb` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `list_aktivitas` text NOT NULL,
  `list_pengukuran` text NOT NULL,
  `id_posisi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tanggung_jawab`
--

INSERT INTO `tanggung_jawab` (`id_tgjwb`, `keterangan`, `list_aktivitas`, `list_pengukuran`, `id_posisi`) VALUES
(1, 'HCIS System', '<ol><li>Maintain semua modul di Andal Paymaster (Human Resource, Attendance, Payroll, Self Service HCIS Web &amp; Mobile (Andal Linkage).</li><li>Support problem solving semua modul, kebutuhan report dan payroll process (Regular, Irregular) di Andal Paymaster.</li><li>Memonitor integrasi data attendance dari mesin atau aplikasi absen ke Andal Paymaster.</li></ol>', '<ol><li>Waktu yang dibutuhkan support.</li><li>System berjalan dengan baik.</li><li>Report sesuai dengan yang dibutuhkan.</li></ol>', 195),
(2, 'Employe Database', '<ol><li>Memonitor data personel dan data organisasi karyawan di Andal Paymaster.</li> <li>Men-set organization structure di Andal Paymaster.</li> <li>Maintain employee movement di Andal Paymaster.</li></ol>', '<ol><li>Menghasilkan data yang up to date.</li> <li>Kelengkapan data karyawan.</li> <li>Keakuratan data.</li></ol>', 195),
(3, 'Performance Appraisal', '<ol><li>Support proses setting KPI, penilaian kinerja karyawan dan kalibrasi di PA System.</li> <li>Memproses data penilaian kinerja karyawan pada 2 periode penilaian (mid year dan end year).</li></ol>', '<ol><li>System berjalan dengan baik.</li> <li>Menghasilkan data dan report yang benar.</li></ol>', 195),
(4, 'Develop New System', '<ol><li>Mengusulkan kebutuhan system baru untuk  semua fungsi di HC Division.</li> <li>Merekomendasikan alur proses, support data dan melakukan testing dari aplikasi tersebut.</li></ol>', '<ol><li>Tersedia sistem sesuai kebutuhan HR.</li> <li>Waktu yang dibutuhkan dalam pembuatan system.</li></ol>', 195),
(7, 'Identifikasi kebutuhan manpower', '<p>Berkoordinasi dengan departemen terkait dalam menentukan kualifikasi dan kesesuaian dengan MPP.</p>', '<p>Pemenuhan Form Permohonan Tenaga Kerja</p>', 200),
(8, 'Menjalankan proses rekrutmen', '<ol><li>Pemasangan iklan internal/eksternal</li><li>Melakukan seleksi administrasi untuk pelamar (cv screening)</li></ol>', '<p>Jumlah kandidat yang akan diproses ketahap selanjutnya</p>', 200),
(9, 'Menjalankan proses seleksi awal', '<ol><li>Melaksanakan dan mengelola proses interview awal, psikotes, interview akhir, dan medical check up.</li><li>Penyusunan rekomendasi hasil psikotes internal.</li></ol>', '<p>Pelaksanaan proses seleksi sesuai dengan periode yang ditentukan</p>', 200),
(11, 'Menjalankan proses onboarding karyawan', '<ol><li>Menjalankan Form Persetujuan Karyawan Baru</li><li>Memastikan kelengkapan kerja karyawan baru tersedia</li><li>Menjalankan induction training dan site visit</li></ol>', '<ul><li>Memastikan pemenuhan karyawan sesuai budget</li><li>Kelengkapan karyawan tersedia</li><li>Pelaksanaan induction sesuai dengan periode yang ditentukan</li></ul>', 200),
(12, 'Menyelesaikan administrasi terkait rekrutmen, seleksi dan onboarding karyawan', '<ol><li>Mengajukan pembayaran terkait rekrutmen, seleksi dan onboarding</li><li>Melakukan update database kandidat, proses hiring dan kelengkapan dokumen ke system dan menyusun kontrak</li></ol>', '<p>Administrasi terkait rekrutmen, seleksi dan onboarding dilaksanakan sesuai dengan periode yang ditentukan</p>', 200),
(13, 'Pemutakhiran MPP', '<p>Melakukan pemutakhiran data MPP berdasarkan pergerakan karyawan yang masuk dan keluar</p>', '<p>Data MPP terbaru</p>', 200);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tantangan`
--

CREATE TABLE `tantangan` (
  `id` int(11) NOT NULL,
  `id_posisi` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tantangan`
--

INSERT INTO `tantangan` (`id`, `id_posisi`, `text`) VALUES
(1, 195, '<ul><li>Penyelesaian project tepat waktu</li></ul>'),
(2, 200, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tipe_surat`
--

CREATE TABLE `tipe_surat` (
  `id` int(11) NOT NULL,
  `tipe_surat` varchar(25) NOT NULL,
  `id_jenis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tipe_surat`
--

INSERT INTO `tipe_surat` (`id`, `tipe_surat`, `id_jenis`) VALUES
(1, 'PKWT', 1),
(2, 'PKWTT', 1),
(3, 'PP', 1),
(4, 'PKWT2', 2),
(5, 'OFL', 3),
(6, 'SK-DIR', 4),
(7, 'JKLK', 4),
(8, 'SKE', 5),
(9, 'SKK', 5),
(10, 'SR', 5),
(11, 'IM', 6),
(12, 'PKWTT', 2),
(13, 'PP', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(23, 1, 4),
(32, 1, 2),
(36, 1, 3),
(37, 1, 15),
(39, 2, 15),
(43, 1, 16),
(44, 2, 16),
(45, 2, 2),
(46, 3, 2),
(47, 3, 16);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_surat`
--

CREATE TABLE `user_access_surat` (
  `id` int(11) NOT NULL,
  `role_surat_id` int(11) NOT NULL,
  `surat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_access_surat`
--

INSERT INTO `user_access_surat` (`id`, `role_surat_id`, `surat_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 1, 3),
(6, 1, 4),
(7, 1, 5),
(8, 1, 6),
(9, 2, 4),
(10, 2, 5),
(13, 2, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL,
  `target` varchar(128) NOT NULL,
  `icon` varchar(122) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`, `target`, `icon`) VALUES
(1, 'Admin', '#collapseAdmin', 'fas fa-fw fa-user-cog'),
(2, 'User', '#collapseUser', 'fas fa-fw fa-user'),
(3, 'Master', '#collapseMaster', 'fas fa-fw fa-cog'),
(4, 'Menu', '#collapseMenu', 'fas fa-fw fa-compass'),
(15, 'Surat', '#collapseSurat', 'fas fa-fw fa-envelope-square'),
(16, 'Jobs', '#collapseJobs', 'fas fa-fw fa-briefcase'),
(17, 'Dashboard', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Human Capital'),
(3, 'Other');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `is_active`) VALUES
(2, 2, 'My Profile', 'user', 1),
(3, 2, 'Edit Profile', 'user/edit', 1),
(4, 4, 'Menu Management', 'menu', 1),
(5, 4, 'Submenu Management', 'menu/submenu', 1),
(8, 1, 'Role', 'admin/role', 1),
(12, 2, 'Change Password', 'user/changepassword', 1),
(15, 5, 'Data Management', 'laundry', 1),
(16, 5, 'Order', 'laundry/order', 1),
(17, 11, 'Test', 'asdasd', 1),
(18, 14, 'Demo1', 'test/test', 1),
(20, 3, 'Master Employe', 'master/employe', 1),
(21, 3, 'Master Divisi', 'master/divisi', 1),
(22, 16, 'Job Profile', 'jobs', 1),
(23, 16, 'Report', 'jobs/report', 1),
(24, 15, 'Buat Nomor', 'surat/buatnomor', 1),
(25, 3, 'Master Departemen', 'master/departemen', 1),
(26, 15, 'Tampil Surat', 'surat', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wewenang`
--

CREATE TABLE `wewenang` (
  `id` int(11) NOT NULL,
  `kewenangan` varchar(120) NOT NULL,
  `wen_sendiri` char(1) NOT NULL,
  `wen_atasan1` char(1) NOT NULL,
  `wen_atasan2` char(1) NOT NULL,
  `id_posisi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `wewenang`
--

INSERT INTO `wewenang` (`id`, `kewenangan`, `wen_sendiri`, `wen_atasan1`, `wen_atasan2`, `id_posisi`) VALUES
(1, 'Andal Paymaster', 'A', 'R', 'V', 195),
(2, 'Integrasi Data', 'A', 'R', 'V', 195),
(3, 'Performance Appraisal System', 'A', 'R', 'V', 195),
(4, 'New System', 'A', 'R', 'V', 195);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `departemen`
--
ALTER TABLE `departemen`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nik` (`nik`) USING BTREE;

--
-- Indeks untuk tabel `entity`
--
ALTER TABLE `entity`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hub_kerja`
--
ALTER TABLE `hub_kerja`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jenis_surat`
--
ALTER TABLE `jenis_surat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jenjang_kar`
--
ALTER TABLE `jenjang_kar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `job_approval`
--
ALTER TABLE `job_approval`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jumlah_staff`
--
ALTER TABLE `jumlah_staff`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kualifikasi`
--
ALTER TABLE `kualifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `profile_jabatan`
--
ALTER TABLE `profile_jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id_emp`);

--
-- Indeks untuk tabel `role_surat`
--
ALTER TABLE `role_surat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ruang_lingkup`
--
ALTER TABLE `ruang_lingkup`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tanggung_jawab`
--
ALTER TABLE `tanggung_jawab`
  ADD PRIMARY KEY (`id_tgjwb`);

--
-- Indeks untuk tabel `tantangan`
--
ALTER TABLE `tantangan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tipe_surat`
--
ALTER TABLE `tipe_surat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_access_surat`
--
ALTER TABLE `user_access_surat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `wewenang`
--
ALTER TABLE `wewenang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `departemen`
--
ALTER TABLE `departemen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `employe`
--
ALTER TABLE `employe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;

--
-- AUTO_INCREMENT untuk tabel `entity`
--
ALTER TABLE `entity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `hub_kerja`
--
ALTER TABLE `hub_kerja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `jenis_surat`
--
ALTER TABLE `jenis_surat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `jenjang_kar`
--
ALTER TABLE `jenjang_kar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `job_approval`
--
ALTER TABLE `job_approval`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `jumlah_staff`
--
ALTER TABLE `jumlah_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT untuk tabel `kualifikasi`
--
ALTER TABLE `kualifikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `position`
--
ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- AUTO_INCREMENT untuk tabel `profile_jabatan`
--
ALTER TABLE `profile_jabatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `role_surat`
--
ALTER TABLE `role_surat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `ruang_lingkup`
--
ALTER TABLE `ruang_lingkup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `surat_keluar`
--
ALTER TABLE `surat_keluar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT untuk tabel `tanggung_jawab`
--
ALTER TABLE `tanggung_jawab`
  MODIFY `id_tgjwb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tantangan`
--
ALTER TABLE `tantangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tipe_surat`
--
ALTER TABLE `tipe_surat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `user_access_surat`
--
ALTER TABLE `user_access_surat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `wewenang`
--
ALTER TABLE `wewenang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
