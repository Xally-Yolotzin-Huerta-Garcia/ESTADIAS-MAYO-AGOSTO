<?php
include("conexionDB.php");

insertar($conex);

function insertar ($conex){
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
    $curp = $_POST ['curp_s'];
    $curp = mb_convert_case($curp,MB_CASE_UPPER,"UTF-8");
    $rfc = $_POST ['rfc'];
    $rfc = mb_convert_case( $rfc ,MB_CASE_UPPER,"UTF-8");
    $nss = $_POST ['nss'];
    $observaciones = $_POST ['observaciones'];
    $correo_idcorreo = $_POST ['correos'];
    $nivel_comercial_idnivel_comercial = $_POST ['nivel_comercial'];
    $roles_idroles = $_POST ['roles'];
    $domicilio_iddomicilio = $_POST ['domicilio'];
    $localizador_idlocalizador = $_POST ['localizador'];
    $nivel_acceso_idnivel_acceso = $_POST ['nivel_acceso'];


   /*verifica que correo no se repita en la base de datos*/

   $verificar_curp = mysqli_query($conex, "SELECT * FROM persona WHERE curp='$curp'");

   if(mysqli_num_rows($verificar_curp) > 0)
   {
       echo '
       <script>
           alert("Este curp ya se encuentra registrado intente con otro diferente por favor");
           window.location="../index_persona.php";
       </script>
       ';
       die();
   }

    $consulta = "INSERT INTO persona(clave, primer_nombre, segundo_nombre, apellido_paterno, apellido_materno, curp, rfc, nss, observaciones, correo_idcorreo, nivel_comercial_idnivel_comercial, roles_idroles, domicilio_iddomicilio, localizador_idlocalizador, nivel_acceso_idnivel_acceso) VALUES ('$clave','$primer_nombre','$segundo_nombre','$apellido_paterno','$apellido_materno ','$curp ','$rfc','$nss',' $observaciones','$correo_idcorreo','$nivel_comercial_idnivel_comercial',' $roles_idroles','    $domicilio_iddomicilio','$localizador_idlocalizador',' $nivel_acceso_idnivel_acceso')";
    $ejecutar = mysqli_query($conex, $consulta);


/*validar la ejecucion de nuestra sentencia*/
    if($ejecutar)
    {
        echo'
        <script>
            alert("Persona ha sido registrado exitosamente");
            window.location="../index_persona.php";
        </script>
        ';
    }else{
        echo'
        <script>
            alert("Intentenlo de nuevo, persona no registrado");
            window.location="../index_persona.php";
        </script>
        ';
    }
    mysqli_close($conex);
    
}

?>
