<?php
    include "myconnection.php";

    $id = $_GET["IdPegawai"];
    $nama = $_GET["Nama"];
    $alamat = $_GET["Alamat"];
    $nohp = $_GET["NoHp"];
    $posisi = $_GET["Posisi"];
    $gaji = $_GET["Gaji"];


    $query = "UPDATE pegawai SET IdPegawai='$id', Nama='$nama', Alamat='$alamat', NoHp='$nohp', Posisi='$posisi', Gaji='$gaji' WHERE IdPegawai='$id'";

    if(mysqli_query($connect, $query)){
        header('Location:pegawaiCRUD.php');
    }else{
        echo "Gagal mengubah data pegawai <br>". mysqli_error($connect);
    }

    mysqli_close($connect);
?>