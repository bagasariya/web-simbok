<div class="container">
	<div class="row">
		<div style="height: 100%;">
			<div class="col-xs-12">
				<h4>BIODATA</h4>
					<table style="color: black; border: 1px solid White; font-family: Arial;">
					<?php
					$a = $_SESSION['user'];
					$sql = mysql_query("SELECT * FROM user WHERE username='$a'");
					$dt = mysql_fetch_array($sql);
					echo "
						<tr>
							<td>No.Ktp</td>
							<td>:</td>
							<td>".$dt['no_ktp']."</td>
						</tr>
						<tr>
							<td>Nama</td>
							<td>:</td>
							<td>".$dt['name']."</td>
						</tr>
						<tr>
							<td>Jenis Kelamin</td>
							<td>:</td>
							<td>".$dt['sex']."</td>
						</tr>
						<tr>
							<td>Nomor Telepon</td>
							<td>:</td>
							<td>".$dt['no_telp']."</td>
						</tr>
						<tr>
							<td>Alamat</td>
							<td>:</td>
							<td>".$dt['alamat']."</td>
						</tr>
						<tr>
							<td>Kode Pos</td>
							<td>:</td>
							<td>".$dt['kode_pos']."</td>
						</tr>
						
					";
					?>
					</table>
			</div>
		</div>
	</div>
</div>