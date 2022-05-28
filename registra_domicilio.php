<?php
include("conexionDB.php");
insertar($conex);

function insertar ($conex){
    $calle = $_POST['calle'];
    $calle = mb_convert_case($calle,MB_CASE_UPPER,"UTF-8");
    $num_interior = $_POST[ 'numero_interior'];
    $num_exterior = $_POST ['numero_exterior'];
    $colonia = $_POST['colonia'];
    $colonia = mb_convert_case($colonia,MB_CASE_UPPER,"UTF-8");
    $municipio = $_POST['municipio'];
    $municipio = mb_convert_case($municipio,MB_CASE_UPPER,"UTF-8");
    $entidad_federativa = $_POST['entidad_federativa'];
    $entidad_federativa = mb_convert_case( $entidad_federativa, MB_CASE_UPPER,"UTF-8");
    $codigo_postal = $_POST['codigo_postal'];

    $consulta = "INSERT INTO domicilio( calle, num_interior, num_exterior, colonia ,municipio, entidad_federativa, codigo_postal) VALUES ( '$calle', '$num_interior', '$num_exterior', '$colonia', '$municipio','$entidad_federativa', '$codigo_postal')";
    mysqli_query($conex, $consulta);
    /* conversion a MAYUSCULAS */
    mysqli_close($conex);
}
?>