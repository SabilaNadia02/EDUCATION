<?php
    include "myconnection.php";

    $id = $_GET["IdPegawai"];
    $nama = $_GET["NamaPegawai"];
    $alamat = $_GET["Alamat"];
    $nohp = $_GET["NoHp"];
    $posisi = $_GET["Posisi"];
    $gaji = $_GET["Gaji"];


    $query = "INSERT INTO pegawai(idPegawai, Nama, Alamat, NoHp, Posisi, Gaji)
            VALUE('$id','$nama', '$alamat', '$nohp', '$posisi', '$gaji')";

    if(mysqli_query($connect, $query)){
        header('Location:pegawaiCRUD.php');
    }else{
        echo "Pegawai gagal ditambahkan <br>". mysqli_error($connect);
    }

    mysqli_close($connect);
?>