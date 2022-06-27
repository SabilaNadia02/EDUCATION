<?php
    include "myconnection.php";

    $id = $_GET["NoArtikel"];
    $judul = $_GET["Judul"];
    $penulis = $_GET["Penulis"];
    $publish = $_GET["Publish"];
    $link = $_GET["Link"];


    $query = "UPDATE artikel SET Judul='$judul', Penulis='$penulis', Publish='$publish', Link='$link' WHERE NoArtikel='$id'";

    if(mysqli_query($connect, $query)){
        header('Location:artikelCRUD.php');
    }else{
        echo "Gagal mengubah data artikel <br>". mysqli_error($connect);
    }

    mysqli_close($connect);
?>