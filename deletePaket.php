<?php
    include "myconnection.php";

    $id = $_GET['KodePaket'];

    $query = "DELETE FROM paket_belajar WHERE KodePaket='$id'";

    if(mysqli_query($connect, $query)){
        header('Location:paketBelajarCRUD.php');
    }else{
        echo "Data paket belajar gagal dihapus <br>"; 
        mysqli_error($connect);
    }

    mysqli_close($connect);
?>