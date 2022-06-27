<?php
    include "myconnection.php";

    $id = $_GET['KodeVideo'];

    $query = "DELETE FROM video_pembelajaran WHERE KodeVideo='$id'";

    if(mysqli_query($connect, $query)){
        header('Location:videoBelajarCRUD.php');
    }else{
        echo "Data video gagal dihapus <br>"; 
        mysqli_error($connect);
    }

    mysqli_close($connect);
?>