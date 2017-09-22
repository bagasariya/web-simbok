<?php
	include "koneksi_db.php";
	session_start();
	$page = (empty($_GET['page'])) ? "home" : $_GET['page'];
	$id;
	$nk;
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>SIMBOK</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="" />
	<link href="css/bootstrap.min.css" rel="stylesheet" />
	<link href="css/fancybox/jquery.fancybox.css" rel="stylesheet">
	<link href="css/jcarousel.css" rel="stylesheet" />
	<link href="css/flexslider.css" rel="stylesheet" />
	<link href="css/style.css" rel="stylesheet" />
	<link href="css/spanform.css" rel="stylesheet" />
	<link href="coba.css" rel="stylesheet" />
	<link href="css/tabel.css" rel="stylesheet" />
	<link href="skins/default.css" rel="stylesheet" />

</head>
<body>
	<header>
       	<div class="navbar navbar-default navbar-static-top">
           	<div class="container">
               	<div class="navbar-header" style="margin-top: -13px;">
                   	<a class="navbar-brand" href="index.php?page=home"><img src="img/simbok.png" style="padding-top: 10px;" /></a>
	            </div>
	            <div class="navbar-collapse collapse">
	                <ul class="nav navbar-nav">
	                    <li class="active"><a href="index.php?page=home">Home</a></li>
	                    <li class="dropdown">
	                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">Informasi<b class=" icon-angle-down"></b></a>
	                        <ul class="dropdown-menu">
	                            <li><a href="index.php?page=beasiswa">Beasiswa</a></li>
	                            <li><a href="index.php?page=loker">Lowongan Kerja</a></li>
	                        </ul>
	                    </li>
	                    <?php
	                    if(isset($_SESSION['logged_in'])){
	                    	if($_SESSION['status'] == "ADMIN"){
	                     		echo "
									<li><a href='index.php?page=daftar_user'>Daftar User</a></li>
	                       		";
	                       	}elseif ($_SESSION['status'] == "INSTANSI") {
	        	           		echo "
									<li class='dropdown'>
						                <a href='#' class='dropdown-toggle' data-toggle='dropdown' data-hover='dropdown' data-delay='0' data-close-others='false'>Tambah Data<b class='icon-angle-down'></b></a>
						                <ul class='dropdown-menu'>
						                   	<li><a href='index.php?page=tambah_data'>Beasiswa</a></li>
						                  	<li><a href='index.php?page=tambah_data_loker'>Lowongan Kerja</a></li>
						                </ul>
						            </li>
	                       		";
	                       	}
	                    }
	                    ?>
						<li><a href="index.php?page=about">About</a></li>
	                    <li><a href="index.php?page=contact">Contact</a></li>
						<?php
							if(isset($_SESSION['logged_in'])){
								echo "
									<li class='dropdown'>
						    	      	<a href='#' class='dropdown-toggle' data-toggle='dropdown' data-hover='dropdown' data-delay='0' data-close-others='false'>Masuk Sebagai ".$_SESSION["user"]."<b class='icon-angle-down'></b></a>
						        	   	<ul class='dropdown-menu'>
							       		   	<li><a href='index.php?page=logout'>Logout</a></li>
							       		   	<li><a href='index.php?page=biodata'>Biodata</a></li>
							       		</ul>
							        </li>
							    ";
							}else{
								echo "<li><a href='index.php?page=login2'>Login</a></li>";
							}
	                    ?>
	                </ul>
	            </div>
	        </div>
	    </div>
	</header>
	<?php
		include "$page.php";
	?>
	<hr>
	<footer class="">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="copyright">
						<p>
							<span>&copy; SIMBOK 2016. TEKNIK INFORMATIKA, UNIVERSITAS NEGERI MALANG</span>
						</p>
					</div>
				</div>
				<div class="col-lg-6">
					<ul class="social-network">
						<li><a href="#" data-placement="top" title="Facebook"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#" data-placement="top" title="Twitter"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#" data-placement="top" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
						<li><a href="#" data-placement="top" title="Pinterest"><i class="fa fa-pinterest"></i></a></li>
						<li><a href="#" data-placement="top" title="Google plus"><i class="fa fa-google-plus"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>

	<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>

	<script src="js/jquery.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.fancybox.pack.js"></script>
	<script src="js/jquery.fancybox-media.js"></script>
	<script src="js/google-code-prettify/prettify.js"></script>
	<script src="js/portfolio/jquery.quicksand.js"></script>
	<script src="js/portfolio/setting.js"></script>
	<script src="js/jquery.flexslider.js"></script>
	<script src="js/animate.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>