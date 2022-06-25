<?php
    include "myconnection.php";

    $id = $_GET['IdPegawai'];

    $query = "DELETE FROM pegawai WHERE IdPegawai='$id'";

    if(mysqli_query($connect, $query)){
        header('Location:pegawaiCRUD.php');
    }else{
        echo "Data pegawai gagal dihapus <br>"; 
        mysqli_error($connect);
    }

    mysqli_close($connect);
?>