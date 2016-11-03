<?php
set_time_limit(0);
ini_set('memory_limit','64M');
require_once("../../../include/config/config.php");
require_once($CONFIG["path"]."/include/config/cx.php");
require_once($CONFIG['pathinclude']."cls/recurso.php");
//Guardar la información en la bd
$datos = $_POST;
//print_r($_POST);
$objRecurso = new recurso;
$objRecurso->datos = $datos;
$id_rr = $objRecurso->addRR($FILES['solicitud']['name']);

$archivos = array();
foreach($_FILES as $name => $file ){
	$objRecurso->subirArchivo($name,$CONFIG['pathrrfacil'],$id_rr);
	if(strlen(trim($file['name']))> 0 )
		$archivos[$name] = $file['name'];
}
//print_r($archivos);
unset($objRecurso);
$mensaje = "Se ha recibido un recurso de revision el cual se adjunta el pdf.";
require_once($CONFIG['pathinclude']."/cls/rrfacilpdf.php");
$objRep = new rrfacil('P','mm','Letter');
$objRep->AddPage("P");
$objRep->cuerpo();
$objRep->Output($CONFIG['pathrrfacil'].$id_rr.".pdf");

//Enviar a correo electrónico
require_once($CONFIG['path'].'/PHPMailer/class.phpmailer.php');
//include("class.smtp.php"); // optional, gets called from within class.phpmailer.php if not already loaded


try {
  	$mail = new PHPMailer();
	$mail->IsSMTP();
	$mail->SMTPAuth = true;
	$mail->Host = "ities.org";
	$mail->Port = 587;
	$mail->Username = "deisy.rodriguez@ities.org";
	$mail->Password = "istai#123"; 
	
	$mail->From = "deisy.rodriguez@ities.org";
	$mail->FromName = "PORTAL DEL ISTAI";
	$mail->Subject = "NUEVO RECURSO DE REVISION";
 	$mail->AddAddress('edrey22@hotmail.com', 'Deisy Rodriguez'); //Cambiar correo por el de rrfacil
  

	  $mail->AltBody = 'To view the message, please use an HTML compatible email viewer!'; // optional - MsgHTML will create an alternate automatically
	  $mail->MsgHTML($mensaje);
	  $mail->AddAttachment($CONFIG['pathrrfacil'].$id_rr.".pdf");      // attachment
	  foreach ($archivos as $name => $value) {
		$mail->AddAttachment($CONFIG['pathrrfacil'].$id_rr."/".$value);
	  }
	  //$mail->AddAttachment($CONFIG['path'].'PHPMailer/examples/images/phpmailer_mini.gif'); // attachment
	  $mail->Send();
	  echo "Message Sent OK</p>\n";
} catch (phpmailerException $e) {
  echo $e->errorMessage(); //Pretty error messages from PHPMailer
} catch (Exception $e) {
  echo $e->getMessage(); //Boring error messages from anything else!
}
exit;
?>
<script>
window.location.href= "confirmacion.php?id_rr=<?=$id_rr?>";
</script>