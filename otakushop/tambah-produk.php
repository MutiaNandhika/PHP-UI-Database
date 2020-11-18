<?php
    session_start();
    include 'db.php';
    if($_SESSION['status_login'] != true){
        echo '<script>window.location="login.php" </script>';
    }

?>
<!DOCTYPE html></!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>OtakuShop</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
    <script src="https://cdn.ckeditor.com/4.15.1/standard/ckeditor.js"></script>
</head>
<body >
<header>
    <div class="container">
        <h1><a href="dashboard.php">OtakuShop</a></h1>
        <ul>
            <li><a href="dashboard.php">Dashboard</a></li>
            <li><a href="profil.php">Profil</a></li>
            <li><a href="data-kategori.php">Data Kategori</a></li>
            <li><a href="data-produk.php">Data Produk</a></li>
            <li><a href="keluar.php">Keluar</a></li>
        </ul>
    </div>
</header>
 <!--content-->
    <div class="section">
        <div class="container">
            <h3>Tambah Data Produk</h3>
            <div class="box">
                <form action="" method="POST" enctype="multipart/form-data">
                    <select class="input-control" name="kategori" required="">
                        <option value="">--Pilih--</option>
                        <?php 
                        $kategori = mysqli_query($conn, "SELECT * FROM tb_category ORDER BY category_id");
                        while($r = mysqli_fetch_array($kategori)){

                        ?>
                        <option value="<?php echo $r['category_id']?>"><?php echo $r['category_name']?></option>
                        <?php }?>

                    </select>
                    <input type="text" name="nama" class="input-control" placeholder="Nama Product" require>
                    <input type="text" name="harga" class="input-control" placeholder="Harga" require>
                    <input type="file" name="gambar" class="input-control" require>
                    <textarea class="input-control" name="deskripsi" placeholder="Deskripsi" ></textarea><br>
                    <select class="input-control" name="status">
                        <option value="">---PILIH---</option>
                        <option value="1">Aktif</option>
                        <option value="0">Tidak Aktif</option>
                    </select>
                    <input type="submit" name="submit" value="Submit" class="btn">
                </form>
                <?php

                    if(isset($_POST['submit'])){

                   // print_r($_FILES['gambar']);
                   //menampung inputan dari form
                      $kategori = $_POST['kategori'];
                      $nama     = $_POST['nama'];
                      $harga    = $_POST['harga'];
                      $deskripsi = $_POST['deskripsi'];
                      $status   = $_POST['status'];

                  //menampung data file yang diupload
                      $filename = $_FILES['gambar']['name'];
                      $tmp_name = $_FILES['gambar']['tmp_name'];

                        $type1 = explode('.', $filename);
                        $type2 = $type1[1];

                        $newname = 'produk'.time().'.'.$type2;

                    //menampung data format file yang diizinkan
                    $tipe_diizinkan = array( 'jpg', 'jpeg', 'png', 'gif');

                    //validasi format file
                    if(!in_array($type2,$tipe_diizinkan)){
                      //jika format file tidak ada di dalam array tipe diizinkan
                      echo '<script>alert("Format file tidak diizinkan")</script>';
                      
                    }else{
                        //proses upload file sekaligus insert ke database
                        //jika format file sesuai dengan yang ada di dalam array tipe diizinkan
                      
                      move_uploaded_file($tmp_name,'./produk/'.$newname);

                      $insert = mysqli_query($conn, "INSERT INTO tb_product VALUES(
                          null,
                          '".$kategori."',
                          '".$nama."',
                          '".$harga."',
                          '".$deskripsi."',
                          '".$newname."',
                          '".$status."',
                          null
                          
                            )");

                          if($insert){
                               echo '<script>alert("simpan data berhasil")</script>';
                               echo '<script>window.location="data-produk.php"</script>';
                              
                                
                            }else{
                                echo 'gagal'.mysqli_error($conn);
                            }

                    }

                    
                }

                ?>
            </div>

        </div>
    </div>
 <!--Footer-->
 <footer>
        <div class="container">
            <small>Copyright &copy; OtakuShop 2020 - Mutia Nandhika.</small>
        </div>
    </footer>
    <script>
        CKEDITOR.replace( 'deskripsi' );
    </script>
</body>
</html>