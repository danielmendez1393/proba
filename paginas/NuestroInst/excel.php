<?php
//configuración y conexión
require_once("../../include/config/config.php");
require_once($CONFIG['pathinclude']."config/cx.php");
require_once($CONFIG['pathinclude']."/cls/directoriopersonal.php");
$objDirPersonal = new directorioPersonal;
$datos = $objDirPersonal->consultarDirPersonal();
unset($objDirPersonal);
header("Content-Type:   application/vnd.ms-excel; charset=ISO-8859-1");
header("Content-type:   application/x-msexcel; charset=ISO-8859-1");
header("Content-Disposition: filename=directorioISTAI.xls");
header("Pragma: no-cache");
header("Expires: 0");

?>
<html>
<table border="1">
	<tr>
    	<th>Fotografia</th>
        <th>Nombre</th>
        <th>Puesto</th>
        <th>Correo Electr&oacute;nico</th>
        <th>Tel&eacute;fono</th>
        <th>Direcci&oacute;n</th>
        <th>Nivel</th>
    </tr>
    <?php
    foreach($datos as $num => $dato){
	?>
    	<tr height="60">
		<td><img width="50" height="50" src="<?=$CONFIG['sitiodirectorio']."fotos/".$dato['foto']?>"></td>
        <td><?=strtoupper(utf8_decode($dato['nombre']))?></td>
        <td><?=$dato['cargo']?></td>
        <td><?=$dato['email']?></td>
        <td><?=$dato['telefono']?></td>
        <td><?=utf8_decode($dato['direccion'])?></td>
        <td><?=$dato['nivel']?></td>
        </tr>
	<?php	
	}
	?>
    
</table>
</html>