<?php
    include "myconnection.php";

    $id = $_GET["KodeVideo"];
    $kdPaket = $_GET["Kode_Paket"];
    $judul = $_GET["Judul"];
    $video = $_GET["Video"];
    $rangkuman = $_GET["Rangkuman"];

    $query = "INSERT INTO video_pembelajaran(KodeVideo, Kode_Paket, Judul, Video, Rangkuman)
            VALUES('$id','$kdPaket', '$judul', '$video', '$rangkuman')";

    if(mysqli_query($connect, $query)){
        header('Location:videoBelajarCRUD.php');
    }else{
        echo "Video pembelajaran gagal ditambahkan <br>". mysqli_error($connect);
    }

    mysqli_close($connect);
?>