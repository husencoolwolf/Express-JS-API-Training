-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Apr 2023 pada 00.20
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `the_vehicle`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `vehicle`
--

CREATE TABLE `vehicle` (
  `idvehicle` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `lock_status` tinyint(4) NOT NULL,
  `speed` int(11) NOT NULL,
  `battery_level` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `location` text NOT NULL,
  `last_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `vehicle`
--

INSERT INTO `vehicle` (`idvehicle`, `type`, `lock_status`, `speed`, `battery_level`, `status`, `location`, `last_updated`) VALUES
(125864, 'Scooter', 1, 0, 15, 'TOWING', '5.125,114', '2023-04-20 02:49:07'),
(125865, 'Scooter', 1, 0, 0, 'TOWING', '5.125,114', '2023-04-20 02:49:07'),
(132456, 'Scooter', 1, 0, 100, 'PARKING', '3.142,012', '2019-07-02 02:22:15'),
(569825, 'Scooter', 0, 0, 50, 'IDLING', '4.125,114', '2023-04-20 02:49:07'),
(738271, '123', 1, 7, 60, 'MOVING', '4.3323,211', '2023-04-21 09:07:54'),
(987654, 'Scooter', 0, 5, 75, 'MOVING', '2.125,114', '2023-04-20 02:49:07'),
(2445514, 'Scooter', 0, 5, 65, 'MOVING', '4.223,11', '2023-04-21 20:14:53');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`idvehicle`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `idvehicle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2445515;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
