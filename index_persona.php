<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="hoja de estilo" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
    <style type="text/css"> 
   .transformacion1 { text-transform: capitalize;}   
   .transformacion2 { text-transform: uppercase;}   
   .transformacion3 { text-transform: lowercase;}   
   </style> 
    <link rel="stylesheet" href="estilos_popup.css">
    <FORM action = "registrar_persona.php" method="post"> <!--revisar error no funcionan los estilos con php-->
    <title>Grupo_Comercial_Aries</title>
</head>
<body>
    <div class="contenedor">
        <article>
            <h1> formulario persona </h1>
            <a href="#" class="btn-abrir-popup" id="btn-abrir-popup">formulario personas</a>

        </article>
         <div class="overlay" id="overlay">
             <div class="popup" id="popup">
                 <a href="#" id="btn-cerrar-popup" class="btn-cerrar-popup"><i class="fas fa-times"></i>x</a>
                 <h3>Personas</h3>
                 <h4>Registre a la nueva persona</h4>
                 <form method="post">
                     <div class="contenedor-inputs">
                         <input type="text" placeholder="ingrese su clave" name="clave" required="" maxlength="45" >
                         <input type="text" placeholder="primer nombre" name="primer_nombre" maxlength="45" required="" onkeypress="return event.charCode != 233" >
                         <input type="text" placeholder="segundo nombre" name="segundo_nombre" maxlength="45" >
                         <input type="text" placeholder="apellido paterno" name="apellido_paterno" maxlength="45" >
                         <input type="text" placeholder="apellido materno" name="apellido_materno" maxlength="45"  >
                         <input type="text" placeholder="ingrese su curp" name="curp_s" maxlength="18" minlength="18" required="" id="curp">
                         <input type="text" placeholder="ingrese su rfc" name="rfc" maxlength="13" minlength="10" required="">
                         <input type="number" placeholder="ingrese su nss" name="nss" maxlength="11" minlength="11" required="" pattern="[0-9]+" onkeypress="return (event.charCode >= 48 && event.charCode <= 57)">
                         <input type="text" placeholder="ingrese las observaciones" name="observaciones" maxlength="150">
                     </div>
                     <div>
                     <?php
                    $mysqli = mysqli_connect("localhost","root","","grupo_comercial_aries");
                    $resultado = mysqli_query($mysqli, "select idcorreo,email from correo");
                    ?>
                    <table>
                        <tr>
                            <th>correos</th>
                        </tr>
                        <tr>
                            <td>
                                <select name="correos">
                                    <option value="0" disabled selected>Selecciona una opcion</option>
                                    <?php
                                    while ($fila = $resultado->fetch_assoc()):
                                        $idcorreo = $fila['idcorreo'];
                                        $email = $fila['email'];
                                        echo "<option value=$idcorreo>$email</option>";
                                    endwhile;
                                    ?>
                                </select>
                            </td>
                        </tr>
                    </table>
                     </div>
                     <div>
                     <?php
                    $mysqli = mysqli_connect("localhost","root","","grupo_comercial_aries");
                    $resultado = mysqli_query($mysqli, "select idnivel_comercial,nivel_comercial from nivel_comercial");
                    ?>
                    <table>
                        <tr>
                            <th>nivelcomercial</th>
                        </tr>
                        <tr>
                            <td>
                                <select name="nivel_comercial">
                                <option value="0" disabled selected>Selecciona una opcion</option>
                                    <?php
                                    while ($fila = $resultado->fetch_assoc()):
                                        $idnivel_comercial= $fila['idnivel_comercial'];
                                        $nivel_comercial = $fila['nivel_comercial'];
                                        echo "<option value=$idnivel_comercial>$nivel_comercial</option>";
                                    endwhile;
                                    ?>
                                </select>
                            </td>
                        </tr>
                    </table>
                     </div>
                     <div>
                     <?php
                    $mysqli = mysqli_connect("localhost","root","","grupo_comercial_aries");
                    $resultado = mysqli_query($mysqli, "select idroles,roles from roles");
                    ?>
                    <table>
                        <tr>
                            <th>roles</th>
                        </tr>
                        <tr>
                            <td>
                                <select name="roles">
                                <option value="0" disabled selected>Selecciona una opcion</option>
                                    <?php
                                    while ($fila = $resultado->fetch_assoc()):
                                        $idroles = $fila['idroles'];
                                        $roles = $fila['roles'];
                                        echo "<option value=$idroles>$roles</option>";
                                    endwhile;
                                    ?>
                                </select>
                            </td>
                        </tr>
                    </table>
                     </div>
                     <div>
                     <?php
                    $mysqli = mysqli_connect("localhost","root","","grupo_comercial_aries");
                    $resultado = mysqli_query($mysqli, "select iddomicilio,calle from domicilio");
                    ?>
                    <table>
                        <tr>
                            <th>domicilio</th>
                        </tr>
                        <tr>
                            <td>
                                <select name="domicilio">
                                <option value="0" disabled selected>Selecciona una opcion</option>
                                    <?php
                                    while ($fila = $resultado->fetch_assoc()):
                                        $iddomicilio = $fila['iddomicilio'];
                                        $domicilio = $fila['calle'];
                                        echo "<option value=$iddomicilio>$domicilio</option>";
                                    endwhile;
                                    ?>
                                </select>
                            </td>
                        </tr>
                    </table>
                     </div>
                     <div>
                     <?php
                    $mysqli = mysqli_connect("localhost","root","","grupo_comercial_aries");
                    $resultado = mysqli_query($mysqli, "select idlocalizador, telefono_uno from localizador");
                    ?>
                    <table>
                        <tr>
                            <th>localizador</th>
                        </tr>
                        <tr>
                            <td>
                                <select name="localizador">
                                <option value="0" disabled selected>Selecciona una opcion</option>
                                    <?php
                                    while ($fila = $resultado->fetch_assoc()):
                                        $idlocalizador = $fila['idlocalizador'];
                                        $telefono_uno = $fila['telefono_uno'];
                                        echo "<option value=$idlocalizador>$telefono_uno</option>";
                                    endwhile;
                                    ?>
                                </select>
                            </td>
                        </tr>
                    </table> 
                     </div>
                     <div>
                     <?php
                    $mysqli = mysqli_connect("localhost","root","","grupo_comercial_aries");
                    $resultado = mysqli_query($mysqli, "select idnivel_acceso, nivel_acceso from nivel_acceso");
                    ?>
                    <table>
                        <tr>
                            <th>nivel acceso</th>
                        </tr>
                        <tr>
                            <td>
                                <select name="nivel_acceso">
                                <option value="0" disabled selected>Selecciona una opcion</option>
                                    <?php
                                    while ($fila = $resultado->fetch_assoc()):
                                        $idnivel_acceso = $fila['idnivel_acceso'];
                                        $nivel_acceso = $fila['nivel_acceso'];
                                        echo "<option value=$idnivel_acceso>$nivel_acceso</option>";
                                    endwhile;
                                    ?>
                                </select>
                            </td>
                        </tr>
                    </table>  
                     </div>
                     <input type="submit" class="btn-submit" value="Enviar" name="enviar" id="btnEnviar">
                 </form>
             </div>
         </div>
    </div>
    <script src="popup.js"></script>
</body>
</html>