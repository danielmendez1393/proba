<?php
include("class.phpmailer.php"); 
include("class.smtp.php");
$email = new PHPMailer();
$email->IsSMTP();
$email->SMTPAuth = true;
$email->From = "deisy.rodriguez@ities.org";
$email->FromName = "Deisy Rodriguez";
$email->AddAddress("edrey22@gmail.com", "Deisy Rodriguez");
$email->WordWrap = 50;
$email->IsHTML(true);
$email->Subject = "titulo del correo desde el server de ities";
$email->Body ="<b>mensaje dgfdghfd </b>";
$email->AltBody = "mensaje sin html";


$email->Host = "ities.org";
$email->Port = 587;
$email->SMTPAuth = true;
$email->Username = "deisy.rodriguez@ities.org";
$email->Password = "istai#123"; 





if(!$email->Send()) {
   return "<b>Error:" . $email->ErrorInfo."</b><br/>";
} 
else {
   return "Mensaje enviado correctamente";
}
?>
