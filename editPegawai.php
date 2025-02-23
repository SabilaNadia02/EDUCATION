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

        $id = $_GET["IdPegawai"];

        $query = "SELECT * FROM pegawai WHERE IdPegawai='$id'";
        $result = mysqli_query($connect, $query);

        if (mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_array($result)) {
        ?>

                <h3 class="p-4 py-5 mb-0">
                    SELAMAT DATANG ADMINISTRATOR
                </h3>

                <form action="editPegawaiProses.php" method="get">
                    <div class="form-group">
                        <label for="IdPegawai">ID Pegawai</label>
                        <input type="text" class="form-control" value="<?php echo $row['IdPegawai']; ?>" name="IdPegawai" readonly aria-describedby="pegawai">
                    </div>
                    <div class="form-group">
                        <label for="NamaPegawai">Nama Lengkap Pegawai</label>
                        <input type="text" class="form-control" value="<?php echo $row['Nama']; ?>" name="Nama" aria-describedby="pegawai">
                    </div>
                    <div class="form-group">
                        <label for="Alamat">Alamat Pegawai</label>
                        <input type="text" class="form-control" value="<?php echo $row['Alamat']; ?>" name="Alamat" aria-describedby="pegawai">
                    </div>
                    <div class="form-group">
                        <label for="NoHp">Nomor Hp Pegawai</label>
                        <input type="text" class="form-control" value="<?php echo $row['NoHp']; ?>" name="NoHp" aria-describedby="pegawai">
                    </div>
                    <div class="form-group">
                        <label for="Posisi">Posisi</label>
                        <input type="text" class="form-control" value="<?php echo $row['Posisi']; ?>" name="Posisi" aria-describedby="pegawai">
                    </div>
                    <div class="form-group">
                        <label for="Gaji">Gaji</label>
                        <input type="text" class="form-control" value="<?php echo $row['Gaji']; ?>" name="Gaji" aria-describedby="pegawai">
                    </div>
                    <a href="pegawaiCRUD.php"><button type="button" class="btn btn-danger mx-1" style="border-radius:50px">BACK</button></a>
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