<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CRUD Paket Belajar</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>

<body class="bg-light d-flex flex-column align-items-stretch" style="min-height:100vh;">
    <!-- HEADER -->
    <nav class="navbar" style="background-color: #EB8947;">
        <div class="container-fluid">
            <ul class="nav justify-content-start">
                <li class="nav-item pl-5">
                    <a class="navbar-brand mb-0 h1 " href="indeks.html" style="color: #ffffff;">
                        <h3>EDUCATION</h3>
                    </a>
                </li>
            </ul>
            <ul class="nav justify-content-end">
                <li class="nav-item px-3">
                    <a class="nav-link mb-0 text-light h6" href="#">HOME</a>
                </li>
                <li class="nav-item px-3">
                    <a class="nav-link active mb-0 text-light h6" aria-current="page" href="#"><b>SUNTING</b></a>
                </li>
                <li class="nav-item px-3 pr-5">
                    <a class="nav-link mb-0 text-light h6" href="#">LOGOUT</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- ini Body -->
    <div class="container p-2" style="background-color: #ffffff; flex-grow:1;">

        <?php
        include "myconnection.php";

        $id = $_GET["NoArtikel"];

        $query = "SELECT * FROM artikel WHERE NoArtikel='$id'";
        $result = mysqli_query($connect, $query);

        if (mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_array($result)) {
        ?>

                <h3 class="p-4 py-5 mb-0">
                    SELAMAT DATANG ADMINISTRATOR
                </h3>

                <form action="editArtikelProses.php" method="get">
                    <div class="form-group">
                        <label for="NoArtikel">Nomor Artikel</label>
                        <input type="text" class="form-control" value="<?php echo $row['NoArtikel']; ?>" name="NoArtikel" readonly aria-describedby="artikel">
                    </div>
                    <div class="form-group">
                        <label for="Judul">Judul Artikel</label>
                        <input type="text" class="form-control" value="<?php echo $row['Judul']; ?>" name="Judul" aria-describedby="artikel">
                    </div>
                    <div class="form-group">
                        <label for="Penulis">Nama Penulis</label>
                        <input type="text" class="form-control" value="<?php echo $row['Penulis']; ?>" name="Penulis" aria-describedby="artikel">
                    </div>
                    <div class="form-group">
                        <label for="Publish">Tanggal Publish</label>
                        <input type="text" class="form-control" value="<?php echo $row['Publish']; ?>" name="Publish" aria-describedby="artikel">
                    </div>
                    <div class="form-group">
                        <label for="Link">Link Artikel</label>
                        <input type="text" class="form-control" value="<?php echo $row['Link']; ?>" name="Link" aria-describedby="artikel">
                    </div>
                    <a href="artikelCRUD.php"><button type="button" class="btn btn-danger mx-1" style="border-radius:50px">BACK</button></a>
                    <button type="submit" class="btn btn-primary" style="border-radius:50px">Submit</button>
                </form>
        <?php
            }
        } else {
            echo "0 result";
        }
        ?>
    </div>

    <!-- ini Footer -->
    <div class="footer-copyright text-center py-3" style="background-color: #EB8947; position:relative; bottom:0; width:100%">
        <p class="text-light">© 2022 EDUCATION Landing Page. All rights reserved</p>
    </div>
</body>

</html>