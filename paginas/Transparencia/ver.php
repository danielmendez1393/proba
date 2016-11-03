<?php
require_once("../../include/config/config.php");
require_once($CONFIG['pathinclude']."config/cx.php");
require_once($CONFIG["pathinclude"]."cls/fracciones.php");
require_once($CONFIG["pathinclude"]."cls/inf_publicar.php");
//echo "<pre>".print_r($_POST,1)."</pre>";

$id_art = $_POST['id_art'];
$id_frc = $_POST['id_frc'];


$objFracciones = new fracciones;
$articulo = $objFracciones->articulo($id_art);
$fraccion = $objFracciones->fraccion($id_frc);
unset($objFracciones);
if( strlen($fraccion["frc_num"]) > 0 ) $numero = $fraccion["frc_num"].".&nbsp;";
else $numero = "";

$objInformacion = new inf_publicar;
$informacion = $objInformacion->consultarInfo($id_frc);
$secciones = $objInformacion->secciones($id_frc);
//print_r($secciones);
switch($id_frc){
    case 20: $pathlocal= $CONFIG['sitioadmin']."files/convocatorias/";break;
    case 15: $pathlocal= $CONFIG['sitioadmin']."files/convenios/";break;
    case 36: $pathlocal= $CONFIG['sitioadmin']."files/actas/";break;
    default: $pathlocal = $CONFIG['sitioadmin']."files/inf_pub/";break;
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ISTAI</title>
</head>

<body>
          <?php 
		   ob_get_contents();
		  ?>  
            <!-- AREA CENTRAL -->
          <div id="center_side_in">
			<br />
				<p><b><?=$articulo['descripcion']?></b></p>
                <p><b><?=$numero?></b><?=ucfirst(strtolower($fraccion["descripcion"]))?></p>
                <!--DESPLEGAR INFORMACION PUBLICA-->
                <!--a class="view_more" href="javascript:window.history.back();"><< Regresar </a-->
                <?php
                	if(count($secciones) > 0 ){
                        foreach ($secciones as $key => $value) {
                            echo "<p><b>".$value."</b></p>";
                           if(count($informacion[$key]) > 0 ){
						    foreach($informacion[$key] as $num => $info){
                            ?>
                                <li><a href="<?=$pathlocal?><?=$info['archivo']?>" target="_blank"><?=$info['descripcion']?></a></li>
                            <?php

                            }
						   }else{
							   echo "No existen registrados ".$value;
							   }
                        }

                    }else{
					
                        $añoActual = date("Y");
    					//Desplegamos informacion del año actual
    					
    					foreach($informacion[$añoActual] as $num => $info){
    					?>
    						<li><a href="<?=$pathlocal?><?=$info['archivo']?>" target="_blank"><?=$info['descripcion']?></a></li>
    					<?php	
    					}
    					unset($informacion[$añoActual]);
    					
    					foreach($informacion as $anio => $info){
    						if( $anio <> NULL ){
    								echo "<p><b>".$anio."</b></p>";
    							}
        					?>
        					<ul>
        					<?php	
        						foreach($info as $num => $info1){
        						?>
        							<li><a href="<?=$pathlocal?><?=$info1['archivo']?>" target="_blank"><?=$info1['descripcion']?></a></li>
        						<?php	
        						}
        					?>
        					</ul>
        					<?php
    					}
					}
				?>
               
          </div>
          <?php
          $datos = ob_get_contents();
		  
		  ?> 
            

</body>

</html>
