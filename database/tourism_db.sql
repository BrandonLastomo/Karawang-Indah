-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Bulan Mei 2025 pada 00.49
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourism_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `book_list`
--

CREATE TABLE `book_list` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `package_id` int(30) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending,1=confirm, 2=cancelled\r\n',
  `schedule` date DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `book_list`
--

INSERT INTO `book_list` (`id`, `user_id`, `package_id`, `status`, `schedule`, `date_created`) VALUES
(4, 6, 1, 1, '2025-05-06', '2025-05-06 11:28:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `inquiry`
--

CREATE TABLE `inquiry` (
  `id` int(30) NOT NULL,
  `name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `subject` varchar(250) NOT NULL,
  `message` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `inquiry`
--

INSERT INTO `inquiry` (`id`, `name`, `email`, `subject`, `message`, `status`, `date_created`) VALUES
(6, 'asdasd', 'asdasd@asdasd.com', 'asdasd', 'asdasd', 1, '2021-06-19 10:19:27'),
(8, 'Muhammad Sulton', 'mhammadslton46@gmail.com', 'Kenyamanan', 'Tolong lebih ditingkatkan lagi', 1, '2025-05-06 11:35:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `packages`
--

CREATE TABLE `packages` (
  `id` int(30) NOT NULL,
  `title` text DEFAULT NULL,
  `tour_location` text DEFAULT NULL,
  `cost` double NOT NULL,
  `description` text DEFAULT NULL,
  `upload_path` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 =active ,2 = Inactive',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `packages`
--

INSERT INTO `packages` (`id`, `title`, `tour_location`, `cost`, `description`, `upload_path`, `status`, `date_created`) VALUES
(1, 'Gedung Miring Unsika', 'Telukjambe, Karawang', 0, '&lt;p data-start=&quot;122&quot; data-end=&quot;450&quot; class=&quot;&quot;&gt;Berdiri megah di kampus terbaik se-alam semesta yaitu Universitas Singaperbangsa Karawang, gedung ini telah menjadi legenda tersendiri bagi para mahasiswa, khususnya di lingkungan Fasilkom. Setiap kali dibicarakan, ada saja kisah baru yang bermunculan, mulai dari keluhan, lelucon, hingga teori konspirasi yang seolah tak ada habisnya.&lt;/p&gt;&lt;p data-start=&quot;452&quot; data-end=&quot;804&quot; class=&quot;&quot;&gt;Bukan tanpa alasan gedung ini begitu terkenal. Katanya, saat kamu lewat di dekatnya, bukan aroma motivasi yang tercium, melainkan aura korupsi yang begitu kuat. Entah itu sindiran atau kenyataan, yang jelas, gedung ini membawa sensasi berbeda dibanding bangunan kampus lainnya, semacam atmosfer penuh tanda tanya yang sulit diungkapkan dengan kata-kata.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;\r\n\r\n&lt;/p&gt;&lt;p data-start=&quot;806&quot; data-end=&quot;1121&quot; class=&quot;&quot;&gt;Nasib akhir dari gedung ini pun masih jadi misteri. Akan difungsikan, dibongkar, atau terus berdiri sebagai pengingat? Tidak ada yang benar-benar tahu. Mungkin hanya Allah yang tahu jawaban pastinya. Yang jelas, selama ia masih berdiri, mahasiswa Fasilkom akan selalu punya bahan obrolan yang tak lekang oleh waktu.&lt;/p&gt;', 'uploads/package_1', 1, '2021-06-18 10:31:03'),
(7, 'Curug Cigentis', 'Tegalwaru, Karawang', 15000, '&lt;p data-start=&quot;110&quot; data-end=&quot;466&quot; class=&quot;&quot;&gt;Curug Cigentis adalah air terjun dengan ketinggian sekitar 30 meter yang dikelilingi oleh hutan lebat. Tempat ini menawarkan keindahan alam yang asri dan cocok untuk hiking. Udara di sekitar curug terasa sejuk dan segar, membuat siapa pun betah berlama-lama. Suara gemuruh air terjun yang berpadu dengan kicauan burung menciptakan suasana yang menenangkan.&lt;/p&gt;&lt;p data-start=&quot;468&quot; data-end=&quot;881&quot; class=&quot;&quot;&gt;Akses menuju Curug Cigentis cukup menantang, namun pemandangan sepanjang perjalanan membuat segala lelah terbayar lunas. Jalur pendakian yang ditempuh memberikan pengalaman tersendiri bagi para pecinta alam dan petualang. Di beberapa titik, pengunjung bisa beristirahat sambil menikmati panorama hutan tropis yang masih alami. Spot-spot foto pun tersebar di berbagai sudut, cocok untuk mengabadikan momen liburan.&lt;/p&gt;&lt;p&gt;\r\n\r\n&lt;/p&gt;&lt;p data-start=&quot;883&quot; data-end=&quot;1297&quot; class=&quot;&quot;&gt;Fasilitas di sekitar kawasan wisata ini cukup memadai, mulai dari tempat parkir, warung makanan, hingga area bersantai. Pengunjung disarankan datang saat cuaca cerah agar perjalanan lebih nyaman dan aman. Curug Cigentis sangat cocok dikunjungi bersama keluarga, teman, maupun komunitas pecinta alam. Dengan segala pesonanya, tempat ini menjadi salah satu destinasi unggulan di Karawang yang patut untuk dijelajahi.&lt;/p&gt;', 'uploads/package_7', 1, '2021-06-18 11:17:11'),
(8, 'Pantai Tanjung Baru', 'Telukjambe, Karawang', 10000, '&lt;p data-start=&quot;138&quot; data-end=&quot;481&quot; class=&quot;&quot;&gt;Pantai Tanjung Baru menawarkan pemandangan alam berupa pasir putih dan ombak yang tenang. Tempat ini sangat cocok untuk menikmati matahari terbenam dan beraktivitas di tepi laut. Hamparan laut biru yang luas berpadu indah dengan langit senja yang memukau. Suasana yang tenang membuat pantai ini ideal untuk melepas penat dari hiruk-pikuk kota.&lt;/p&gt;&lt;p data-start=&quot;483&quot; data-end=&quot;866&quot; class=&quot;&quot;&gt;Banyak pengunjung datang untuk sekadar berjalan santai di bibir pantai atau bermain pasir bersama keluarga. Beberapa juga memanfaatkan ketenangan ombak untuk berenang atau bersantai di atas ban pelampung. Tersedia juga perahu nelayan yang bisa disewa untuk berkeliling menikmati keindahan laut dari sisi berbeda. Aktivitas memancing pun jadi pilihan menarik bagi wisatawan yang hobi.&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;\r\n\r\n&lt;/p&gt;&lt;p data-start=&quot;868&quot; data-end=&quot;1306&quot; class=&quot;&quot;&gt;Fasilitas yang tersedia di sekitar pantai cukup mendukung kenyamanan wisatawan, seperti warung makanan laut, gazebo, dan area parkir. Meski belum seramai destinasi pantai populer lainnya, Tanjung Baru menawarkan pengalaman alam yang lebih privat dan alami. Akses jalan menuju lokasi sudah cukup baik dan mudah dijangkau dengan kendaraan pribadi. Tak heran, pantai ini menjadi pilihan favorit bagi warga lokal maupun wisatawan luar daerah.&lt;/p&gt;', 'uploads/package_8', 1, '2021-06-18 13:34:08'),
(9, 'Vihara Sian Djin Ku Poh', 'Tegalwaru, Karawang', 0, '&lt;p data-start=&quot;123&quot; data-end=&quot;538&quot; class=&quot;&quot;&gt;Vihara ini merupakan tempat ibadah dengan arsitektur khas Tionghoa dan penuh dengan nilai sejarah serta budaya. Ornamen-ornamen berwarna merah, emas, dan ukiran naga menghiasi hampir setiap sudut bangunan. Suasana tenang dan aroma dupa yang khas menciptakan atmosfer religius yang mendalam. Tak hanya untuk beribadah, vihara ini juga sering dikunjungi oleh wisatawan yang ingin mengenal budaya Tionghoa lebih dekat.&lt;/p&gt;&lt;p data-start=&quot;540&quot; data-end=&quot;979&quot; class=&quot;&quot;&gt;Bangunan vihara ini telah berdiri sejak puluhan tahun lalu dan menjadi saksi perjalanan komunitas Tionghoa di wilayah tersebut. Setiap tahun, vihara ini menjadi pusat perayaan berbagai upacara keagamaan seperti Imlek dan Cap Go Meh. Momen-momen tersebut sering dipenuhi oleh pertunjukan barongsai, doa bersama, dan nuansa kebersamaan yang kental. Tak jarang pula pengunjung ikut merasakan kehangatan tradisi yang tetap lestari hingga kini.&lt;/p&gt;&lt;p&gt;\r\n\r\n&lt;/p&gt;&lt;p data-start=&quot;981&quot; data-end=&quot;1381&quot; class=&quot;&quot;&gt;Selain nilai spiritual, vihara ini juga menjadi daya tarik wisata budaya yang memikat. Banyak pengunjung yang datang untuk mengabadikan keindahan arsitektur dan menikmati suasana yang damai. Area di sekitar vihara pun cukup tertata, dengan fasilitas yang memadai bagi pengunjung. Tempat ini cocok dijadikan destinasi edukatif sekaligus reflektif, baik bagi pencari ketenangan maupun penikmat sejarah.&lt;/p&gt;', 'uploads/package_9', 1, '2025-05-05 23:40:11'),
(10, 'Situ Kamojing', 'Kamojing, Karawang', 10000, '&lt;p data-start=&quot;129&quot; data-end=&quot;498&quot; class=&quot;&quot;&gt;Danau buatan ini dikelilingi oleh pepohonan hijau yang rindang, menciptakan suasana sejuk dan asri. Tempat ini menjadi lokasi sempurna untuk beristirahat dan menikmati keindahan alam yang menenangkan. Banyak pengunjung datang hanya untuk duduk santai, membaca buku, atau sekadar menikmati semilir angin. Suasana damainya cocok untuk melepas penat dari rutinitas harian.&lt;/p&gt;&lt;p data-start=&quot;500&quot; data-end=&quot;879&quot; class=&quot;&quot;&gt;Di pagi dan sore hari, danau ini menjadi tempat favorit untuk jogging atau berjalan kaki santai mengelilingi area sekitarnya. Jalur setapak yang tersedia cukup nyaman dan aman digunakan oleh semua usia. Tak jarang pula terlihat pengunjung yang melakukan piknik kecil bersama keluarga atau teman. Refleksi pepohonan di atas permukaan air menambah kesan tenang dan memanjakan mata.&lt;/p&gt;&lt;p&gt;\r\n\r\n&lt;/p&gt;&lt;p data-start=&quot;881&quot; data-end=&quot;1281&quot; class=&quot;&quot;&gt;Fasilitas umum seperti bangku taman, tempat sampah, dan area parkir turut menunjang kenyamanan pengunjung. Beberapa spot juga cocok dijadikan tempat berfoto dengan latar alam yang indah. Danau ini tidak hanya menjadi ruang terbuka hijau, tapi juga ruang sosial bagi masyarakat sekitar. Cocok dikunjungi kapan saja untuk mencari ketenangan, inspirasi, atau sekadar rehat sejenak dari hiruk pikuk kota.&lt;/p&gt;', 'uploads/package_10', 1, '2025-05-05 23:42:42'),
(11, 'Monumen Kebulatan Tekad Rengasdengklok', 'Rengasdengklok, Karawang', 0, '&lt;p data-start=&quot;132&quot; data-end=&quot;484&quot; class=&quot;&quot;&gt;Monumen sejarah ini merupakan tempat penting dalam perjuangan kemerdekaan Indonesia. Di sinilah para pemuda dengan semangat membara menyuarakan proklamasi dan cita-cita kemerdekaan bangsa. Setiap sudutnya menyimpan cerita tentang perjuangan dan pengorbanan yang tak ternilai. Monumen ini menjadi simbol keberanian dan semangat juang generasi terdahulu.&lt;/p&gt;&lt;p data-start=&quot;486&quot; data-end=&quot;908&quot; class=&quot;&quot;&gt;Bangunan monumen didesain dengan gaya yang kokoh dan penuh makna, dilengkapi prasasti dan relief yang menggambarkan peristiwa penting sejarah. Banyak pelajar dan wisatawan datang untuk belajar dan merenung tentang perjuangan bangsa di masa lalu. Selain menjadi objek wisata edukatif, monumen ini juga sering menjadi lokasi upacara peringatan hari-hari besar nasional. Suasana khidmat terasa kuat saat berada di sekitarnya.&lt;/p&gt;&lt;p&gt;\r\n\r\n&lt;/p&gt;&lt;p data-start=&quot;910&quot; data-end=&quot;1311&quot; class=&quot;&quot;&gt;Area sekitar monumen tertata rapi dengan taman hijau dan fasilitas umum yang memadai. Informasi sejarah tersedia melalui papan keterangan maupun pemandu lokal. Pengunjung bisa berjalan santai sembari menikmati nilai-nilai perjuangan yang tertanam dalam setiap elemen monumen. Tempat ini menjadi pengingat bahwa kemerdekaan yang kita nikmati hari ini lahir dari semangat dan tekad yang tak tergoyahkan.&lt;/p&gt;', 'uploads/package_11', 1, '2025-05-05 23:48:49'),
(12, 'Candi Jiwa', 'Batujaya, Karawang', 10000, '&lt;p data-start=&quot;118&quot; data-end=&quot;495&quot; class=&quot;&quot;&gt;Candi Jiwa adalah situs arkeolog dari masa Kerajaan Tarumanegara yang memiliki nilai sejarah tinggi. Struktur candi yang tersisa mencerminkan kejayaan peradaban masa lampau di tanah Jawa Barat. Tempat ini menjadi saksi bisu perkembangan agama dan budaya Hindu-Buddha pada masanya. Keberadaannya memberikan gambaran jelas tentang kekayaan sejarah yang dimiliki wilayah Karawang.&lt;/p&gt;&lt;p data-start=&quot;497&quot; data-end=&quot;922&quot; class=&quot;&quot;&gt;Candi ini sangat cocok dikunjungi oleh pecinta sejarah dan arkeologi yang ingin melihat langsung peninggalan kuno. Beberapa batuan dan relief yang tersisa masih terjaga dengan cukup baik dan terus dijaga kelestariannya. Kawasan di sekitar candi juga telah ditata agar nyaman dikunjungi, tanpa menghilangkan nuansa aslinya. Para pengunjung juga bisa memperoleh informasi sejarah dari papan penjelas atau pemandu yang tersedia.&lt;/p&gt;&lt;p&gt;\r\n\r\n&lt;/p&gt;&lt;p data-start=&quot;924&quot; data-end=&quot;1317&quot; class=&quot;&quot;&gt;Keheningan yang menyelimuti area candi menambah kesan magis dan sakral saat menyusuri situs ini. Banyak pengunjung memanfaatkan kunjungan ini untuk merenung sekaligus mengapresiasi warisan leluhur. Akses menuju lokasi cukup mudah, baik dengan kendaraan pribadi maupun rombongan edukatif. Candi Jiwa bukan hanya destinasi wisata, tapi juga pintu masuk untuk mengenal sejarah bangsa lebih dalam.&lt;/p&gt;', 'uploads/package_12', 1, '2025-05-05 23:52:07'),
(13, 'Kampung Budaya', 'Telukjambe, Karawang', 15000, '&lt;p data-start=&quot;131&quot; data-end=&quot;532&quot; class=&quot;&quot;&gt;Kampung Budaya Karawang adalah destinasi wisata budaya yang menampilkan seni tradisional, bangunan khas, dan kegiatan budaya lokal. Tempat ini menjadi ruang pelestarian warisan budaya yang hidup di tengah masyarakat modern. Suasana kampung yang asri dipadukan dengan aktivitas seni menjadikan pengalaman berkunjung terasa autentik. Setiap sudutnya menghadirkan nuansa Karawang tempo dulu yang memikat.&lt;/p&gt;&lt;p data-start=&quot;534&quot; data-end=&quot;951&quot; class=&quot;&quot;&gt;Pengunjung dapat menyaksikan berbagai pertunjukan seni seperti tari tradisional, musik angklung, dan wayang golek. Selain itu, tersedia workshop interaktif seperti membuat kerajinan tangan atau belajar menari jaipong. Bangunan-bangunan khas Sunda juga berdiri megah dan terawat, memberikan gambaran nyata tentang arsitektur lokal. Tempat ini sangat cocok untuk edukasi budaya, baik bagi pelajar maupun wisatawan umum.&lt;/p&gt;&lt;p&gt;\r\n\r\n&lt;/p&gt;&lt;p data-start=&quot;953&quot; data-end=&quot;1344&quot; class=&quot;&quot;&gt;Kampung Budaya juga kerap mengadakan festival dan acara budaya yang terbuka untuk umum. Lingkungan yang ramah dan fasilitas yang memadai membuat siapa pun betah berlama-lama. Dengan suasana yang bersahaja, destinasi ini menawarkan ketenangan sekaligus wawasan budaya yang kaya. Kampung Budaya Karawang bukan hanya tempat wisata, tapi juga pusat pelestarian identitas lokal yang membanggakan.&lt;/p&gt;', 'uploads/package_13', 1, '2025-05-05 23:55:14'),
(14, 'Bukit Cinta Karawang', 'Tegalwaru, Karawang', 10000, '&lt;p data-start=&quot;119&quot; data-end=&quot;522&quot; class=&quot;&quot;&gt;Bukit Cinta menawarkan pemandangan alam yang indah dengan udara segar dan panorama hijau yang memanjakan mata. Bukit ini menjadi salah satu spot favorit bagi wisatawan yang ingin menikmati ketenangan dan keindahan alam. Hamparan rumput hijau, pepohonan rindang, dan udara yang sejuk menciptakan suasana yang menyegarkan. Tak heran banyak pengunjung datang untuk melepas penat dan mengisi energi positif.&lt;/p&gt;&lt;p data-start=&quot;524&quot; data-end=&quot;920&quot; class=&quot;&quot;&gt;Tempat ini juga sangat cocok untuk berfoto dengan latar belakang bukit hijau dan tanaman yang asri. Beberapa sudut telah dilengkapi dengan spot foto instagramable yang dibuat menyatu dengan alam. Saat matahari terbit atau terbenam, pemandangannya terlihat semakin memukau dan romantis. Pengalaman menyaksikan lanskap dari ketinggian menjadi daya tarik tersendiri bagi pencinta alam dan fotografi.&lt;/p&gt;&lt;p&gt;\r\n\r\n&lt;/p&gt;&lt;p data-start=&quot;922&quot; data-end=&quot;1335&quot; class=&quot;&quot;&gt;Akses menuju Bukit Cinta cukup mudah dijangkau dan fasilitas dasar seperti tempat duduk serta area parkir tersedia. Suasananya yang tenang menjadikan tempat ini cocok dikunjungi bersama pasangan, keluarga, maupun sendiri. Beberapa pengunjung juga datang untuk berolahraga ringan seperti trekking atau jalan santai. Bukit Cinta adalah destinasi alam yang menyajikan keindahan sekaligus ketenangan dalam satu paket.&lt;/p&gt;', 'uploads/package_14', 1, '2025-05-05 23:59:02'),
(15, 'Kampung Turis', 'Tegalwaru, Karawang', 25000, '&lt;p&gt;Kampung Turis Karawang menawarkan pengalaman wisata yang menyenangkan untuk semua kalangan. Dengan suasana alam yang asri, pengunjung dapat menikmati udara segar dan pemandangan yang menenangkan. Fasilitas waterpark yang luas menjadi daya tarik utama bagi keluarga yang membawa anak-anak. Selain itu, area rekreasi yang lengkap juga menyediakan berbagai aktivitas seru untuk mengisi waktu luang.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Restoran di Kampung Turis Karawang menyajikan berbagai pilihan makanan lezat yang dapat memanjakan lidah. Pengunjung bisa menikmati hidangan khas Jawa Barat maupun masakan Indonesia lainnya yang menggugah selera. Selain itu, desain restoran yang modern dan nyaman menambah kenyamanan saat bersantap bersama keluarga. Bagi yang ingin menginap, villa yang tersedia memberikan pengalaman menginap yang tak kalah menarik dengan fasilitas lengkap.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Tidak hanya cocok untuk liburan keluarga, Kampung Turis Karawang juga menjadi tempat yang ideal untuk acara kumpul-kumpul atau reuni. Area yang luas dapat digunakan untuk berbagai kegiatan seperti outbound atau team building. Kampung ini juga sering dijadikan sebagai tempat destinasi wisata edukasi, terutama untuk anak-anak. Dengan berbagai fasilitas dan pemandangan yang indah, Kampung Turis Karawang menjadi pilihan destinasi wisata yang patut dikunjungi.&lt;/p&gt;', 'uploads/package_15', 1, '2025-05-06 00:05:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rate_review`
--

CREATE TABLE `rate_review` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `package_id` int(30) NOT NULL,
  `rate` int(11) NOT NULL,
  `review` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'KarawangIndah'),
(6, 'short_name', 'KarawangIndah'),
(11, 'logo', 'uploads/1746460380_tugu-padi-icon-perkotaan-karawang_169.jpeg'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1746460380_tugu-padi-icon-perkotaan-karawang_169.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1746456120_43b5819daa8dbb9a50b5aedcd791da99.jpg', NULL, 1, '2025-04-30 14:02:37', '2025-05-05 22:03:13'),
(6, 'Muhammad', 'Sulton', 'sulton1303', '202cb962ac59075b964b07152d234b70', 'uploads/1746507300_43b5819daa8dbb9a50b5aedcd791da99.jpg', NULL, 0, '2025-05-05 21:30:43', '2025-05-06 11:55:03');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `book_list`
--
ALTER TABLE `book_list`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rate_review`
--
ALTER TABLE `rate_review`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `book_list`
--
ALTER TABLE `book_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `rate_review`
--
ALTER TABLE `rate_review`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
