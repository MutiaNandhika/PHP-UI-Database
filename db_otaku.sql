-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Nov 2020 pada 03.42
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_otaku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Mutia Nandhika', 'admin', '21232f297a57a5a743894a0e4a801fc3', '+6281229938305', 'mutianandhika@gmail.com', 'Jl.sokayasa, Purwokerto Selatan, Banyumas, Jawa Tengah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(5, 'T-Shirt'),
(6, 'Hoodie'),
(7, 'Manga'),
(8, 'Gantungan Kunci'),
(9, 'BluRay');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `date_created`) VALUES
(5, 5, 'Kaos Haikyuu', 100000, '<p>&nbsp;</p>\r\n\r\n<p>100% Brand New Item Names: Tops&amp;Tees Material: Polyester Source: Anime Character: Hinata Sleeve: Short sleeve Package Includes: 1 X T-shirt Size Chart: Size S: Bust 98cm,Length 68cm, Shoulder 43cm, Sleeve 19cm; Size M: Bust 102cm,Length 70cm, Shoulder 45cm, Sleeve 20cm; Size L: Bust 106cm,Length 72cm, Shoulder 46cm, Sleeve 21cm; Size XL: Bust 110cm,Length 74cm, Shoulder 47cm, Sleeve 22cm; Size XXL: Bust 114cm,Length 76cm, Shoulder 48cm, Sleeve 23cm. Size 3XL:Bust 118cm,Length 78cm, Shoulder 49cm, Sleeve 24cm.</p>\r\n', 'produk1605603009.png', 1, '2020-11-17 08:50:09'),
(7, 5, 'Kaos Zenitsu', 150000, '<p>Setiap barang yang berada di etalase berarti READY STOCK Kami menerima Dropshipper dan Reseller ya kak Bahan 100% Cotton, Combed 30s Sablon : Polyflex Premium, kuat dan halus Ready Size : S, M, L, XL, XXL S : 66 X 48 cm M : 68 X 50 cm L : 70 X 52 cm XL : 72 x 54 cm XXL : 74x 56 cm Tersedia 13 Warna : Hitam, Putih, Merah, Marun, biru, Navy, Turqis, Hijau, Kuning dan Abu Misty/Sport, Orange, Pink dan Ungu. &quot;Jangan lupa untuk mengukur baju yang ingin anda beli dan sesuaikan dengan ukuran dari kita, agar kaos sesuai dengan harapan kita&quot; Selamat Berbelanja. Salam dari Kami.</p>\r\n', 'produk1605617707.jpg', 1, '2020-11-17 12:55:07'),
(9, 5, 'Kaos Tim 7 Naruto', 75000, '<p>&nbsp;</p>\r\n\r\n<p>Brand: VooloZ - Wanted Apparels HATI-HATI DENGAN COMBED KUALITAS RENDAH! Bahan yang kami gunakan 100% COTTON COMBED 30s KUALITAS TERBAIK dengan gramasi 160gr/m2. Bukan kain TEBAL yang PANAS saat digunakan, dan bukan KAIN TIPIS KUALITAS RENDAH. SABLON MENGGUNAKAN POLYFLEX KOREA YANG AWET DAN TIDAK MUDAH LUNTUR. TAMPIL KEREN ITU HARUS TETAP NYAMAN! Spesifikasi Produk ================== - Kaos Premium Export Quality - Bahan 100% Cotton Combed 30s - Adem dan Nyaman dipakai (Bukan bahan Tebal dan Panas) - Jahitan Rantai - Sablon Polyflex Korea - Sablon Kuat dan Anti Luntur - Desain UniSex bisa dipakai Pria maupun Wanita</p>\r\n', 'produk1605617880.jpg', 1, '2020-11-17 12:58:00'),
(10, 5, 'Kaos Otaku Life', 50000, '<p>Hello! Welcome to our store! Quality is our first consideration with best service. Features: -- Condition: 100% brand new -- Made of high quality 95% polyester 5% spandex -- Soft and comfortable -- Color: Multicolor, black -- Size:1(cm)=0.3937008(in) -- Package:1 PC Please allow 1-2cm differs due to manual measurement,thanks. Note: Due to the difference between different monitors, the picture may not reflect the actual color of the item.Thanks for your understanding. You can go to my store to buy more perfect products. We have other type clothes in the store, welcome to shopï¼</p>\r\n', 'produk1605617997.jpg', 1, '2020-11-17 12:59:57'),
(12, 5, 'Kaos Pokemon', 100000, '<p>Size Chart Kaos lengan pendek Cotton Combed Premium Lebar = ketiak kiri ke kanan Panjang = Bahu ke Pinggang Lebar x panjang Size S = Lebar 47cm x Panjang 66cm Size M = Lebar 50 cm x Panjang 69cm Size L = Lebar 53cm x Panjang 72cm Size XL = Lebar 56cm x Panjang 74cm</p>\r\n', 'produk1605618211.jpg', 1, '2020-11-17 13:03:31'),
(13, 5, 'Kaos Killua Eyes', 150000, '<p>Size chart on the picture,Reference the dummy model picture., Ensure again your address Feature:Fashion Material:Polyester Color:as picture shown Style:Casual Size:M/L/XL/XXL/XXXL/XXXXL Package Content:1 x shirt Please Notice: 1.Due to the different monitor and light effect, the actual color maybe a slight different from the picture color. 2.Please allow 1-3cm differs due to manual measurement. 3.Asian Size is smaller than EU/US/UK size,Please compare the detail sizes with yours before purchasing.</p>\r\n', 'produk1605618338.jpg', 1, '2020-11-17 13:05:38'),
(14, 5, 'Kaos Killua', 150000, '<p>Size Chart Kaos lengan pendek Cotton Combed Premium Lebar = ketiak kiri ke kanan Panjang = Bahu ke Pinggang Lebar x panjang Size S = Lebar 47cm x Panjang 66cm Size M = Lebar 50 cm x Panjang 69cm Size L = Lebar 53cm x Panjang 72cm Size XL = Lebar 56cm x Panjang 74cm</p>\r\n', 'produk1605618409.jpg', 1, '2020-11-17 13:06:49'),
(15, 5, 'Kaos Nishinoya', 75000, '<p>Features: -- Condition: 100% brand new -- Color:As the picture -- Size:1(cm)=0.3937008(in) -- Package:As shown Please allow 1-2cm differs due to manual measurement,thanks. Note: Due to the difference between different monitors, the picture may not reflect the actual color of the item.Thanks for your understanding. You can go to my store to buy more perfect products. We have other type goods in the store, welcome to shopï¼</p>\r\n', 'produk1605618504.jpg', 1, '2020-11-17 13:08:24'),
(16, 6, 'Hoodie Senpai', 250000, '<p>&nbsp;</p>\r\n\r\n<p>âœ… Pilih Variasi warna sesuai dengan katalog yang ada pada gambar</p>\r\n\r\n<p>âœ… Harap mencantumkan alamat yang lengkap seperti nomor rumah,kecamatan,boleh ditambahkan patokan untuk memudahkan proses pengiriman</p>\r\n\r\n<p>âœ… Pengiriman pada HARI YANG SAMA</p>\r\n\r\n<p>âœ… Untuk DROPSHIP, Silahkan cantumkan nama/OLShop &amp; No HP pada kolom Dropshiper.</p>\r\n\r\n<p>âž¡ï¸ GARANSI BARANG RUSAK ATAU BARANG TIDAK SESUAI DENGAN DESKRIPSI.</p>\r\n\r\n<p>âž¡ï¸ JIKA BARANG KOSONG KAMI AKAN SELALU CHAT KONSUMEN (NO RANDOM).</p>\r\n\r\n<p>âž¡ï¸ FOLLOW toko kami lalu KLAIM Voucher &amp; gunakan pada saat transaksi.</p>\r\n', 'produk1605618724.png', 1, '2020-11-17 13:12:04'),
(19, 6, 'Hoodie Fav Anime', 250000, '<p>(baca terlebih dahulu sebelum membeli) - bisa COD yq Hoodie / Sweater Regular (cewe cowo bisa pakai) Lembut, Halus dan nyaman dipakai baik saat cuaca dingin atau panas Sablon digital kualitas tinggi ( halus, tidak akan pecah, tidak akan luntur ) Varian ready warna: *Putih *Hitam *Baby Pink Soft *Abu Abu *Hijau botol *Biru Benhur *Kuning *Biru Navy *Merah *Merah Maroon . Chart : M = LEBAR 50 X PANJANG 64 x LENGAN 55 L = LEBAR 55 X PANJANG 67 x LENGAN 60 XL = LEBAR 60 X PANJANG 70 x LENGAN 65 XXL= LEBAR 65 X PANJANG 73 x LENGAN 70 Untuk Tali Hoodie Bisa Sesuai warna Hoodie atau warna putih tergantung dari produksinya Toleransi 1,5 jadi mohon kebijaksanaannya MEMBELI = SETUJU</p>\r\n', 'produk1605619293.jpg', 1, '2020-11-17 13:21:33'),
(20, 7, 'Attack on Titan Vol 1', 250000, '<p>+ Harga Toko 32.500 &gt;&gt; Harga Promosi Dojo 26.000 / buku<br />\r\n+ Stock Sementara ready semua nomor 1- terbaru (Silahkan konfirmasi)<br />\r\n+ Kondisi Buku : Segel ( Baru )<br />\r\n+ Bisa beli cabutan<br />\r\n+ Harap Konfirmasi dulu ketersediaan buku sebelum transaksi melalui diskusi<br />\r\nproduk / sms/ whats app<br />\r\n+ Harga adalah harga satu buku.<br />\r\n+ Sebutkan Nomor yang diinginkan pada isian keterangan pada saat transaksi<br />\r\n+ Foto kemungkinan tidak update dengan volume terbaru , karena banyaknya judul<br />\r\nkomik yang harus diupdate.<br />\r\n+ PERHATIAN: Tidak semua komik layak baca untuk anak-anak. Silahkan browsing<br />\r\nterlebih dahulu untuk mencari informasi</p>\r\n', 'produk1605619917.jpg', 1, '2020-11-17 13:24:30'),
(21, 9, 'Naruto Shippuden The Movie', 150000, '<p>Naruto adalah sebuah serial manga karya Masashi Kishimoto yang diadaptasi menjadi serial anime. Manga Naruto bercerita seputar kehidupan tokoh utamanya, Naruto Uzumaki, seorang ninja yang hiperaktif</p>\r\n', 'produk1605619875.jpg', 1, '2020-11-17 13:31:15'),
(22, 8, 'Gantungan BNHA ', 50000, '<p>Boku no Hero Academia, yang diterbitkan di Indonesia dengan judul My Hero Academia, adalah sebuah seri manga shÅnen Jepang bertema pahlawan super yang ditulis dan diilustrasikan oleh KÅhei Horikoshi.</p>\r\n', 'produk1605619986.jpg', 1, '2020-11-17 13:33:06');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
