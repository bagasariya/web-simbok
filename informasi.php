<?php
	// include_once 'gogo.php';
	$dt = $_GET['id'];
	$asd = $_SESSION['user'];
	$slt = mysql_query("SELECT no_ktp FROM user WHERE username='$asd'");
	$dataa = mysql_fetch_array($slt);
	$uus = $dataa['no_ktp'];
	$select = mysql_query("SELECT * FROM beasiswa WHERE id='$dt'");
	$data = mysql_fetch_array($select);
?>
<section style="background-color:black;">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<ul class="breadcrumb"  style="margin:0 0 -30px 0; background-color:black;">
					<li><a href="#"><i class="fa fa-home"></i></a><i class="icon-angle-right"></i></li>
					<li class="active"><font color="white">Pendafatan Beasiswa</font></li>
				</ul>
			</div>
		</div>
	</div>
</section>
<?php
	echo "
	<section id='content'>
	<div class='container'>
		<div class='row'>
			<div class='col-lg-12'>
				<article>
						<div class='post-image'>
							<div class='post-heading'>
								<h1><a href='#'>".$data['nama_beasiswa']."</a></h1>
							
							<img src='img/files_data/".$data['foto']."' alt=''/>
							</div>
						</div>
						".$data['persyaratan']."
						<div class='bottom-article'>
							<a href='index.php?page=pendaftaran&&id=$dt&&uus=$uus' class='btn btn-primary btn-lg col-xs-12' style='margin-top: 10px;'><b>Daftar</b></a>
						</div>
				</article>
			</div>
		</div>
	</div>
	</section>
	"
?>