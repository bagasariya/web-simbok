<div class="container">
  <div class="row">
    <div class="col-lg-offset-3 col-xs-12 col-lg-6">
      <div class="">
        <div class="row text-center">
          <h2>Register</h2>
          <div class="text-center col-xs-12 col-sm-12 col-md-12 col-lg-12"> </div>
          <div class="text-center col-lg-12"> 
            <form role="form" method="post" class="text-center">
              <div class="form-group">
                <label for="name">Username</label>
                <input type="text" class="form-control" name="username" placeholder="USERNAME" required pattern="[A-Z a-z]{2,40}" title="Harus huruf,minimal 2 angka">
              </div>
              <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" name="password" placeholder="PASSWORD" required pattern="[A-Z a-z 0-9]{3,40}" title="Harus diisi, minimal 3 karakter">
              </div>
              <div class="form-group">
                <label for="nama">Full Name</label>
                <input type="text" class="form-control" name="nama" placeholder="NAMA LENGKAP" required pattern="[A-Z a-z]{3,40}" title="Harus huruf,minimal 3 huruf">
              </div>
              <div class="form-group">
                <label for="jenisKelamin">Jenis Kelamin</label>
                <input class="form-control" list="jk" name="jenisKelamin" placeholder="-- Jenis Kelamin --">
                <datalist id="jk">
                  <option name="jenisKelamin">Perempuan</option>
                  <option name="jenisKelamin">Laki-Laki</option>
                </datalist>
              </div>
              <div class="form-group">
                <label for="nik">NIK / Nomor KTP</label>
                <input type="number" class="form-control" name="nik" placeholder="NOMOR KTP (16 angka)" required pattern="[0-9]{16}"  title="Harus angka,isikan 16 angka">
              </div>
              <div class="form-group">
                <label for="alamat">Alamat</label>
                <input type="text" class="form-control" name="alamat" placeholder="ALAMAT" required pattern="[A-Z a-z 0-9]{3,40}" title="Harus diisi">
              </div>
              <div class="form-group">
                <label for="kodepos">Kode Pos</label>
                <input type="text" class="form-control" name="kodepos" placeholder="KODE POS" required pattern="[0-9]{5}" title="Harus angka, harus 5 angka">
              </div>
              <div class="form-group">
                <label for="telpon">No. Telepon / No. HP</label>
                <input type="number" class="form-control" name="telpon" placeholder="NOMOR TELEPON / NOMOR HP" required pattern="[0-9]{10,12}" title="Harus angka, minimal 10 angka dan maksimal 12 angka">
              </div>
              <input type="submit" name="submit" class="btn btn-primary btn-lg" style=" margin-top: 10px;" value="Register">
            </form>
            <?php
              if(isset($_POST['submit'])){
                $user = $_POST['username'];
                $pass = $_POST['password'];
                $nama = $_POST['nama'];
                $jk = $_POST['jenisKelamin'];
                $nik = $_POST['nik'];
                $alamat = $_POST['alamat'];
                $kodepos = $_POST['kodepos'];
                $telpon = $_POST['telpon'];

                $sql = "INSERT INTO user VALUES('','$nama','$jk','$nik','$telpon','$alamat','$kodepos','USER','$user','$pass')";
                $res = mysql_query($sql);
                echo $sql;
                echo $res;
                if($res){
                  echo "<script type='text/javascript'>alert('DATA BERHASIL DITAMBAHKAN')</script>";
                }else{
                  echo "<script type='text/javascript'>alert('DATA TIDAK BERHASIL DITAMBAHKAN')</script>";
                }
              }
            ?>
            <div style="margin: 20px 0 0 0;">
              <label style="color: grey; font-size: 13px;" for="keterangan">Sudah Punya Akun?</label>
              <a href="index.php?page=login2"> Login</a> 
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>