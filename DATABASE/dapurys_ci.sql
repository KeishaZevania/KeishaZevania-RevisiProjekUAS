-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jan 2024 pada 17.25
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dapurys_ci`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `kode_barang` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `keterangan` varchar(500) NOT NULL,
  `satuan_barang` int(11) NOT NULL,
  `kategori_barang` int(11) NOT NULL,
  `harga_beli` double NOT NULL,
  `harga_jual` double NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`kode_barang`, `nama_barang`, `keterangan`, `satuan_barang`, `kategori_barang`, `harga_beli`, `harga_jual`, `stok`, `gambar`) VALUES
(4, 'Rantang 4 Mneu', 'tongseng ayam,udang gortep,teri kentang balado,tumis buncis', 1, 2, 5008, 75000, 4, 'lauk1.jpg'),
(8, 'ikan goreng sambal dabu” ', 'Bisa di request tingkat pedasnya', 2, 2, 1, 30000, 4, 'lauk6.jpg'),
(12, 'Sapi Lada Hitam', 'Bisa di request tingkat pedasnya', 1, 2, 1, 30000, 5, 'lauk7.jpg'),
(13, 'udang n kerang saos padang ', 'Bisa direquest tingkat pedasnya', 1, 2, 1, 35000, 3, 'lauk8.jpg'),
(16, 'Cumi Balado', 'Bisa direquest tingkat pedasnya', 1, 2, 2, 25000, 5, 'lauk3.jpg'),
(18, 'Rantang 3 Menu', 'ikan bumbu sambal cabe ijo,ayam semur(3pot),lumpia soun.', 1, 2, 1, 65000, 5, 'lauk2.jpg'),
(19, 'Dori sambal matah', 'Bisa direquest tingkat pedasnya', 2, 2, 1, 25000, 5, 'lauk5.jpg'),
(20, 'ayam goreng bawang putih ', 'Bisa direquest tingkat pedasnya', 1, 2, 1, 25000, 5, 'lauk9.jpg'),
(21, 'Rantang 3 Menu', 'udang saos tiram,sambal kacang panjang telor puyuh,sop bunga kol.', 1, 2, 1, 50000, 3, 'lauk10.jpg'),
(22, 'Rantang 3 Mneu', 'gulai ikan kakap,terong rebon cabe ijo,tumis buncis bawang putih', 1, 2, 1, 50000, 4, 'lauk11.jpg'),
(23, 'Rantang 3 Mneu', 'gulai udang,mie aceh,acar timun wortel', 1, 2, 1, 50000, 5, 'lauk12.jpg'),
(26, 'mie ayam', '', 1, 2, 1, 15000, 5, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `nohp` int(11) NOT NULL,
  `batas_bayar` datetime NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `nohp`, `batas_bayar`, `nama_barang`, `jumlah`) VALUES
(8, 'keisha', 'jl.kartama', '2024-01-07 00:00:00', 7687585, '2024-01-10 20:29:56', '', 0),
(9, 'tata', 'hjfgj', '2024-01-07 00:00:00', 5345346, '2024-01-10 22:57:31', '', 0),
(10, 'zevania', 'jl.riau', '2024-01-09 00:00:00', 12345, '2024-01-12 09:43:28', '', 0),
(13, 'anto', 'jl.kartama', '2024-01-10 00:00:00', 1233234, '2024-01-13 21:25:19', '', 0),
(38, 'aril', 'jl.kartama', '2024-01-10 00:00:00', 1213, '2024-01-13 23:09:42', '', 0),
(45, 'aisyah', 'jl.kartama', '2024-01-10 00:00:00', 1223123, '2024-01-13 23:23:15', '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `nama_kategori`) VALUES
(2, 'makanan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(100) NOT NULL,
  `nohp` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `batas_bayar` datetime NOT NULL,
  `pilihan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_brg`, `nama_brg`, `nohp`, `jumlah`, `harga`, `batas_bayar`, `pilihan`) VALUES
(9, 4, 'Rantang 4 Mneu', 0, 1, 75000, '0000-00-00 00:00:00', NULL),
(10, 12, 'Sapi Lada Hitam', 0, 1, 30000, '0000-00-00 00:00:00', NULL),
(11, 12, 'Sapi Lada Hitam', 0, 1, 30000, '0000-00-00 00:00:00', NULL),
(37, 12, 'Sapi Lada Hitam', 0, 1, 30000, '0000-00-00 00:00:00', NULL),
(38, 12, 'Sapi Lada Hitam', 0, 1, 30000, '0000-00-00 00:00:00', NULL),
(39, 12, 'Sapi Lada Hitam', 0, 1, 30000, '0000-00-00 00:00:00', NULL),
(40, 12, 'Sapi Lada Hitam', 0, 1, 30000, '0000-00-00 00:00:00', NULL),
(41, 12, 'Sapi Lada Hitam', 0, 1, 30000, '0000-00-00 00:00:00', NULL),
(42, 12, 'Sapi Lada Hitam', 0, 1, 30000, '0000-00-00 00:00:00', NULL),
(43, 12, 'Sapi Lada Hitam', 0, 1, 30000, '0000-00-00 00:00:00', NULL),
(44, 12, 'Sapi Lada Hitam', 0, 1, 30000, '0000-00-00 00:00:00', NULL),
(45, 12, 'Sapi Lada Hitam', 0, 1, 30000, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `gambar` text NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_role`
--

CREATE TABLE `tb_role` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_role`
--

INSERT INTO `tb_role` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_satuan`
--

CREATE TABLE `tb_satuan` (
  `id_satuan` int(11) NOT NULL,
  `nama_satuan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_satuan`
--

INSERT INTO `tb_satuan` (`id_satuan`, `nama_satuan`) VALUES
(1, 'Porsi'),
(2, 'Potong');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `name` varchar(500) NOT NULL,
  `is_active` int(11) NOT NULL,
  `address` varchar(500) DEFAULT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `is_active`, `address`, `level`) VALUES
(10, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Yanti Soegi', 1, 'Pekanbaru', 1),
(16, 'user', '8cb2237d0679ca88db6464eac60da96345513964', 'Keisha', 0, 'Pekanbaru', 2),
(19, 'keisha', '3ac3e654fc48cbde91d4029216e335c58a1ccbd7', 'keisha', 0, 'PKU', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD UNIQUE KEY `kode_barang` (`kode_barang`,`nama_barang`,`keterangan`,`satuan_barang`,`kategori_barang`,`harga_beli`),
  ADD KEY `kategori_barang` (`kategori_barang`),
  ADD KEY `satuan_barang` (`satuan_barang`);

--
-- Indeks untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_role`
--
ALTER TABLE `tb_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_satuan`
--
ALTER TABLE `tb_satuan`
  ADD PRIMARY KEY (`id_satuan`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `kode_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_satuan`
--
ALTER TABLE `tb_satuan`
  MODIFY `id_satuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD CONSTRAINT `tb_barang_ibfk_1` FOREIGN KEY (`kategori_barang`) REFERENCES `tb_kategori` (`id_kategori`),
  ADD CONSTRAINT `tb_barang_ibfk_2` FOREIGN KEY (`satuan_barang`) REFERENCES `tb_satuan` (`id_satuan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
