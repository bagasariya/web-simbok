  <?php
    $res = "SELECT * FROM user where status!='ADMIN'";
    $query = mysql_query($res);
  ?>
  <section id="contect">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <ul class="portfolio-categ filter">
            <li class="all active"><a href="#">All</a></li>
            <li class="user"><a href="#">User</a></li>
            <li class="instansi"><a href="#">Instansi</a></li>
          </ul>
        </div>
      </div>
    </div>
  </section>
  <div class="container">
  <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Cari Berdasarkan Status (USER / INSTANSI)">
    <form action="" method="post">
      <table style="width:100%;" id="myTable">
        <tr>
          <th>NIK / No Identitas</th>
          <th>Nama</th>
          <th>Jenis Kelamin</th>
          <th>No.Telp</th>
          <th style="width: 250px;">Alamat</th>
          <th>Kode Pos</th>
          <th>status</th>
          <th style="text-align: center;">Edit / Delete</th>
        </tr>
        <?php
        $i = 0;
          while($tampil = mysql_fetch_array($query)){
          $no_id = $tampil['id'];
          $noka = $tampil['no_ktp']; 
          echo "
          <tr>
            <td>".$tampil['no_ktp']."</td>
            <td>".$tampil['name']."</td>
            <td>".$tampil['sex']."</td>
            <td>".$tampil['no_telp']."</td>
            <td>".$tampil['alamat']."</td>
            <td>".$tampil['kode_pos']."</td>
            <td>".$tampil['status']."</td>
            <td style='text-align: center;'>
              <a href='update.php?nk=$noka&&st=INSTANSI' class='btn'>INSTANSI<br>
              <a href='update.php?nk=$noka&&st=USER' class='btn'>USER<br>
              <a href='delete.php?nk=$noka' class='btn'>DELETE</a>
            </td>
          </tr>
          ";
          $i++;
          }
        ?>
      </table>
    </form>
  </div>
  <br>
  <script>
function myFunction() {
  // Declare variables
  var input, filter, table, tr, td, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[6];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }
}
</script>