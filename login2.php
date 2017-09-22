<div class="container">
  <div class="row">
    <div class="col-lg-offset-3 col-xs-12 col-lg-6">
      <div class="">
        <div class="row text-center">
          <h2>LOGIN</h2>
          <div class="text-center col-xs-12 col-sm-12 col-md-12 col-lg-12"> </div>
          <div class="text-center col-lg-12"> 
            <form role="form" method="post" id="feedbackForm" class="text-center">
              <div class="form-group">
                <label for="name">Username</label>
                <input type="text" class="form-control" id="name" name="username" placeholder="USERNAME">
              </div>
              <div class="form-group">
                <label for="email">Password</label>
                <input type="password" class="form-control" id="email" name="password" placeholder="PASSWORD">
              </div>
              <input type="submit" name="submit" id="feedbackSubmit" class="btn btn-primary btn-lg" style=" margin-top: 10px;">
            </form>
            <?php
              error_reporting(0);
              if(isset($_POST['submit'])){
                $usern = $_POST['username'];
                $pass = $_POST['password'];
                
                $_SESSION['user'] = $usern;

                $admin = "SELECT username FROM user WHERE username = '$usern' and password = '$pass' and status='ADMIN'";
                $user = "SELECT username FROM user WHERE username = '$usern' and password = '$pass' and status='USER'";
                $instansi = "SELECT username FROM user WHERE username = '$usern' and password = '$pass' and status='INSTANSI'";
                
                $query1 = mysql_query($admin);
                $query2 = mysql_query($user);
                $query3 = mysql_query($instansi);
                try{
                  if(mysql_num_rows($query1) != 0){
                    $us = "ADMIN";
                    $_SESSION['logged_in'] = $usern;
                    echo "<script type='text/javascript'>alert('Login Berhasil, Sebagai ADMIN')</script>";
                    header("location: ../simbok");
                  
                  }else if(mysql_num_rows($query2) != 0){
                    $us = "USER";
                    $_SESSION['logged_in'] = $usern;
                    $na = mysql_query("SELECT no_ktp FROM user WHERE username = '$usern'");
                    $nk = mysql_fetch_array($na);
                    echo "<script type='text/javascript'>alert('Login Berhasil, Sebagai USER ".$nk['name']."')</script>";
                    header("location: ../simbok");

                  }else if(mysql_num_rows($query3) != 0){
                    $us = "INSTANSI";
                    $_SESSION['logged_in'] = $usern;
                    echo "<script type='text/javascript'>alert('Login Berhasil, Sebagai INSTANSI')</script>";
                    header("location: ../simbok");
                  
                  }else{
                    echo "<script type='text/javascript'>alert('LOGIN GAGAL, USERNAME / PASSWORD SALAH')</script>";
                  }
                }catch(exception $e){
                    echo $e->getmessage();
                }
                $_SESSION['status'] = $us;
              }
            ?>
              <div style="margin: 20px 0 0 0;">
                <label style="color: grey; font-size: 13px;" for="keterangan">Belum Punya Akun?</label>
                <a href="index.php?page=register"> Register</a> 
              </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
