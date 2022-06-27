<?php
    include "myconnection.php";

    $judul = $_GET["Judul"];
    $penulis = $_GET["Penulis"];
    $publish = $_GET["Publish"];
    $link = $_GET["Link"];

    $query = "INSERT INTO artikel(judul, Penulis, Publish, Link)
            VALUES('$judul','$penulis', '$publish', '$link')";

    if(mysqli_query($connect, $query)){
        header('Location:artikelCRUD.php');
    }else{
        echo "artikel gagal ditambahkan <br>". mysqli_error($connect);
    }

    mysqli_close($connect);
?>