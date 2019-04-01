<?php

  function conectDatabase() {
    $user = "root";
    $pass = "root";
    $server = "localhost";
    $dataBase = "nuestratablaperiodicadb";
    $conexion = mysqli_connect($server,$user,$pass)
                or die ("Error al conectar con la base de datos".mysqli_error());
    mysqli_select_db($dataBase,$conexion);
    return $conexion;
  }

 ?>
