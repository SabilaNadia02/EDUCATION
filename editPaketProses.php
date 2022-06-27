<?php
    include "myconnection.php";

    $id = $_GET["KodePaket"];
    $nama = $_GET["Nama"];
    $benefit = $_GET["Benefit"];
    $harga = $_GET["Harga"];


    $query = "UPDATE paket_belajar SET KodePaket='$id', Nama='$nama', Benefit='$benefit', Harga='$harga' WHERE KodePaket='$id'";

    if(mysqli_query($connect, $query)){
        header('Location:PaketBelajarCRUD.php');
    }else{
        echo "Gagal mengubah data paket belajar <br>". mysqli_error($connect);
    }

    mysqli_close($connect);
?>