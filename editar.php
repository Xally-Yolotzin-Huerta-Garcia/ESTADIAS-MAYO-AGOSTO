<?php
include("conexionDB.php");
$personas =  "SELECT * FROM persona";
?>
<!DOCTYPE html>
<head>
    <meta charset ="UTF-8">
    <title> pagina principal </title>
    <meta name="viewport" content="width=device-width, user-scalable = no, initial-scale=1.0, maximum-
    scale=1.0, minimum-scale=1.0">

</head>
<body>
    <br>
    <table>
        <tr>
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
                <td><?php echo $row['clave'] ?></td>
                <td><?php echo $row['primer_nombre'] ?></td>
                <td><?php echo $row['segundo_nombre'] ?></td>
                <td><?php echo $row['apellido_paterno'] ?></td>
                <td><?php echo $row['apellido_materno'] ?></td>
                <td><?php echo $row['curp'] ?></td>
                <td><?php echo $row['rfc'] ?></td>
                <td><?php echo $row['nss'] ?></td>
                <td><?php echo $row['observaciones'] ?></td>
                <td><?php echo $row['correo_idcorreo'] ?></td>
                <td><?php echo $row['nivel_comercial_idnivel_comercial'] ?></td>
                <td><?php echo $row['roles_idroles'] ?></td>
                <td><?php echo $row['domicilio_iddomicilio'] ?></td>
                <td><?php echo $row['localizador_idlocalizador'] ?></td>
                <td><?php echo $row['nivel_acceso_idnivel_acceso'] ?></td>
                <td class="table__item">
                    <a href="modificar.php?id=<?php echo $row['idpersona'] ?>" class="table__item__link">Editar</a> |
                    <a href="eliminar.php" class="table__item__link">Eliminar</a>
                </td>





            </tr>
            <?php
        }     
         ?>
    
    </table>
    </div>
</body>
</html>