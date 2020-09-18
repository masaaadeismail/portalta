-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 03, 2020 at 08:47 AM
-- Server version: 10.1.44-MariaDB-0+deb9u1
-- PHP Version: 7.0.33-0+deb9u7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `usertype` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `name_family` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `name_given` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tugas_akhir`
--

CREATE TABLE `tugas_akhir` (
  `id` int(8) NOT NULL,
  `nomorta` varchar(10) NOT NULL,
  `jenis` varchar(25) NOT NULL,
  `nim1` int(10) NOT NULL,
  `fnama1` varchar(255) NOT NULL,
  `lnama1` varchar(255) NOT NULL,
  `email1` varchar(255) NOT NULL,
  `nim2` int(10) DEFAULT NULL,
  `fnama2` varchar(255) DEFAULT NULL,
  `lnama2` varchar(255) DEFAULT NULL,
  `email2` varchar(255) DEFAULT NULL,
  `judul` text NOT NULL,
  `pembimbing1` varchar(255) NOT NULL,
  `pembimbing2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tugas_akhir`
--

INSERT INTO `tugas_akhir` (`id`, `nomorta`, `jenis`, `nim1`, `fnama1`, `lnama1`, `email1`, `nim2`, `fnama2`, `lnama2`, `email2`, `judul`, `pembimbing1`, `pembimbing2`) VALUES
(18, '135', 'Skripsi', 1641720171, 'Abror', 'Rahmatullah', 'rahmatullahabror@gmail.com', 0, '', '', '', 'IMPLEMENTASI METODE TRIPLE EXPONENTIAL SMOOTHING UNTUK PERAMALAN JUMLAH PENUMPANG KERETA API DI DAERAH OPERASI VII MADIUN', 'Eka Larasati Amalia, S.ST., MT.', 'Sofyan Noor Arief, S.ST., MKom.'),
(19, '261', 'Skripsi', 1941727006, 'Edo', 'Julyanto', 'julyantoedo@gmail.com', 0, '', '', '', ' Sistem Informasi Dan Peramalan Penjualan Sparepart Bengkel Motor Lancar Jaya Dengan Menggunakan Metode Triple Exponential Smoothing', 'Ariadi Retno Ririd, S.Kom., M.Kom.', 'Elok Nur Hamdana, S.T., M.T'),
(30, '175', 'Skripsi', 1941727003, 'HILAL', 'ARSA HIMAWAN', 'hilalarsa@gmail.com', 0, '', '', '', 'DOCUMENT TAGGING MENGGUNAKAN IMAGE DAN TEXT PROCESSING DENGAN RULE BASE METHOD', 'Putra Prima A., ST., M.Kom.', 'Bagas Satya Dian Nugraha, ST., MT.'),
(31, '179', 'Skripsi', 1941727010, 'Alifia', 'Dinda Rahmani', 'Adralifiadinda@gmail.com', 0, '', '', '', 'Sistem Pendukung Keputusan Untuk Menentukan Gizi Balita Di Kota Kediri Menggunakan Metode Fuzzy Mamdani', 'Pramana Yoga Saputra, S.Kom., MMT.', 'Vivin Ayu Lestari, S.Pd'),
(32, '177', 'Skripsi', 1941727005, 'Yanuar', 'Pradana', 'yanuar.ryp@gmail.com', 0, '', '', '', 'ANALISIS SENTIMEN TENTANG OPINI TERHADAP\r\nPERFORMA TIMNAS SEPAK BOLA INDONESIA PADA\r\nTWITTER', 'Mungki Astiningrum, S.T., M.MKom.', 'Mamluatul Hani’ah, S.Kom., M.Kom.'),
(33, '17', 'Skripsi', 1641720015, 'Ikhsan', 'Efendi', 'ikhsanefendi59@gmail.com', 0, '', '', '', 'IMPLEMENTASI MONITORING AIR BERSIH PADA AQUARIUM IKAN KOI DENGAN NODEMCU ESP8266 MENGGUNAKAN METODE FUZZY TSUKAMOTO', 'Dwi Puspitasari, S.Kom., M.Kom.', 'Irsyad Arif Mashudi, M.Kom'),
(34, '335', 'Laporan Akhir', 1731710036, 'Renaldy', 'Ardiansyah', 'renaldyardiansyah05@gmail.com', 1731710151, 'Setya Saraswati', 'Filliansyah', 'setyasaraswati25@gmail.com', 'SISTEM PENJADWALAN SERTIFIKASI DAN PENGINGAT PEGAWAI DI PT PERTAMINA EP ASSET 4 POLENG FIELD', 'Mungki Astiningrum, ST.,M.Kom', 'Kadek Suarjana Batubulan, S.Kom., MT'),
(35, '87', 'Skripsi', 1641720107, 'Aldhan', 'Yahya', 'aldansorry@gmail.com', 0, '', '', '', 'PENERAPAN FEATURE BASED PADA PERINGKASAN BERITA DARI PORTAL BERITA ONLINE', 'Imam Fahrur Rozi, S.T., M.T.', 'Dika Rizky Yunianto, S.Kom, M.Kom.'),
(42, '325', 'Laporan Akhir', 1731710014, 'Choirunnisa', 'Maulani', 'anismaulani06@gmail.com', 1731710134, 'Sela fitria', 'Dewi', 'fdewi1091@gmail.com', 'Perancangan sistem informasi pada bambu kuning rias pengantin kabupaten probolinggo berbasis website', 'Eka Larasati Amalia', 'Vivin Ayu Lestari'),
(43, '166', 'Skripsi', 1741723009, 'Muhammad', 'Iqbal Firdaus Nuzula', 'fnfirdaus45@gmail.com', 0, '', '', '', 'KLASIFIKASI SEMINAR PADA SISTEM INFORMASI SEMINAR POLINEMA MENGGUNAKAN METODE STATISTIK DESKRIPTIF DAN INFERENSIAL', 'Erfan Rohadi, ST., M.Eng., Ph.D.', 'Sofyan Noor Arief, S.ST., M.Kom.'),
(44, '110', 'Skripsi', 1641720140, 'Andry Darmawan', 'Budi Harjo', 'andrydbh@gmail.com', 0, '', '', '', 'Penentuan Rekomendasi Calon Kapolsek Dengan Menggunakan Metode Moora (Studi Kasus : Polres Kutim)', 'Deddy Kusbianto PA, Ir., M.Mkom. ', 'Rizky Ardiansyah, S.Kom., MT.'),
(45, '135', 'Skripsi', 1641720171, 'Abror', 'Rahmatullah', 'rahmatullahabror@gmail.com', 0, '', '', '', 'IMPLEMENTASI METODE TRIPLE EXPONENTIAL SMOOTHING UNTUK PERAMALAN JUMLAH PENUMPANG KERETA API DI DAERAH OPERASI VII MADIUN', 'Eka Larasati Amalia, S.ST., MT.', 'Sofyan Noor Arief, S.ST., MKom.'),
(46, '6', 'Skripsi', 1641720001, 'Asdhak Fillah', 'Yoga Reksa', 'asdhakfillah@gmail.com', 0, '', '', '', 'Sistem Informasi Pendaftaran dan Rekomendasi Lahan Baru Pdam', 'Dwi Puspitasari, S.Kom., M.Kom.', 'Elok Nur Hamdana, S.T., M.T'),
(47, '158', 'Skripsi', 1641720208, 'Atina', 'Za\'ima', 'atinazr@gmail.com', 0, '', '', '', 'Analisis Sentimen Kualitas Layanan Online Marketplace di Indonesia Menggunakan Metode Support Vector Machine', 'Indra Dharma Wijaya, ST., M.MT.', 'Yoppy Yunhasnawa, S.ST., M.Sc.'),
(48, '37', 'Skripsi', 1641720036, 'Tahta', 'Reza', 'tahtareza98@gmail.com', 0, '', '', '', 'Optimasi Komposisi Pakan Itik Petelur Menggunakan Algoritma Genetika', 'Imam Fahrur Rozi, S.T., M.T.', 'Annisa Taufika Firdausi, S.T., M.T.'),
(49, '3000', 'Skripsi', 804030026, 'ade', 'Ismail', 'masaaadeismail@gmail.com', 0, '', '', '', 'Sample', '', ''),
(50, '43', 'Skripsi', 1641720044, 'Yudha Pradana', 'Putra', 'yudhapradana102@gmail.com', 0, '', '', '', 'Evaluasi Kmeans Clustering Pada Preprocessing Sistem Temu Kembali Informasi', 'Faisal Rahutomo, ST., M.Kom., Dr.Eng.', 'Yoppy Yunhasnawa, S.ST., M.Sc.'),
(51, '79', 'Skripsi', 1641720096, 'Nabil', 'Fikri', 'fikri.winaji@gmail.com', 0, '', '', '', 'Rancang Bangun Sistem Monitoring dan Controlling pada Kumbung Jamur Tiram Berbasis IoT (Internet of Things)', 'Indra Dharma Wijaya, ST., M.MT.', 'Elok Nur Hamdana, S.T., M.T'),
(52, '1641720184', 'Skripsi', 1641720184, 'Idris', 'Cahyono', 'idriscahyono@gmail.com', 0, '', '', '', 'Line E-Commerce Chatbot Menggunakan Finite State Machine', 'Putra Prima A., ST., M.Kom', 'Arie Rachmad Syulistyo, S.Kom., M.Kom'),
(53, '1641720150', 'Skripsi', 1641720150, 'Andy', 'Putra Wijaya', 'andyputrawijaya376@gmail.com', 0, '', '', '', 'Pengembangan aplikasi sistem informasi metode least square dalam peramalan penjualan pada pt semen Indonesia ', 'Ir. Deddu Kusbianto P. A, M. Mkom', 'Rizky ardiansyah, S. Kok., MT'),
(54, '1741723001', 'Skripsi', 1741723001, 'tri nanda', 'satrio purnomo', 'trinsp11@gmail.com', 0, '', '', '', 'Rancang dan Bangun Sistem Informasi Lecturer Room Automation menggunakan RFID berbasis website', 'Ekojono', 'Sofyan Noor Arief'),
(55, '22', 'Skripsi', 1641720020, 'Malak', 'Dewi', 'malakdiana00@gmail.com', 0, '', '', '', 'PENERAPAN ALGORITMA SCORE-BASED PADA PERINGKASAN TEKS CERPEN OTOMATIS', 'Dr.Eng. Faisal Rahutomo, ST., M.Kom', 'Dr.Eng. Faisal Rahutomo, ST., M.Kom'),
(56, '29', 'Skripsi', 1641720027, 'Joshua Davian', 'Kristanto', 'joshuadavian@gmail.com', 0, '', '', '', 'IMPLEMENTASI METODE TF-IDF PADA APLIKASI CHATBOT BERBASIS WEB DALAM SISTEM PENJUALAN ONLINE (STUDI KASUS RADJA PRINTING)', 'Dimas Wahyu Wibowo, ST., MT.', 'Moch. Zawaruddin Abdullah, S.ST., M.Kom'),
(57, '132', 'Skripsi', 1641720168, 'Anisa', 'Dyah Fatmawati Almahfudi', 'anisadyah353@gmail.com', 0, '', '', '', 'Proyeksi Instabilitas Harga Telur Puyuh Untuk Memutuskan Penambahan DOQ Baru Dengan Metode Fuzzy Time Series Markov Chain (Studi Kasus Ns Quail Farm)', 'Ir. Deddy Kusbianto P.M.MKom', 'Yoppy Yunhasnawa, S.ST., M.Sc.'),
(58, '94', 'Skripsi', 1641720115, 'Kharisma', 'Dwiky Primadana', 'kharismadwikyprimadana@gmail.com', 0, '', '', '', 'SISTEM PAKAR PERENCANAAN USAHA PETERNAKAN AYAM PETELUR UNTUK CALON PETERNAK BARU MENGGUNAKAN METODE DEMPSTER SHAFER\r\n (STUDI KASUS CV. MITRA MEGASATWA)\r\n', 'Budi Harijanto, S.T., M.MKom.', 'Rizky Ardiansyah, S.Kom., MT.'),
(59, 'endahPol', 'Laporan Akhir', 1731710022, 'Dwi', 'Utami', 'dwiutami17121999@gmail.com', 1731710136, 'Endhah', 'Koesherawati', 'endhahkoesherawati@gmail.com', 'Sistem Informasi Pengajuan Kekayaa Intelektual Sentra KI Polinema ', 'Erfan Rohadi ', 'Dian Hanifudin Subhi'),
(60, '1641720166', 'Skripsi', 1641720166, 'Muhammad', 'Marsudiarto', 'marsudiarto313@gmail.com', 0, '', '', '', 'SISTEM MONITORING DAN CONTROLLING KUALITAS AIR TAMBAK UDANG VANNAMEI DENGAN METODE FUZZY SUGENO', 'Yuri Ariyanto, S.Kom., M.Kom.', 'Sofyan Noor Arief, S.ST., M.Kom.'),
(61, '181', 'Skripsi', 1941727014, 'Aryan', 'Nasikhul Amin', 'aryan.nasikhul.a@gmail.com', 0, '', '', '', 'Sistem Pakar Diaganosa Tingkat Kecanduan Online Game Mahasiswa Teknik Informatika Politeknik Negeri Malang Dengan Metode Certainty Factor', 'Drs. Rawansyah M.Pd', 'Sofyan Noor Arief, S.ST., M.Kom.'),
(62, '358', 'Laporan Akhir', 1731710058, 'Agusta', 'Dwi Mahardhika', 'agustadhika55@gmail.com', 1731710050, 'Gregorius', 'Septian Yolannanda', 'gregoriusyolannanda@gmail.com', 'SISTEM INFORMASI PENJUALAN SPAREPART DAN ANTRIAN SERVICE KENDARAAN RODA DUA PADA BENGKEL FENDI MOTOR TULUNGAGUNG BERBASIS WEBSITE', 'Faisal Rahutomo, ST., M.Kom., Dr.Eng.', 'Annisa Puspa Kirana., M.Kom.'),
(63, '27', 'Skripsi', 1641720025, 'Muhammad Arya', 'Puja Laksana', 'aryapuja2103@gmail.com', 0, '', '', '', 'SISTEM PENDUKUNG KEPUTUSAN UNTUK SELEKSI ATLET BASEBALL DAN SOFTBALL TIM KOTA MALANG MENGGUNAKAN METODE VIKOR', 'Eka Larasati Amalia, S.ST., MT.', 'Deasy Sandhya Elya Ikawati, S.Si, M. Si'),
(64, '102', 'Skripsi', 1641720129, 'Muhammad', 'Hammam', 'hamamhaidar89@gmail.com', 0, '', '', '', 'ANALISIS PERAMALAN TERHADAP PELUANG BISNIS TANAH UNTUK PT JNF DI KOTA MALANG MENGGUNAKAN METODE DOUBLE EXPONENTIAL SMOOTHING', 'Eka Larasati Amalia, S.ST., MT.', 'Agung Nugroho Pramudhita, S.T., M.T.'),
(65, '316', 'Laporan Akhir', 1731710081, 'Nabila', 'Wanda Meylia', 'meylia3010@gmail.com', 1731710090, 'Nasytha', 'Nugroho', 'nasythangrh@gmail.com', 'Sistem Informasi Geografis Panti Asuhan di Kabupaten Malang Untuk Pemerataan Donasi Berbasis PHP (Studi Kasus di Dinas Sosial Kabupaten Malang)', 'Ulla Delfana Rosiani, ST., M.T.', 'Mamluatul Hani\'ah, S.Kom., M.Kom.'),
(66, '26', 'Skripsi', 1641720024, 'Fransiska', 'Dita', 'frtiarad@gmail.com', 0, '', '', '', 'SISTEM PAKAR DIAGNOSA AWAL JENIS KULIT WAJAH MENGGUNAKAN NAIVE BAYES DAN BACKWARD CHAINING', 'Indra Dharma Wijaya, S.T, M.MT', 'Imam Fahrur Rozi, S.T., M.T'),
(67, '170', 'Skripsi', 1741723014, 'Dicky', 'Ciptor', 'dickyc2727@gmail.com', 0, '', '', '', 'Sistem Informasi Rekomendasi Penentuan Bantuan Untuk Calon Siswa Tidak Mampu', 'Erfan Rohadi, ST., M.Eng., Ph.D.', 'Rizky Ardiansyah, S,Kom., MT.'),
(68, '360', 'Laporan Akhir', 1731710161, 'Ferina', 'Bayu Sukmadewi', 'ferinabayu@gmail.com', 0, '', '', '', 'PENGEMBANGAN APLIKASI MANAJEMEN WEBSITE JURUSAN TEKNOLOGI INFORMASI POLITEKNIK NEGERI MALANG MENGGUNAKAN KONSEP GAMIFIKASI', 'Dwi Puspitasari, S.Kom, M.Kom', 'Candra Bella Vista, S.Kom, MT.'),
(69, '331', 'Laporan Akhir', 1731710078, 'Dany Kurniawan', 'Kusumah', 'danykurniawanapk3@gmail.com', 1731710179, 'Grandis Ardana', 'Ahmad Fahrezi', 'grandhabs91@gmail.com', 'Sistem Informasi Pengajuan Insentif Jurnal Internasional Terindeks dan Jurnal Nasional Terakreditasi Dosen (Studi Kasus Politeknik Negeri Malang)', 'Erfan Rohadi, ST., M.Eng., Ph.D.', 'Wilda Imama Sabilla, S.Kom., M.Kom.'),
(70, '45', 'Skripsi', 1641720047, 'Alindya Kirana', 'Putri', 'alindyakiranap@gmail.com', 0, '', '', '', 'Sistem Informasi Prediksi Stok Dan Utilitas Gudang', 'Pramana Yoga Saputra, S.Kom., MMT.', 'Yushintia Pramitarini, S.ST., MT.'),
(71, '105', 'Skripsi', 1641720133, 'Ricky Octavian', 'Wahyudi', 'nyo6472@gmail.com', 0, '', '', '', 'PERAMALAN INDEKS HARGA SAHAM GABUNGAN\r\n(IHSG) KOMPAS 100 MENGGUNAKAN METODE FUZZY TIME SERIES', 'Budi Harijanto, ST., M.MKom.', 'Muhammad Unggul Pamenang, S.St., M.T.'),
(72, '326', 'Laporan Akhir', 1731710141, 'Ahmad Yusuf', 'Ardabilli', 'billya749@gmail.com', 1731710020, 'Mohammad Gervais', 'Pratama', 'mohgp855@gmail.com', 'SISTEM INFORMASI ADMIN ASOSIASI RENTAL KENDARAAN SE-MALANG RAYA BERBASIS WEBSITE', 'Gunawan Budi Prasetyo, ST., MMT., Ph.D.', 'Elok Nur Hamdana, S.T., M.T'),
(73, '127', 'Skripsi', 1641720162, 'Mochammad iqbal', 'Maulana', 'iqbaljrz58@gmail.com', 0, '', '', '', 'Pengembangan Sistem Peramalan Produksi Kopi Menggunakan Metode Triple Exponential Smoothing', 'Budi Harijanto, ST., M.MKom.', 'Ekojono, ST., M.Kom.'),
(74, '68', 'Skripsi', 1641720079, 'Nita', 'Komalasari', 'nitarahma456@gmail.com', 0, '', '', '', 'Pengembangan Sistem Pakar Diagnosis Penyaki Kelinci dengan Menggunakan Metode Case Based Reasoning', 'Luqman Affandi , S.Kom., MMSI', 'Mamluatul Hani\'ah, S.Kom., M.Kom'),
(75, '270', 'Skripsi', 1941727015, 'Audria', 'Salsabila', 'audriasalsa169@gmail.com', 0, '', '', '', 'Sistem Pakar Penyakit Ginekologi Menggunakan Metode MKNN (Modified K-Nearest Neighbor)', 'Rudy Ariyanto, S.T., M.Cs.', 'Arief Prasetyo, S.Kom., M.Kom'),
(76, '30', 'Skripsi', 1641720028, 'Fanina', 'Meidina Wahyuningtyas', 'faninameidina@gmail.com', 0, '', '', '', 'PENERAPAN METODE FUZZY MAMDANI UNTUK PEMILIHAN PRODUK HERBALIFE BERDASARKAN PREDIKSI KESEHATAN KONSUMEN\r\n( STUDI KASUS RUMAH NUTRISI FRESH CLUB)\r\n', ' Rosa Andrie Asmara', 'Moch. Zawaruddin Abdullah'),
(77, '57', 'Skripsi', 1641720064, 'Agustin Setyo', 'Rini', 'agustinsetya38@gmail.com', 0, '', '', '', 'IMPLEMENTASI CASE-BASED REASONING UNTUK DIAGNOSIS PENYAKIT PADA ORGAN GENITALIA WANITA', 'Indra Dharma Wijaya, ST., M.MT.', 'Annisa Puspa Kirana., M.Kom'),
(78, '165', 'Skripsi', 1741723007, 'Siska', 'Stevani', 'siska.stevani@gmail.com', 0, '', '', '', 'PREDIKSI BANJIR LAHAR DINGIN PADA LERENG MERAPI MENGGUNAKAN DATA CURAH HUJAN DARI SATELIT', 'Dr. Eng. Rosa Andrie Asmara, ST, MT', 'Arief Prasetyo, S.Kom., M.Kom'),
(79, '150', 'Skripsi', 1641720189, 'Farinda', 'Ramadhani', 'farindaaaa@gmail.com', 0, '', '', '', 'PENGENDALIAN PERSEDIAAN BAHAN BAKU BIOBRIKET DENGAN MENGGUNAKAN METODE PERIODE ORDER QUANTITY (POQ) DAN AUTOREGRESSIVE INTEGRATED MOVING AVERAGE (ARIMA) (STUDI KASUS DI CV. BINTANG YASA ABADI)', 'Gunawan Budi Prasetyo, ST., MMT., Ph.D.', 'Sofyan Noor Arief, S.ST., M.Kom.'),
(80, '136', 'Skripsi', 0, 'Jelita Sekar', 'Melati', 'jelitasekarmelati@gmail.com', 0, '', '', '', 'Sistem Pendukung Keputusan Penerima Kredit UKM Menggunakan Metode Weighted Aggregated Sum Product Assessment (Studi Kasus Bank BPR Jatim Cabang Magetan)', 'Luqman Affandi, S.Kom., MMSI', 'Annisa Taufika Firdausi, ST., MT.'),
(81, '73', 'Skripsi', 1641720088, 'Jihan', 'Octavia', 'jihanoctavia10@gmail.com', 0, '', '', '', 'SEGMENTASI PELANGGAN MENGGUNAKAN METODE K-MEANS DAN DBSCAN DENGAN LRFM MODEL UNTUK MENDUKUNG STRATEGI PEMASARAN (STUDI KASUS PT. BISTURI PRATAMA)', 'Gunawan Budi Prasetyo, ST., MMT., Ph.D.', 'Yushintia Pramitarini, S.ST., MT.'),
(82, '55', 'Skripsi', 1641720059, 'Aulia', 'Adistanti', 'auliadstanti@gmail.com', 0, '', '', '', 'SISTEM PAKAR DIAGNOSA AWAL PENYAKIT KUCING BERBASIS ONTOLOGI DENGAN IMPLEMENTASI METODE DEMPSTER-SHAFER BERBASIS WEB', 'Gunawan Budi Prasetyo, ST., MMT., Ph.D.', 'Vivi Nur Wijayaningrum, S.Kom, M.Kom'),
(83, '97', 'Skripsi', 1641720122, 'Nur Laily', 'Fauziah', 'nurlailyfauziyahfz@gmail.com', 0, '', '', '', 'ANALISIS PERSEDIAAN GUDANG BUAH APEL DENGAN MENGGUNAKAN METODE TRIPLE EXPONENTIAL SMOOTHING DAN ARIMA\r\n(STUDI KASUS UD.DUA PUTRA)', 'Gunawan Budi Prasetyo, ST., MMT., Ph.D.', 'Dian Hanifudin Subhi, S.Kom., M.Kom.'),
(84, '104', 'Skripsi', 1641720132, 'Rizky', 'Firmansyah', 'rizky.firmansyah55@gmail.com', 0, '', '', '', 'DETEKSI COPY-MOVE FORGERY PADA CITRA DIGITAL\r\nMENGGUNAKAN SCALE INVARIANT FEATURE\r\nTRANSFORM', 'Rawansyah., Drs., M.Pd.', 'Vivi Nur Wijayaningrum, S.Kom, M.Kom'),
(85, '53', 'Skripsi', 1641720056, 'Angelita Justien', 'Jumadi', 'angelita.lmj15@gmail.com', 0, '', '', '', 'Ananlisis Perbandingan Metode Cosine Similarity Dan Metode Dice Similarity Pada Aplikasi Ujian Online Esai Otomatis', 'Eka Larasati Amalia, S.ST., MT', 'Irsyad Arif Mashudi, M.Kom'),
(86, '144', 'Skripsi', 1641720182, 'Ferdiana Rochmatul', 'Chusna', 'ferdianarc@gmail.com', 0, '', '', '', 'Pengembangan Sistem Pre-Assessment Sertifikasi Label Halal', 'Faisal Rahutomo', 'Rokhimatul Wakhidah'),
(87, '62', 'Skripsi', 1641720071, 'Nadhifa Tiara', 'Putri', 'nadhifatiaraputri@gmail.com', 0, '', '', '', 'Analisis Sentimen Opini Masyarakat Terhadap Pembangunan Infrastruktur Kota Malang Melalui Twiter Dengan Menggunakan Metode Support Vector Machine', 'Indra Dharma Wijaya, ST., M.MT.,', 'Ariadi Retno Tri H. R., S.Kom., M.Kom.,'),
(88, '438', 'Laporan Akhir', 1731710062, 'Marchanda', 'Sukma Ayu Dwi Yanti', 'marchandasukma16@gmail.com', 1731710067, 'Yuyin ', 'Madania Roizki', 'yuyinmroizki.03@gmail.com', 'SISTEM INFORMASI POSYANDU GUNA MENDUKUNG PELAPORAN DATA PERKEMBANGAN BAYI DAN BALITA DI KABUPATEN PASURUAN', 'Mungki Astiningrum, ST., M.Kom', 'Ade Ismail, S.Kom., M.TI'),
(89, '134', 'Skripsi', 1641720170, 'Sheyba', 'Azigita', 'sheybaadinda@gmail.com', 0, '', '', '', 'Sistem Pakar Klasifikasi Pola Asuh Orang Tua Terhadap Anak Usia Dini Menggunakan Metode Naive bayes Dengan Laplace Smoothing', 'Luqman Affandi, S.Kom., MMSI', 'Muhammad Unggul Pamenang, S.St., M.T.'),
(90, '341', 'Laporan Akhir', 1731710125, 'Dwiky Alan', 'Adi Wena', 'dwikyalanadi@gmail.com', 1731710060, 'Tsasyah Hisyam', 'Summa Pratama', 'tsasyahhisyam93@gmail.com', 'Pembuatan Aplikasi Pelayanan Laundry Berbasis Android (Studi Kasus Di Bersih Laundry)', 'Dwi Puspitasari, S. Kom., M. Kom. ', 'Agung Nugroho Pramudhita, S.T., M.T.'),
(91, '351', 'Laporan Akhir', 1731710075, 'Guntur Gedhe', 'Mukti', 'gunturgmukti@gmail.com', 1731710113, 'Achmad Albeta', 'Hema Syafitra', 'albeta838@gmail.com', 'Pengembangan Sistem Informasi Pelaporan Program Mahasiswa Wirausaha (PMW) ETU Politeknik Negeri Malang', 'Pramana Yoga Saputra, S.Kom., MMT.', 'Ika Kusumaning Putri, S.Kom., M.T.'),
(92, '108', 'Skripsi', 1641720138, 'Bulgisfii', 'Alfa Laila', 'faalfa957@gmail.com', 0, '', '', '', 'SISTEM MONITORING TANAMAN SAYURAN \r\nPADA LADANG MINI BERBASIS ARDUINO MEGA DENGAN METODE FUZZY', 'Yuri Ariyanto, S.Kom., M.Kom. ', 'Ade Ismail, S.Kom,. M.TI'),
(93, '1641720023', 'Skripsi', 1641720023, 'I Wayan Satria Dharma', 'Widhiantara', 'dharmatara23@gmail.com', 0, '', '', '', 'SISTEM PERAMALAN JUMLAH PENUMPANG PT.KAI DAERAH OPERASIONAL 8 SURABAYA MENGGUNAKAN METODE FUZZY TIME SERIES', 'Dhebys Suryani H, S.Kom., MT', 'Rosa Andrie Asmara, ST., MT., Dr. Eng.'),
(94, '120', 'Skripsi', 1641720152, 'Septa Hoga', 'Samara', 'hogahoga17@gmail.com', 0, '', '', '', 'SISTEM PAKAR DIAGNOSA PENYAKIT KELAMIN MENULAR PADA LAKI-LAKI DENGAN METODE DEMPSTER SHAFER', 'Erfan Rohadi, ST., M.Eng., Ph.D.', 'Annisa Puspa Kirana., M.Kom.'),
(95, '130', 'Skripsi', 1641720166, 'Muhammad', 'Marsudiarto', 'marsudiar98@gmail.com', 0, '', '', '', 'SISTEM MONITORING DAN CONTROLLING KUALITAS AIR TAMBAK UDANG VANNAMEI DENGAN METODE FUZZY SUGENO', 'Yuri Ariyanto, S.Kom., M.Kom.', 'Sofyan Noor Arief, S.ST., M.Kom. '),
(96, '120', 'Skripsi', 1641720152, 'Septa Hoga', 'Samara', 'hogahoga18@gmail.com', 0, '', '', '', 'SISTEM PAKAR DIAGNOSA PENYAKIT KELAMIN MENULAR PADA LAKI-LAKI DENGAN METODE DEMPSTER SHAFER', 'Erfan Rohadi, ST., M.Eng, Ph.D', 'Annisa Puspa Kirana., M.Kom'),
(97, '455', 'Laporan Akhir', 1631710039, 'As\'ad Alfan', 'Jauhari', 'asadalfan87@gmail.com', 1731710153, 'Fajar Maula', 'Dandi', 'fajarmaula7@gmail.com', 'SISTEM INFORMASI KELUHAN PELANGGAN PDAM WILAYAH TUMPANG BERBASIS WEB  ', 'Gunawan Budi Prasetyo, ST., MMT., Ph.D.', 'Dodit Suprianto, S.Kom., MT.'),
(98, '171', 'Skripsi', 1741723015, 'M.Yazid', 'Riandi', 'yazidukel25@gmail.com', 0, '', '', '', 'PERENCANAAN KEBUTUHAN PENJUALAN KAYU PADA TPK REJOSARI KPH MALANG MENGUNAKAN METODE TRIPLE EXPONENTIAL SMOOTHING', 'Dhebys Suryani H, Skom., MT', 'Wilda Imama S, S.Kom., M.Kom'),
(99, '28', 'Skripsi', 1641720026, 'Syilvia Windy', 'Kharisma Putri', 'sylviaputri0@gmail.com', 0, '', '', '', 'PENERAPAN MARKET BASKET ANALYSIS PADA DATA PENJUALAN MENGGUNAKAN ALGORITMA PINCER SEARCH ', 'Imam Fahrur Rozi, ST., MT.', 'Hendra Pradibta, SE., M.Sc.'),
(100, '356', 'Laporan Akhir', 1731710100, 'Ananda', 'Nur Juliansyah', 'anandanur92@gmail.com', 1731710033, 'Bayu', 'Fajariyanto', 'bayuf08@gmail.com', 'Sistem Informasi Manajemen Persewaan di Malang Camp Berbasis Website', 'Faisal Rahutomo, ST., M.Kom., Dr.Eng', 'Vivi Nur Wijayaningrum, S.Kom, M.Kom'),
(101, '329', 'Laporan Akhir', 1731710098, 'Elfira', 'Amalia', 'elfiraamalia12@gmail.com', 1731710139, 'Hesti', 'Ambarwati', 'hesti.ambarwati30@gmail.com', 'Sistem Arsip Data Dukung Akreditasi \r\nProgram Studi Menggunakan 9 Kriteria  \r\nDi Politeknik Negeri Malang', 'Eka Larasati Amalia, S.ST., MT.', 'Annisa Puspa Kirana., M.Kom.'),
(102, '121', 'Skripsi', 1641720153, 'Bagus', 'Herlambang', 'bagus.pogar@gmail.com', 0, '', '', '', 'PENERAPAN KONSEP Collaborative, Planning, Forecasting and Replenishment ( CPFR ) MENGGUNAKAN METODE Autoregressive Integrated Moving Average ( ARIMA ) (STUDI KASUS PABRIK KOPI SENJA MATARAM MALANG)', 'Dwi Puspitasari, S.Kom., M.Kom', 'Elok Nur Hamdana, S.T., M.T'),
(103, '61', 'Skripsi', 1641720070, 'Kevin Rahardian', 'Nanlohy', 'kevinrahar@gmail.com', 0, '', '', '', 'SISTEM PREDIKSI KEBUTUHAN PEGAWAI KATERING BERDASARKAN JUMLAH PESANAN MENGGUNAKAN METODE FUZZY TIME SERIES\r\n(STUDI KASUS PADA KATERING CV. DEWI SRI REJEKI)', 'Kolonel Lek Dr. Ir. Arwin Datumaya Wahyudi Sumari, ST., MT., IPM., ASEAN Eng', 'Annisa Taufika Firdausi, ST., MT'),
(104, '63', 'Skripsi', 1641720073, 'Beby', 'Novia Putri Lovenida', 'bebyrpl@gmail.com', 0, '', '', '', 'PENGEMBANGAN ANALISIS SENTIMEN UNTUK TWITTER PADA LAYANAN OJEK ONLINE MENGGUNAKAN RULE BASED', 'Dwi Puspitasari, S.Kom., M.Kom.', 'Dian Hanifudin Subhi, S.Kom., M.Kom.'),
(105, '83', 'Skripsi', 1641720100, 'Tholib', 'Subechan', 'tholibsubechan@gmail.com', 0, '', '', '', 'SISTEM INFORMASI PENJUALAN &amp; REKOMENDASI PEMBELIAN HANDPHONE BEKAS MENGGUNAKAN METODE PROMETHEE DINAMIS \r\n\r\n', 'Dwi Puspitasari, S.kom., M.kom', 'Hendra Pradibta P SE., M.Sc'),
(106, '1', 'Skripsi', 1741723017, 'Adhika', 'Kurnia', 'adhikakf95@gmail.com', 0, '', '', '', 'SISTEM PREDIKSI PERMINTAAN DARAH MENGGUNAKAN METODE REGRESI LINIER\r\n(STUDI KASUS UTD PMI KABUPATEN BOJONEGORO)\r\n', 'Kolonel Lek Dr. Ir. Arwin Datumaya Wahyudi Sumari, S.T., M.T., IPM., ASEAN Eng.,', 'Yushintia Pramitarini, S.ST., M.T'),
(107, '314', 'Laporan Akhir', 1731710095, 'Berliana', 'Farah Diba', 'berlianafd@gmail.com', 1731710145, 'Ilmiyatus', 'Sa\'diah', 'ilmiyatus74@gmail.com', 'SISTEM INFORMASI DAN PEMBAYARAN ELEKTRONIK BANK SAMPAH BERBASIS ANDROID MENGGUNAKAN QR CODE DI POLITEKNIK NEGERI MALANG', 'Hendra Pradibta, SE., M.Sc.', 'Usman Nurhasan, S.Kom., MT.'),
(108, '180', 'Skripsi', 1941727012, 'Rinjang', 'Esa', 'nuritaesa@gmail.com', 0, '', '', '', 'Implementasi Teknik Peramalan Pada Tahap-Tahap Proses Bisnis Bengkel Marmer Adiswara Kudus', 'Dr. Eng. Faisal Rahutomo, S.T., M.Kom.', 'Yushintia Pramitarini, S.ST., MT.'),
(109, '318', 'Laporan Akhir', 1731710063, 'Dimas Bagus', 'Wahyu Sudrajat', 'dimasbagus12360@gmail.com', 1731710181, 'Nailuz Zayyil', 'Qur\'any', 'nailuz.z.q@gmail.com', 'Rancang Bangun Sistem Monitoring Debit Air Sungai pada Dinas Pekerjaan Umum dan Penataan Ruang Kabupaten Probolinggo', 'Dhebys Suryani, S.Kom., MT.', 'Yushintia Pramitarini, S.ST., MT.'),
(110, '8', 'Skripsi', 1941727006, 'Edo', 'Julyanto', 'julyantoedo@gmail.com', 0, '', '', '', 'Sistem Informasi dan Peramalan Penjualan Sparepart Bengkel Motor Lancar Jaya Dengan Menggunakan Metode Triple Exponential Smoothing', 'Ariadi Retno Ririd, S.Kom., M.Kom.', 'Elok Nur Hamdana, S.T., M.T'),
(111, '48', 'Skripsi', 1641720051, 'Maulana', 'Zinedin Zidane', 'maulanazinedinzidane@gmail.com', 0, '', '', '', 'PENERAPAN ALGORITMA APRIORI UNTUK MENENTUKAN LOKASI BARANG DI GUDANG ( STUDI KASUS: PG KEBON AGUNG MALANG)', 'Kolonel Lek. Dr. Ir Arwin Datumaya Wahyudi Sumari, S.T.,MT.,IPM, ASEAN Eng', 'Odhitya Desta Triswidrananta, S.Pd., M.Pd.'),
(112, 'panitia', 'Skripsi', 0, 'panitia', 'panitia', 'panitia@jti.polinema.ac.id', 0, '', '', '', 'panitia', 'panitia', 'panitia'),
(113, '1641720120', 'Skripsi', 1641720120, 'muhammad', 'pringgoloyo', 'pripur99@gmail.com', 0, '', '', '', 'PENENTUAN  PEMENANGAN KOI FISH CONTEST BERDASARKAN PENILAIAN GABUNGAN ANTARA JURI DAN PENONTON  DENGAN METODE GROUP DECISION SUPPORT SYSTEM MOORA-BORDA', 'Ulla Delfana Rosiani, ST., MT.', 'Milyun Ni’ma Shoumi'),
(114, '3', 'Skripsi', 1541180038, 'Ricky', 'Pratama', 'ricky.ghifary1122@gmail.com', 0, '', '', '', 'SISTEM PREDIKSI TINGKAT KRIMINALITAS MENGGUNAKAN METODE TRIPLE EXPONENTIAL SMOOTHING (STUDI KASUS DI POLRES KABUPATEN PROBOLINGGO)', 'Kolonel Lek. Dr. Ir Arwin Datumaya Wahyudi Sumari, S.T., M.T., IPM., ASEAN Eng', 'Odhitya Desta Triswidrananta, S.Pd., M.Pd.'),
(115, '463', 'Laporan Akhir', 1731710089, 'NAJI BUL', 'HOIR', 'najibulhoir98@gmail.com', 1731710093, 'DWI DESY', ' ASYARI DININGRAT', 'dwidesy0715@gmail.com', 'PENGEMBANGAN SISTEM INFORMASI PEMBAYARAN WEBSITE DAN IKLAN BERBASIS WHATSAPP GATEWAY DENGAN PEMBAYARAN MENGGUNAKAN BRIVA BANK BRI', 'RAWANSYAH., DRS., M.pd', 'DODIT SUPRIANTO SKom. MT.'),
(116, '317', 'Laporan Akhir', 1731710057, 'Aditya Eka', 'Pradana Putra', 'aeka489@gmail.com', 1731710064, 'Deby Silvia', 'Agnes', 'deby.silvia23@gmail.com', 'PENGEMBANGAN SISTEM REPOSITORY DOSEN JURUSAN TEKNOLOGI INFORMASI MENGGUNAKAN FULL STACK JAVASCRIPT DENGAN MULTI PLATFORM', 'Putra Prima A., ST., M.Kom.', 'Habibie Ed Dien, S.Kom., MT.'),
(117, '2020', 'Skripsi', 2020, '2020', '2020', '2020@2020.com', 0, '', '', '', '2020', '2020', '2020'),
(118, '2021', 'Skripsi', 2021, '2021', '2021', '2021@2021.com', 0, '', '', '', '2021', '2020', '2020'),
(119, '2022', 'Skripsi', 2022, '2022', '2022', '2022@2022.com', 0, '', '', '', '2022', '2020', '2020'),
(120, '2020', 'Skripsi', 2020, '2020', '2020', '2020@2020.com', 0, '', '', '', '2020', '2020', '2020'),
(121, '93', 'Skripsi', 1641720114, 'Ardhanarisvari', 'Panduwinata', 'ardhapanduwinata@gmail.com', 0, '', '', '', 'Penerapan Metode Gamifikasi pada Aplikasi Mosam(Money Sampah) Berbasis Android', 'Putra Prima A., ST., M.Kom.', 'Bagas Satya Dian Nugraha, ST., MT.'),
(122, '99', 'Skripsi', 1641720125, 'salsa', 'nalia fathin', 'salsanalia.fathin@gmail.com', 0, '', '', '', 'IMPLEMENTASI METODE WASPAS PADA SISTEM PENDUKUNG KEPUTUSAN SELEKSI PENERIMAAN CALON KARYAWAN BERBASIS ONTOLOGI (STUDI KASUS: PT EPSON BATAM)', 'Gunawan Budi Prasetyo, ST., MMT., Ph.D.', 'Dika Rizky Yunianto, S.Kom, M.Kom'),
(123, '181', 'Skripsi', 1941727014, 'Aryan', 'Nasikhul Amin', 'aryannasikhulamin@yahoo.co.id', 0, '', '', '', 'Sistem Pakar Diagnosa Tingkat Kecanduan Online Game Mahasiswa Teknik Informatika Politeknik Negeri Malang dengan Metode Certainty Factor', 'Drs. Rawansyah M.Pd', 'Sofyan Noor Arief, S.ST., M.Kom.'),
(124, '310', 'Laporan Akhir', 1731710102, 'Ramdaning', 'Puri Pradani', 'daninpradani@gmail.com', 1731710137, 'Wirda', 'Kurnia Sari', 'wirdakurnia61@gmail.com', 'Pengembangan Aplikasi Penunjang Pembelajaran Huruf Korea Hangeul Berbasis Android', 'Rudy Ariyanto, ST., M.Cs.', 'Indra Dharma Wijaya, ST., M.MT.'),
(125, '315', 'Laporan Akhir', 1731710086, 'Ahmad Nurudin', 'Subqi', 'asomad521@gmail.com', 1731710072, 'Silva Aisya', 'Maharnis', 'silvakdr68@gmail.com', 'Implementasi Augmented Reality untuk Pengenalan Tata Surya dan Benda Langit (Studi Kasus Siswa MI Roudlotut Tholabah Kelas 6)', 'Dimas Wahyu Wibowo, ST., MT.', 'Odhitya Desta Triswidrananta, S.Pd., M.Pd.'),
(126, '262', 'Skripsi', 2147483647, 'Yuanita', 'Hendra Cahyana', 'yuanitahc@gmail.com', 0, '', '', '', 'Klasifikasi Kalimat Perundungan Bentuk Tubuh (Body Shaming) Pada Microblogging Menggunakan Metode Support Vector Machine', 'Arief Prasetyo, S.Kom., M.Kom.', 'Rakhmat Arianto, ST., M.Kom'),
(127, '137', 'Skripsi', 1641720175, 'Mardiana', 'Sasmita', 'mputrisasmita@gmail.com', 0, '', '', '', 'Sistem Pakar Klasifikasi Kecanduan Gadget Menggunakan Teori Arthurt T. Hovart Dengan Metode Naive Bayes Classifier Untuk Anak Sekolah Dasar ', 'Luqman Affandi, S.Kom, MMSI ', 'Agung Nugroho Pramudhita, S.T, M.T'),
(128, '123', 'Skripsi', 1641720005, 'Endar Gayuh', 'Muktitama', 'endargayuhmuktitama@gmail.com', 0, '', '', '', 'Perancangan Aplikasi Mobile Penentuan Jalur Tol Dan Tarif Menggunakan Metode Breadth First Search', 'Dr. Eng. Rosa Andrie Asmara, ST, MT.', 'Luqman Affandi, S.Kom., MMSI.'),
(129, '113', 'Skripsi', 1641720143, 'Pratama Putra', 'Marhendra', 'marhendra14@gmail.com', 0, '', '', '', 'Manajemen Produksi Cup Menggunakan Metode Regresi Linier ', 'Usman Nurhasan, S.Kom., MT.', 'Odhitya Desta Triswidrananta, S.Pd., M.Pd.'),
(130, '152', 'Skripsi', 1641720191, 'Muhammad', 'Alif Yudhistira', 'yudhistirathio@gmail.com', 0, '', '', '', 'KLASIFIKASI TOPIK DAN MOOD LAGU BERDASARKAN LIRIK DAN CHORD MENGGUNAKAN METODE K-NEAREST NEIGHBOR', 'Pramana Yoga Saputra, S.Kom., MMT.', 'Dika Rizky Yunianto, S.Kom, M.Kom'),
(131, '183', 'Skripsi', 1941727021, 'Anita', 'Sari', 'anitasari.as250@gmail.com', 0, '', '', '', 'SISTEM PAKAR DIAGNOSA PREEKLAMPSIA DINI PADA IBU HAMIL MENGGUNAKAN METODE FUZZY LOGIC DAN CERTAINTY FACTOR', 'Drs. Rawansyah M.Pd', 'Vivin Ayu Lestari, S.Pd, M. Kom.'),
(132, '169', 'Skripsi', 1741723012, 'Nur', 'Khozin', 'annurkhozin@gmail.com', 0, '', '', '', 'Identifikasi Instansi Terkait pada Layanan Aspirasi dan Pengaduan Online Rakyat di Situs LAPOR! Menggunakan Recurrent Neural Network', 'Imam Fahrur Rozi, ST., MT.', 'Vivi Nur Wijayaningrum, S.Kom, M.Kom'),
(133, '24', 'Skripsi', 1641720022, 'Yahya Dwi', 'Pradika', 'yahyapradika87@gmail.com', 0, '', '', '', 'Analisis Sentimen Terhadap Sistem Zonasi Berdasarkan Wilayah Menggunakan FK-NNC', 'Imam Fahrur Rozi, S.T., M.T.', 'Mamluatul Hani’ah, S.Kom., M.Kom'),
(134, '189', 'Skripsi', 1641720067, 'Siti', 'Kholifah', 'skholifah215@gmail.com', 0, '', '', '', 'SISTEM PENENTUAN PRODUKSI MENGGUNAKAN METODE BACKPROPAGATION NEURAL NETWORK PADA PT. TIGA SERANGKAI PUSTAKA MANDIRI', 'Eka Larasati Amalia, S.ST., MT.', 'Retno Damayanti, S.Pd., MT.'),
(135, '160', 'Skripsi', 1641720210, 'Dimas', 'Hariyanto', 'dimashariyanto4@gmail.com', 0, '', '', '', 'Sistem Pendukung Keputusan Pemilihan Asrama Santri Menggunakan Metode AHP dan MOORA (Studi Kasus : Ponpes Darul Ulum Jombang)', 'Gunawan Budi Prasetyo, ST., MMT., Ph. D.', 'Usman Nurhasan, S.Kom., MT.'),
(136, '161', 'Skripsi', 1641720101, 'M. Syaikhul', 'Alim', 'syaikhulalim9@gmail.com', 0, '', '', '', 'Sistem Pendukung Keputusan Penentuan Prioritas Perbaikan Jalan Rusak Dengan Metode Multifactor Evaluation Process (MFEP) (Studi Kasus Kabupaten Bojonegoro)', 'Drs. Rawansyah, M.Pd', 'Dian Hanifudin Subhi, S.Kom., M.Kom.'),
(137, '173', 'Skripsi', 1641720094, 'M. Alfin', 'Zakariya', 'alfinzakariya@gmail.com', 0, '', '', '', 'IDENTIFIKASI KUALITAS BIJI JAGUNG MANIS LAYAK JUAL DARI WARNA DAN TEKSTUR MENGGUNAKAN HSV DAN GRAY LEVEL RUN LENGTH MATRIX (GLRLM)', 'Mungki Astiningrum, S.T., M.Kom.', 'Arie Rachmad Syulistyo, S.Kom., M.Kom'),
(138, '144', 'Skripsi', 1641720060, 'Youngky', 'Atmadinata', 'youngkyatmadinata93@gmail.com', 0, '', '', '', 'Sistem Informasi Prioritas Pembangunan Dan Perbaikan Daerah Dengan Metode AHP Dan PROMETHEE (Studi Kasus Kabupaten Tuban)', 'Drs. Rawansyah, M.Pd', 'Ade Ismail, S.Kom, M.TI'),
(139, '144', 'Skripsi', 1641720060, 'Youngky', 'Atmadinata', 'youngkyatmadinata29@gmail.com', 0, '', '', '', 'Sistem Informasi Prioritas Pembangunan Dan Perbaikan Daerah Dengan Metode AHP Dan PROMETHEE (Studi Kasus Kabupaten Tuban)', 'Drs. Rawansyah, M.Pd', 'Ade Ismail, S.Kom, M.TI'),
(140, '318', 'Skripsi', 1641720144, 'Ahmad Habibul', 'Ulum', 'ahmadhabibululum@gmail.com', 0, '', '', '', 'PERAMALAN PEKERJAAN PERTAMA PADA MAHASISWA MENGGUNAKAN METODE BACKPROPAGATION DI JURUSAN TEKNOLOGI INFORMASI POLITEKNIK NEGERI MALANG', 'Luqman Affandi, S.Kom., MMSI.', 'Meyti Eka Apriyani ST., MT.'),
(141, '192', 'Skripsi', 1641720142, 'Hanifa', 'Pramana', 'hanifapramana17@gmail.com', 0, '', '', '', 'IMPLEMENTASI METODE K NEAREST NEIGHBOR DALAM MENGKLASIFIKASIKAN JENIS SERANGAN INTRUSION DETECTION SYSTEM', 'Yuri Ariyanto, S.Kom., M.Kom.', 'Vipkas Al Hadid Firdaus, ST,. MT'),
(142, '235', 'Skripsi', 1641720183, 'Muhamad Alif', 'Fudianto', 'aliffudianto@gmail.com', 0, '', '', '', 'SISTEM INFORMASI PERAMALAN PENJUALAN OBAT TERNAK BERBASIS WEB\r\n( Studi Kasus PT Otasindo Prima Satwa Cabang Surabaya)', 'Ir. Deddy Kusbianto PA.M.MKom', 'Muhammad Unggul Pemenang, S.ST.,M.T.'),
(143, '168', 'Skripsi', 1741723011, 'Galang', 'Ganesha P', 'galangganesha1996@gmail.com', 0, '', '', '', 'Identifikasi Keaslian Uang Kertas Menggunakan K Nearest Neighbor', 'Cahya Rahmad, ST., M.Kom., Dr. Eng.', 'Mamluatul Hani’ah'),
(144, '163', 'Skripsi', 1741723004, 'Riza Awwalul', 'Baqy', 'rizaawwalulbaqy@gmail.com', 0, '', '', '', 'Kendali Navigasi Slideshow Powerpoint Dengan Gerakan Tangan Menggunakan Metode Hidden Markov Model', 'Cahya Rahmad, ST., M.Kom., Dr. Eng.', 'Arief Prasetyo, S.Kom., M.Kom.'),
(145, '0000000000', 'Laporan Akhir', 123123123, 'asdasd', 'asdasd', 'asd@asd.dd', 456456456, 'asdasd', 'asdasd', 'asdd@as.dd', 'asdasdasd', 'adsdasdasd', 'asdasdasdasd'),
(146, '1000', 'Skripsi', 0, 'aosd', 'asdas', 'as@gs.as', 0, '', '', '', 'ouiouoiu', 'kahskdjh', 'kljhkhjlkj'),
(147, '123', 'Skripsi', 1641720155, 'Muhammad Aslam', 'Ibrahim Ramdani', 'aslamdhoni0261@gmail.com', 0, '', '', '', 'Media Edukasi Sel Hewan pada SMA Berbasis Virtual Reality', 'Hendra Pradibta, SE., M.Sc.', 'Indra Dharma Wijaya, ST., M.MT.'),
(148, '32', 'Skripsi', 1641720030, 'Anani', 'Rhohilavy', 'ananiazania@gmail.com', 0, '', '', '', 'Identivikasi awal penyakit diabetes menggunakan ciri-ciri dan pola hidup pasien menggunakan metode hybrid case based reasoning  berbasis mobile di puskesmas tegalsiwalan ', 'Ariadno ririd ', 'Rachaman ardianto '),
(149, '85', 'Skripsi', 1641720102, 'Dinarpratnya', 'Ningrum', 'dinarpratnya12@gmail.com', 0, '', '', '', 'Rancang Bangun Aplikasi SIAKAD Menggunakan Metode User Centered Design', 'Pramana Yoga Saputra, S.Kom., MMT.', 'Muhammad Shulhan Khairy, S.Kom, M.Kom'),
(150, '16', 'Skripsi', 1641720014, 'Ryan Revantara', 'Yuda', 'ryanrvntr8@gmail.com', 0, '', '', '', 'Aplikasi Penyusun Tesaurus Kata Tidak Baku', 'Pramana Yoga Saputra, S.Kom., MMT.', 'Ika Kusumaning Putri, S.Kom., M.T.'),
(151, '79', 'Skripsi', 1641720096, 'Nabil', 'Fikri', 'sunadji.jr@gmail.com', 0, '', '', '', 'Rancang Bangun Sistem Monitoring dan Controlling pada Budidaya Jamur Tiram Berbasis IoT(Internet Of Things)', 'Indra Dharma Wijaya, ST., M.MT.', 'Elok Nur Hamdana, S.T., M.T'),
(152, '274', 'Skripsi', 1641720010, 'Kharis Ramdani', 'Zulkarnain', 'kharisramdani23@gmail.com', 0, '', '', '', 'Implementasi Game Kuis Tebak Tangga Nada Jawa Dengan Metode Fisher-Yates Shuffle dan Fuzzy Tsukamoto Berbasis Android', 'Ahmadi Yuli Ananta, ST., M.M.', 'Kadek Suarjana Batubulan, S.Kom, MT'),
(153, '92', 'Skripsi', 1741723005, 'Rahma Syndu', 'Grananta', 'akusyndu@gmail.com', 0, '', '', '', 'Desain dan Implementasi Tools System Administrator dengan Protokol SSH', 'Yuri Ariyanto, S.Kom., M.Kom', 'Ade Ismail, S.Kom., M.TI'),
(154, '3', 'Skripsi', 1541180038, 'Ricky', 'Yulian Adi Pratama', 'ricky.heok22@gmail.com', 0, '', '', '', 'SISTEM PREDIKSI TINGKAT KRIMINALITAS MENGGUNAKAN METODE TRIPLE EXPONENTIAL SMOOTHING (STUDI KASUS DI POLRES KABUPATEN PROBOLINGGO)', 'Kolonel Lek. Dr. Ir Arwin Datumaya Wahyudi Sumari, S.T., M.T., IPM., ASEAN Eng', 'Odhitya Desta Triswidrananta, S.Pd., M.Pd.'),
(155, '140', 'Skripsi', 1641720178, 'Ana Miftakhul', 'Hikmah', 'anamiftakhulh@gmail.com', 0, '', '', '', 'Pengembangan Media Edukasi Bagian Tubuh Pribadi untuk Anak Tunagrahita', 'Hendra Pradibta, SE., M.Sc.', 'Septian Enggar Sukmana, S.Pd., M.T'),
(156, '47', 'Skripsi', 1641720049, 'Nabila', 'Nurfajrina', 'nabilafajrina9898@gmail.com', 0, '', '', '', 'Implementasi Klasifikasi untuk Prediksi Status Kredit Nasabah pada Kredit Kendaraan Bermotor', 'Faisal Rahutomo, ST., M.Kom., Dr.Eng.', 'M. Hasyim Ratsanjani'),
(157, '41', 'Skripsi', 1641720042, 'Kholifatul', 'Mahmudah', 'kholifatul.viiie14@gmail.com', 0, '', '', '', 'Implementasi Metode Support Vector Machine Untuk Diagnosis Fault Pada Transformator Daya', 'Ekojono, S.T., M.Kom.', 'Mustika Mentari S.Kom., M.Kom'),
(158, '58', 'Skripsi', 1641720065, 'Trisna', 'Ramadhanti', 'trisnaramadhanti@gmail.com', 0, '', '', '', 'EKSPERIMEN TEKNIK-TEKNIK KLASIFIKASI PADA DATA PERKEMBANGAN PROGRAM STUDI DI PERGURUAN TINGGI XYZ', 'Faisal Rahutomo,S.T., M.T., Dr.Eng', 'M. Hasyim Ratsanjani, S.Kom., M.Kom'),
(159, '98', 'Skripsi', 1641720123, 'Hidayati', 'Mazmi', 'hidayatimazmi@gmail.com', 0, '', '', '', 'kEAMANAN DATA SMART CARD PADA PENGEMBANGAN SISTEM PARKIR (STUDI KASUS DI POLITEKNIK NEGERI MALANG)', 'Dwi Puspitasari., S.Kom., M.Kom.', 'Noprianto, S.Kom., M.Eng.'),
(160, '151', 'Skripsi', 1641720190, 'Diva', 'Adittiyaputra', 'divaaditt@gmail.com', 0, '', '', '', 'PENCARIAN RUTE TERDEKAT PELAKU USAHA MIKRO, KECIL DAN MENENGAH DI KABUPATEN MALANG PADA ANDROID DENGAN MENGGUNAKAN METODE FLOYD WARSHALL ( STUDI KASUS KOMINFO KAB. MALANG)', 'Mungki Astiningrum, ST., M.Kom.', 'Dika Rizky Yunianto, S.Kom, M.Kom'),
(161, '44', 'Skripsi', 1641720046, 'Adinda', 'Dwi L.', 'dinlaras99@gmail.com', 0, '', '', '', 'Implementasi Deep Learning Untuk Ekspresi Emosi Pada Twitter', 'Faisal Rahutomo, S.T., M.T., Dr.Eng.', 'Budi Harijanto, S.T., M.MKom.'),
(162, '44', 'Skripsi', 1641720046, 'ADINDA', 'DWI L.', 'larasatidwidinda@gmail.com', 0, '', '', '', 'IMPLEMENTASI DEEP LEARNING UNTUK DETEKSI EKSPRESI EMOSI PADA TWITTER', 'Faisal Rahutomo, S.T., M.T., Dr.Eng.', 'Budi Harijanto, S.T., M.MKom.'),
(163, '111', 'Skripsi', 1641720141, 'Aflah', 'Rahmah Maulidiyah', 'Lalaaflah@gmail.com', 0, '', '', '', 'Implementasi aplikasi psikologi eksperimen untuk menentukan kondisi ketahanan jiwa menggunakan metode fuzzy mamdhani', 'Usman Nurhasan, ', ''),
(164, '107', 'Skripsi', 1641720135, 'Alwan Ghozi', 'Kurnia Amrullah', 'alwaangk@gmail.com', 0, '', '', '', 'Rancang Bangun Sistem Cerdas Thematic Apperception Test Menggunakan Metode Vector Space Model', 'Usman Nurhasan, S.Kom., MT.', 'Rakhmat Arianto, S.ST., M.KOM.'),
(165, '201', 'Skripsi', 1941727020, 'Moh. Amin', 'Fathullah', 'moh.aminfathullah@gmail.com', 0, '', '', '', 'Sistem Informasi Monitoring &amp; Peramalan Target Pembiayaan Produk Menggunakan Metode Double Exponential Smoothing (Studi Kasus PT. Pegadaian (Persero) Kantor Area Malang)', 'Yuri Ariyanto, S.Kom., M.Kom.', 'Deasy Sandhya Elya Ikawati, S.Si, M.Si'),
(166, '376', 'Laporan Akhir', 1731710148, 'Fryza Rachmania', 'Mashuri', 'fryza.rachmania@gmail.com', 1731710175, 'Rachmad Roudis', 'Shulqi', 'rachmadroudis@gmail.com', 'SISTEM INFORMASI PEMINJAMAN MODAL\r\nUSAHA BKM (BADAN KESWADAYAAN MASYARAKAT) \r\nJAYA SENTOSA DI KELURAHAN KUTOREJO\r\nBERBASIS WEBSITE', 'Faisal Rahutomo, ST., M.Kom., Dr.Eng.', 'Noprianto, S.Kom., M.Eng'),
(167, '66', 'Skripsi', 1641720077, 'Welsi', 'Eldayosa', 'welsi22579@gmail.com', 0, '', '', '', 'IDENTIFIKASI KUALITAS DAUN BAYAM DENGAN GRAY LEVEL CO-OCCURRENCE MATRIX (GLCM) DAN YUV COLOR MOMENTS', 'Mungki Astiningrum, ST., M.Kom.', 'Anugrah Nur Rahmanto, S.Sn., M.Ds.'),
(168, '145', 'Skripsi', 1641720183, 'Muhamad Alif', 'Fudianto', 'alif.fudianto@hotmail.com', 0, '', '', '', 'SISTEM INFORMASI PERAMALAN PENJUALAN OBAT TERNAK BERBASIS WEB\r\n( Studi Kasus PT Otasindo Prima Satwa Cabang Surabaya)', 'Ir. Deddy Kusbianto PA.M.MKom', 'Muhammad Unggul Pemenang, S.ST.,M.T.'),
(169, '18', 'Skripsi', 1641720016, 'Hanifah Fanidya', 'Utari', 'hanifahfanidyautari@gmail.com', 0, '', '', '', 'SISTEM OTOMASI IRIGASI SAWAH DENGAN METODE FUZZY', 'Yuri Ariyanto, S.Kom., M.Kom.', 'Rokhimatul Wakhidah, S.Pd., M.T. '),
(170, '431', 'Laporan Akhir', 1731710180, 'Alfian', 'Gustaf Fiandy', 'alfiangustaf1998@gmail.com', 1731710091, 'Aziz', 'Nur Adikara', 'azizadikara7@gmail.com', 'Aplikasi Depression Test dan Art Drawing sebagai Media Komunikasi Nonverbal', 'Usman Nurhasan, S.kom.,MT', 'Odhitya Desta Triswidrananta, S.Pd, M.Pd'),
(171, '330', 'Laporan Akhir', 1731710080, 'Embriani', 'Dewi Lestari', 'embrianidl13@gmail.com', 1731710055, 'Mita', 'Kartina Sari', 'mitakartinasari08@gmail.com', 'Implementasi Aplikasi E-Reporting Infrastructure (ERI) sebagai Media Monitoring Pengaduan Kerusakan Fasilitas di Politeknik Negeri Malang', 'Usman Nurhasan, S.Kom., MT.', 'Rakhmat Arianto, S.ST., M.Kom'),
(172, '298', 'Skripsi', 1941727017, 'Amelia', 'Nurul Falah', 'amelianurul66@gmail.com', 0, '', '', '', 'Sistem Informasi Supply Chain Mangement untuk Penjadwalan Produksi Sayuran Hidroponik', 'Hendra Pradibta, SE., M.Sc.', 'Usman Nurhasan, S.Kom., MT.'),
(173, '156', 'Skripsi', 1641720197, 'Yudistira Eka', 'Putra', 'yudistiraputra95@gmail.com', 0, '', '', '', 'IMPLEMENTASI ANALISA KEMIRIPAN TEKS UNTUK\r\nPENENTUAN DINAS PADA KELUHAN WARGA \r\nDI PEMERINTAHAN DAERAH', 'Cahya Rahmad, ST., M.Kom., Dr. Eng.', 'M. Hasyim Ratsanjani, S.Kom., M.Kom'),
(174, '35', 'Skripsi', 1641720034, 'Dikky Awan', 'Nugroho', 'awandikky@gmail.com', 0, '', '', '', 'PENENTUAN ESTIMASI HARGA DESAIN SABLON DI PERCETAKAN MENGGUNAKAN METODE FORWARD CHAINING', 'Drs. Rawansyah, M.Pd.', 'Candra Bella Vista, S.Kom., MT.'),
(175, '86', 'Skripsi', 1641720104, 'Ryan', 'Fitra Fathony', 'ryan.fitrafathony@gmail.com', 0, '', '', '', 'Perbandingan Metode MOORA Dengan TOPSIS Dalam Perancangan Sistem Rekomendasi Pemilihan Jurusan Untuk Siswa Sekolah Menengah Atas (SMA)', 'Rudy Ariyanto, S.T., M.Cs.', 'Mustika Mentari S.Kom., M.Kom.'),
(176, '60', 'Skripsi', 1641720069, 'Fahmi', 'Hasan', 'fahmihasan97@gmail.com', 0, '', '', '', 'SISTEM INFORMASI PENGELOMPOKAN DAERAH PENGHASIL PRODUKSI PANGAN MENGGUNAKAN METODE K-MEANS CLUSTERING DI KABUPATEN MALANG\r\n(STUDI KASUS DINAS TANAMAN PANGAN, HORTIKULTURA DAN PERKEBUNAN)', 'Rudy Ariyanto, ST., M.Cs', 'Usman Nurhasan, S.Kom., MT'),
(177, '183', 'Skripsi', 1941727021, 'Anita', 'Sari', 'anitasari.as250@gmail.com', 0, '', '', '', 'SISTEM PAKAR DIAGNOSA DINI PREEKLAMPSIA PADA IBU HAMIL MENGGUNAKAN METODE FUZZY LOGIC DAN CERTAINTY FACTOR', 'Drs. Rawansyah M.Pd', 'Vivin Ayu Lestari, S.Pd, M. Kom.'),
(178, '275', 'Skripsi', 1941727008, 'artha', 'ilma imanidanantoyo', 'arthailma12345@gmail.com', 0, '', '', '', 'IMPLEMENTASI NAIVE BAYES DAN POS TAGGING MENGGUNAKAN METODE HIDDEN MARKOV MODEL VITERBI PADA ANALISA SENTIMEN TERHADAP AKUN TWITTER PRESIDEN JOKO WIDODO DI SAAT PANDEMI COVID - 19', 'Ahmadi Yuli Ananta, ST., MM.', 'Annisa Puspa Kirana, M.Kom.'),
(179, '143', 'Skripsi', 1641720181, 'Okky Bagus', 'Baitis Tuta', 'okkybagusb@gmail.com', 0, '', '', '', 'IDENTIFIKASI BIBIT LELE UNGGUL BERDASARKAN GERAKNYA MENGGUNAKAN METODE PHASE ONLY CORRELATION ', 'Ulla Delfana Rosiani, ST., MT.', 'Arie Rachmad Syulistyo., S.Kom., M.Kom'),
(180, '46', 'Skripsi', 1641720048, 'Refly', 'Ilham Syabana', 'reflyilhamsyb@gmail.com', 0, '', '', '', 'Penerapan Metode Design Thinking Pada Perancangan User Interface Aplikasi Kotakku', 'Pramana Yoga Saputra, S.Kom., MMT', 'Anugrah Nur R, S.Sn., M.Ds.'),
(181, '267', 'Skripsi', 1941727020, 'Moh. Amin', 'Fathullah', 'fatonlay08@gmail.com', 0, '', '', '', 'Sistem Informasi Monitoring &amp; Peramalan Target Pembiayaan Produk Menggunakan Metode Double Exponential Smoothing (Studi Kasus PT. Pegadaian (Persero) Kantor Area Malang)', 'Yuri Ariyanto, S.Kom., M.Kom.', 'Deasy Sandhya Elya Ikawati, S.Si, M.Si'),
(182, '148', 'Skripsi', 1641720187, 'Nugroho', 'Febriyanto', 'nugrohofebriyanto15@gmail.com', 0, '', '', '', 'Deteksi Kerusakan dan Kelayakan Ban Mobil Berdasarkan Ekstraksi Teksturnya Menggunakan Gray Level Co-Occurance Matrix dengan Metode Jaringan Syaraf Tiruan', 'Dr. Eng. Cahya Rahmad, ST., M.Kom.', 'Candra Bella Vista, S.Kom., MT.'),
(183, '259', 'Skripsi', 1941727018, 'Fuad', 'Hadi Nugroho', 'fhadinugroho@gmail.com', 0, '', '', '', 'Perancangan Alat Monitoring Availability Website Menggunakan Metode Web Scraping Multi Provider', 'Putra Prima Arhandi, ST., M.Kom.', 'Irsyad Arif Mashudi S.Kom., M.Kom.'),
(184, '8', 'Skripsi', 1641720003, 'Faradella Widya', 'Putri', 'faradellawidya@gmail.com', 0, '', '', '', 'Prediksi Permintaan Kebutuhan Cabai di Kota Batu Menggunakan Metode Extreme Learning Machine', 'Ekojono, ST., M.Kom.', 'Anugrah Nur Rahmanto, S.Sn., M.Ds.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `username` varchar(25) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `username`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(6, 'Ade Ismail', 'adeismail10@gmail.com', 'aismail', 'default.jpg', '$2y$10$vvvff2uK9WHED.0K2ZaD.estbDZ.sM3YT.qD2mjOczyaj8vJqO91i', 1, 1, 1589474525),
(41, 'HILAL ARSA HIMAWAN', 'hilalarsa@gmail.com', 'S175', 'default.jpg', '$2y$10$.pVJmAymC1Ax204mBLXOCOiHfI2O8R4t/Pz1jM3cZcV0nM5N8/p7W', 2, 1, 1591761670),
(42, 'Alifia Dinda Rahmani', 'Adralifiadinda@gmail.com', 'S179', 'default.jpg', '$2y$10$UY7Q/k7seQ8osMcGdwEPxu/YavUTxpUJ7VxwRdPtMDKQYzzWhpDvS', 2, 1, 1591763014),
(43, 'Yanuar Pradana', 'yanuar.ryp@gmail.com', 'S177', 'default.jpg', '$2y$10$Yjs0sTbFy2k6DpAQPGju2uM1yU6sG4SH77YObf3jf56VS0onUjHsi', 2, 1, 1591763135),
(44, 'Ikhsan Efendi', 'ikhsanefendi59@gmail.com', 'S17', 'default.jpg', '$2y$10$5YVTe9A6J0FSVGyKt9BpLOAG6eF/ndK6pKAClXoCjhBcqZAkf6jBW', 2, 1, 1591776693),
(45, 'Renaldy Ardiansyah', 'renaldyardiansyah05@gmail.com', 'L335', 'default.jpg', '$2y$10$eSXC1MNIpYwh2D7SsJuIZuOtMMWUCH3NIA3k7du2lIz5IYbMJIOV.', 2, 1, 1591783409),
(46, 'Aldhan Yahya', 'aldansorry@gmail.com', 'S87', 'default.jpg', '$2y$10$Kb30ixMWAa7hQEw3z8enH.ZKLGKWSLB3cTZYS6zWL66ssBIIQP8Ji', 2, 1, 1591804605),
(53, 'Choirunnisa Maulani', 'anismaulani06@gmail.com', 'L325', 'default.jpg', '$2y$10$52WOsQPpd6Ow4he9qEmgmuwRteyVWbggSttMyS8VaGxpNmc5KptK6', 2, 1, 1591844731),
(54, 'Muhammad Iqbal Firdaus Nuzula', 'fnfirdaus45@gmail.com', 'S166', 'default.jpg', '$2y$10$c.d56y19plFd8udBSXfax.UJDjqrrgN95CghG9htHCyEuRVUUlzSa', 2, 1, 1591848749),
(55, 'Andry Darmawan Budi Harjo', 'andrydbh@gmail.com', 'S110', 'default.jpg', '$2y$10$195A32vrctvqYtfwQGGlPeltzasRUWHZ/mFH/UAK125L/XIaW6gpW', 2, 1, 1591893000),
(56, 'Abror Rahmatullah', 'rahmatullahabror@gmail.com', 'S135', 'default.jpg', '$2y$10$LHfNWCXTTuHvzHhmh0KkNe5V0c0OQweDYGDA6KTX2dX8MFcb0o/La', 2, 1, 1591893109),
(57, 'Asdhak Fillah Yoga Reksa', 'asdhakfillah@gmail.com', 'S6', 'default.jpg', '$2y$10$QvNYcSOzOI/D4RcY965f8epu.mjyoCplfbnvdY2K5Xtm1M5vTm7Z2', 2, 1, 1591920281),
(58, 'Atina Za\'ima', 'atinazr@gmail.com', 'S158', 'default.jpg', '$2y$10$52gGjWkiwg/NUjMP5keyrumF4C8GHaZ7Vd8/v38.t52Ebs.2ol4D.', 2, 1, 1591933350),
(59, 'Tahta Reza', 'tahtareza98@gmail.com', 'S37', 'default.jpg', '$2y$10$MLJYIAq4z9i198Ywc3EqR.EFxeZzH6ZnNaSkDhPdJ0YGvO/MeKlJa', 2, 1, 1592045026),
(60, 'ade Ismail', 'masaaadeismail@gmail.com', 'S3000', 'default.jpg', '$2y$10$EhxKJYsOBGuKPrtmYzMSred1tnJZvqiNds/glXjBcQYHovb/LGMeK', 2, 1, 1592127134),
(61, 'Yudha Pradana Putra', 'yudhapradana102@gmail.com', 'S43', 'default.jpg', '$2y$10$nw8r8ZLs58rbtppNmW6H4e3gUZOkS4Eb8rdfPzjioN/t1jveDm2iK', 2, 1, 1592140902),
(62, 'Nabil Fikri', 'fikri.winaji@gmail.com', 'S79', 'default.jpg', '$2y$10$wS5uEiXPsDAyCQqFChiJge0WfzyDIev4se0/21yWS0SVte4j5HS.m', 2, 1, 1592142944),
(63, 'Idris Cahyono', 'idriscahyono@gmail.com', 'S1641720184', 'default.jpg', '$2y$10$H4pJSlcS08KuLwm7dxVmMOJPK77fVx40p3gC2CRlO0OvTdiAAiIi2', 2, 1, 1592289266),
(64, 'Andy Putra Wijaya', 'andyputrawijaya376@gmail.com', 'S1641720150', 'default.jpg', '$2y$10$1cgIB5LkWaoWJInrOLhAeO0jdLo4IjEnbUFFeIRIobLtcm4bYxzlm', 2, 1, 1592372629),
(65, 'tri nanda satrio purnomo', 'trinsp11@gmail.com', 'S1741723001', 'default.jpg', '$2y$10$Wh5cjYHBjGNgEXoRh53RWuU/QKj3cTO4DVHTuaHp8W4HAWZ5LQQue', 2, 1, 1592377601),
(66, 'Malak Dewi', 'malakdiana00@gmail.com', 'S22', 'default.jpg', '$2y$10$SW8D4s2DaXGo0Dk10HHID.ZBx8Z.5wJLS2J3XaqCyl7Ps6qSS8RkG', 2, 1, 1592455811),
(67, 'Joshua Davian Kristanto', 'joshuadavian@gmail.com', 'S29', 'default.jpg', '$2y$10$LGNL/.1GiC7CJ2o8xno3/.iZdB7BQUum7CwJTb4JI2GWUVQXq2wSS', 2, 1, 1592456508),
(68, 'Anisa Dyah Fatmawati Almahfudi', 'anisadyah353@gmail.com', 'S132', 'default.jpg', '$2y$10$CgzcmQDVgZeSV5bKeHOMbugjJcsjWa1Ab4HD1sB9YvXy7tpu7mfbm', 2, 1, 1592474310),
(69, 'Kharisma Dwiky Primadana', 'kharismadwikyprimadana@gmail.com', 'S94', 'default.jpg', '$2y$10$ia150Ph2xeOvD.SvdunGEu3Tamijf0JpP6q86Fi.RSzL3psH4yati', 2, 1, 1592566469),
(70, 'Dwi Utami', 'dwiutami17121999@gmail.com', 'LendahPol', 'default.jpg', '$2y$10$NnswU/92llXk8YeWJ6DgkOXwk38NbOnPoWWAdLaV.WH8TRkNMYPXu', 2, 1, 1592668062),
(71, 'Muhammad Marsudiarto', 'marsudiarto313@gmail.com', 'S1641720166', 'default.jpg', '$2y$10$0NqyZN9fnYyn6RncPc7icu7iT2VrB.HMnKEff0QaT9URdQjASVtzG', 2, 1, 1592676169),
(72, 'Aryan Nasikhul Amin', 'aryan.nasikhul.a@gmail.com', 'S181', 'default.jpg', '$2y$10$RjHiSt44axafX0HxGwdLlu9Wnfz0flB4b9P4osHwykCIXaBvya6jK', 2, 1, 1592694030),
(73, 'Agusta Dwi Mahardhika', 'agustadhika55@gmail.com', 'L358', 'default.jpg', '$2y$10$TY4lASB.70Xo7isPTm8na.ASpSFgUhvY77nso1fKKhP4sq8i84nOy', 2, 1, 1592721048),
(74, 'Muhammad Arya Puja Laksana', 'aryapuja2103@gmail.com', 'S27', 'default.jpg', '$2y$10$mqc3zBOCX1cM/UgfJ/bliOBOkw4VzpB.Yy6wvkBfGX.1dTG51GQv.', 2, 1, 1592794560),
(75, 'Muhammad Hammam', 'hamamhaidar89@gmail.com', 'S102', 'default.jpg', '$2y$10$wiu/NvspqVFZ7Mu5GCWpv.iDIxjbkBWketCnEJKEG2WCXZAf1x5Iq', 2, 1, 1592794933),
(76, 'Nabila Wanda Meylia', 'meylia3010@gmail.com', 'L316', 'default.jpg', '$2y$10$inkUTcsPfcl6ihHMUE4PrORmSZIOUILUeuC.ocz5udQduZaEYXSs2', 2, 1, 1592801209),
(77, 'Fransiska Dita', 'frtiarad@gmail.com', 'S26', 'default.jpg', '$2y$10$YmUkEYbuqgF/HEloMguyjuYuqLBOPn85pIj/qAekrHY6FpnvmBUL2', 2, 1, 1592801721),
(78, 'Dicky Ciptor', 'dickyc2727@gmail.com', 'S170', 'default.jpg', '$2y$10$CSWVLto1ah12Ww4TAwgPdedob6q0b2MfTrjchymis0c1tzW7Pj9t6', 2, 1, 1592805229),
(79, 'Ferina Bayu Sukmadewi', 'ferinabayu@gmail.com', 'L360', 'default.jpg', '$2y$10$jqpj/3Li2EQqcUwteYhecuIwSCepEkJOkcE.0eMhlcZaLKZ5Eeop6', 2, 1, 1592819694),
(80, 'Dany Kurniawan Kusumah', 'danykurniawanapk3@gmail.com', 'L331', 'default.jpg', '$2y$10$kKQen8vTKMKPDDqZNJ79ieMSCP.LAdNyCKpZxaisY2mIirnW4gueu', 2, 1, 1592909761),
(81, 'Alindya Kirana Putri', 'alindyakiranap@gmail.com', 'S45', 'default.jpg', '$2y$10$43xmny6clvK2Z9wnQ9kirOk1qK/oFWaa0EBsjBdFoG6oB3/t4WQjy', 2, 1, 1592920604),
(82, 'Ricky Octavian Wahyudi', 'nyo6472@gmail.com', 'S105', 'default.jpg', '$2y$10$zQlTSQg2VOx/5huXpxGMfOCcNw55YDrlAB0i7QE2SNn8nBtIjAtE6', 2, 1, 1592981003),
(83, 'Ahmad Yusuf Ardabilli', 'billya749@gmail.com', 'L326', 'default.jpg', '$2y$10$3oyamFy0wXS1Zfgth0VVxe.DfB7I4qonP0tenJm20G8XdEItRwKvq', 2, 1, 1592982327),
(84, 'Mochammad iqbal Maulana', 'iqbaljrz58@gmail.com', 'S127', 'default.jpg', '$2y$10$.3294/F8qnkFJBXUJIomLOZQpET6CEehdevZBi48OIH3A/EgJFAE2', 2, 1, 1593005252),
(85, 'Nita Komalasari', 'nitarahma456@gmail.com', 'S68', 'default.jpg', '$2y$10$6e6Mm60OAMcY6ObRuPxpZ.yIKwFeZJkIHSAOXOWAiG1JEoXRfa.Oa', 2, 1, 1593053319),
(86, 'Audria Hafshah Salsabila', 'audriasalsa169@gmail.com', 'S270', 'default.jpg', '$2y$10$EmRzmxX9KkqIhOchf7oDfeYU6ea8zpVCjZN23NZ6hywK20q0raF/6', 2, 1, 1593069484),
(87, 'Fanina Meidina Wahyuningtyas', 'faninameidina@gmail.com', 'S30', 'default.jpg', '$2y$10$1MDGgOSY3Ca0eyrC5RLp.ubwPdqyk2S.zq5GtdqFwy7twdrJasvX.', 2, 1, 1593073069),
(88, 'Agustin Setyo Rini', 'agustinsetya38@gmail.com', 'S57', 'default.jpg', '$2y$10$KEAW45V3m5V1HTEGOs0qVOm.RsOutthGuP9YwUKlf98xZHFcrCL.W', 2, 1, 1593073079),
(89, 'Siska Stevani', 'siska.stevani@gmail.com', 'S165', 'default.jpg', '$2y$10$3HxElQqVxnwKNVdcWEcVuO7GSFBEWhfKzZ9P/MwSMVxQDmP2X5.h.', 2, 1, 1593073100),
(90, 'Farinda Ramadhani', 'farindaaaa@gmail.com', 'S150', 'default.jpg', '$2y$10$3jWnI0iOOaT3BW1MkqBWZ.q.uUSbbFo2yMogGR7lbDEleRJYJZH1m', 2, 1, 1593076898),
(91, 'Jelita Sekar Melati', 'jelitasekarmelati@gmail.com', 'S136', 'default.jpg', '$2y$10$ND8XywR.LqGvIA6ISP7nXOv9RhHr5b/jMJFB2cgT3tUmeiipxZ1J.', 2, 1, 1593077578),
(92, 'Jihan Octavia', 'jihanoctavia10@gmail.com', 'S73', 'default.jpg', '$2y$10$BB/wm88BLuvJQ3vBMqJEsOExRUs.q9C6QoWgxohmrOhgv6sFsuPja', 2, 1, 1593078448),
(93, 'Aulia Adistanti', 'auliadstanti@gmail.com', 'S55', 'default.jpg', '$2y$10$ogbcRRW3M60a7FDQHJNFsOMiMaQIhDZs63XLHwMKdgSAoYcQqblfS', 2, 1, 1593078526),
(94, 'Nur Laily Fauziah', 'nurlailyfauziyahfz@gmail.com', 'S97', 'default.jpg', '$2y$10$1AM9vHiJHKeMtviDat0eIetrf5shABh6YAqvM8lFqVax2EPL9gmFK', 2, 1, 1593078627),
(95, 'Rizky Firmansyah', 'rizky.firmansyah55@gmail.com', 'S104', 'default.jpg', '$2y$10$1Q9GhVJREhpFNsWYQi5vzOtULDWqU2xCUr5OGJpmNYqibQzy6Kqay', 2, 1, 1593085837),
(96, 'Angelita Justien Jumadi', 'angelita.lmj15@gmail.com', 'S53', 'default.jpg', '$2y$10$lymPY/wACf6gCWidq1e/8OUL1/GlqrlBy8R6NvhO89/8qGn45YVIG', 2, 1, 1593095280),
(97, 'Ferdiana Rochmatul Chusna', 'ferdianarc@gmail.com', 'S144', 'default.jpg', '$2y$10$NNJ/H1sATpkJnnMJfmyD0esGFQVkGIfJW8Nm/li7J/fuDo7SRra9C', 2, 1, 1593095644),
(98, 'Nadhifa Tiara Putri', 'nadhifatiaraputri@gmail.com', 'S62', 'default.jpg', '$2y$10$kYzPZllmF3RHcFpeaBn7a.cHFwcyKMJa1mEGTFpEma/6GkjZ4PKne', 2, 1, 1593097312),
(99, 'Marchanda Sukma Ayu Dwi Yanti', 'marchandasukma16@gmail.com', 'L438', 'default.jpg', '$2y$10$XHJAWb0eZ1lNvrpyNd/2x.TIdFgj7ByBmoERA.ewhkSZh5ARhtEES', 2, 1, 1593134960),
(100, 'Sheyba Azigita', 'sheybaadinda@gmail.com', 'S134', 'default.jpg', '$2y$10$2c3ibPlWSn65H/qpHoMFhutlQvqrwYQGMq2heDkRqGmkFt1JvUp6S', 2, 1, 1593158591),
(101, 'Dwiky Alan Adi Wena', 'dwikyalanadi@gmail.com', 'L341', 'default.jpg', '$2y$10$VIj/GlbU4GNgowCB2hYOqu9WcEngVHEr0/rNNSNkIVpy1PK2lH/FG', 2, 1, 1593159687),
(102, 'Guntur Gedhe Mukti', 'gunturgmukti@gmail.com', 'L351', 'default.jpg', '$2y$10$AotKrdXD14wVdtOgTX6ZbuEf0LfaKbsr5ErzV2.b2gc9QtPoA0MPy', 2, 1, 1593174416),
(103, 'Bulgisfii Alfa Laila', 'faalfa957@gmail.com', 'S108', 'default.jpg', '$2y$10$knsL6bmesjo8lPZHGcC1NOzxCMetHqZ1YumhRHMa8N/.kOcOLdxvu', 2, 1, 1593183594),
(104, 'I Wayan Satria Dharma Widhiantara', 'dharmatara23@gmail.com', 'S1641720023', 'default.jpg', '$2y$10$rzrSHa.glnWA4dvvzjJ68.2Y.WhRRx8seko5u.M70ecb9lj6sFVku', 2, 1, 1593239540),
(105, 'Septa Hoga Samara', 'hogahoga17@gmail.com', 'S120', 'default.jpg', '$2y$10$41TxUdr6N8p3UjOfNcfF6u6icU/S/Y1CKMdXHbRdquxuwg4ZShUai', 2, 1, 1593250039),
(106, 'Muhammad Marsudiarto', 'marsudiar98@gmail.com', 'S130', 'default.jpg', '$2y$10$W.1EIWXmqURKjcQhJyP46.niTLE0EWqdSaPpNXRm/JqXWMVlD2/lm', 2, 1, 1593273148),
(107, 'Septa Hoga Samara', 'hogahoga18@gmail.com', 'S120', 'default.jpg', '$2y$10$2dQQQd/doVpFWez4zt2yeug3.SnvfWCB08SlJZ5Miub653OVAbSAO', 2, 1, 1593417143),
(108, 'As\'ad Alfan Jauhari', 'asadalfan87@gmail.com', 'L455', 'default.jpg', '$2y$10$j0f9EcrJDfAWsCp2XeUZcO9SWq2oUZUIonOETfFHtda7TONAv2oRq', 2, 1, 1593490094),
(109, 'M.Yazid Riandi', 'yazidukel25@gmail.com', 'S171', 'default.jpg', '$2y$10$xT5w9liiO/rqc0x1JkUokerb4sPDYEoZgF4mdbvvGkG8lH3Wlqp5.', 2, 1, 1593539221),
(110, 'Syilvia Windy Kharisma Putri', 'sylviaputri0@gmail.com', 'S28', 'default.jpg', '$2y$10$LyeghqlTW.jP4kVXFdXv8uib2F/pHHDLlgmtUDIE5zu8Hmr29DC9u', 2, 1, 1593692896),
(111, 'Ananda Nur Juliansyah', 'anandanur92@gmail.com', 'L356', 'default.jpg', '$2y$10$YOTXGFpttKUGkihjA3VJCuv/SQ48RdewH49L4di3srsWiZV3oNpD6', 2, 1, 1593943615),
(112, 'Elfira Amalia', 'elfiraamalia12@gmail.com', 'L329', 'default.jpg', '$2y$10$vg2ir7QueDAx98V.Gel43ekeC67cdIclgL42EYkk0hFIyqoChxlIq', 2, 1, 1594123999),
(113, 'Bagus Herlambang', 'bagus.pogar@gmail.com', 'S121', 'default.jpg', '$2y$10$vaLirdsiwt90XpqT5LR3S.PYKLYA8T/Cq87MfQVdU0PqGjI2fRXrG', 2, 1, 1594192990),
(114, 'Kevin Rahardian Nanlohy', 'kevinrahar@gmail.com', 'S61', 'default.jpg', '$2y$10$/vSuQbvS5WFIm30suP6StuxW2222SoNcTvY7QT7xWnEB0Ev8FdSIC', 2, 1, 1594193367),
(115, 'Beby Novia Putri Lovenida', 'bebyrpl@gmail.com', 'S63', 'default.jpg', '$2y$10$dC7xJDsBpDmz/LS3dQPMzOzH8VtDVYagtF8fGcl0i2yDkxxHoGHTq', 2, 1, 1594203197),
(116, 'Tholib Subechan', 'tholibsubechan@gmail.com', 'S83', 'default.jpg', '$2y$10$1a/PaCF8ybIoW/orb8Y4keXuNAmMgECTrAqlsivLiMjbXdHdQE8GS', 2, 1, 1594306206),
(117, 'Adhika Kurnia', 'adhikakf95@gmail.com', 'S1', 'default.jpg', '$2y$10$E85xW2j4NcbTuNtimSQhBuHRe0x0VG3T1KfManbp7.3azgecwLtqa', 2, 1, 1594306627),
(118, 'Berliana Farah Diba', 'berlianafd@gmail.com', 'L314', 'default.jpg', '$2y$10$eTxnLfzAyi6smFINhW1Qi.6ceZ3CmpWq1cZuF7hv409rqSkmBYcpq', 2, 1, 1594364895),
(119, 'Rinjang Esa Nurita', 'nuritaesa@gmail.com', 'S180', 'default.jpg', '$2y$10$6X9qzBc5bC9Bbo16hDGAhO5Ct72dtvrPnDQEritJykFywlAwBj3Bu', 2, 1, 1594376425),
(120, 'Dimas Bagus Wahyu Sudrajat', 'dimasbagus12360@gmail.com', 'L318', 'default.jpg', '$2y$10$.aO9/RlAX8TZzuut8ixwKeSi8ztjedm7DYP0MYDGWcmgpxmPyMlHa', 2, 1, 1594378562),
(121, 'Edo Julyanto', 'julyantoedo@gmail.com', 'S8', 'default.jpg', '$2y$10$1ExeIW.OFnTkiEkigHM6xe12Jyozy4xJzIPm4PiCtN2z99bJjlmoS', 2, 1, 1594381988),
(122, 'Maulana Zinedin Zidane', 'maulanazinedinzidane@gmail.com', 'S48', 'default.jpg', '$2y$10$tBeJOUs8Hemy8LB/8fnVouRcGvPBY.WkJHQBFLNA7MXLuz07s9uMS', 2, 1, 1594551610),
(124, 'panitia panitia', 'panitia@jti.polinema.ac.id', 'panitia', 'default.jpg', '$2y$10$Tr9OPklS5cXa/JIq0lVl6.tNnq5VL/eBc4gJ1UGdyIldzlwmA3SpG', 1, 1, 1594601863),
(125, 'muhammad pringgoloyo', 'pripur99@gmail.com', 'S1641720120', 'default.jpg', '$2y$10$tJ95GSJOIwbmvNNEydbJq.645kdYwUGKTLv/2Ne.zdCeSVs6K0CGu', 2, 1, 1594629844),
(126, 'Ricky Pratama', 'ricky.ghifary1122@gmail.com', 'S3', 'default.jpg', '$2y$10$dS.pW33aywKuxbhllSGCDuIuoClEUJeVgPX5SnHmOcf5O9gCY/sY2', 2, 1, 1594891038),
(127, 'NAJI BUL HOIR', 'najibulhoir98@gmail.com', 'L463', 'default.jpg', '$2y$10$R.HZPL/w4lnYG32r326iZuVja6mBxycKuj7Hr34WUxptYE5vm72gG', 2, 1, 1594966683),
(128, 'Aditya Eka Pradana Putra', 'aeka489@gmail.com', 'L317', 'default.jpg', '$2y$10$mx/.0f/3G6BuTYcuI3UqLOTnejLO9G0tYqji7Y7A8CFS4ekDjg/3G', 2, 1, 1595214673),
(132, '2020 2020', '2020@2020.com', 'S2020', 'default.jpg', '$2y$10$aMdbdb/Ovj67HQzroqtoyuTT2J2VH3pcW1SSWLwtn7cjwhjS7mZOS', 2, 1, 1595302630),
(133, 'Ardhanarisvari Panduwinata', 'ardhapanduwinata@gmail.com', 'S93', 'default.jpg', '$2y$10$QdxwYdoP9LcFXhuFZyoW7u3o/dfyf2g.tubM7853MQ3kghv.w4hj6', 2, 1, 1596425449),
(134, 'salsa nalia fathin', 'salsanalia.fathin@gmail.com', 'S99', 'default.jpg', '$2y$10$MvvSN7kDTJud1kFsZczssOf.eL/81lAvLoaanTp3PhlrtaLS4xkXO', 2, 1, 1596444945),
(135, 'Aryan Nasikhul Amin', 'aryannasikhulamin@yahoo.co.id', 'S181', 'default.jpg', '$2y$10$Y8NGoFiGR3mcQe.9/H84COzqlcsEOnnfPRCCBf8VoV80L5GUJ4DGu', 2, 1, 1596598393),
(136, 'Ramdaning Puri Pradani', 'daninpradani@gmail.com', 'L310', 'default.jpg', '$2y$10$Wd/uGa0pXg9E0LBgJX5SVuU4oc.lzj/ysc1ZLXEbtFW4rubo.1kaS', 2, 1, 1597025328),
(137, 'Ahmad Nurudin Subqi', 'asomad521@gmail.com', 'L315', 'default.jpg', '$2y$10$hykHnNjdUBOVjG5vzYsVoup6uQKNYhPxd7e1PI3E0rOkuht1Qz0.S', 2, 1, 1597027094),
(138, 'Yuanita Hendra Cahyana', 'yuanitahc@gmail.com', 'S262', 'default.jpg', '$2y$10$.9AH.7EI8sAxxJflWc92EuCb0s/znvMrorNpqTgGM7YJz2Ci3P8Vi', 2, 1, 1597046295),
(139, 'Mardiana Sasmita', 'mputrisasmita@gmail.com', 'S137', 'default.jpg', '$2y$10$rNS3EEedstZrQGRXHm.hROXKG99/GUB3qAHpDsWRRTkxwb9xeOzFK', 2, 1, 1597295210),
(140, 'Endar Gayuh Muktitama', 'endargayuhmuktitama@gmail.com', 'S123', 'default.jpg', '$2y$10$gpRrfXAwSseSyNOqsMn7nOl99rLS2yMzstZk5rz3fFeU/x7cYOcAO', 2, 1, 1597297427),
(141, 'Pratama Putra Marhendra', 'marhendra14@gmail.com', 'S113', 'default.jpg', '$2y$10$1XTveLMEaVNMTwrD05N4Me1hZ9es5kEuU3x0MHSeHY609PE1Evgm.', 2, 1, 1597373787),
(142, 'Muhammad Alif Yudhistira', 'yudhistirathio@gmail.com', 'S152', 'default.jpg', '$2y$10$LMCVtvSYcA/1RZfaMhDKsOV4IEpc2GJMH1cZ9fQ4OiseqqMZMPa5q', 2, 1, 1597603729),
(144, 'Nur Khozin', 'annurkhozin@gmail.com', 'S169', 'default.jpg', '$2y$10$91ndKVWkTgsH4TYfL0NqwOy.LZNQ8kgR695zSK05T.2WR6h.XkLRy', 2, 1, 1597799878),
(145, 'Yahya Dwi Pradika', 'yahyapradika87@gmail.com', 'S24', 'default.jpg', '$2y$10$w7u6kP/eyE1HBw56W1M8Ce9QCQEz6D5gbq9Qi1mZP43gujhq96SIe', 2, 1, 1598342344),
(146, 'Siti Kholifah', 'skholifah215@gmail.com', 'S189', 'default.jpg', '$2y$10$AGWExH70FMv6vqoaS1qiteZPZ0FPQtvzqS2znUiIg81rAHLIcIb.u', 2, 1, 1598345138),
(147, 'Dimas Hariyanto', 'dimashariyanto4@gmail.com', 'S160', 'default.jpg', '$2y$10$6.8yuAYbuky9EuPa4GWy9uJdfCMgaZRt3zTUNzpm13n.BqaTsmMi.', 2, 1, 1598346622),
(148, 'M. Syaikhul Alim', 'syaikhulalim9@gmail.com', 'S161', 'default.jpg', '$2y$10$1kzIiVXTEyLzT3bP9HZ7zu2IpZ/8jaU6Ev4wIAoaImk6PRgEo4aA2', 2, 1, 1598380951),
(149, 'M. Alfin Zakariya', 'alfinzakariya@gmail.com', 'S173', 'default.jpg', '$2y$10$kIksPNoO.7a3D4l2M4ZT4OkvSbULtYQ9TJWKFPBPWXgdSUq5SVX62', 2, 1, 1598380973),
(150, 'Youngky Atmadinata', 'youngkyatmadinata93@gmail.com', 'S144', 'default.jpg', '$2y$10$4iDZgqfEr3UWmInzxyelVOaRPghL06u3L6.ia/V/EbIZP53ISBrve', 2, 1, 1598381151),
(151, 'Youngky Atmadinata', 'youngkyatmadinata29@gmail.com', 'S144', 'default.jpg', '$2y$10$5F3M6FdGDFhLaBxkiEgKse1RxQb5nTu/rhorruZ.gO3FkrLGcAvo6', 2, 1, 1598418530),
(152, 'Ahmad Habibul Ulum', 'ahmadhabibululum@gmail.com', 'S318', 'default.jpg', '$2y$10$DbocZ/GnOk5tXFSG2XE9pOyYrKg2BiWlDCWoJc2rFv6gHWezYU732', 2, 1, 1598427653),
(153, 'Hanifa Pramana', 'hanifapramana17@gmail.com', 'S192', 'default.jpg', '$2y$10$DxWFYd0PIFZNWVt3QTU48.A.daPw3bllRZbOD37rQ5.7slT33H1cO', 2, 1, 1598429302),
(154, 'Muhamad Alif Fudianto', 'aliffudianto@gmail.com', 'S235', 'default.jpg', '$2y$10$w.rkOT2eqKBgmiMwykMPM.5arXGTpCW2YOp9crRcOLtYARHiVcMaC', 2, 1, 1598433438),
(155, 'Galang Ganesha P', 'galangganesha1996@gmail.com', 'S168', 'default.jpg', '$2y$10$gNUGQv/P7liOrgHQAVptIu9k1K2kMekq.myTIVnQVVagHHp0VvfQy', 2, 1, 1598512161),
(156, 'Riza Awwalul Baqy', 'rizaawwalulbaqy@gmail.com', 'S163', 'default.jpg', '$2y$10$q4b8Wj/JKcHSkmESklNkuuJEX.U3Odo48VvPkoL5Pzywh/Ru5Ux.i', 2, 1, 1598513054),
(157, 'asdasd asdasd', 'asd@asd.dd', 'L000000000001', 'default.jpg', '$2y$10$ZD7fRTFyowZZgycfo2EN/u5cBrjPPrxKio.SFM0ikuPVvJcZVP6gO', 2, 1, 1598513340),
(158, 'aosd asdas', 'as@gs.as', 'S1000', 'default.jpg', '$2y$10$wJmx74mo8hjTrBxSAJs00.lDAY4mQGbuutPyvBFsj1MCNpKRr6hha', 2, 1, 1598514958),
(159, 'Muhammad Aslam Ibrahim Ramdani', 'aslamdhoni0261@gmail.com', 'S123', 'default.jpg', '$2y$10$c4Gy3hqqZyx868liG67MYuYnw9BhORhEbWCfXPrbXD/QcYLMp3Te6', 2, 1, 1598518645),
(160, 'Anani Rhohilavy', 'ananiazania@gmail.com', 'S32', 'default.jpg', '$2y$10$sti.0j0jaR9Cl7Z25OucC.1uWdiB2KlkSaW3j4Ob93jC6/ros4qOS', 2, 1, 1598523906),
(161, 'Dinarpratnya Ningrum', 'dinarpratnya12@gmail.com', 'S85', 'default.jpg', '$2y$10$35Ti2VwLVpctmbz8YUiUZer6KkikoEcGFtZQINLuJElHvJ4k0f.ZG', 2, 1, 1598536510),
(162, 'Ryan Revantara Yuda', 'ryanrvntr8@gmail.com', 'S16', 'default.jpg', '$2y$10$eup8BkrOFZGiU4PkmD3ccehVNFI8jbXX.qTVQ8cBI6cldwCjnTOuq', 2, 1, 1598536933),
(163, 'Nabil Fikri', 'sunadji.jr@gmail.com', 'S79', 'default.jpg', '$2y$10$K7BLOTQSJBqgg/wesJRfCumH3DeyFrruXm5xhN/SVnIOPASJacgC.', 2, 1, 1598542209),
(164, 'Kharis Ramdani Zulkarnain', 'kharisramdani23@gmail.com', 'S274', 'default.jpg', '$2y$10$n0MNRshurzk5o4Z1JUdd0eFK1z5GAgRc3e/KD.N8rOQu1whwaqfqe', 2, 1, 1598543633),
(165, 'Rahma Syndu Grananta', 'akusyndu@gmail.com', 'S92', 'default.jpg', '$2y$10$HFxZ/9mj5ayQZTcNQcbe4OWJ.TMLxq6thJK6b31/qvnTfb4gESfF2', 2, 1, 1598580059),
(166, 'Ricky Yulian Adi Pratama', 'ricky.heok22@gmail.com', 'S3', 'default.jpg', '$2y$10$SwTE5GfZc0yUNM/1m3wJSOqzzxBJZYhXzNtqQqZCHTSV81Fd0g2GG', 2, 1, 1598604272),
(167, 'Ana Miftakhul Hikmah', 'anamiftakhulh@gmail.com', 'S140', 'default.jpg', '$2y$10$dBbrKhvCzDRtEUdKEOHiQuLtfnF3sD9/qBcwEYexHObS7VEYvNdte', 2, 1, 1598611982),
(168, 'Nabila Nurfajrina', 'nabilafajrina9898@gmail.com', 'S47', 'default.jpg', '$2y$10$SGIQbuOdJ0VBMkUCwylYUu0wDwPwr9UwyrPYK1s0CAPa6x1AQQsWa', 2, 1, 1598674673),
(169, 'Kholifatul Mahmudah', 'kholifatul.viiie14@gmail.com', 'S41', 'default.jpg', '$2y$10$2MK3okUTgTycU3iwRc7Qj.w16sKAHSmmGH5PEZfLUxTEQbhf1qn9q', 2, 1, 1598674776),
(170, 'Trisna Ramadhanti', 'trisnaramadhanti@gmail.com', 'S58', 'default.jpg', '$2y$10$31WhGIZpyaQ6E8AvINpMP.Qo7f5XM/MIrvLhmJPMJZNJF30nr17Zq', 2, 1, 1598677427),
(171, 'Hidayati Mazmi', 'hidayatimazmi@gmail.com', 'S98', 'default.jpg', '$2y$10$1ElVm9R2025S43nu5kWcF.pR7aRweyDmTR.G6ATB8X6fIOekH5KYO', 2, 1, 1598702509),
(172, 'Diva Adittiyaputra', 'divaaditt@gmail.com', 'S151', 'default.jpg', '$2y$10$JsNWz2Cp9QkcE3SSmuMXYOaNFi8EQvxoeQJ5AMnlMdd1eYRV/XfEO', 2, 1, 1598762691),
(173, 'Adinda Dwi L.', 'dinlaras99@gmail.com', 'S44', 'default.jpg', '$2y$10$VBOnIkw1R3HIogTH9EpCN.L/oqiKewJrnAqXauooshnewuiR.d0qW', 2, 1, 1598788847),
(174, 'ADINDA DWI L.', 'larasatidwidinda@gmail.com', 'S44', 'default.jpg', '$2y$10$ck8aO20oVq3Hvh6qcZi.oOxdmaeuU4322JDBNStCBf7W0TVGF2nMe', 2, 1, 1598789368),
(175, 'Aflah Rahmah Maulidiyah', 'Lalaaflah@gmail.com', 'S111', 'default.jpg', '$2y$10$QgoxtX1qjSalnnC.Byq/XunlI8qZ5Eh13VPlPoDcPB5KjnCZYq2YC', 2, 1, 1598842754),
(176, 'Alwan Ghozi Kurnia Amrullah', 'alwaangk@gmail.com', 'S107', 'default.jpg', '$2y$10$ml6j5iJUBBf67SczMYPKA.ffpbxwYxUOCOVN2OFxLvewTW61XYCzW', 2, 1, 1598851204),
(177, 'Moh. Amin Fathullah', 'moh.aminfathullah@gmail.com', 'S201', 'default.jpg', '$2y$10$UjN23wUdIjz6AHBw5HJkfujeTiVTvOLlbEInqC.wwKCQ2BA3hGss.', 2, 1, 1598851548),
(178, 'Fryza Rachmania Mashuri', 'fryza.rachmania@gmail.com', 'L376', 'default.jpg', '$2y$10$KtlUtCg0lBlRhC4kztukS.b8EStUn0aq4WolMn.HiletJOummp8xq', 2, 1, 1598854734),
(179, 'Welsi Eldayosa', 'welsi22579@gmail.com', 'S66', 'default.jpg', '$2y$10$gQkuU84KYppsZpyYlTZkrOO2k5239XD1AflbPrqsQwdfZ6262fSmu', 2, 1, 1598857179),
(180, 'Muhamad Alif Fudianto', 'alif.fudianto@hotmail.com', 'S145', 'default.jpg', '$2y$10$mlOpHpInTfclSzNjUk1o.O0R31Pv3GayybOVE4fzkcIRJYI/1KGSC', 2, 1, 1598896212),
(181, 'Hanifah Fanidya Utari', 'hanifahfanidyautari@gmail.com', 'S18', 'default.jpg', '$2y$10$Sl8vxNwcJRAV7L4/HQJuIOsuOWkhY7OA70vBzC4jRwxrNleFA6e4m', 2, 1, 1598917892),
(182, 'Alfian Gustaf Fiandy', 'alfiangustaf1998@gmail.com', 'L431', 'default.jpg', '$2y$10$46tklsjc.faMrFZ3YGN6beQN20QfeUv74PVISGDtGoGrJH7/xZ7ma', 2, 1, 1598928194),
(183, 'Embriani Dewi Lestari', 'embrianidl13@gmail.com', 'L330', 'default.jpg', '$2y$10$0hVtMuRvVq//nO.42iyu8OqznO0MSD5YR33qVFPJf7t7t/RG0vXoy', 2, 1, 1598933548),
(184, 'Amelia Nurul Falah', 'amelianurul66@gmail.com', 'S298', 'default.jpg', '$2y$10$bavjgur8fRlXP4K0dxZtVu/LFeI0pShlxCnKjILeGWVOB8mAG15uW', 2, 1, 1598962771),
(185, 'Yudistira Eka Putra', 'yudistiraputra95@gmail.com', 'S156', 'default.jpg', '$2y$10$gOiheeqzbFQxVj50oRCFJ.JPPuJV/oOxcmvVM02BFBOKx5shs0iTG', 2, 1, 1598963994),
(186, 'Dikky Awan Nugroho', 'awandikky@gmail.com', 'S35', 'default.jpg', '$2y$10$6DtYBaur1985mX0hf36wJOn.dtUWL9WbbBL/Pd2D4ejhkgZy9qZci', 2, 1, 1598964505),
(187, 'Ryan Fitra Fathony', 'ryan.fitrafathony@gmail.com', 'S86', 'default.jpg', '$2y$10$UIxt0.AeQG2vqDtJJaC/o.nDhjRfkhspAah1DWHbLPRhdLOUNNOk6', 2, 1, 1598964620),
(188, 'Fahmi Hasan', 'fahmihasan97@gmail.com', 'S60', 'default.jpg', '$2y$10$jglhiuPex2NV9JtPSBtrQui81S/ZlTUgVcQt4iMnMuF04TUtpY636', 2, 1, 1598964869),
(189, 'Anita Sari', 'anitasari.as250@gmail.com', 'S183', 'default.jpg', '$2y$10$MWPnlOru3SN0h.dCLzzox.DxbYqwYKWIgpVZFdKPj5hgECVdZoexu', 2, 1, 1599017900),
(190, 'artha ilma imanidanantoyo', 'arthailma12345@gmail.com', 'S275', 'default.jpg', '$2y$10$vxcPbiaiyZoQVZ4gNgTVGOaLKlgH7WGZq39X.hggjnW/4MpMZAc3W', 2, 1, 1599020328),
(191, 'Okky Bagus Baitis Tuta', 'okkybagusb@gmail.com', 'S143', 'default.jpg', '$2y$10$LjVIWft0szSHyCX5pKwMNOI5HQ2xssTda3lR9ZQlCart.8LPOulcu', 2, 1, 1599023166),
(192, 'Refly Ilham Syabana', 'reflyilhamsyb@gmail.com', 'S46', 'default.jpg', '$2y$10$VSRVcfbQoBH025zfOhEv7uQ6l6ga5SNqXFLTOAij0.s/bLrqYS.1S', 2, 1, 1599031047),
(193, 'Moh. Amin Fathullah', 'fatonlay08@gmail.com', 'S267', 'default.jpg', '$2y$10$OL70EtpxGmD4pnJIwfmlk.XCmvljGQlh87I46SpOEeLtfTHZQSNNm', 2, 1, 1599032440),
(194, 'Nugroho Febriyanto', 'nugrohofebriyanto15@gmail.com', 'S148', 'default.jpg', '$2y$10$gA0JuyIuXXozGBj7V1as/.320L1pYVwm5bAKZRR//GvC/JYfytR3i', 2, 1, 1599039346),
(195, 'Fuad Hadi Nugroho', 'fhadinugroho@gmail.com', 'S259', 'default.jpg', '$2y$10$NOA8exMLQi.MJduTddnZCu1sTW2EQmjS5wuFPIU48R/Fki/.zzkWi', 2, 1, 1599044440),
(196, 'Faradella Widya Putri', 'faradellawidya@gmail.com', 'S8', 'default.jpg', '$2y$10$ejqM0xBG5.RQqJwkqNG/GeyqKSKGFjyr9i7BeAkBZkNs/NH8Z0Mz2', 2, 1, 1599052425);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(6, 1, 3),
(7, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'Home', 'user', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(5, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(7, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(11, 1, 'List Mahasiswa D3', 'admin/listla', 'fas fa-fw fa-user', 1),
(12, 1, 'List Mahasiswa D4', 'admin/listsi', 'fas fa-fw fa-user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `user_username_1` (`username`),
  ADD KEY `user_usertype_1` (`usertype`),
  ADD KEY `user_email_1` (`email`),
  ADD KEY `user_name_family_1` (`name_family`);

--
-- Indexes for table `tugas_akhir`
--
ALTER TABLE `tugas_akhir`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tugas_akhir`
--
ALTER TABLE `tugas_akhir`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;
--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
