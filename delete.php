<?php
	include "koneksi_db.php";
	$nik = $_GET['nk'];

	$sql = "DELETE FROM user WHERE no_ktp = '$nik'";
	$res = mysql_query($sql);
	if($res) {
    echo "<script type='text/javascript'>alert('DATA DELETED'); document.location = 'index.php?page=daftar_user';</script>";
  } else {
    echo "<script type='text/javascript'>alert('FAILED TO DELETE');</script>";  
  }
?>