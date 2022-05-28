<?php
include("conexionDB.php");

insertar($conex);

function insertar ($conex){
    $telefono_uno = $_POST['telefono_uno_s'];
    $telefono_dos = $_POST['telefono_dos_s'];


    /*valida telefono_uno en la tabla localizadores*/
$telefono_uno_verificar = mysqli_query($conex, "SELECT * FROM localizador WHERE telefono_uno = '$telefono_uno'");

if(mysqli_num_rows($telefono_uno_verificar) > 0)
{
    echo '
    <script>
        alert("El telefono uno ya se encuentra registrado intente con otro diferente por favor");
        window.location="../index_localizador.html";
    </script>
    ';
    die();
}

    /*valida telefono_dos en la tabla localizadores*/
    $telefono_dos_verificar = mysqli_query($conex, "SELECT * FROM localizador WHERE telefono_dos = '$telefono_dos'");

    if(mysqli_num_rows($telefono_dos_verificar) > 0)
    {
        echo '
        <script>
            alert("El telefono dos ya se encuentra registrado intente con otro diferente por favor");
            window.location="../index_localizador.html";
        </script>
        ';
        die();
    }
    

    /* realiza la setencia de insertar nuevos registros en la tabla localizadores */
    $consulta = "INSERT INTO localizador(telefono_uno, telefono_dos)
    VALUES ('$telefono_uno', '$telefono_dos')";
   $ejecutar= mysqli_query($conex, $consulta);
   

/*validar la ejecucion de nuestra sentencia*/
    if($ejecutar)
    {
        echo'
        <script>
            alert("Localizadores registrados exitosamente");
            window.location="../index_correo.html";
        </script>
        ';
    }else{
        echo'
        <script>
            alert("Intentenlo de nuevo, localizador no registrado");
            window.location="../index_correo.html";
        </script>
        ';
    }

    mysqli_close($conex);

}

?>


