<?php
	if (isset($_POST['submit2'])) {
		$select = mysql_query("SELECT * FROM beasiswa WHERE target='SMP'");
	}elseif (isset($_POST['submit3'])) {
		$select = mysql_query("SELECT * FROM beasiswa WHERE target='SMA'");
	}elseif (isset($_POST['submit4'])) {
		$select = mysql_query("SELECT * FROM beasiswa WHERE target='PT'");
	}else {
		$select = mysql_query("SELECT * FROM beasiswa");
	}
	$x=1;
?>
<section style="background-color:black;">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<ul class="breadcrumb"  style="margin:0 0 -30px 0; background-color:black;">
					<li><a href="#"><i class="fa fa-home"></i></a><i class="icon-angle-right"></i></li>
					<li class="active"><font color="white">Beasiswa</font></li>
				</ul>
			</div>
		</div>
	</div>
</section>
	<section id="content">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<ul class="portfolio-categ filter btn-group">
					<form action="" method="post">
						<input type="submit" name="submit1" value="ALL" class="btn-link">
						<input type="submit" name="submit2" value="SMP" class="btn-link">
						<input type="submit" name="submit3" value="SMA" class="btn-link">
						<input type="submit" name="submit4" value="Perguruan Tinggi" class="btn-link">
						<!-- <li class="all active"><a href="#">All</a></li>
						<li class="SMP"><a href="#" title="">SMP</a></li>
						<li class="SMA"><a href="#" title="">SMA</a></li>
						<li class="PT"><a href="#" title="">Perguruan Tinggi</a></li> -->
					</form>
				</ul>
				<div class="clearfix">
				</div>
				<div class="row">
					<section id="projects">
					<ul id="thumbs" class="portfolio">
						<?php
							echo "<div class='container'>";
							while($data = mysql_fetch_array($select)){
								$ide = $data['id'];
								$nm = $data['nama_beasiswa'];
								if($x == 1){
									echo "
										<div class='row text-center'>
									";
								}
									echo"
										<div class='col-sm-4 col-md-4 col-lg-4 col-xs-6' id='filter' style='max-width:370px; margin-left:15px; max-height:270px;'>
	      									<div class='thumbnail'> <img src='img/files_data/".$data['foto']."' alt='Thumbnail Image 1' class='img-responsive' style='max-width:320px; max-height: 81px;'>
	        									<div class='caption' >
	          										<h3 style='max-width:300px; margin-left:15px;'>".$data['nama_beasiswa']."</h3>
	          										<p><a href='index.php?page=informasi&&id=$ide' class='btn btn-primary'> Selengkapnya</a></p>
	        									</div>
	      									</div>
	    								</div>
									";
								if($x == 3){
									echo "
										</div>
									";
								}
								if($x == 3){
									$x = 1;
								}else{
									$x++;
								}
							
							}
						echo "</div>";
						?>
					</ul>
					</section>
				</div>
			</div>
		</div>
	</div>
</section>