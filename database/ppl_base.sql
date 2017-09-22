/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : ppl_base

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-12-03 12:59:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for beasiswa
-- ----------------------------
DROP TABLE IF EXISTS `beasiswa`;
CREATE TABLE `beasiswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_beasiswa` varchar(255) NOT NULL,
  `target` char(20) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `tanggal_selesai` date NOT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `persyaratan` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of beasiswa
-- ----------------------------
INSERT INTO `beasiswa` VALUES ('1', 'Beasiswa Djraum Plus 2016/2017', 'PT', 'djarum(2).jpg', '2016-11-25', 'ringkasan', '<h4>Persyaratan</h4>\r\n						<p>1. Sedang menempuh Tingkat Pendidikan Strata 1 (S1 Universitas) / Diploma 4 (D4 Politeknik) pada semester IV dari semua disiplin ilmu. </p>\r\n						<p>2. IPK minimum 3.00 sampai dengan semester III. </p>\r\n						<p>3. Dapat mempertahankan IPK minimum 3.00 hingga akhir semester IV. </p>\r\n						<p>4. Aktif mengikuti kegiatan organisasi baik di dalam maupun di luar Kampus. </p>\r\n						<p>5.Tidak sedang menerima beasiswa dari pihak lain. </p>\r\n						<p>6.Mengisi Form Pendaftaran online di website resmi Djarum. </p>\r\n						\r\n							<h4>Administrasi yang harus dipenuhi</h4>\r\n							<p>1.Cetak bentuk PDF dari form pendaftaran online.</P>\r\n							<p>2. Foto ukuran 4 x 6 cm berwarna memakai jas almamater sebanyak 1 lembar.</P>\r\n							<p>3. Foto copy Kartu Mahasiswa.</P>\r\n							<p>4. Transkrip Nilai sampai semester III yang telah dilegalisir.</P>\r\n							<p>5. Surat keterangan aktif organisasi / Foto copy sertifikat kegiatan organisasi yang pernah diikuti / Fotocopy Sertifikat Prestasi yang dimiliki.</P>\r\n							<p>6. Surat keterangan dari kampus (Rektorat atau Fakultas) yang menyatakan bahwa tidak sedang menerima beasiswa dari pihak lain.</P>\r\n							<p></P>\r\n							<p></P>\r\n							<p></P>\r\n							<p></P>\r\n							\r\n							<h4>Jadwal Penting Beasiswa Djarum Plus</h4>\r\n							<p>1. Pendaftaran online pada 11 April s.d 27 Mei</P>\r\n							<p>2. Pengumpulan Syarat Administrasi paling lambat&nbsp;pada&nbsp;27 Mei</P>\r\n							<p>3. Seleksi Berkas Administrasi&nbsp;pada&nbsp;28 Mei&nbsp;s.d&nbsp;5 Juni</P>\r\n							<p>4. Pengumuman Lulus Seleksi Administrasi&nbsp;pada&nbsp;6 Juni&nbsp;s.d&nbsp;4 September</P>\r\n							<p>5. Test Tertulis&nbsp;pada&nbsp;6 Juni&nbsp;s.d&nbsp;4 September</P>\r\n							<p>6. Pengumuman Penerimaan Djarum Beasiswa Plus&nbsp;pada&nbsp;12 September</P>\r\n							<p>7. Masa Aktif : 12 September 2016 s.d 31 Agustus 2017</P>');
INSERT INTO `beasiswa` VALUES ('2', 'Beasiswa BBP dan PPA Terbaru 2016 / 2017', 'PT', 'ppa.jpg', '2016-12-20', 'Beasiswa Program BBP dan PPA Terbaru 2016 - Program beasiswa ini merupakan program pemerintah untuk membantu biaya pendidikan mahasiswa yang memiliki prestasi yang baik dalam bidang akademik maupun mahasiswa yang kurang mampu dari segi ekonomi.', '<p align=\"justify\">\r\n						Beasiswa Program BBP dan PPA Terbaru 2016 - Program beasiswa ini merupakan program pemerintah untuk membantu biaya pendidikan mahasiswa yang memiliki prestasi yang baik dalam bidang akademik maupun mahasiswa yang kurang mampu dari segi ekonomi. Untuk membentuk sebuah sumber daya manusia yang memiliki kualitas dan kuantitas, pemerintah memberikan dukungan berupa beasiswa untuk yang berprestasi dan bantuan untuk yang memiliki ekonomi yang rendah dengan ketentuan dan kriteria yang ada. Kita semua tahu, untuk menempuh pendidikan yang tinggi pasti membutuhkan biaya yang lumayan juga untuk menyelesaikan pendidikan di perguruan tinggi.\r\n						</p>\r\n						<p>\r\n						Untuk menanggulangi terjadinya kemiskinan di bidang pendidikan di negara kita, pemerintah meluncurkan program Bantuan Biaya Pendidikan (BBP) untuk mereka yang memiliki ekonomi yang minim untuk menempuh atau melanjutkan pendidikan di perguruan tinggi. Sedangkan untuk mereka yang berprestasi dan untuk meningkatkan prestasinya tersebut, pemerintah juga meluncurkan program Peningkatan Prestasi Akademik (PPA). Akan tetapi, kedua program tersebut harus memenuhi kriteria persyaratan pemerintah yang akan kami ulas pada bagian selanjutnya.\r\n						</p>\r\n						<h4>Tujuan Beasiswa BPP dan PPA</h4>\r\n						<p> 1. Meningkatkan prestasi mahasiswa penerima baik kurikuler, ko-kurikuler, maupun ekstrakurikuler serta motivasi berprestasi bagi mahasiswa lain.\r\n						</p>\r\n						<p>2. Mengurangi jumlah mahasiswa yang putus kuliah, karena tidak mampu membiayai pendidikan.</p>\r\n						<p>3. Meningkatkan akses dan pemerataan kesempatan belajar di perguruan tinggi.</p>\r\n						<h4>Sasaran Beasiswa BPP dan PPA</h4>\r\n						<p>1. Mahasiswa yang memiliki IPK paling tinggi. </p>\r\n						<p>2. Mahasiswa yang memiliki SKS paling banyak dalam satu angkatan.</P>\r\n						<p>3. Mahasiswa yang memiliki prestasi pada kegiatan ko/ekstra kurikuler (penalaran, minat dan bakat) tingkat nasional dan atau internasional. </P>\r\n						<p>4. Mahasiswa yang memiliki keterbatasan kemampuan ekonomi. </P>\r\n						<h4> Persyaratan Beasiswa BBP dan PPA </h4>\r\n						<p>Diberikan kepada mahasiswa:</P>\r\n						<p>1. Jenjang S1/Diploma IV paling rendah duduk pada semester II dan paling tinggi duduk pada semester VIII. </P>\r\n						<p>2. Diploma III, paling rendah duduk pada semester II dan paling tinggi duduk pada semester VI. </P>\r\n						<p>3. Dapat diberikan mulai semester I apabila mahasiswa memiliki prestasi sangat baik di sekolah khususnya nilai ujian nasional dan nilai rapor kelas X s.d. XII (diperlukan rekomendasi dari Kepala/Sekolah). </P>\r\n						\r\n						<p align=\"justify\">Mahasiswa yang memenuhi persyaratan tersebut di atas, harus mengajukan permohonan tertulis kepada Rektor/Ketua/Direktur atau pejabat perguruan tinggi yang ditunjuk, dengan melampirkan berkas sebagai berikut: </P>\r\n						<p>1. Fotokopi Kartu Tanda Mahasiswa (KTM) dan Kartu Rencana Studi (KRS) atau yang sejenis sebagai bukti mahasiswa aktif.</P>\r\n						<p>2. Fotokopi piagam atau bukti prestasi lainnya (ko-kurikuler dan atau ekstra kurikuler) pada tingkat Nasional maupun Internasional. </P>\r\n						<p>3. Surat pernyataan tidak menerima beasiswa/bantuan biaya pendidikan lain dari sumber APBN/APBD yang diketahui oleh Pimpinan Perguruan Tinggi Bidang Kemahasiswaan.</P>\r\n						<p>4. Rekomendasi dari pimpinan Fakultas/Jurusan. </P>\r\n						<p>5. Fotokopi kartu keluarga.</P>\r\n						<p align=\"justify\">Demikian Info Beasiswa BBP dan PPA yang dapat kami sampaikan. Untuk lebih lengkapnya, silahkan anda mengunjungi situs resmi http://dikti.go.id yang merupakan sumber informasi beasiswa yang kami sampaikan. Mohon maaf apabila terdapat kesalahan dalam penyampaian informasi yang kami sampaikan. Semoga situs Sumber Beasiswa ini dapat bermanfaat untuk anda. Jika berkenan, anda dapat berlangganan email untuk mengetahui update informasi mengenai info beasiswa dari kami. Terimakasih~</P>');
INSERT INTO `beasiswa` VALUES ('3', 'Beasiswa BCA Peduli 2016', 'PT', 'bca.JPG', '2016-12-21', '', '<p align=\"justify\">\r\n						DENGAN TEKAD KUAT TURUT MENCERDASKAN KEHIDUPAN BANGSA\r\n\r\nBCA FINANCE KEMBALI MEMBERIKAN BEASISWA SELAMA KULIAH\r\n\r\nKEPADA 90 MAHASISWA/i BERPRESTASI *.\r\n\r\n*) Maksimal Pemberian Beasiswa Sampai Dengan Semester 8\r\n						</p>\r\n						<h4 align=\"center\">TOTAL BEASISWA 2016 Rp. 1,62 Milyar</h4>\r\n						<p align=\"center\">TAHUN 2015          : Rp. 1,51 Milyar</p>\r\n						<p align=\"center\">  TAHUN 2014          : Rp. 1,29 Milyar</p>\r\n						<p align=\"center\">TAHUN 2013 : Rp. 1,08 Milyar</p>\r\n						<p align=\"center\">      TAHUN 2012          : Rp. 900 Juta</p>\r\n						<p align=\"center\"> TAHUN 2011          : Rp. 567 Juta</p>\r\n						<p align=\"center\">       TAHUN 2010          : Rp. 420 Juta</p>\r\n						<p align=\"center\"> TAHUN 2009          : Rp. 305 Juta</p>\r\n						<p>PERSYARATAN :</p>\r\n						<p>1.       Mahasiswa/i program Strata 1 (S-1)</p>\r\n						<p>2.       Minimal telah/sedang menyelesaikan semester 2</p>\r\n						<p>3.       IPK min (PTN : 3,00 dan PTS : 3,4)</p>\r\n						<p>4.       Tidak sedang menerima beasiswa dari pemberi beasiswa manapun</p>\r\n						<p>5.       Beasiswa ini bebas dari ikatan dinas apapun</p>\r\n						<p>6.       Aktif dalam bergorganisasi</p>\r\n						<p align=\"justify\">7.       Melakukan pendaftaran beasiswa melalui aplikasi online (mengisi data diri di form aplikasi dengan  benar dan dapat dipertanggujawabkan,  jika kedapatan isi formnya tidak sesuai akan langsung di diskualifikasi)</p>\r\n						<p>8.       Tahapan Seleksi :</p>\r\n						<p align=\"justify\"> Tahap I : Penentuan 150 Calon Pemenang Beasiswa 150 calon pemenang yang telah diumumkan wajib  mengirimkan dokumen yang dipersyaratkan (Kartu Mahasiswa, Surat Keterangan tidak mampu, Kartu Keluarga, Rekening Listrik dan Air, Surat Angota Organisasi  atau Surat Keterangan yang ditandatangani Ketua Organisasi).</p>\r\n						<p>Tahap II : Penentuan 90 Pemenang Beasiswa yang berhak menerima Rp.3.000.000,-/Semester</p>\r\n						<p>9.       Proses seleksi dilaksanakan oleh tim seleksi BCA Finance</p>\r\n						<p align=\"justify\">10.    Keputusan hasil penerimaan adalah mutlak & tidak dapat diganggu gugat dan kami tidak menerima surat menyurat dalam bentuk apapun selama proses dan setelah keputusan pemenang</p>\r\n						<p>Terima Kasih,</p>\r\n						<p>Tim Beasiswa BCA Finance 2016</p>');
INSERT INTO `beasiswa` VALUES ('4', 'Beasiswa DATAPRINT 2016', 'PT', 'print.jpg', '2016-12-25', '', '<p align=\"justify\">\r\n						Program beasiswa DataPrint telah memasuki tahun keenam. Setelah sukses mengadakan program beasiswa di tahun 2011 hingga 2015, maka DataPrint kembali membuat program beasiswa bagi penggunanya yang berstatus pelajar dan mahasiswa.  Hingga saat ini lebih dari 1000 beasiswa telah diberikan bagi penggunanya.\r\n						</p>\r\n						\r\n						<p align=\"justify\">Di tahun 2016 sebanyak 500 beasiswa akan diberikan bagi pendaftar yang terseleksi. Program beasiswa dibagi dalam dua periode. Tidak ada sistem kuota berdasarkan daerah dan atau sekolah/perguruan tinggi. Hal ini bertujuan agar beasiswa dapat diterima secara merata bagi seluruh pengguna DataPrint.  Beasiswa terbagi dalam tiga nominal yaitu Rp 250 ribu, Rp 500 ribu dan Rp 1 juta. Dana beasiswa akan diberikan satu kali bagi peserta yang lolos penilaian. Aspek penilaian berdasarkan dari essay, prestasi dan keaktifan peserta. </p>\r\n						<p align=\"justify\">Di tahun 2016 ini  ada hadiah khusus juga loh untuk 3 orang peserta yang paling banyak merekomendasikan program ini ke teman-teman. Jika nama lengkap dan asal sekolah atau kampus kamu tertera di formulir pendaftaran temanmu (nama pemberi rekomendasi), siap-siap deh kamu akan jadi pemenangnya di akhir periode! </p>\r\n						<h4 align=\"center\"> WAKTU PENDAFTARAN </h4>\r\n						<p align=\"center\"> Pendaftaran periode 1 : 27 Januari â€“ 20 Juni 2016</p>\r\n						<p align=\"center\">Pengumuman                : 28 Juni 2016 </p>\r\n						<p align=\"center\"> Pendaftaran periode 2   : 1 Juli â€“ 25 Desember 2016</p>\r\n						<p align=\"center\"> Pengumuman                : 5 Januari 2017</p>\r\n						<h4 align=\"center\"> JUMLAH PENERIMA BEASISWA </h4>\r\n						<p align=\"center\">Periode 1:</p>\r\n						<p align=\"center\">@ Rp 1.000.000 : 20 orang </p>\r\n						<p align=\"center\"> @ Rp 500.000 : 30 oang</p>\r\n						<p align=\"center\"> @ Rp 250.000 : 200 orang</p>\r\n						<p align=\"center\">Periode 2: </p>\r\n						<p align=\"center\">@ Rp 1.000.000 : 20 orang </p>\r\n						<p align=\"center\"> @ Rp 500.000 : 30 oang</p>\r\n						<p align=\"center\"> @ Rp 250.000 : 200 orang</p>');
INSERT INTO `beasiswa` VALUES ('5', 'Beasiswa Prestasi POLMAN ASTRA 2016', 'SMA', 'astra.jpg', '2017-03-10', '', '<h4>Persyaratan Program Beasiswa</h4>\r\n						<p>1. Warga Negara Indonesia, usia maksimal 19 tahun, dibuktikan dengan fotokopi akta kelahiran dan kartu keluarga. </p>\r\n						<p>2. Lulusan SMA/SMK tahun 2017 atau saat ini sedang menempuh kelas XII (dibuktikan dengan surat keterangan siswa aktif tahun ajaran 2016/2017 yang ditandatangani Kepala Sekolah). </p>\r\n						<p>3. Lebih diutamakan siswa SMA jurusan IPA, SMK bidang keahlian Teknologi dan Rekayasa, serta bidang keahlian Teknologi Informasi. </p>\r\n						<p>4. Sehat jasmani (tidak menderita penyakit yang terkait paru-paru, hati dan jantung) dan rohani serta tidak buta warna.  </p>\r\n						<p> Untuk pilihan Konsentrasi Teknik Otomotif (TO) tidak memiliki masalah indra pendengaran.</p>\r\n						<p> Khusus untuk Konsentrasi Teknik Alat Berat (TAB), tidak memiliki masalah indra pendengaran, diutamakan laki-laki, dan memiliki tinggi badan minimum 160 cm.</p>\r\n						<p>5. Nilai rapor semester 1 s/d 4 kelas X dan Xl berada pada rata rata minimal 8,0 (B+) dan tidak ada nilai di bawah 8,0 (B+), untuk mata pelajaran Matematika, Fisika, Bahasa Inggris. </p>\r\n						<p>6. Penghasilan orangtua maksimal Rp 3.000.000,- dibuktikan dengan surat keterangan penghasilan orang tua atau surat keterangan tidak mampu dari pejabat yang berwenang.</p>\r\n						<p>7. Melakukan pendaftaran secara online.</p>\r\n						<p>8. Mengunggah pas foto berwarna (bentuk portrait berpakaian formal) dengan ukuran file maksimum 500KB. </p>\r\n						<p>9. Mempersiapkan dokumen rekening listrik bulan terakhir (dibawa saat seleksi wawancara). </p>\r\n						<p>10. Mempersiapkan dokumen surat keterangan siswa aktif tahun ajaran 2016/2017 (surat diterbitkan bulan Februari 2017 dan dibawa saat seleksi wawancara). </p>\r\n						<p>11. Tidak sedang atau akan mendapat beasiswa dari sumber lain. </p>\r\n						<p> Persyaratan administrasi ini menjadi acuan utama untuk proses selanjutnya. Peserta yang tidak memenuhi persyaratan umum akan digugurkan dari proses seleksi. </p>');
INSERT INTO `beasiswa` VALUES ('6', 'Beasiswa BIDIKMISI 2016', 'SMA', 'bidik.jpg', '2016-12-22', '', '<h4>Persyaratan untuk mendaftar bidikmisi tahun 2016:</h4>\r\n						<p> 1. Siswa SMA/SMK/MA atau bentuk lain yang sederajat yang akan lulus pada tahun 2016; </p>\r\n						<p>2. Lulusan tahun 2015 yang bukan penerima Bidikmisi dan tidak bertentangan dengan ketentuan penerimaan mahasiswa baru di masing- masing perguruan tinggi; </p>\r\n						<p>3. Usia paling tinggi pada saat mendaftar adalah 21 tahun; </p>\r\n						<p>4. Tidak mampu secara ekonomi dengan kriteria: </p>\r\n						<p> a. Siswa penerima Beasiswa Siswa Miskin (BSM) atau Pemegang Kartu Indonesia Pintar (KIP) atau sejenisnya; atau</p>\r\n						<p> b. Pendapatan kotor gabungan orangtua/wali (suami istri) maksimal sebesar Rp 3.000.000,00 per bulan dan atau pendapatan kotor gabungan orangtua/wali dibagi jumlah anggota keluarga maksimal Rp 750.000,00 setiap bulannya.</p>\r\n						<p>5. Pendidikan orang tua/wali setinggi-tingginya S1 (Strata 1) atau Diploma 4; </p>\r\n						<p>6. Memiliki potensi akademik baik berdasarkan rekomendasi obyektif dan akurat dari Kepala Sekolah; </p>\r\n						<p>7. Pendaftar difasilitasi untuk memilih salah satu diantara PTN atau PTS dengan ketentuan: </p>\r\n						<p>a. PTN dengan pilihan seleksi masuk: </p>\r\n						<p>  1) Seleksi Masuk Perguruan Tinggi Negeri (SNMPTN)</p>\r\n						<p>     2) Seleksi Bersama Masuk Perguruan Tinggi Negeri (SBMPTN)</p>\r\n						<p>   3) Seleksi Mandiri PTN</p>\r\n						<p>b. Politeknik, UT, dan ISI </p>\r\n						<p>c. PTS sesuai dengan pilihan seleksi masuk </p>');
INSERT INTO `beasiswa` VALUES ('7', 'Beasiswa Santri Berprestasi 2016', 'PT', 'santri.jpg', '2016-12-30', '', '<h4>Syarat dan Ketentuan Mendaftar</h4>\r\n						<p>1.Pendaftar adalah santri dari pondok pesantren yang telah memiliki Nomor Statistik Pondok Pesantren (NSPP) dan telah terdata di kemenag.go.id dengan data yang telah diisi lengkap. </p>\r\n						<p>2. Calon Peserta PBSB adalah: </p>\r\n						<p>Santri yang bersekolah pada tingkat akhir dan lulus pada tahun 2016 di Madrasah Aliyah (MA) yang berada dinaungan pondok pesantren; atau </p>\r\n						<p>Santri lulusan pesantren muadalah/pesantren salafiyah dan ijazah paket C pada tahun 2015 dan 2016 yang diselenggarakan oleh pondok pesantren, khusus pilihan studi Perguruan Tinggi Keagamaan Islam; </p>\r\n						<p>Santri yang bersekolah pada tingkat akhir dan lulus pada tahun 2016 di MA yang berada dinaungan pondok pesantren, atau Santri lulusan pesantren muadalah/pesantren salafiyah dengan ijazah paket C yang diselenggarakan oleh pondok pesantren, yang hafal (hafidz) minimal 10 juz, khusus bagi pilihan studi pada UIN Maulana Malik Ibrahim Malang. </p>\r\n						<p>3. Kriteria Umum Peserta </p>\r\n						<p> 1)Santri mukim minimal 3 tahun berturut-turut;</p>\r\n						<p>2)Berusia maksimal (per 1 Juli 2016):  </p>\r\n						<p> 20 tahun untuk santri tingkat akhir pada MA (lahir pada tanggal 1 Juli 1996, 2 Juli 1996, dan seterusnya);</p>\r\n						<p> 23 tahun untuk santri lulusan pesantren muadalah/pesantren salafiyah dengan ijazah paket C yang diselenggarakan oleh pondok pesantren(lahir pada tanggal 1 Juli 1993, 2 Juli 1993, dan seterusnya).</p>\r\n						<p>3)Memiliki prestasi akademik yang baik dan akhlaq yang terpuji; </p>\r\n						<p> 4)Sangat diutamakan yang berasal dari keluarga kurang mampu.</p>\r\n						<p>4. Kriteria Khusus: </p>\r\n						<p> Ketentuan untuk pilihan studi pada UIN Maulana Malik Ibrahim Malang:</p>\r\n						<p>1)Santri lulusan Madrasah Aliyah (MA), Pesantren Muadalah, Pesantren Penyelenggara Paket C, yang hafal (hafidz) minimal 10 juz serta wajib mengupayakan serta mempertahankan Hafidz Al-Qurâ€™an 30 Juz pada saat menyelesaikan studi pada UIN Maulana Malik Ibrahim Malang. </p>\r\n						<p> 2)Hafidz Al-Qurâ€™an 30 Juz merupakan persyaratan kelulusan program S1 peserta PBSB pada UIN Maulana Malik Ibrahim Malang.</p>\r\n						</br>\r\n						<p>Bagi Santri yang berminat untuk studi pada UIN Sunan Kalijaga Yogyakarta: </p>\r\n						<p>1)Hafidz Al-Qurâ€™an 10 Juz dan Hafal 100 Hadist merupakan persyaratan kelulusan program S1 peserta PBSB pada UIN Sunan Kalijaga Yogyakarta. </p>\r\n						<p>5. Daftar Pilihan studi beserta ketentuan lebih lanjut sebagaimana pada lampiran Daftar Pilihan Studi Seleksi Calon Peserta PBSB Tahun 2016 </p>\r\n						<p>6. Santri melakukan registrasi secara online melalui pbsb.ditpdpontren.kemenag.go.id. </p>\r\n						<p>7. Santri dapat mengunduh Formulir Registrasi. </p>\r\n						<p>8. Setelah santri lolos seleksi administrasi maka peserta dapat mengunduh kartu peserta Test CBT. </p>\r\n						<p>9. Pada saat pelaksanaan Ujian santri membawa formulir printout dan tanda peserta ujian Test CBT yang ditandatangani oleh peserta, orang tua, dan pimpinan pondok pesantren disertai: </p>\r\n						\r\n						<p>-Formulir Pendaftaran </p>\r\n						<p>-Kartu Peserta CBT (dapat didownload pada tanggal 29 April 2016)</p>\r\n						<p>-Surat Pernyataan Kebenaran Data dan Dokumen</p>\r\n						<p>10. Jumlah peserta seleksi tiap provinsi dibatasi dengan kuota tertentu, apabila jumlah pendaftar melebihi kuota, Kanwil Kemenag Propinsi dapat melakukan kebijakan pembatasan lebih lanjut dengan cara: </p>\r\n						<p>-Memberikan prioritas kepada peserta seleksi yang berasal dari keluarga kurang mampu; dan/atau </p>\r\n						<p>-Membatasi jumlah pendaftar pada masing-masing pesantren berdasarkan urutan dalam Surat Pengajuan Mengikuti Seleksi Calon Peserta PBSB Tahun 2016, dengan memperhatikan pemerataan akses dan kesempatan pada seluruh pesantren di wilayahnya; </p>\r\n						<h4>LEGALISASI ADMINISTRASI</h4>\r\n						<p>Setelah Lulus Test PBSB Kanwil Kemenag Propinsi akan melakukan legalisasi administrasi Peserta lolos seleksi dengan mekanisme: </p>\r\n						<p> 1. Memeriksa validitas data pesantren</p>\r\n						<p> 2. Memeriksa validitas data santri</p>\r\n						<p> 3. Memeriksa ketentuan umur calon peserta seleksi</p>\r\n						<p>4. Memeriksa kesesuaian bidang pilihan studi dengan jurusan di madrasah/sekolah, sesuai ketentuan dalam Daftar Pilihan Studi Seleksi Calon Peserta PBSB Tahun 2016 </p>');

