<?php
include("conexionDB.php");
$id = $_GET["id"];
$personas =  "SELECT * FROM persona WHERE idpersona = '$id'";
?>
<!DOCTYPE html>
<head>
    <meta charset ="UTF-8">
    <title> pagina de actualizar </title>
    <meta name="viewport" content="width=device-width, user-scalable = no, initial-scale=1.0, maximum-
    scale=1.0, minimum-scale=1.0">

</head>
<body>
    <br>
    <table>
        <tr>
                <form class="container-table" action="procesar_actualizar.php" method="post">
                <td class="table__header">Id</td>
                <td class="table__header">Clave</td>
                <td class="table__header">Primer_nombre</td>
                <td class="table__header">Segundo_nombre</td>
                <td class="table__header">Apellido_paterno</td>
                <td class="table__header">Apellido_materno</td>
                <td class="table__header">CURP</td>
                <td class="table__header">RFC</td>
                <td class="table__header">NSS</td>
                <td class="table__header">Observaciones</td>
                <td class="table__header">Correo_idcorreo</td>
                <td class="table__header">Nivel_comercial_idnivel_comercial</td>
                <td class="table__header">Roles_idroles</td>
                <td class="table__header">Domicilio_iddomicilio</td>
                <td class="table__header">Localizador_idlocalizador</td>
                <td class="table__header">Nivel_acceso_idnivel_acceso</td>
                <td class="table__header">Operacion</td>
        </tr>

        <?php $resultado = mysqli_query($conex,$personas);
        while($row=mysqli_fetch_array($resultado)){
            ?>
            <tr>
                <td>
                    <input type="text" class="" name="id" value="<?php echo $row['idpersona'] ?>">
               </td>
                <td>
                <input type="text" class=""  name="clave" value="<?php echo $row['clave'] ?>">
                </td>
                <td>
                <input type="text" class="" name="primer_nombre"  value="<?php echo $row['primer_nombre'] ?>">   
                </td>
                <td>
                <input type="text" class="" name="segundo_nombre"  value="<?php echo $row['segundo_nombre'] ?>">    
                </td>
                <td>
                <input type="text" class="" name="apellido_paterno"  value=" <?php echo $row['apellido_paterno'] ?>">   
                </td>
                <td>
                <input type="text" class=""  name="apellido_materno" value="<?php echo $row['apellido_materno'] ?>">    
                </td>
                <td>
                <input type="text" class="" name="curp" maxlength="18" minlength="18"  value="<?php echo $row['curp'] ?>">    
                </td>
                <td>
                <input type="text" class="" name="rfc"  maxlength="13" minlength="10"  value="<?php echo $row['rfc'] ?>" >   
                </td>
                <td>
                <input type="text" class="" name="nss" maxlength="11" minlength="11" pattern="[0-9]+" onkeypress="return (event.charCode >= 48 && event.charCode <= 57)"  value="<?php echo $row['nss'] ?>">    
                </td>
                <td>
                <input type="text" class=""  name="observaciones" maxlength="150" value="<?php echo $row['observaciones'] ?>">    
                </td>
                <td>
                   <input type="text" name="correo_idcorreo"  value="<?php echo $row['correo_idcorreo'] ?>">
                </td>
                <td>
                  <input type="text" class="" name="nivel_comercial_idnivel_comercial"  value="<?php echo $row['nivel_comercial_idnivel_comercial'] ?>"> 
                </td>
                <td>
                   <input type="text" class="" name="roles_idroles"  value="<?php echo $row['roles_idroles'] ?>"> 
                </td>
                <td>
                  <input type="text" name="domicilio_iddomicilio"  value="<?php echo $row['domicilio_iddomicilio'] ?>">  
                </td>
                <td>
                   <input type="text" name="localizador_idlocalizador"  value="<?php echo $row['localizador_idlocalizador'] ?>"> 
                </td>
                <td>
                  <input type="text" name="nivel_acceso_idnivel_acceso"  value="<?php echo $row['nivel_acceso_idnivel_acceso'] ?>">  
                </td>
            </tr>
            <?php
        }  mysqli_free_result($resultado);
         ?>
         <input type="submit" value="actualizar" class="">
    
    </table>
    </div>
</body>
</html>