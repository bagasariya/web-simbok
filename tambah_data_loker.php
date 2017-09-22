<section id="content">
<div class="container">  
  <div class="col-lg-offset-3 col-xs-12 col-lg-6">
      <div class="">
        <div class="row text-center">
          <div class="text-center col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <h2>Lowongan Kerja</h2>
          </div>
          <div class="text-center col-lg-12"> 
            <form role="form" method="post" id="feedbackForm" class="text-center" action="<?php $_SERVER['PHP_SELF']; ?>" enctype="multipart/form-data">
              <div class="form-group">
                <label for="name">Judul</label>
                <input type="text" class="form-control" id="name" name="judul" placeholder="Judul">
              </div>
              <div class="form-group">
                <label for="gambar">Gambar / Foto</label>
                <input type="file" class="form-control" id="gambar" name="gambar" placeholder="Foto">
              </div>
              <div class="form-group">
                <label for="ringkasan">Ringkasan / Penjelasan</label>
                <input type="text" class="form-control" id="ringkasan" name="ringkasan" placeholder="Ringkasan / Penjelasan">
              </div>
              <div class="form-group">
                <label>Tanggal Selesai</label>
                <input type="date" class="form-control" id="tanggalSelesai" name="end_date">
              </div>
              <div class="form-group">
                <label for="message">Persyaratan / Isi</label>
                <textarea rows="10" cols="100" class="form-control" id="message" name="persyaratan" placeholder="Message"></textarea>
              </div>
              <input type="submit" id="feedbackSubmit" class="btn btn-primary btn-lg" name="submit" value="Send" style=" margin-top: 10px;">
              <input type="reset" class="btn btn-primary btn-lg" style=" margin-top: 10px; background: grey;">
              <?php
                if(isset($_POST['submit'])){
                  $judul = $_POST['judul'];
                  
                  $lokasi_file = $_FILES['gambar']['tmp_name'];
                  $tipe_file   = $_FILES['gambar']['type'];
                  $nama_file   = $_FILES['gambar']['name'];
                  $direktori   = "img/files_data/$nama_file";
                  
                  $selesai = $_POST['end_date'];
                  $ringkasan = $_POST['ringkasan'];
                  $persyaratan = $_POST['persyaratan'];

                  if(!empty($lokasi_file)){
                    move_uploaded_file($lokasi_file, $direktori);

                    $query = "INSERT INTO lowker VALUES('','$judul','$nama_file','$selesai','$ringkasan','$persyaratan')";
                    $res = mysql_query($query);
                    if($res){
                      echo "<script type='text/javascript'> alert('Data Telah Berhasil Ditambahkan');</script>";
                    }else{
                      echo "<script type='text/javascript'>alert('error')</script>";
                    }
                  }
                }
              ?>
            </form>
          </div>
        </div>
    </div>
</div>
</section>