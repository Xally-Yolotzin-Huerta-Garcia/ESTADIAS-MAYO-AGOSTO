<?php
include("conexionDB.php");

insertar($conex);

function insertar ($conex){
    $email = $_POST['email_s'];
       /*verifica que correo no se repita en la base de datos*/

   $verificar_email = mysqli_query($conex, "SELECT * FROM correo WHERE email = '$email'");

   if(mysqli_num_rows($verificar_email) > 0)
   {
       echo '
       <script>
           alert("Este correo ya se encuentra registrado intente con otro diferente por favor");
           window.location="../index_persona.php";
       </script>
       ';
       die();
   }
    $consulta = "INSERT INTO correo (email) VALUES ('$email')";
    $ejecutar=mysqli_query($conex, $consulta);
    
/*validar la ejecucion de nuestra sentencia*/
    if($ejecutar)
    {
        echo'
        <script>
            alert("Correo registrado exitosamente");
            window.location="../index_correo.html";
        </script>
        ';
    }else{
        echo'
        <script>
            alert("Intentenlo de nuevo, correo no registrado");
            window.location="../index_correo.html";
        </script>
        ';
    }
    mysqli_close($conex);
}

?>

