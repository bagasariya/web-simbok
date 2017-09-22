<?php
	$nk = $_GET['nk'];
	$ida = $_GET['id'];
	if($_SESSION['status'] != "USER"){
		echo "<script type='text/javascript'>alert('ANDA BUKAN USER'); document.location = 'index.php?page=informasi_kerja&&id=$ida';</script>";
	}
	$select = mysql_query("SELECT progres_kerja FROM progres_data WHERE no_ktp='$nk'");
	$data = mysql_fetch_array($select);

	$bio_pend = mysql_query("SELECT * FROM biodata_pendaftar_kerja WHERE no_ktp='$nk'");
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
	    	<h3>Pendaftaran Kerja</h3>
	    	<hr>
	    	<ul id="myTab1" class="nav nav-tabs">
		        <li class='active'><a href='#pane1' data-toggle='tab'> Biodata Pendaftar </a> </li>
		        <li class='#'><a href='#pane2' data-toggle='tab'> Upload File</a> </li>
		    </ul>
	    	<div id="myTabContent1" class="tab-content">
	    		<div class="tab-pane fade in active " id="pane1">
			    	<form method="post" action="">
			    	<?php
			    	echo "
			            <div class='form-group col-xs-12 col-lg-6'>
			               	<label for='name'>Nama Lengkap</label>
			                <input type='text' class='form-control' id='name' name='nama' placeholder='Nama Lengkap' required pattern='[A-Z a-z ]{3,255}' value='".$pend['nama']."'>
			            </div>
			          	<div class='form-group col-xs-12 col-lg-6'>
			           		<label for='email'>NIK</label>
			            	<input type='text' class='form-control' id='email' name='NIK' placeholder='NIK' required pattern='[0-9]{,16}' value='".$pend['no_ktp']."'>
			          	</div>
			          	<div class='form-group col-xs-12 col-lg-6'>
			            	<label for='email'>Tempat</label>
			            	<input type='text' class='form-control' id='email' name='tempat_lhr' placeholder='Tempat Lahir' required pattern='[A-Z a-z]{1,255}' value='".$pend['tempat_lahir']."'>
			          	</div>
			          	<div class='form-group col-xs-12 col-lg-2'>
			            	<label for='email'>Tanggal Lahir</label>
			            	<input type='text' class='form-control' id='email' name='tanggal' placeholder='Tanggal' required pattern='[0-9]{0,2}' value='".$pisah_tgl[0]."'>
			          	</div>
			          	<div class='form-group col-xs-12 col-lg-2'>
			            	<label for='email'>Tanggal Lahir</label>
			            	<input type='text' class='form-control' id='email' name='bulan' placeholder='Bulan' required pattern='[0-9]{0,2}' value='".$pisah_tgl[1]."'>
			          	</div>
			          	<div class='form-group col-xs-12 col-lg-2'>
			            	<label for='email'>Tanggal Lahir</label>
			            	<input type='text' class='form-control' id='email' name='tahun' placeholder='Tahun' required pattern='[0-9]{0,4}' value='".$pisah_tgl[2]."'>
			          	</div>
			          	<div class='form-group col-xs-12 col-lg-6'>
			            	<label for='email'>Jenis Kelamin</label>
			            	<input class='form-control' list='jk' name='jenisKelamin' placeholder='-- Jenis Kelamin --' value='".$pend['jk']."'>
			            	<datalist id='jk'>
			              		<option name='jenisKelamin'>Perempuan</option>
			              		<option name='jenisKelamin'>Laki-Laki</option>
			            	</datalist>
			          	</div>
			          	<div class='form-group col-xs-12 col-lg-6' >
			            	<label for='email'>Alamat</label>
			            	<input type='' class='form-control' id='email' name='alamat' placeholder='Alamat' required pattern='[A-Z a-z]{3,255}' value='".$pend['alamat']."'> 
			          	</div>
			          	<div class='form-group col-xs-12 col-lg-6'>
			            	<label for='email'>Agama</label>
			            	<input class='form-control' list='agama' name='agama' placeholder='Agama' value='".$pend['agama']."'>
			            	<datalist id='agama'>
			              		<option name='agama'>Islam</option>
			              		<option name='agama'>Kristen</option>
			              		<option name='agama'>Katolik</option>
			              		<option name='agama'>Budha</option>
			              		<option name='agama'>Hindu</option>
			            	</datalist>
			          	</div>
			          	<div class='form-group col-xs-12 col-lg-6'>
			            	<label for='email'>Pendidikan Terakhir</label>
			            	<input class='form-control' list='pendidikan' name='pendidikan' placeholder='Pendidikan Terakhir' value='".$pend['pend_akhir']."'>
			            	<datalist id='pendidikan'>
			              		<option name='pendidikan'>S3</option>
			              		<option name='pendidikan'>S2</option>
			              		<option name='pendidikan'>S1 / Sederajat</option>
			              		<option name='pendidikan'>D3</option>
			              		<option name='pendidikan'>D1</option>
			              		<option name='pendidikan'>SMA / Sederajat</option>
			              		<option name='pendidikan'>SMP / Sederajat</option>
			            	</datalist>
			          	</div>
			          	<div class='form-group col-xs-12'>
			            	<label for='email'>Universitas</label>
			            	<input type='text' class='form-control' id='email' name='univ' placeholder='Universitas' required pattern='[A-Z a-z]{3,40}' value='".$pend['univ']."'>
			          	</div>
			          	<div class='form-group col-xs-12'>
			            	<label for='email'>Fakultas</label>
			            	<input type='text' class='form-control' id='email' name='fakultas' placeholder='Fakultas' required pattern='[A-Z a-z]{3,40}' value='".$pend['fakultas']."'>
			          	</div>
			          	<div class='form-group col-xs-12'>
			            	<label for='email'>Program Studi</label>
			            	<input type='text' class='form-control' id='email' name='prodi' placeholder='Program Studi' required pattern='[A-Z a-z]{3,40}' value='".$pend['prodi']."'>
			          	</div>
			          	<div class='form-group col-xs-12'>
			            	<label for='email'>Nomor Telepon</label>
			            	<input type='nomor' class='form-control' id='email' name='telpon' placeholder='NOMOR TELEPON / NOMOR HP' required pattern='[0-9]{11,12}' value='".$pend['no_hp']."'>
			          	</div>
			          	";
			          ?>
			          	<input type="submit" name="submit1" id="feedbackSubmit" class="btn btn-primary btn-lg" style="margin-top: 10px;">
			        </form>
				</div>
				<div class="tab-pane fade" id="pane2">
		        	<form method="post" action="">
		        	<?php
		        	$sql = mysql_query("SELECT * FROM file_kerja WHERE no_ktp=$nk");
		        	$pg = mysql_fetch_array($sql);
		        	echo"
		    			<div class='col-xs-12'>
		    				<div class='jumbotron'>
		    					<h2>Upload file Ijazah / transkrip nilai / Sertifikat</h2>
		    				</div>
		    			</div>
		    			<div class='container col-xs-12'>
			    			<div class='form-group col-xs-12 col-lg-6'>
			                	<label for='name'>Ijazah</label>
			                	<input type='file' class='form-control' id='ips1' name='ijazah' placeholder='Ijazah'>
			                </div>
			                <div class='form-group col-xs-12 col-lg-6'>
			                	<label for='name'>File</label>
			                	".$pg['ijazah']."
			                </div>
		    			</div>
		    			<div class='container col-xs-12'>
			    			<div class='form-group col-xs-12 col-lg-6'>
			                	<label for='name'>Transkrip Nilai</label>
			                	<input type='file' class='form-control' id='ips1' name='tNilai' placeholder='Transkrip Nilai'>
			                </div>
			                <div class='form-group col-xs-12 col-lg-6'>
			                	<label for='name'>File</label>
			                	".$pg['nilai']."
			                </div>
		    			</div>
		    			<div class='container col-xs-12'>
			    			<div class='form-group col-xs-12 col-lg-6'>
			                	<label for='name'>Sertifikat</label>
			                	<input type='file' class='form-control' id='ips1' name='sertifikat' placeholder='Sertifikat'>
			                </div>
			                <div class='form-group col-xs-12 col-lg-6'>
			                	<label for='name'>File</label>
			                	".$pg['sertifikat']."
			                </div>
		    			</div>
		    			";
		    			?>
		    			<input type="submit" name="submit2" id="feedbackSubmit" class="btn btn-primary btn-lg" style="margin-top: 10px;">
		    		</form>
		        </div>
			</div>
		</div>
	</div>
