<?php
	if($_SESSION['status'] != "USER"){
		echo "<script type='text/javascript'>alert('ANDA BUKAN USER'); document.location = 'index.php?page=home';</script>";
	}
	$id = $_GET['id'];
	$uus = $_GET['uus'];
	$nk = $_GET['uus'];
	$select = mysql_query("SELECT progres_beasiswa FROM progres_data WHERE no_ktp='$nk'");
	$data = mysql_fetch_array($select);

	$bio_pend = mysql_query("SELECT * FROM biodata_pendaftar WHERE no_ktp='$nk'");
	$pend = mysql_fetch_array($bio_pend);
	if($pend['tanggal_lahir'] != NULL){
		$tgl = $pend['tanggal_lahir'];
		$pisah_tgl = explode("-", $tgl);
	}else{
		$tgl = "0-0-0000";
		$pisah_tgl = explode("-", $tgl);
	}
?>
	<div class="container" style="padding-top: 25px;">
		<div class="row">
			<div class="jumbotron text-center" style="margin-bottom:;">
				<p><b>PASTIKAN DATA YANG ANDA MASUKKAN BENAR</b></p>
			</div>
		</div>
	</div>
	<hr>
	<div class="container">
		<div class="row">
			<div class="progress">
			<?php
				echo "<div class='progress-bar progress-bar-success' role='progressbar' aria-valuemin='0' aria-valuemax='100' style='width: ".$data['progres_beasiswa']."%;'> ".$data['progres_beasiswa']."%</div>";
			?>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
	    	<h3>PENDAFTARAN BEASISWA</h3>
	    	<hr>
	    	<ul id="myTab1" class="nav nav-tabs">
		        <li class='active'><a href='#pane1' data-toggle='tab'> Biodata Pendaftar </a> </li>
		      	<li class='#'><a href='#pane2' data-toggle='tab'> Informasi Orangtua / Wali </a></li>
		      	<li class='#'> <a href='#pane3' data-toggle='tab'> Keterangan Informasi Belajar</a> </li>
		      
		    </ul>
	    	<div id="myTabContent1" class="tab-content">
	    		<div class="tab-pane fade active in" id="pane1">
			    		<form method="post" action="">
	    				<?php
	    					echo "
			              	<div class='form-group col-xs-12 col-lg-6'>
			                	<label for='name'>Nama Lengkap</label>
			                	<input type='text' class='form-control' id='name' name='nama' placeholder='Nama Lengkap' value='".$pend['nama']."' disabled>
			              	</div>
			              	<div class='form-group col-xs-12 col-lg-6'>
			               		<label for='NIM'>NIM / DNI / NIK</label>
			                	<input type='text' class='form-control' id='email' name='nik' placeholder='Nomor Identitas' value='".$pend['no_ktp']."' disabled>
			              	</div>
			              	<div class='form-group col-xs-12 col-lg-6'>
			                	<label for='email'>Tempat Lahir</label>
			                	<input type='text' class='form-control' id='email' name='tmp_lahir' placeholder='Tempat Lahir'  required pattern='[A-Z a-z]{3,40}' title='Harus diisi huruf' value='".$pend['tempat_lahir']."'>
			              	</div>
			              	<div class='form-group col-xs-12 col-lg-2'>
			                	<label for='email'>Tanggal</label>
			                	<input type='number' class='form-control' id='email' name='tanggal'  placeholder='Tanggal' value='".$pisah_tgl[0]."'>
			              	</div>
			              	<div class='form-group col-xs-12 col-lg-2'>
			                	<label for='email'>Bulan</label>
			                	<input type='number' class='form-control' id='email' name='bulan'  placeholder='Bulan' value='".$pisah_tgl[1]."'>
			              	</div>
			              	<div class='form-group col-xs-12 col-lg-2'>
			              		<label for='email'>Tahun</label>
			                	<input type='number' class='form-control' id='email' name='tahun'  placeholder='Tahun' value='".$pisah_tgl[2]."'>
			              	</div>
			              	<div class='form-group col-xs-12 col-lg-6'>
			                	<label for='email'>Jenis Kelamin</label>
			                	<input class='form-control' list='jk' name='jenisKelamin' placeholder='-- Jenis Kelamin --'value='".$pend['jk']."' disabled>
			                	<datalist id='jk'>
			                  		<option name='jenisKelamin'>Perempuan</option>
			                  		<option name='jenisKelamin'>Laki-Laki</option>
			                	</datalist>
			              	</div>
			              	<div class='form-group col-xs-12 col-lg-6'>
			                	<label for='email'>Alamat</label>
			                	<input type='text' class='form-control' id='email' name='alamat' placeholder='Alamat'value='".$pend['alamat']."' disabled>
			              	</div>
			              	<div class='form-group col-xs-12 col-lg-6'>
			                	<label for='email'>Agama</label>
			                	<input class='form-control' list='agm' name='agama' placeholder='Agama' value='".$pend['agama']."'>
			                	<datalist id='agm'>
			                  		<option name='agama'>Islam</option>
			                  		<option name='agama'>Kristen</option>
			                  		<option name='agama'>Katolik</option>
			                  		<option name='agama'>Budha</option>
			                  		<option name='agama'>Hindu</option>
			                	</datalist>
			              	</div>
			              	<div class='form-group col-xs-12 col-lg-6'>
			                	<label for='email'>Nomor Telepon</label>
			                	<input type='number' class='form-control' id='email' name='telpon' placeholder='Nomor Telepon / Nomor HP' value='".$pend['no_tlp']."' disabled>
			              	</div>
			              	<div class='form-group col-xs-12'>
			                	<label for='email'>Universitas</label>
			                	<input type='text' class='form-control' id='email' name='univ' placeholder='Universitas' required pattern='[A-Z a-z]{3,40}' title='Harus diisi huruf' value='".$pend['universitas']."'>
			              	</div>
			              	<div class='form-group col-xs-12 '>
			                	<label for='email'>Fakultas</label>
			                	<input type='text' class='form-control' id='email' name='fakultas' placeholder='Fakultas' required pattern='[A-Z a-z]{3,40}' title='Harus diisi huruf' value='".$pend['fakultas']."'>
			              	</div>
			              	<div class='form-group col-xs-12 '>
			                	<label for='email'>Program Studi</label>
			                	<input type='text' class='form-control' id='email' name='prodi' placeholder='Program Studi' required pattern='[A-Z a-z 1-9]{3,40}' title='Harus diisi huruf' value='".$pend['prodi']."'>
			              	</div>
			              	";
			            ?>
			              	<input type="submit" name="submit1" id="feedbackSubmit" class="btn btn-primary btn-lg" style="margin-top: 10px;">
			            </form>
							</div>
			<!-- panel 2 -->
		      	<div class="tab-pane fade " id="pane2">
		        	<form method="post" action="">
									<?php
									$info = mysql_query("SELECT * FROM info_ortu WHERE no_ktp='$nk'");
									$in = mysql_fetch_array($info);
									echo "
		    				<div class='form-group col-xs-12 col-lg-6'>
		                	<label for='name'>Nama Ayah</label>
		                	<input type='text' class='form-control' id='name' name='namaayah' placeholder='Nama Ayah' required pattern='[A-Z a-z]{3,40}' title='Harus diisi huruf' value='".$in['nama_ayah']."'>
		              	</div>
		              	<div class='form-group col-xs-12 col-lg-6'>
		                	<label for='email'>Nama Ibu</label>
		                	<input type='text' class='form-control' id='email' name='namaibu' placeholder='Nama Ibu' required pattern='[A-Z a-z]{3,40}' title='Harus diisi huruf' value='".$in['nama_ibu']."'>
		              	</div>
		              	<div class='form-group col-xs-12 col-lg-6'>
		                	<label for='email'>Pekerjaan Ayah</label>
		                	<input class='form-control' list='kjayah' name='kerjaayah' placeholder='Pekerjaan Ayah' value='".$in['kerja_ayah']."'>
		                	<datalist id='kjayah'>
		                  		<option name='kerjaayah'>PNS Golongan I</option>
													<option name='kerjaayah'>PNS Golongan II</option>
													<option name='kerjaayah'>PNS Golongan III</option>
													<option name='kerjaayah'>PNS Golongan IV</option>
													<option name='kerjaayah'>Pensiunan PNS Golongan I/setara</option>
													<option name='kerjaayah'>Pensiunan PNS Golongan II/setara</option>
													<option name='kerjaayah'>Pensiunan PNS Golongan III/setara</option>
													<option name='kerjaayah'>Pensiunan PNS Golongan IV/setara</option>
													<option name='kerjaayah'>Wiraswasta</option>
													<option name='kerjaayah'>Pilot</option>
													<option name='kerjaayah'>Dokter</option>
													<option name='kerjaayah'>Petani</option>
													<option name='kerjaayah'>Lain-lain</option>
		                	</datalist>
		              	</div>
		              	<div class='form-group col-xs-12 col-lg-6'>
		                	<label for='email'>Pekerjaan Ibu</label>
		                	<input class='form-control' list='kjibu' name='kerjaibu' placeholder='Pekerjaan Ibu' value='".$in['kerja_ibu']."'>
		                	<datalist id='kjibu'>
		                  		<option name='kerjaibu'>PNS Golongan I</option>
													<option name='kerjaibu'>PNS Golongan II</option>
													<option name='kerjaibu'>PNS Golongan III</option>
													<option name='kerjaibu'>PNS Golongan IV</option>
													<option name='kerjaibu'>Pensiunan PNS Golongan I/setara</option>
													<option name='kerjaibu'>Pensiunan PNS Golongan II/setara</option>
													<option name='kerjaibu'>Pensiunan PNS Golongan III/setara</option>
													<option name='kerjaibu'>Pensiunan PNS Golongan IV/setara</option>
													<option name='kerjaibu'>Wiraswasta</option>
													<option name='kerjaibu'>Pilot</option>
													<option name='kerjaibu'>Dokter</option>
													<option name='kerjaibu'>Petani</option>
													<option name='kerjaibu'>Lain-lain</option>
		                	</datalist>
		              	</div>
		              	<div class='form-group col-xs-12 col-lg-6' >
		                	<label for='email'>Penghasilan Ayah</label>
		                	<input type='number' class='form-control' id='email' name='gajiayah' placeholder='Penghasilan ayah' required pattern='[0-9]{4-10}' title='Harus diisi' value='".$in['gaji_ayah']."'>
		              	</div>
		              	<div class='form-group col-xs-12 col-lg-6'>
		                	<label for='email'>Penghasilan Ibu</label>
		                	<input type='number' class='form-control' id='email' name='gajiibu' placeholder='Penghasilan ibu' required pattern='[0-9]{4-10}' title='Harus diisi' value='".$in['gaji_ibu']."'>
		              	</div>
		              	<div class='form-group col-xs-12'>
		                	<label for='alamat'>Alamat Orang Tua</label>
		                	<textarea type='text' class='form-control' id='email' name='alamator' placeholder='Alamat Orang tua' required pattern='[A-Z a-z 0-9]{3-40}' title='Harus diisi'>".$in['alamat_ortu']."</textarea>
		              	</div>
		              	<div class='form-group col-xs-12 col-lg-6'>
		                	<label for='email'>Nomor Telepon / Nomor Hp Orang Tua</label>
		                	<input type='number' class='form-control' id='email' name='tlportu' placeholder='NOMOR TELEPON / NOMOR HP' required pattern='[0-9]{10-12}' title='Harus diisi' value='".$in['no_tlp_ortu']."'>
		              	</div>
		              	<div class='form-group col-xs-12 col-lg-6'>
		                	<label for='email'>Jumlah Tanggungan</label>
		                	<input type='number' class='form-control' id='email' name='tanggungan' placeholder='Jumlah Tertanggung' value='".$in['jmlh_tanggungan']."'>
		              	</div>
		            	";
		            	?>
		            	<?php 
		            		$tnggng = mysql_query("SELECT * FROM tanggungan_wali WHERE no_ktp='$nk'");
		            		$tg = mysql_fetch_array($tnggng);
		            			if($tg['tanggal_lahir'] != NULL){
												$tgl = $pend['tanggal_lahir'];
												$tagl = explode("-", $tgl);
											}else{
												$tgl = "0-0-0000";
												$tagl = explode("-", $tgl);
											}
		            	echo "
		            	<div class='col-xs-12'>
			            	<div class='jumbotron'>

								<p><b>Yang menjadi tanggungan orang tua/wali</b></p>
			            	</div>
		            	</div>
		            	<div class='form-group col-xs-12'>
				           	<label for='alamat'>Nama Lengkap</label>
				           	<input type='text' class='form-control' id='email' name='namatng' placeholder='Nama Lengkap' required pattern='[A-Z a-z]{3,40}' title='Harus diisi huruf' value='".$tg['nama_tanggung']."'>
				        </div>
				        <div class='form-group col-xs-12 col-lg-6'>
				           	<label for='email'>Tempat</label>
				           	<input type='text' class='form-control' id='email' name='tmpt' placeholder='Tempat Lahir' required pattern='[A-Z a-z]{3,40}' title='Harus diisi huruf' value='".$tg['tempat_lahir']."'>
				        </div>
				        <div class='form-group col-xs-12 col-lg-2'>
			                	<label for='email'>Tanggal</label>
			                	<input type='number' class='form-control' id='email' name='tanggal2'  placeholder='Tanggal' value='".$tagl[0]."'>
			              	</div>
			              	<div class='form-group col-xs-12 col-lg-2'>
			                	<label for='email'>Bulan</label>
			                	<input type='number' class='form-control' id='email' name='bulan2'  placeholder='Bulan' value='".$tagl[1]."'>
			              	</div>
			              	<div class='form-group col-xs-12 col-lg-2'>
			              		<label for='email'>Tahun</label>
			                	<input type='number' class='form-control' id='email' name='tahun2'  placeholder='Tahun' value='".$tagl[2]."'>
			              	</div>
				        <div class='form-group col-xs-12 col-lg-6'>
				         	<label for='email'>Pekerjaan / Sekolah</label>
				           	<input type='text' class='form-control' id='email' name='ks' placeholder='Pekerjaan' required pattern='[A-Z a-z]{3,40}' title='Harus diisi huruf' value='".$tg['kerja_sekolah']."'>
				        </div>
				        <div class='form-group col-xs-12 col-lg-6'>
		                	<label for='email'>Hubungan Keluarga</label>
		                	<input class='form-control' list='huke' name='hk' placeholder='Hubungan Keluarga' value='".$tg['hub_keluarga']."'>
		                	<datalist id='huke'>
		                  		<option name='hk'>Ibu</option>
													<option name='hk'>Ayah</option>
													<option name='hk'>Kakak</option>
													<option name='hk'>Adik</option>
													<option name='hk'>Kakek</option>
													<option name='hk'>Nenek</option>
		                	</datalist>
		              	</div>
		              ";
		        ?>
		          <input type="submit" name="submit2" id="feedbackSubmit" class="btn btn-primary btn-lg" style=" margin-top: 10px;">
		    		</form>
		        </div>
	        <!-- panel 3 -->
		      	<div class="tab-pane fade" id="pane3">
		        	<form method="post" action="" action="<?php $_SERVER['PHP_SELF']; ?>" enctype="multipart/form-data">
		        	<?php
		        		$indek = mysql_query("SELECT * FROM indeks_prestasi WHERE no_ktp='$nk'");
		            $ip = mysql_fetch_array($indek);
		        	echo "
		    			<div class='col-xs-12'>
		    				<div class='jumbotron'>
		    					<h2>Prestasi Belajar Tiap Semester</h2>
		    				</div>
		    			</div>
		    			<div class='form-group col-xs-12 col-lg-2'>
		                	<label for='name'>Semester 1</label>
		                	<input type='number' class='form-control' id='ips1' name='ips1' placeholder='Indeks Prestasi' value='".$ip['ips1']."'>
		              	</div>
		              	<div class='form-group col-xs-12 col-lg-2'>
		                	<label for='email'>Semester 2</label>
		                	<input type='number' class='form-control' id='ips2' name='ips2' placeholder='Indeks Prestasi' value='".$ip['ips2']."'>
		              	</div>
		              	<div class='form-group col-xs-12 col-lg-2'>
		                	<label for='email'>Semester 3</label>
		                	<input type='number' class='form-control' id='ips3' name='ips3' placeholder='Indeks Prestasi' value='".$ip['ips3']."'>
		              	</div>
		              	<div class='form-group col-xs-12 col-lg-2'>
		                	<label for='email'>Semester 4</label>
		                	<input type='number' class='form-control' id='ips4' name='ips4' placeholder='Indeks Prestasi' value='".$ip['ips4']."'>
		              	</div>
		              	<div class='form-group col-xs-12 col-lg-2'>
		                	<label for='email'>Semester 5</label>
		                	<input type='number' class='form-control' id='ips5' name='ips5' placeholder='Indeks Prestasi' value='".$ip['ips5']."'>
		              	</div>
		              	<div class='form-group col-xs-12 col-lg-2'>
		                	<label for='email'>Semester 6</label>
		                	<input type='number' class='form-control' id='ips6' name='ips6' placeholder='Indeks Prestasi' value='".$ip['ips6']."'>
		              	</div>
		              	<div class='col-xs-12'>
								";
		            ?>
		            <?php
			            $organ = mysql_query("SELECT * FROM organisasi WHERE no_ktp='$nk'");
			            $orga = mysql_fetch_array($organ);
		            echo "
		    				<div class='jumbotron'>
		    					<h2>Keterangan Kegiatan Organisasi (Dua Tahun Terakhir)</h2>
		    				</div>
		    			</div>
		    			<div class='form-group col-xs-12 col-lg-6'>
		                	<label for='name'>Jabatan</label>
		                	<input type='text' class='form-control' name='jabatan' placeholder='Jabatan' required pattern='[A-Z a-z]{3,40}' title='Harus diisi huruf' value='".$orga['jabatan']."'>
		              	</div>
		              	<div class='form-group col-xs-12 col-lg-6'>
		                	<label for='email'>Nama Organisasi</label>
		                	<input type='text' class='form-control' name='nama_orga' placeholder='Nama Organisasi' required pattern='[A-Z a-z]{3,40}' title='Harus diisi huruf' value='".$orga['nomor_sk']."'>
		              	</div>
		              	<div class='form-group col-xs-12 col-lg-6'>
		                	<label for='email'>Nomor SK</label>
		                	<input type='text' class='form-control' name='no_sk' placeholder='Nomor SK' required pattern='[A-Z a-z 0-9]{3,40}' title='Harus diisi' value='".$orga['nama_orga']."'>
		              	</div>
		              	<div class='form-group col-xs-12 col-lg-6'>
		                	<label for='email'>Tahun</label>
		                	<input type='number' class='form-control' name='tahun1' placeholder='Tahun' required pattern='[0-9]{4}' title='Harus diisi angka' value='".$orga['tahun']."'>
		              	</div>
		            ";
		           	?>
		           	<?php
		           		$pk = mysql_query("SELECT * FROM prestasi_kejur WHERE no_ktp='$nk'");
			            $kejur = mysql_fetch_array($pk);
			            $nl = mysql_query("SELECT * FROM file_nilai WHERE no_ktp='$nk'");
			            $nilai = mysql_fetch_array($nl);
		           	echo "
		            <div class='col-xs-12'>
		    				<div class='jumbotron'>
		    					<h2>Prestasi dalam Kejuaraan Terbaru</h2>
		    				</div>
		    			</div>
		    			<div class='form-group col-xs-12 col-lg-6'>
		                	<label for='name'>Juara</label>
		                	<input type='number' class='form-control' name='juara' placeholder='Juara' value='".$kejur['juara']."'>
		              	</div>
		              	<div class='form-group col-xs-12 col-lg-6'>
		                	<label for='email'>Kegiatan</label>
		                	<input type='number' class='form-control' name='kegiatan' placeholder='Kegiatan' required pattern='[A-Z a-z]{3,40}' title='Harus diisi huruf' value='".$kejur['tahun']."'>
		              	</div>
		              	<div class='form-group col-xs-12 col-lg-6'>
		                	<label for='email'>Tahun</label>
		                	<input type='number' class='form-control' name='tahun2' placeholder='Tahun' required pattern='[0-9]{4}' title='Harus diisi angka' value='".$kejur['kegiatan']."'>
		              	</div>
		              	<div class='form-group col-xs-12 col-lg-6'>
		                	<label for='tingkat'>Tingkat</label>
		                	<input class='form-control' list='tkl' name='tingkat' placeholder='Tingkat' required pattern='[A-Z a-z]{3,40}' title='Harus diisi huruf'value='".$kejur['tingkat']."'>
		                	<datalist id='tkl'>
												<option name='tingkat'>InterNasional</option>
												<option name='tingkat'>Nasional</option>
												<option name='tingkat'>Provinsi</option>
												<option name='tingkat'>Kabupaten</option>
												<option name='tingkat'>Kecamatan</option>
		                	</datalist>
		              	</div>
		              	<div class='col-xs-12'>
		    				<div class='jumbotron'>
		    					<h2>Upload file sertifikat/transkrip nilai/KK</h2>
		    				</div>
		    			</div>
		    			<div class='form-group col-xs-12 col-lg-6'>
		                	<label for='name'>file</label>
		                	<input type='file' class='form-control' name='nilai1'>
		              	</div>
		              	<div class='form-group col-xs-12 col-lg-6'>
		                	<label for='name'>terupload</label>
		                	<div style='background:grey;'>
		                		".$nilai['nilai']."
		                	</div>
		              	</div>
									";
		              ?>
		              	<input type="submit" name="submit3" id="feedbackSubmit" class="btn btn-primary btn-lg col-xs-12" style=" margin-top: 10px;"> 
		    		</form>
		        </div>
			</div>
		</div>
	</div>
	<?php
	if(isset($_POST['submit1'])){  //submit1
		$tmp_lhr 	= $_POST['tmp_lahir'];
		$tg_lhr 	= $_POST['tanggal'] ."-". $_POST['bulan'] ."-". $_POST['tahun'];
		$agm 		= $_POST['agama'];
		$univ 		= $_POST['univ'];
		$fakultas 	= $_POST['fakultas'];
		$prodi 		= $_POST['prodi'];
		echo $tg_lhr;

		$sql ="UPDATE biodata_pendaftar SET
				tempat_lahir = '$tmp_lhr',
				tanggal_lahir = '$tg_lhr',
				agama = '$agm',
				universitas = '$univ',
				fakultas = '$fakultas',
				prodi = '$prodi'
			   WHERE no_ktp = '$nk'
				";
		$res = mysql_query($sql);
		if($res){
			mysql_query("UPDATE progres_data SET progres_beasiswa=30 WHERE no_ktp='$nk'");
			echo "<script type='text/javascript'>alert('Telah Berhasil Ditambahkan'); document.location = 'index.php?page=pendaftaran&&id=$id&&uus=$uus';</script>";
		}else{
			echo "<script type='text/javascript'>alert('Cek Lagi Apakah Sudah Benar');</script>";
		}
	}else if(isset($_POST['submit2'])){ //submit2
		$nmayah 		= $_POST['namaayah'];
		$nmibu 		= $_POST['namaibu'];
		$kjayah 	= $_POST['kerjaayah'];
		$kjibu 	= $_POST['kerjaibu'];
		$gjayah 		= $_POST['gajiayah'];
		$gjibu 	= $_POST['gajiibu'];
		$alamat 		= $_POST['alamator'];
		$tlp 	= $_POST['tlportu'];
		$tg 		= $_POST['tanggungan'];
		
		$nmtg = $_POST['namatng'];
		$tmpt = $_POST['tmpt'];
		$tg2 = $_POST['tanggal2']."-".$_POST['bulan2']."-".$_POST['tahun2'];
		$tp = $_POST['ks'];
		$hk = $_POST['hk'];

		$sql ="UPDATE info_ortu SET
				nama_ayah = '$nmayah',
				nama_ibu = '$nmibu',
				kerja_ayah = '$kjayah',
				kerja_ibu = '$kjibu',
				gaji_ayah = '$gjayah',
				gaji_ibu = '$gjibu',
				alamat_ortu = '$alamat',
				no_tlp_ortu = '$tlp',
				jmlh_tanggungan = '$tg'
			   WHERE no_ktp = '$nk'
				";

		$sql2 = "UPDATE tanggungan_wali SET
				nama_tanggung = '$nmtg',
				tempat_lahir = '$tmpt',
				tanggal_lahir = '$tg2',
				kerja_sekolah = '$tp',
				hub_keluarga = '$hk'
				WHERE no_ktp = '$nk'
				";
				
		$res = mysql_query($sql);
		$res2 = mysql_query($sql2);
		if($res AND $res2){
			mysql_query("UPDATE progres_data SET progres_beasiswa=65 WHERE no_ktp='$nk'");
			echo "<script type='text/javascript'>alert('Telah Berhasil Ditambahkan'); document.location = 'index.php?page=pendaftaran&&id=$id&&uus=$uus';</script>";
		}else{
			echo "<script type='text/javascript'>alert('Cek Lagi Apakah Sudah Benar');</script>";
		}
	}else if(isset($_POST['submit3'])){ //submit3
		$ips1 = $_POST['ips1'];
		$ips2	=	$_POST['ips2'];
		$ips3 = $_POST['ips3'];
		$ips4 = $_POST['ips4'];
		$ips5 = $_POST['ips5'];
		$ips6 = $_POST['ips6'];

		$jb 	= $_POST['jabatan'];
		$no 	= $_POST['nama_orga'];
		$nsk 	= $_POST['no_sk'];
		$th 	= $_POST['tahun1'];
		
		$jr 	= $_POST['juara'];
		$kg 	= $_POST['kegiatan'];
		$thh 	= $_POST['tahun2'];
		$tkt 	= $_POST['tingkat'];

		$lokasi_file = $_FILES['nilai1']['tmp_name'];
    	$tipe_file = $_FILES['nilai1']['type'];
    	$nama_file = $_FILES['nilai1']['name'];
    	$direktori = "img/biodata/$nama_file";

		$sql1 ="UPDATE indeks_prestasi SET
				ips1 = '$ips1',
				ips2 = '$ips2',
				ips3 = '$ips3',
				ips4 = '$ips4',
				ips5 = '$ips5',
				ips6 = '$ips6'
			   WHERE no_ktp = '$nk'
				";

		$sql2 ="UPDATE organisasi SET
				jabatan = '$jb',
				nomor_sk = '$no',
				nama_orga = '$nsk',
				tahun = '$th'
			   WHERE no_ktp = $nk
				";

		$sql3 ="UPDATE prestasi_kejur SET
				juara = '$jr',
				tahun = '$kg',
				kegiatan = '$thh',
				tingkat = '$tkt'
			   WHERE no_ktp = $nk
				";

		$res1 = mysql_query($sql1);
		$res2 = mysql_query($sql2);
		$res3 = mysql_query($sql3);

		if(!empty($lokasi_file)){
	      move_uploaded_file($lokasi_file, $direktori);

	      $query = "UPDATE file_nilai SET nilai = '$nama_file' WHERE no_ktp = $nk";
	      $res = mysql_query($query);
	      if($res){
	        echo "<script type='text/javascript'> alert('Gambar Berhasil Diupload'); document.location = 'index.php?page=pendaftaran&&id=$id&&uus=$uus';</script>";

	      }else{
	    	  echo "<script type='text/javascript'>alert('error')</script>";
	      }
	    }
		if($res1){
			mysql_query("UPDATE progres_data SET progres_beasiswa=100 WHERE no_ktp='$nk'");
			echo "<script type='text/javascript'>alert('Telah Berhasil Ditambahkan'); document.location = 'index.php?page=pendaftaran&&id=$id&&uus=$uus';</script>";
		}else{
			echo "<script type='text/javascript'>alert('Cek Lagi Apakah Sudah Benar');</script>";
		}
	}
	?>
