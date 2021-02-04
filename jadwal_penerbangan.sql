-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2021 at 01:44 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jadwal_penerbangan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_penerbangan`
--

CREATE TABLE `tb_penerbangan` (
  `id` int(11) DEFAULT NULL,
  `keberangkatan` varchar(50) DEFAULT NULL,
  `tiba` varchar(50) DEFAULT NULL,
  `tujuan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_penerbangan`
--

INSERT INTO `tb_penerbangan` (`id`, `keberangkatan`, `tiba`, `tujuan`) VALUES
(1, '2:12 PM', '1:52 AM', 'Argentina'),
(2, '8:37 AM', '5:59 AM', 'Mozambique'),
(3, '8:42 PM', '1:29 AM', 'Israel'),
(4, '1:21 AM', '4:25 PM', 'Philippines'),
(5, '10:09 PM', '8:35 PM', 'Netherlands'),
(6, '8:23 AM', '9:30 AM', 'France'),
(7, '7:22 PM', '5:03 PM', 'Serbia'),
(8, '4:03 PM', '8:02 PM', 'Russia'),
(9, '8:46 AM', '2:44 PM', 'Brazil'),
(10, '12:48 PM', '11:54 AM', 'Canada'),
(11, '6:01 AM', '4:03 AM', 'China'),
(12, '4:13 AM', '10:04 PM', 'Russia'),
(13, '9:29 PM', '11:48 PM', 'Palestinian Territory'),
(14, '10:54 AM', '2:30 AM', 'Peru'),
(15, '11:09 PM', '2:33 AM', 'Latvia'),
(16, '4:25 AM', '1:41 PM', 'Germany'),
(17, '12:50 PM', '11:49 PM', 'Peru'),
(18, '9:05 AM', '11:33 PM', 'Sweden'),
(19, '10:54 PM', '6:02 PM', 'Indonesia'),
(20, '10:33 AM', '11:49 PM', 'Philippines'),
(21, '5:22 AM', '11:13 PM', 'Poland'),
(22, '7:13 AM', '7:54 AM', 'Indonesia'),
(23, '8:29 PM', '11:42 AM', 'Colombia'),
(24, '1:24 PM', '7:39 AM', 'Philippines'),
(25, '7:31 AM', '11:25 PM', 'Philippines');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penumpang`
--

CREATE TABLE `tb_penumpang` (
  `id` int(11) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `asal` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_penumpang`
--

INSERT INTO `tb_penumpang` (`id`, `nama`, `alamat`, `asal`, `gender`) VALUES
(1, 'Natty Briddle', '5903 Eliot Junction', 'Lian', 'Male'),
(2, 'Bette Webland', '53827 Pond Lane', 'Pasirdalem', 'Male'),
(3, 'Rafael Shawe', '8281 Almo Plaza', 'Wattala', 'Male'),
(4, 'Leland Simak', '6 Corben Avenue', 'Sindanghayu', 'Male'),
(5, 'Lindy Schanke', '96195 Maple Hill', 'Doumen', 'Female'),
(6, 'Lucita Ovize', '50680 Banding Way', 'Arujá', 'Female'),
(7, 'Tait Haggart', '87 Anniversary Parkway', 'Nora', 'Female'),
(8, 'Tessie Braidley', '08291 Leroy Junction', 'Hadāli', 'Male'),
(9, 'Marjy Reynalds', '9 Hoepker Avenue', 'Looc', 'Female'),
(10, 'Aurthur Berni', '361 Onsgard Plaza', 'Piet Retief', 'Female'),
(11, 'Cecilia Deaville', '9 Dennis Point', 'Novogornyy', 'Male'),
(12, 'Alison Gianninotti', '3342 Tennyson Court', 'Yŏnan-ŭp', 'Female'),
(13, 'Margeaux Swindell', '1 Bartelt Road', 'Santiago', 'Male'),
(14, 'Jannel Sherwyn', '3117 Colorado Hill', 'Istaravshan', 'Male'),
(15, 'Aron Pimlott', '8843 New Castle Place', 'Tepal', 'Male'),
(16, 'Sam Crippes', '263 Straubel Road', 'Uttaradit', 'Male'),
(17, 'Clair Storer', '6625 Clove Way', 'Santa Cruz', 'Male'),
(18, 'Gunilla Burdess', '46 Annamark Crossing', 'Perístasi', 'Female'),
(19, 'Orton Andrieux', '15 Nancy Hill', 'Gaofeng', 'Female'),
(20, 'Kippie Burdess', '73 Coleman Way', 'Huatanshan', 'Female'),
(21, 'Cortie Ashley', '01 Dakota Pass', 'Lammi', 'Female'),
(22, 'Annabella Cappineer', '87 Little Fleur Circle', 'Khashuri', 'Male'),
(23, 'Ginelle Louden', '8685 Jana Road', 'Muting', 'Male'),
(24, 'Leonerd Elmes', '6697 Dryden Crossing', 'Aleksandrów', 'Male'),
(25, 'Donielle Lacase', '3 Forster Center', 'Santo António', 'Male');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
