<?php
set_time_limit(0);
ini_set('memory_limit','64M');
require_once("../../../include/config/config.php");
require_once($CONFIG["path"]."/include/config/cx.php");
require_once($CONFIG['pathinclude']."cls/denuncia.php");
//Guardar la información en la bd


require_once($CONFIG['path'].'/PHPMailer/class.phpmailer.php');

require_once($CONFIG['path'].'/PHPMailer/class.phpmailer.php');
//include("class.smtp.php"); // optional, gets called from within class.phpmailer.php if not already loaded

$mail = new PHPMailer(true); // the true param means it will throw exceptions on errors, which we need to catch

$mail->IsSMTP(); // telling the class to use SMTP
//echo $CONFIG['pathdenuncia'].$id_denuncia.".pdf";

   $mail->Host       = "vm11.digitalserver.org"; // SMTP server
  $mail->SMTPDebug  = 2;                     // enables SMTP debug information (for testing)
  $mail->SMTPAuth   = true;                  // enable SMTP authentication
  $mail->SMTPSecure = "ssl";                 // sets the prefix to the servier
  $mail->Host       = "vm11.digitalserver.org";      // sets GMAIL as the SMTP server
  $mail->Port       = 465;                   // set the SMTP port for the GMAIL server
  $mail->Username   = "deisy.rodriguez@ities.org";  // GMAIL username
  $mail->Password   = "istai#123";  
  $mail->AddAddress('deisy.rodriguez@transparenciasonora.org', 'Denuncia del Portal'); //Cambiar correo por el de rrfacil
  $mail->SetFrom("deisy.rodriguez@ities.org", 'DENUNCIA DEL PORTAL'); //CAmbiar correo del que interpone el recurso de revision
  $mail->AddReplyTo('edrey22@gmail.com', 'First Last');//Correo del que interpone el recurso de revision
  $mail->Subject = 'NUEVA DENUNCIA';
  $mail->AltBody = 'To view the message, please use an HTML compatible email viewer!'; // optional - MsgHTML will create an alternate automatically
  $mail->MsgHTML("prueba");
  //$mail->AddAttachment($CONFIG['pathdenuncia'].$id_denuncia.".pdf");      // attachment
  //foreach ($archivos as $name => $value) {
  //	$mail->AddAttachment($CONFIG['pathdenuncia'].$id_denuncia."/".$value);
  //}
  //$mail->AddAttachment($CONFIG['path'].'PHPMailer/examples/images/phpmailer_mini.gif'); // attachment
  if(!$mail->Send())
  		$mail->error();
	else
  		echo "Message Sent OK</p>\n";


?>