<?php
	if(isset($_POST['submit1'])){
		$tmpt = $_POST['tempat_lhr'];
		$tgl =  $_POST['tanggal']."-".$_POST['bulan']."-".$_POST['tahun'];
		$agama =$_POST['agama'];
		$pendidikan = $_POST['pendidikan'];
		$univ = $_POST['univ'];
		$fakultas = $_POST['fakultas'];
		$prodi = $_POST['prodi'];

		$sql ="UPDATE biodata_pendaftar_kerja SET
				tempat_lahir = '$tmpt',
				tanggal_lahir = '$tgl',
				agama = '$agama',
				pend_akhir = '$pendidikan',
				univ = '$univ',
				fakultas = '$fakultas',
				prodi = '$prodi'
			   WHERE no_ktp = '$nk'
				";
		$res = mysql_query($sql);
		if($res){
			mysql_query("UPDATE progres_data SET progres_kerja=30 WHERE no_ktp='$nk'");
			echo "<script type='text/javascript'>alert('Telah Berhasil Ditambahkan'); document.location = 'index.php?page=pendaftaran_kerja&&id=$id&&uus=$uus';</script>";
		}else{
			echo "<script type='text/javascript'>alert('Cek Lagi Apakah Sudah Benar');</script>";
		}

	}else if(isset($_POST['submit2'])){
		$lokasi_file1 = $_FILES['nilai1']['tmp_name'];
    	$tipe_file1 = $_FILES['nilai1']['type'];
    	$nama_file1 = $_FILES['nilai1']['name'];
    	$direktori1 = "img/biodata/$nama_file";

    	$lokasi_file2 = $_FILES['nilai1']['tmp_name'];
    	$tipe_file2 = $_FILES['nilai1']['type'];
    	$nama_file2 = $_FILES['nilai1']['name'];
    	$direktori2 = "img/biodata/$nama_file";

    	$lokasi_file3 = $_FILES['nilai1']['tmp_name'];
    	$tipe_file3 = $_FILES['nilai1']['type'];
    	$nama_file3 = $_FILES['nilai1']['name'];
    	$direktori3 = "img/biodata/$nama_file";

    	if(!empty($lokasi_file1)){
	      move_uploaded_file($lokasi_file1, $direktori1);

	      $query = "UPDATE file_kerja SET ijazah = '$nama_file1' WHERE no_ktp = $nk";
	      $res = mysql_query($query);
	      if($res){
	        echo "<script type='text/javascript'> alert('Gambar Berhasil Diupload'); document.location = 'index.php?page=pendaftaran&&id=$id&&uus=$uus';</script>";

	      }else{
	    	  echo "<script type='text/javascript'>alert('error')</script>";
	      }
	    }
	    else if(!empty($lokasi_file2)){
	      move_uploaded_file($lokasi_file2, $direktori2);

	      $query = "UPDATE file_kerja SET nilai = '$nama_file2' WHERE no_ktp = $nk";
	      $res = mysql_query($query);
	      if($res){
	        echo "<script type='text/javascript'> alert('Gambar Berhasil Diupload'); document.location = 'index.php?page=pendaftaran&&id=$id&&uus=$uus';</script>";

	      }else{
	    	  echo "<script type='text/javascript'>alert('error')</script>";
	      }
	    }
	    else if(!empty($lokasi_file3)){
	      move_uploaded_file($lokasi_file3, $direktori3);

	      $query = "UPDATE file_kerja SET sertifikat = '$nama_file3' WHERE no_ktp = $nk";
	      $res = mysql_query($query);
	      if($res){
	        echo "<script type='text/javascript'> alert('Gambar Berhasil Diupload'); document.location = 'index.php?page=pendaftaran&&id=$id&&uus=$uus';</script>";

	      }else{
	    	  echo "<script type='text/javascript'>alert('error')</script>";
	      }
	    }
	}
?>