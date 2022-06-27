<?php
    include "myconnection.php";

    $id = $_GET['NoArtikel'];

    $query = "DELETE FROM artikel WHERE NoArtikel='$id'";

    if(mysqli_query($connect, $query)){
        header('Location:artikelCRUD.php');
    }else{
        echo "Data artikel gagal dihapus <br>"; 
        mysqli_error($connect);
    }

    mysqli_close($connect);
?>