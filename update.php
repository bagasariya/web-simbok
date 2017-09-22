<?php
	include "koneksi_db.php";
	$nik = $_GET['nk'];
	$status = $_GET['st'];
	$sql = "UPDATE user SET status='$status' WHERE no_ktp = $nik";
	$res = mysql_query($sql);
	if($res) {
    echo "<script type='text/javascript'>alert('DATA UPDATED'); document.location = 'index.php?page=daftar_user';</script>";
  } else {
    echo "<script type='text/javascript'>alert('FAILED TO UPDATE');</script>";  
  }
?>