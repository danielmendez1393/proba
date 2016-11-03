<?php
set_time_limit(0);
ini_set('memory_limit','64M');
require_once("../../../include/config/config.php");
require_once($CONFIG["path"]."/include/config/cx.php");
require_once($CONFIG['pathinclude']."cls/denuncia.php");
//Guardar la información en la bd
$datos = $_POST;
//print_r($_POST);
//print_r($_FILES);
$objDenuncia = new denuncia;
$objDenuncia->datos = $datos;
$id_denuncia = $objDenuncia->addDenuncia($_FILES['prueba1']['name']);

$archivos = array();
if(count($_FILES)>0){
	foreach($_FILES as $name => $file ){
		$objDenuncia->subirArchivo($name,$CONFIG['pathdenuncia'],$id_denuncia);
		if(strlen(trim($file['name']))> 0 )
			$archivos[$name] = $file['name'];
	}
}
//print_r($archivos);
unset($objDenuncia);


$mensaje = "Se ha recibido una nueva denuncia a traves del portal, la cual se adjunta en pdf.";
require_once($CONFIG['pathinclude']."/cls/denunciapdf.php");
$objRep = new denunciapdf('P','mm','Letter');
$objRep->AddPage("P");
$objRep->cuerpo();
$objRep->Output($CONFIG['pathdenuncia'].$id_denuncia.".pdf");

unset($objRep);

//Enviar a correo electrónico
//require_once($CONFIG['path'].'/PHPMailer/class.phpmailer.php');
//include("class.smtp.php"); // optional, gets called from within class.phpmailer.php if not already loaded
include("class.phpmailer.php"); 
include("class.smtp.php");




$email = new PHPMailer();
$email->IsSMTP();
$email->SMTPAuth = true;
$email->Host = "ities.org";
$email->Port = 587;
$email->Username = "deisy.rodriguez@ities.org";
$email->Password = "istai#123"; 

$email->From = "deisy.rodriguez@ities.org";
$email->FromName = "PORTAL DEL ISTAI";
$email->Subject = "NUEVA DENUNCIA";
$email->MsgHTML("<b>Se ha recibido una nueva denuncia a traves del portal, la cual se adjunta en pdf.</b>");
$email->AddAttachment($CONFIG['pathdenuncia'].$id_denuncia.".pdf");      // attachment
if(count($archivos)>0){
	foreach ($archivos as $name => $value) {
		$email->AddAttachment($CONFIG['pathdenuncia'].$id_denuncia."/".$value);
	}
}
//$email->AltBody("mensaje");
//AltBody se envía el mensaje en texto plano y 
//MsgHTML el mensaje en formato HTML
//$mail->AddAttachment("files/files.zip");
//$mail->AddAttachment("files/img03.jpg");
//$email->AddAddress("edrey22@hotmail.com", "Deisy Rodriguez");
$email->IsHTML(true);
 /*  $mail->Host       = "vm11.digitalserver.org"; // SMTP server
  $mail->SMTPDebug  = 2;                     // enables SMTP debug information (for testing)
  $mail->SMTPAuth   = true;                  // enable SMTP authentication
  $mail->SMTPSecure = "ssl";                 // sets the prefix to the servier
  $mail->Host       = "vm11.digitalserver.org";      // sets GMAIL as the SMTP server
  $mail->Port       = 465;                   // set the SMTP port for the GMAIL server
  $mail->Username   = "deisy.rodriguez@ities.org";  // GMAIL username
  $mail->Password   = "istai#123";  */
  $email->AddAddress('deisy.rodriguez@transparenciasonora.org', "Recurso de Revision"); //Cambiar correo por el de rrfacil
  //$mail->SetFrom("deisy.rodriguez@ities.org", 'DENUNCIA DEL PORTAL'); //CAmbiar correo del que interpone el recurso de revision
  //$email->AddReplyTo('edrey22@gmail.com', 'Deisy Rodriguez');//Correo del que interpone el recurso de revision
  //$mail->Subject = 'NUEVA DENUNCIA';
  //$mail->AltBody = 'To view the message, please use an HTML compatible email viewer!'; // optional - MsgHTML will create an alternate automatically
  //$mail->MsgHTML($mensaje);
  
  //$mail->AddAttachment($CONFIG['path'].'PHPMailer/examples/images/phpmailer_mini.gif'); // attachment
  if(!$email->Send())
  		$email->error();
	else
  		echo "Message Sent OK</p>\n";

//exit;
?>
<script>
window.location.href= "confirmacion.php?id_denuncia=<?=$id_denuncia?>";
</script>