-- ----------------------------
-- Table structure for biodata_pendaftar
-- ----------------------------
DROP TABLE IF EXISTS `biodata_pendaftar`;
CREATE TABLE `biodata_pendaftar` (
  `no_ktp` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` varchar(255) DEFAULT NULL,
  `jk` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `agama` varchar(255) DEFAULT NULL,
  `no_tlp` varchar(255) NOT NULL,
  `universitas` varchar(255) DEFAULT NULL,
  `fakultas` varchar(255) DEFAULT NULL,
  `prodi` varchar(255) DEFAULT NULL,
  KEY `bio_user` (`no_ktp`,`nama`,`jk`,`alamat`,`no_tlp`),
  CONSTRAINT `bio_user` FOREIGN KEY (`no_ktp`, `nama`, `jk`, `alamat`, `no_tlp`) REFERENCES `user` (`no_ktp`, `name`, `sex`, `alamat`, `no_telp`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of biodata_pendaftar
-- ----------------------------
INSERT INTO `biodata_pendaftar` VALUES ('1254768987090001', 'joko roko', 'muse', '10-10-1990', 'Laki-Laki', 'Tidak diketahui', 'Hindu', '098987657432', 'Universitas Negeri Mesa', 'Fakultas Sembunyi', 'S1 Gak Ketahuan');
INSERT INTO `biodata_pendaftar` VALUES ('090909090', 'bagas bagas', 'gogo', '10-10-1990', 'Laki-Laki', 'popopopopo', 'Islam', '08989898989', 'tulungono', 'help', 'remek');
INSERT INTO `biodata_pendaftar` VALUES ('1240535605806', 'trias nur ilmiani', null, null, 'Perempuan', 'Pasuruan', null, '02257654046', null, null, null);

-- ----------------------------
-- Table structure for biodata_pendaftar_kerja
-- ----------------------------
DROP TABLE IF EXISTS `biodata_pendaftar_kerja`;
CREATE TABLE `biodata_pendaftar_kerja` (
  `no_ktp` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` varchar(255) DEFAULT NULL,
  `jk` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `agama` varchar(255) DEFAULT NULL,
  `pend_akhir` varchar(255) DEFAULT NULL,
  `univ` varchar(255) DEFAULT NULL,
  `fakultas` varchar(255) DEFAULT NULL,
  `prodi` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  KEY `user_kerja` (`nama`,`jk`,`no_ktp`,`no_hp`,`alamat`),
  CONSTRAINT `user_kerja` FOREIGN KEY (`nama`, `jk`, `no_ktp`, `no_hp`, `alamat`) REFERENCES `user` (`name`, `sex`, `no_ktp`, `no_telp`, `alamat`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of biodata_pendaftar_kerja
-- ----------------------------
INSERT INTO `biodata_pendaftar_kerja` VALUES ('1240535605806', 'trias nur ilmiani', null, null, 'Perempuan', 'Pasuruan', null, null, null, null, null, '02257654046');

-- ----------------------------
-- Table structure for file_kerja
-- ----------------------------
DROP TABLE IF EXISTS `file_kerja`;
CREATE TABLE `file_kerja` (
  `no_ktp` varchar(255) DEFAULT NULL,
  `ijazah` varchar(255) DEFAULT NULL,
  `nilai` varchar(255) DEFAULT NULL,
  `sertifikat` varchar(255) DEFAULT NULL,
  KEY `file_kerja` (`no_ktp`),
  CONSTRAINT `file_kerja` FOREIGN KEY (`no_ktp`) REFERENCES `user` (`no_ktp`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of file_kerja
-- ----------------------------
INSERT INTO `file_kerja` VALUES ('1240535605806', null, null, null);

-- ----------------------------
-- Table structure for file_nilai
-- ----------------------------
DROP TABLE IF EXISTS `file_nilai`;
CREATE TABLE `file_nilai` (
  `no_ktp` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `nilai` varchar(255) DEFAULT NULL,
  KEY `file_user` (`no_ktp`,`nama`),
  CONSTRAINT `file_user` FOREIGN KEY (`no_ktp`, `nama`) REFERENCES `user` (`no_ktp`, `name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of file_nilai
-- ----------------------------
INSERT INTO `file_nilai` VALUES ('1254768987090001', 'joko roko', null);
INSERT INTO `file_nilai` VALUES ('090909090', 'bagas bagas', null);
INSERT INTO `file_nilai` VALUES ('1240535605806', 'trias nur ilmiani', null);

-- ----------------------------
-- Table structure for indeks_prestasi
-- ----------------------------
DROP TABLE IF EXISTS `indeks_prestasi`;
CREATE TABLE `indeks_prestasi` (
  `no_ktp` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `ips1` varchar(255) DEFAULT NULL,
  `ips2` varchar(255) DEFAULT NULL,
  `ips3` varchar(255) DEFAULT NULL,
  `ips4` varchar(255) DEFAULT NULL,
  `ips5` varchar(255) DEFAULT NULL,
  `ips6` varchar(255) DEFAULT NULL,
  KEY `ip_user` (`no_ktp`,`nama`),
  CONSTRAINT `ip_user` FOREIGN KEY (`no_ktp`, `nama`) REFERENCES `user` (`no_ktp`, `name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of indeks_prestasi
-- ----------------------------
INSERT INTO `indeks_prestasi` VALUES ('1254768987090001', 'joko roko', '3', '4', '4', '4', '4', '4');
INSERT INTO `indeks_prestasi` VALUES ('090909090', 'bagas bagas', '0', '0', '0', '0', '0', '0');
INSERT INTO `indeks_prestasi` VALUES ('1240535605806', 'trias nur ilmiani', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');

-- ----------------------------
-- Table structure for info_ortu
-- ----------------------------
DROP TABLE IF EXISTS `info_ortu`;
CREATE TABLE `info_ortu` (
  `no_ktp` varchar(255) DEFAULT NULL,
  `nama_ayah` varchar(255) DEFAULT NULL,
  `nama_ibu` varchar(255) DEFAULT NULL,
  `kerja_ayah` varchar(255) DEFAULT NULL,
  `kerja_ibu` varchar(255) DEFAULT NULL,
  `gaji_ayah` int(255) DEFAULT NULL,
  `gaji_ibu` int(255) DEFAULT NULL,
  `alamat_ortu` varchar(255) DEFAULT NULL,
  `no_tlp_ortu` varchar(255) DEFAULT NULL,
  `jmlh_tanggungan` tinyint(255) DEFAULT NULL,
  KEY `info_ortu_user` (`no_ktp`),
  KEY `nama_ayah` (`nama_ayah`,`nama_ibu`),
  CONSTRAINT `info_ortu_user` FOREIGN KEY (`no_ktp`) REFERENCES `user` (`no_ktp`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of info_ortu
-- ----------------------------
INSERT INTO `info_ortu` VALUES ('1254768987090001', 'joki', 'jeanyta', 'PNS Golongan I', 'PNS Golongan II', '10000000', '2000000', 'asdasdasd', '090909090909', '1');
INSERT INTO `info_ortu` VALUES ('090909090', null, null, null, null, '0', '0', null, null, '0');
INSERT INTO `info_ortu` VALUES ('1240535605806', null, null, null, null, '0', '0', null, null, '0');

-- ----------------------------
-- Table structure for instansi
-- ----------------------------
DROP TABLE IF EXISTS `instansi`;
CREATE TABLE `instansi` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `instansi` varchar(255) NOT NULL,
  `loker` varchar(255) NOT NULL,
  `beasiswa` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of instansi
-- ----------------------------

-- ----------------------------
-- Table structure for lowker
-- ----------------------------
DROP TABLE IF EXISTS `lowker`;
CREATE TABLE `lowker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lowongan` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `tanggal_selesai` date NOT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `persyaratan` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lowker
-- ----------------------------
INSERT INTO `lowker` VALUES ('1', 'Lowongan Kerja BCA 2016', 'bca2.jpg', '2016-11-30', 'ringkasan', '<p align=\"justify\">Lowongan Kerja Terbaru Bank BCA - Assalamu\'alaikum, Selamat Pagi sedulur semua para pencari Loker (Lowongan Kerja) yang berbahagia. Bagaimana kabar anda pagi hari ini, semoga sekeluarga dalam keadaan sehat selalu. Pada pagi hari ini admin akan berbagi info loker terbaru. Kali ini Lowongan kerja terbaru datang dari dunia Perbankan yaitu : Bank BCA. Yupss Bank BCA adalah salah satu bank di indonesia yang menerapkan prinsip syariah. Bank BCA yang sudah familiar pasti ditelinga anda sekalian. Bahkan para pencari loker mungkin ada juga yang menjadi nasabah disana Hehe. OK Kalau gitu langsung saja saya share info lowongan kerja terbarunya untuk anda. Info lowongan kerja terbaru di Bank BCA dengan kualifikasi sebagai : </p>\r\n						<p align=\"justify\"> Dalam rangka memperluas jaringan bisnis terbaru bulan November 2016 dan untuk memenuhi kebutuhan sumber daya manusia Bank BCA di Lowongan Terbaru posisi : BANYAK POSISI LOWONGAN BANK\r\n\r\n							Pada hari ini bulan November 2016 Bank BCA kembali membuka kesempatan berkarir atau membuka Lowongan Terbaru bulan November 2016 untuk lulusan terbaru dengan kualifikasi sebagai berikut :</p>\r\n						<p>Posisi Lowongan Kerja Bank BCA :</p>\r\n						<p>1. Program Junior Business Analyst (IT)</p>\r\n						<p>Gambaran pekerjaan :</p>\r\n						<p align=\"justify\">Semakin beragamnya kebutuhan nasabah membuat BCA harus terus beradaptasi dengan perubahan yang ada. Salah satu pembaharuan yang secara terus menerus dilakukan oleh kami adalah dalam hal teknologi. Berbagai aplikasi baik untuk penggunaan internal maupun eksternal perusahaan terus dikembangkan untuk memberikan pelayanan yang lebih baik lagi kepada nasabah. Dalam pengembangan berbagai aplikasi inilah BCA membutuhkan Junior Business Analyst yang handal.</p>\r\n						<p align=\"justify\">Dalam pengembangan aplikasi / sistem, seorang Junior Business Analyst berperan mulai dari menggali kebutuhan unit kerja untuk mendapatkan alternatif solusi yang tepat, melakukan pengujian terhadap aplikasi/sistem yang dikembangkan, sampai dengan mendampingi unit kerja dalam proses pengembangan, merancang kebijakan, prosedur dan user requirement sesuai kebutuhan bisnis dan user. Junior Business Analyst di BCA juga akan melakukan pemantauan terhadap project yang sedang berjalan serta melakukan sosialisasi secara internal perusahaan mengenai sistem / aplikasi yang telah dikembangkan tersebut.</p>\r\n						<p align=\"justify\">Melalui masa pelatihan selama 1 tahun, BCA yakin akan terus dapat melayani kebutuhan nasabah secara optimal. Lulusan Program Junior Business Analyst akan diangkat langsung menjadi karyawan tetap di kantor cabang BCA.  Selama pelatihan, peserta akan mendapatkan uang saku, jaminan kesehatan, tunjangan hari raya, tunjangan akhir tahun dan tentunya pelatihan yang berkualitas dari BCA.</p>\r\n						<p>Persyaratan Loker Bank BCA :</p>\r\n						<p>-Lulusan S1 dengan IPK minimal 3.00 (skala 4.00)</p>\r\n						<p>-Memiliki latar belakang pendidikan Sistem Informasi / Teknik Informatika / Komputerisasi Akuntansi / Teknik Industri</p>\r\n						<p>-Usia maksimal 25 tahun</p>\r\n						<p>-Memiliki minat di Pengembangan Sistem atau Produk</p>\r\n						<p>-Penempatan di Kantor Pusat (Jakarta)</p>\r\n						<p>-Bersedia tidak menikah selama 1 (satu) tahun pendidikan</p>\r\n						<p>-Bersedia menjalani ikatan dinas setelah pendidikan</p>\r\n						<p>Tahapan Seleksi :</p>\r\n						<p>Seleksi Administrasi, Psikotes, Wawancara Rekrutmen, Wawancara User, Tes Kesehatan</p>\r\n						<p> 2. IT Trainee</p>\r\n						<p> Gambaran Program :</p>\r\n						<p>Perkembangan teknologi yang kian pesat merupakan salah satu tantangan yang harus dihadapi oleh semua perusahaan di Indonesia, termasuk BCA. Menjawab tantangan ini, BCA terus mengedepankan inovasi agar dapat senantiasa menjadi bank yang dapat diandalkan oleh masyarakat. Inovasi yang dilakukan BCA selama ini membutuhkan dukungan dari semua pihak termasuk bagian IT.</p>\r\n						<p>Untuk mempersiapkan tenaga profesional di bidang IT, BCA secara spesifik merancang sebuah program bagi lulusan Ilmu Komputer yang disebut sebagai IT Trainee. Peserta IT Trainee akan mengikuti pelatihan selama 6 (enam) bulan di BCA. Lulusan program ini akan diangkat langsung menjadi karyawan tetap dan ditempatkan di Divisi IT BCA.  Selama pelatihan, peserta akan mendapatkan uang saku, jaminan kesehatan, tunjangan hari raya, tunjangan akhir tahun dan tentunya pelatihan yang berkualitas dari BCA.</p>\r\n						<p>Persyaratan Loker Bank BCA :</p>\r\n						<p>-Lulusan S1 dengan IPK minimal 3,00 (Strata 1) dan 3,25 (Strata 2)</p>\r\n						<p>-Memiliki latar belakang pendidikan atau pekerjaan di bidang komputer</p>\r\n						<p>-Usia maks. 25 tahun (Strata 1) dan 27 tahun (Strata 2)</p>\r\n						<p>-Penempatan di Kantor Pusat (Jakarta)</p>\r\n						<p>-Bersedia tidak menikah selama 1 (satu) tahun pendidikan</p>\r\n						<p>-Bersedia menjalani ikatan dinas setelah pendidikan</p>\r\n						<p> 3. BCA Banker Program</p>\r\n						<p>Gambaran Program :</p>\r\n						<p>Menjadi bank swasta terbesar di Indonesia merupakan suatu pencapaian dan sekaligus juga tantangan bagi BCA untuk terus mempertahankan posisinya. Tentunya dibutuhkan insan-insan muda yang potensial dan kreatif untuk tetap mempertahankan kesuksesan dan menjawab tantangan yang ada. Ingin ikut berperan serta dan mengambil bagian dalam kesuksesan tersebut?</p>\r\n						<p>BCA membuka kesempatan bagi Anda untuk bergabung dalam Banker Program yang bertujuan membentuk Pemimpin - Pemimpin Muda BCA yang berkualitas serta berkarakter untuk membangun BCA masa depan. Melalui program selama kurang lebih 3 tahun peserta akan dibekali dengan berbagai pengetahuan Perbankan yang menyeluruh, pengalaman on the job training di berbagai unit kerja di BCA, serta kesempatan untuk terlibat langsung dalam menangani suatu proyek.</p>\r\n						<p> Kesempatan ini terbuka bagi Anda yang berpengalaman (maksimal 2 tahun), lulusan baru ataupun mahasiswa tingkat akhir yang berprestasi dalam bidang akademik maupun non akademik, serta aktif dalam kegiatan organisasi.</p>\r\n						<p>Persyaratan Loker Bank BCA :</p>\r\n						<p>-Mempunyai minat yang tinggi untuk mengembangkan diri di dunia Perbankan</p>\r\n						<p>-Proaktif dan memiliki inisiatif yang tinggi</p>\r\n						<p>-Mempunyai dorongan untuk selalu meningkatkan diri</p>\r\n						<p>-Menyukai tantangan</p>\r\n						<p>-Lulusan S1 atau S2 dari universitas yang terkemuka di dalam ataupun luar negeri</p>\r\n						<p>-Lulusan baru : IPK minimal 3.50 (S1) dan 3.60 (S2); berprestasi & aktif organisasi (akademis/non akademis)</p>\r\n						<p>-Pengalaman : Pengalaman maksimal 2 tahun, dengan IPK minimal 3.25 (S1) / 3.50 (S2)</p>\r\n						<p>-Usia maksimal 25 tahun (S1), dan 27 tahun (S2)</p>\r\n						<p>-Belum menikah</p>\r\n						<p>Catatan :</p>\r\n						<p>Lowongan Kerja terbaru Bank BCA ini ditutup pada tanggal : 30 November 2016\r\n</p>');
INSERT INTO `lowker` VALUES ('2', 'Lowongan Kerja BRI 2016', 'bri.jpg', '2016-11-29', '', '<p align=\"justify\">Bank Rakyat Indonesia (BRI) merupakan bank terbesar milik pemerintah Indonesia. Sejak awal pembentukannya Bank Rakyat Indonesia (BRI) didirikan di Purwokerto, provinsi Jawa Tengah oleh Raden Bei Aria Wirjaatmadja dengan nama De Poerwokertosche Hulp en Spaarbank der Inlandsche Hoofden atau â€œBank Bantuan dan Simpanan Milik Kaum Priyayi Purwokertoâ€, sebagai suatu lembaga keuangan yang melayani orang-orang berkebangsaan Indonesia (pribumi). Lembaga tersebut berdiri tanggal 16 Desember 1895, yang kemudian dijadikan sebagai hari kelahiran Bank BRI. Sampai saat ini Bank Rakyat Indonesia (Persero) yang didirikan sejak tahun 1895 tetap konsisten memfokuskan pada pelayanan kepada masyarakat kecil, diantaranya berupa dengan memberikan fasilitas kredit kepada golongan pengusaha kecil pelayanan tersebut antara lain berupa dengan perkembangan penyaluran Kredit Usaha kecil kepada masyarakat. Penyaluran tersebut semenjak tahun 1994 sebesar Rp. 6.419,8 milyar yang meningkat menjadi Rp. 8.231,1 milyar pada tahun 1995 dan pada tahun 1999 sampai dengan bulan September sebesar Rp. 20.466 milyar.</p>\r\n						<p align=\"justify\">Bank BRI pada seiring dengan perkembangan dunia perbankan yang semakin pesat dengan demikian sampai saat ini Bank Rakyat Indonesia mempunyai unit kerja yang berjumlah 4.447 buah, yang terdiri dari 1 Kantor Pusat BRI, 12 Kantor Wilayah, 12 Kantor Inspeksi /SPI, 170 Kantor Cabang (dalam negeri), 145 Kantor Cabang Pembantu, 1 Kantor Cabang Khusus, 1 New York Agency, 1 Caymand Island Agency, 1 Kantor Perwakilan Hongkong, 40 Kantor Kas Bayar, 6 Kantor Mobil Bank, 193 P.POINT, 3.705 BRI UNIT dan 357 Pos Pelayanan Desa. Pada 19 Januari 2013, BRI juga meluncurkan sistem e-Tax, yaitu layanan penerimaan pajak daerah secara online melalui layanan cash management.</p>\r\n						<p>Alamat kantor pusat :</p>\r\n						<p>PT. Bank Rakyat Indonesia (Persero) Tbk.</p>\r\n						<p>Gedung BRI 1</p>\r\n						<p>Jl. Jenderal Sudirman Kav.44-46</p>\r\n						<p>Jakarta 10210</p>\r\n						<p>Indonesia</p>\r\n						<p>Tlp. : (62-21) 2510244,</p>\r\n						<p>Fax. : (62-21) 2500065,</p>\r\n						<p>Kemudian visi dan misi yang melandasi dalam kegiatan bisnis perusahaan untuk menggapai masa depan yang lebih baik di setiap lini operasi bank BRI dijelaskan sebagai berikut ini :</p>\r\n						<p><u>Visi</u></p>\r\n						<p>Menjadi bank komersial terkemuka yang selalu mengutamakan kepuasan nasabah.</p>\r\n						<p><u>Misi</u></p>\r\n						<p align=\"justify\">-Melakukan kegiatan perbankan yang terbaik dengan mengutamakan pelayanan kepada usaha mikro, kecil dan menengah untuk menunjang peningkatan ekonomi masyarakat.</p>\r\n						<p align=\"justify\">-Memberikan pelayanan prima kepada nasabah melalui jaringan kerja yang tersebar luas dan didukung oleh sumber daya manusia yang profesional dan teknologi informasi yang handal dengan melaksanakan manajemen risiko serta praktek Good Corporate Governance (GCG) yang sangat baik.</p>\r\n						<p align=\"justify\">-Memberikan keuntungan dan manfaat yang optimal kepada pihak-pihak yang berkepentingan (stakeholders).</p>\r\n						<p align=\"justify\">Dalam mencapai dan mewujudkan tujuan yang telah ditetapkan dalam visi dan misi perusahaan selanjutnya dalam bulan Oktober tahun 2016 ini Bank BRI kembali membuka lowongan kerja terbaru Bank BRI bagi para pencari kerja yang baru lulus ataupun yang telah memiliki pengalaman kerja untuk mengisi jabatan pekerjaan dalam jabatan lowongan yang tertera dibawah ini, bagi pencari kerja yang berminat harap memperhatikan dengan seksama requirement atau persyaratan yang dibutuhkan pada setiap jabatan atau dalam jabatan yang dibutuhkan demi memperlancar dalam proses rekrutmen tenaga kerja. Adapun dibawah ini adalah dalam jabatan pada peluang kerja kali ini dibuka oleh pihak perusahaan dengan kualifikasi sebagai berikut.</p>\r\n						<p><u>Lowongan Bank BRI Posisi :</u></p>\r\n						<h4>PROGRAM PENGEMBANG STAFF(PPS)BRI</h4>\r\n						<p><u>Persyaratan Pencari Kerja</u></p>\r\n						<p>-Pendidikan min. S1 atau S2</p>\r\n						<p>-Berasal dari universitas dengan akreditasi A atau B</p>\r\n						<p>-Untuk PPS UMUM berasal dari jurusan :</p>\r\n						<p>Ekonomi</p>\r\n						<p>Hukum</p>\r\n						<p>Teknik</p>\r\n						<p>Teknologi Pertanian</p>\r\n						<p>Psikologi</p>\r\n						<p>Pertanian</p>\r\n						<p>Peternakan</p>\r\n						<p>Kehutanan</p>\r\n						<p>Fisipol ( hanya untuk jurusan hub. internasional, ilmu komunikasi, administrais fiskal dan administrasi negara )</p>\r\n						<p>MIPA ( hanya untuk jurusan matematika dan statistika )</p>\r\n						<p>-Untuk PPS IT berasal dari jurusan :</p>\r\n						<p>Ilmu komputer</p>\r\n						<p>Teknik Informatika</p>\r\n						<p>Teknik Elektro</p>\r\n						<p>Teknik Elektro Komunikasi</p>\r\n						<p>Teknologi Informasi</p>\r\n						<p>-IPK :</p>\r\n						<p>Untuk S1 min. 3.00</p>\r\n						<p>Untuk S2 min. 3.25 dengan ketentukan IPK saat S1 min. 300</p>\r\n						<p>-Usia :</p>\r\n						<p>Untuk S1 max. 27 tahun</p>\r\n						<p>Untuk S2 max. 30 tahun</p>\r\n						<p>-Diprioritaskan bagi yang belum mendaftar sebagai peserta PPS BRI</p>\r\n						<p>-Bersedia mengikuti seluruh tahapan seleksi</p>\r\n						<p>-Belum menikah dan bersedia tidak menikah sampai dengan 1 (dtau) tahun sejak dianggkat sebagai pekerja tetap BRI</p>\r\n						<p>-Bersedia ditempatkan diseluruh unit kerja BRP di wilayah Indonesia dan luar negeri</p>\r\n						<p>-Bersedia menandatangani surat perjanjuan dengan BRI apabila dinyatakan diterima sebagai peserta PPS BRI dengan menjalani ikatan dinas selama 5 (lima) tahun sejak diangkat pekerja tetap</p>');
INSERT INTO `lowker` VALUES ('3', 'Lowongan Kerja PT Honda 2016', 'honda.jpg', '2016-11-26', '', '<p align=\"justify\">PT Honda Prospect Motor atau PT HPM adalah agen tunggal pemegang merek (ATPM) sekaligus perakitan mobil Honda dan komponennya di Indonesia. Bentuk perusahaan-nya adalah joint venture antara PT Prospect Motor dengan Honda Motor, Co., Ltd. dari Jepang. Dalam menjalankan bisnis utamanya di bidang otomotif, Honda Prospect Motor memiliki kantor pusat yang terletak di Jl. Gaya Motor I (sunter 2), Jakarta Utara. Sementara itu, proses manufaktur dilangsungkan di Honda Factory, Jl. Mitra Utara II, Kawasan Industri Mitrakarawang (KIM), Jawa Barat. Produk yang dihasilkan meliputi tiga variant mobil Honda, yaitu Jazz, Freed dan CR-V. Selain itu Honda Prospect Motor juga melakukan impor jenis mobil Honda yang lain seperti Odyssey, Civic, Accord, City dari Malaysia dan Singapura.</p>\r\n						<p align=\"justify\">PT Honda Prospect Motor pada tahun 2013 melalui induk perusahaannya Honda Motor Co., Ltd. mengumumkan efektivitas dari teknologi yang dikembangkannya akan meminimalisir kemacetan lalu lintas di jalan umum. Teknologi ini dikembangkan melalui uji coba yang salah satunya dilakukan pada periode September 2012 sampai Februari 2013 di ruas tol Ulujami â€“ Pondok Ranji, Jakarta yang dioperasikan oleh PT Jalantol Lingkarluar Jakarta (JLJ), anak perusahaan dari PT Jasa Marga, Tbk. Selain dapat mencegah kemacetan di jalan umum, teknologi yang diterapkan pada smartphone ini diklaim mampu meningkatkan efisiensi bahan bakar hingga lebih dari 20 persen.</p>\r\n						<p>Alamat perusahaan :</p>\r\n						<h4>PT Honda Prospect Motor</h4>\r\n						<p>Head Office :</p>\r\n						<p>Jl. Gaya Motor I Sunter II,</p>\r\n						<p>Jakarta Utara 14330, Indonesia</p>\r\n						<p>Telp : 021 6510403</p>\r\n						<p>Fax : 021 6512487</p>\r\n						<p>Factory :</p>\r\n						<p>Jl. Mitra Utara II Kawasan Mitra Industri Mitrakarawang,</p>\r\n						<p>Jawa Barat, Indonesia</p>\r\n						<p>Telp : 0267440777</p>\r\n						<p>Fax : 02674405</p>\r\n						<p align=\"justify\">Dalam mencapai dan mewujudkan tujuan yang telah ditetapkan dalam visi dan misi perusahaan selanjutnya dalam bulan November tahun 2016 ini PT Honda Prospect Motor kembali menyediakan lowongan kerja terbaru PT Honda Prospect Motor bagi para pencari kerja yang baru lulus ataupun yang telah memiliki pengalaman kerja untuk mengisi jabatan pekerjaan dalam dalam jabatan lowongan yang tertera dibawah ini, bagi pencari kerja yang berminat harap memperhatikan dengan seksama requirement atau persyaratan yang dibutuhkan pada setiap jabatan atau dalam jabatan yang dibutuhkan demi memperlancar dalam proses rekrutmen tenaga kerja. Adapun dibawah ini adalah dalam jabatan lowongan jabatan pada peluang kali ini dibuka oleh pihak perusahaan dengan kualifikasi sebagai berikut.</p>\r\n						<p>Lowongan PT Honda Prospect Motor Posisi :</p>\r\n						<h4>WARRANTY STAFF</h4>\r\n						<p><u>Persyaratan Pencari Kerja:</u></p>\r\n						<p>-Perempuan</p>\r\n						<p>-Pendidikan min.D3</p>\r\n						<p>-Berasal dari Jurusan:</p>\r\n						<p>Manajemen</p>\r\n						<p>Administrasi Perkantoran</p>\r\n						<p>Akuntansi</p>\r\n						<p>-Komunikatif, serta memiliki kemampu ananalisa yang baik</p>\r\n						<p>-Bersedia ditempatkan di Sunter, Jakarta Utara</p>\r\n						<h4>DEALER SERVICE SKILL DEVELOPMENT STAFF</h4>\r\n						<p><u>Persyaratan Pencari Kerja:</u></p>\r\n						<p>-Laki-laki</p>\r\n						<p>-Pendidikan min. D3 atau S1</p>\r\n						<p>-Berasal dari Jurusan:</p>\r\n						<p>Teknik Mesin</p>\r\n						<p>Teknik Otomotif</p>\r\n						<p>Teknik Elektro</p>\r\n						<p>Teknik Mesin</p>\r\n						<p>-Dapat mengendarai mobil dan memiliki SIM A</p>\r\n						<p>-Lebih disukai apabila menguasai Auto CAD/ Catia</p>\r\n						<p>-Mampu melakukan presentasi dengan baik dan menarik</p>\r\n						<p>-Komunikatif dan memiliki penampilan yang menarik</p>\r\n						<p>-Bersedia ditempatkan di Sunter, Jakarta Utara</p>\r\n						<h4>PART â€“ LOGISTIC STAFF</h4>\r\n						<p><u>Persyaratan Pencari Kerja :</u></p>\r\n						<p>-Laki-laki</p>\r\n						<p>-Pendidikan min. S1 dari jurusan Teknik Industri</p>\r\n						<p>-Lebih disukai apabila dapat mengendarai mobil dan memiliki SIM A</p>\r\n						<p>-Bersedia ditempatkan di Karawang, Jawa Barat</p>\r\n						<h4>PRODUCTION STAFF</h4>\r\n						<p><u>Persyaratan Pencari Kerja:</u></p>\r\n						<p>-Laki-laki / Perempuan</p>\r\n						<p>-Pendidikan min. S1</p>\r\n						<p>-Berasal dari jurusan :</p>\r\n						<p>Teknik Industri</p>\r\n						<p>Teknik Mesin</p>\r\n						<p>Teknik Elektro</p>\r\n						<p>Teknik Fisika</p>\r\n						<p>-Lebih disukai apabila menguasai AutoCAD/ Catia</p>\r\n						<p>-Memiliki kemampuan analisa yang baik</p>\r\n						<p>-Disiplin, tegas dan dapat memimpin</p>\r\n						<p>-Bersedia ditempatkan di Karawang, Jawa Barat dan bekerja dengan sistem kerja shift</p>\r\n						<h4>PURCHASING COST STAFF</h4>\r\n						<p><u>Persyaratan Pencari Kerja:</u></p>\r\n						<p>-Usia max. 27 tahun</p>\r\n						<p>-IPK min. 3.00</p>\r\n						<p>-Laki-laki</p>\r\n						<p>-Pendidikan min. S1 dari jurusan Statistik Industri</p>\r\n						<p>-Memiliki kemampuan analisa yang baik</p>\r\n						<p>-Diharuskan memiliki kemampuan berbahasa Inggris secara aktif</p>\r\n						<p>-Bersedia ditempatkan di Karawang, Jawa Barat</p>\r\n						<p>\r\nPendaftaran paling lambat pada : Sabtu, 26 November 2016 </p>');
INSERT INTO `lowker` VALUES ('4', 'Lowongan Kerja Perusahaan Nestle 2016', 'nesle.jpg', '2016-12-21', '', '<p align=\"justify\">PT Nestle atau Nestle Indonesia merupakan perusahaan yang bergerak dalam bidang makanan, perusahaan ini adalah anak perusahaan Nestle SA, perusahaan yang terdepan dalam bidang gizi, kesehatan dan keafiatan, yang berkantor pusat di Vevey, Swiss. Nestle SA didirikan lebih dari 140 tahun lalu oleh Henri Nestle, seorang ahli farmasi yang berhasil meramu bubur bayi guna membantu seorang ibu menyelamatkan bayinya sangat sakit dan tidak mampu menerima air susu ibu. Nestle telah beroperasi di Indonesia sejak tahun 1971, dan pada saat ini kami mempekerjakan lebih dari 2.600 karyawan untuk menghasilkan beragam produk Nestle di tiga pabrik : Pabrik Kejayan, Pasuruan, Jawa Timur untuk mengolah produk susu seperti Dancow, Bear Brand, dan Nestle Dancow Ideal. Pabrik Panjang di Lampung untuk mengolah kopi instan Nescafe serta Pabrik Cikupa di Banten.</p>\r\n						<p align=\"justify\">PT Nestle pada masa sekarang ini sedang dibangun pabrik ke-empat di Karawang yang direncanakan akan beroperasi pada tahun 2013 untuk memproduksi Dancow, Milo, dan bubur bayi Nestle Cerelac. Moto Nestle â€œGood Food, Good Lifeâ€ menggambarkan komitmen perusahaan yang berkesinambungan untuk mengkombinasikan ilmu dan teknologi guna menyediakan produk-produk yang mampu memenuhi kebutuhan dasar manusia akan makanan dan minuman bergizi, serta aman untuk dikonsumsi serta lezat rasanya.</p>\r\n						<p>Alamat kantor perusahaan :</p>\r\n						<h4>PT Nestle Indonesia</h4>\r\n						<p>Perkantoran Hijau Arkadia Gedung B</p>\r\n						<p>Jl. TB. Simatupang Kav. 88 Jakarta Selatan 12520</p>\r\n						<p>Tel: +62 21 7883 6000</p>\r\n						<p>Fax: +62 21 7883 6001</p>\r\n						<p align=\"justify\">Dalam mencapai dan mewujudkan tujuan yang telah ditetapkan dalam visi dan misi perusahaan selanjutnya dalam bulan September tahun 2016 ini PT Nestle kembali membuka lowongan kerja terbaru PT Nestle bagi para pencari kerja yang baru lulus ataupun yang telah memiliki pengalaman kerja untuk mengisi jabatan pekerjaan dalam dalam jabatan lowongan yang tertera dibawah ini, bagi pencari kerja yang berminat harap memperhatikan dengan seksama requirement atau persyaratan yang dibutuhkan pada setiap jabatan atau dalam jabatan yang dibutuhkan demi memperlancar dalam proses rekrutmen tenaga kerja. Adapun dibawah ini adalah dalam jabatan lowongan jabatan pada peluang kerja kali ini dibuka oleh pihak perusahaan kualifikasi sebagai berikut.\r\n</p>\r\n						<p><u> Lowongan PT Nestle Posisi :</u></p>\r\n						<h4>MEDICAL DELEGATE TRAINEE</h4>\r\n						<p><u>Persyaratan Pencari Kerja </u></p>\r\n						<p>-Pendidikan min. S1 Gizi, Ilmu Pangan & Tech, Pertanian, Farmasi, Biologi / Fisika / Matematika</p>\r\n						<p>-Nilai IPK min. 3.00</p>\r\n						<p>-Mahir berbahasa Inggris lisan dan tertulis</p>\r\n						<p>-Memiliki keterampilan interpersonal & komunikasi yang baik</p>\r\n						<p>-Bersedia ditugaskan di mana saja di Indonesia</p>');

-- ----------------------------
-- Table structure for organisasi
-- ----------------------------
DROP TABLE IF EXISTS `organisasi`;
CREATE TABLE `organisasi` (
  `no_ktp` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `nomor_sk` varchar(255) DEFAULT NULL,
  `nama_orga` varchar(255) DEFAULT NULL,
  `tahun` varchar(255) DEFAULT NULL,
  KEY `orga_user` (`no_ktp`,`nama`),
  CONSTRAINT `orga_user` FOREIGN KEY (`no_ktp`, `nama`) REFERENCES `user` (`no_ktp`, `name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of organisasi
-- ----------------------------
INSERT INTO `organisasi` VALUES ('1254768987090001', 'joko roko', 'asd', 'sscreat', '123/24/9/aaa', '1999');
INSERT INTO `organisasi` VALUES ('090909090', 'bagas bagas', null, null, null, null);
INSERT INTO `organisasi` VALUES ('1240535605806', 'trias nur ilmiani', null, null, null, null);

-- ----------------------------
-- Table structure for prestasi_kejur
-- ----------------------------
DROP TABLE IF EXISTS `prestasi_kejur`;
CREATE TABLE `prestasi_kejur` (
  `no_ktp` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `juara` varchar(255) DEFAULT NULL,
  `tahun` varchar(255) DEFAULT NULL,
  `kegiatan` varchar(255) DEFAULT NULL,
  `tingkat` varchar(255) DEFAULT NULL,
  KEY `prestasi_user` (`no_ktp`,`nama`),
  CONSTRAINT `prestasi_user` FOREIGN KEY (`no_ktp`, `nama`) REFERENCES `user` (`no_ktp`, `name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of prestasi_kejur
-- ----------------------------
INSERT INTO `prestasi_kejur` VALUES ('1254768987090001', 'joko roko', '', '', '', '');
INSERT INTO `prestasi_kejur` VALUES ('090909090', 'bagas bagas', null, null, null, null);
INSERT INTO `prestasi_kejur` VALUES ('1240535605806', 'trias nur ilmiani', null, null, null, null);

-- ----------------------------
-- Table structure for progres_data
-- ----------------------------
DROP TABLE IF EXISTS `progres_data`;
CREATE TABLE `progres_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_ktp` varchar(255) NOT NULL,
  `kerja` varchar(255) NOT NULL,
  `progres_kerja` varchar(4) DEFAULT NULL,
  `beasiswa` varchar(255) NOT NULL,
  `progres_beasiswa` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_pro` (`no_ktp`),
  CONSTRAINT `user_pro` FOREIGN KEY (`no_ktp`) REFERENCES `user` (`no_ktp`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of progres_data
-- ----------------------------
INSERT INTO `progres_data` VALUES ('7', '1254768987090001', 'no', '0000', 'no', '30');
INSERT INTO `progres_data` VALUES ('8', '090909090', 'no', '0000', 'no', '0000');
INSERT INTO `progres_data` VALUES ('9', '1240535605806', 'no', '0', 'no', '0');

-- ----------------------------
-- Table structure for tanggungan_wali
-- ----------------------------
DROP TABLE IF EXISTS `tanggungan_wali`;
CREATE TABLE `tanggungan_wali` (
  `no_ktp` varchar(255) DEFAULT NULL,
  `nama_user` varchar(255) DEFAULT NULL,
  `nama_ayah` varchar(255) DEFAULT NULL,
  `nama_ibu` varchar(255) DEFAULT NULL,
  `nama_tanggung` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` varchar(255) DEFAULT NULL,
  `kerja_sekolah` varchar(255) DEFAULT NULL,
  `hub_keluarga` varchar(255) DEFAULT NULL,
  KEY `tg_wali_user` (`no_ktp`,`nama_user`),
  KEY `namaortu` (`nama_ayah`,`nama_ibu`),
  CONSTRAINT `namaortu` FOREIGN KEY (`nama_ayah`, `nama_ibu`) REFERENCES `info_ortu` (`nama_ayah`, `nama_ibu`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tg_wali_user` FOREIGN KEY (`no_ktp`, `nama_user`) REFERENCES `user` (`no_ktp`, `name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tanggungan_wali
-- ----------------------------
INSERT INTO `tanggungan_wali` VALUES ('1254768987090001', 'joko roko', null, null, 'musya', 'muse', '10-10-1990', 'sekolah', 'Adik');
INSERT INTO `tanggungan_wali` VALUES ('090909090', 'bagas bagas', null, null, null, null, null, null, null);
INSERT INTO `tanggungan_wali` VALUES ('1240535605806', 'trias nur ilmiani', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `no_telp` varchar(12) DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `kode_pos` varchar(10) DEFAULT NULL,
  `status` varchar(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `no_ktp` (`no_ktp`),
  KEY `name` (`name`,`no_ktp`,`alamat`,`sex`,`no_telp`),
  KEY `name_2` (`name`,`no_ktp`),
  KEY `name_3` (`name`,`sex`,`no_ktp`,`no_telp`,`alamat`),
  KEY `no_ktp_2` (`no_ktp`,`name`,`sex`,`alamat`,`no_telp`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'Prayoga Bagas Ariya Wibawa', 'L', '1234124', '085815512190', 'janti, pakukerto, Sukorejo', '67161', 'USER', 'ariyabagas', '26021996');
INSERT INTO `user` VALUES ('2', 'asd', 'L', '123', '0121513', 'asdsad', '11121', 'INSTANSI', 'instansi', 'instansi');
INSERT INTO `user` VALUES ('3', 'admin bagas', 'L', '987654321', '000000000000', 'unknown', '00000', 'ADMIN', 'admin', 'admin');
INSERT INTO `user` VALUES ('14', 'Bagas Ariya', 'Laki-Laki', '140535605656', '085815512190', 'janti, pakukerto', '67161', 'USER', 'bagasariya', '26021996');
INSERT INTO `user` VALUES ('21', 'joko roko', 'Laki-Laki', '1254768987090001', '098987657432', 'Tidak diketahui', '98979', 'USER', 'joko123', 'joko123');
INSERT INTO `user` VALUES ('22', 'bagas bagas', 'Laki-Laki', '090909090', '08989898989', 'popopopopo', '19191', 'USER', 'bagas123', 'bagas123');
INSERT INTO `user` VALUES ('23', 'trias nur ilmiani', 'Perempuan', '1240535605806', '02257654046', 'Pasuruan', '67174', 'USER', 'trias', '123456789');
DROP TRIGGER IF EXISTS `user_data`;
DELIMITER ;;
CREATE TRIGGER `user_data` AFTER INSERT ON `user` FOR EACH ROW begin
declare nnk varchar(255);
set nnk = new.no_ktp;

INSERT INTO progres_data VALUES (null,nnk,'no',0,'no',0);
INSERT INTO tanggungan_wali VALUES (nnk,new.name,null,null,null,null,null,null,null);
INSERT INTO prestasi_kejur VALUES (nnk,new.name,null,null,null,null);
INSERT INTO organisasi VALUES (nnk,new.name,null,null,null,null);
INSERT INTO info_ortu VALUES (nnk,null,null,null,null,0,0,null,null,0);
INSERT INTO indeks_prestasi VALUES (nnk,new.name,0.00,0.00,0.00,0.00,0.00,0.00);
INSERT INTO file_nilai VALUES (nnk,new.name,null);
INSERT INTO biodata_pendaftar VALUES (nnk,new.name,null,null,new.sex,new.alamat,null,new.no_telp,null,null,null);
INSERT INTO biodata_pendaftar_kerja VALUES (nnk,new.name,null,null,new.sex,new.alamat,null,null,null,null,null,new.no_telp);
INSERT INTO file_kerja VALUES (nnk,null,null,null);
end
;;
DELIMITER ;
