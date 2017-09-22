<?php
	$select = mysql_query("SELECT * FROM lowker");
	$x=1;
?>
	<section style="background-color:black;">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<ul class="breadcrumb"  style="margin:0 0 -30px 0; background-color:black;">
						<li><a href="#"><i class="fa fa-home"></i></a><i class="icon-angle-right"></i></li>
						<li class="active"><font color="white">Lowongan Kerja</font></li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	<section id="content">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<ul class="portfolio-categ filter">
					<form action="" method="post">
					<!-- <li class="all active"><a href="#">All</a></li>
					<li class="web"><a href="#" title="">Web design</a></li>
					<li class="icon"><a href="#" title="">Icons</a></li>
					<li class="graphic"><a href="#" title="">Graphic design</a></li> -->
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
								$ida = $data['id'];
								$nm = $data['nama_lowongan'];
								if($x == 1){
									echo "
										<div class='row text-center'>
									";
								}
									echo"
										<div class='col-sm-4 col-md-4 col-lg-4 col-xs-6''>
	      									<div class='thumbnail'> <img src='img/files_data/".$data['foto']."' alt='Thumbnail Image 1' class='img-responsive' style='max-width:320px; max-height: 81px;'>
	        									<div class='caption'>
	          										<h3 style='max-width:300px; margin-left:15px;'>".$data['nama_lowongan']."</h3>
	          										<p><a href='index.php?page=informasi_kerja&&id=$ida' class='btn btn-primary'> Selengkapnya</a></p>
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
