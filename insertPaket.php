<?php
    include "myconnection.php";

    $id = $_GET["KodePaket"];
    $nama = $_GET["Nama"];
    $benefit = $_GET["Benefit"];
    $harga = $_GET["Harga"];

    $query = "INSERT INTO paket_belajar(KodePaket, Nama, Benefit, Harga)
            VALUES('$id','$nama', '$benefit', '$harga')";

    if(mysqli_query($connect, $query)){
        header('Location:paketBelajarCRUD.php');
    }else{
        echo "Paket Belajar gagal ditambahkan <br>". mysqli_error($connect);
    }

    mysqli_close($connect);
?>