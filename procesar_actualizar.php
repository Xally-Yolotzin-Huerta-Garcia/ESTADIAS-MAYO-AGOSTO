<?php
include("conexionDB.php");

    $id = $_POST['id'];
    $clave = $_POST['clave'];
    $clave = mb_convert_case($clave,MB_CASE_UPPER,"UTF-8");
    $primer_nombre = $_POST ['primer_nombre'];
    $primer_nombre = mb_convert_case($primer_nombre,MB_CASE_UPPER,"UTF-8");
    $segundo_nombre = $_POST ['segundo_nombre'];
    $segundo_nombre = mb_convert_case($segundo_nombre,MB_CASE_UPPER,"UTF-8");
    $apellido_paterno = $_POST ['apellido_paterno'];
    $apellido_paterno = mb_convert_case( $apellido_paterno,MB_CASE_UPPER,"UTF-8");
    $apellido_materno = $_POST ['apellido_materno'];
    $apellido_materno = mb_convert_case($apellido_materno,MB_CASE_UPPER,"UTF-8");
    $curp = $_POST ['curp'];
    $curp = mb_convert_case($curp,MB_CASE_UPPER,"UTF-8");
    $rfc = $_POST ['rfc'];
    $rfc = mb_convert_case( $rfc ,MB_CASE_UPPER,"UTF-8");
    $nss = $_POST ['nss'];
    $observaciones = $_POST ['observaciones'];
    $correo_idcorreo = $_POST ['correo_idcorreo'];
    $nivel_comercial_idnivel_comercial = $_POST ['nivel_comercial_idnivel_comercial'];
    $roles_idroles = $_POST ['roles_idroles'];
    $domicilio_iddomicilio = $_POST ['domicilio_iddomicilio'];
    $localizador_idlocalizador = $_POST ['localizador_idlocalizador'];
    $nivel_acceso_idnivel_acceso = $_POST ['nivel_acceso_idnivel_acceso'];

    $actualizar = "UPDATE persona SET clave ='$clave', primer_nombre = '$primer_nombre', segundo_nombre = '$segundo_nombre', apellido_paterno = '$apellido_paterno', apellido_materno = '$apellido_materno', curp = '$curp', rfc = '$rfc', nss = '$nss', observaciones = '$observaciones', correo_idcorreo = '$correo_idcorreo', nivel_comercial_idnivel_comercial = '$nivel_comercial_idnivel_comercial', roles_idroles ='$roles_idroles', domicilio_iddomicilio = '$domicilio_iddomicilio', localizador_idlocalizador = '$localizador_idlocalizador', nivel_acceso_idnivel_acceso = '$nivel_acceso_idnivel_acceso' WHERE idpersona ='$id'";

    $ejecutar = mysqli_query($conex, $actualizar);

   /*validar la ejecucion de nuestra sentencia*/
   if($ejecutar)
   {
       echo'
       <script>
           alert("Persona ha sido actualizado exitosamente");
           window.location="../editar.php";
       </script>
       ';
   }else{
       echo'
       <script>
           alert("Intentenlo de nuevo, persona no actualizado");
           window.location="../modificar.php";
       </script>
       ';
   }
   mysqli_close($conex);