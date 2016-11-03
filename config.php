<?php
$_SERVER['HTTP_ACCEPT_CHARSET'] = "UTF-8";
//$_SERVER['HTTP_ACCEPT_LANGUAGE'] = "spanish.Mexico";
error_reporting(E_ALL ^ E_NOTICE ^ E_WARNING ^ E_DEPRECATED);
//error_reporting(E_ALL );
setlocale(LC_ALL,'es_MX');
setlocale(LC_ALL,'spanish_Mexico');
//Definicion de variables globales
$CONFIG['path'] = '/home/itiesorg/public_html/';
$CONFIG['sitio'] = "http://".$_SERVER['HTTP_HOST']."/";
$CONFIG['clases'] = $CONFIG['path'].'inc/cls/';
$CONFIG['bdname'] = 'dbITI';
$CONFIG['sitioadmin'] = "http://".$_SERVER['HTTP_HOST']."/admin/";
$CONFIG['pathadmin'] = '/home/itiesorg/public_html/admin/';
$CONFIG['actas'] =  $CONFIG['sitioadmin']."files/actas/";
$CONFIG['convocatorias'] =  $CONFIG['sitioadmin']."files/convocatorias/";
$CONFIG['acuerdos'] =  $CONFIG['sitioadmin']."files/acuerdos/";
$CONFIG['notas'] =  $CONFIG['sitioadmin']."files/notas/imagenes/";
$CONFIG['notasa'] =  $CONFIG['sitioadmin']."files/notas/pdfs/";
$CONFIG['galerias'] =  $CONFIG['sitioadmin']."files/galerias/";
$CONFIG['pathrrfacil'] =  $CONFIG['pathadmin']."files/recursos/";

?>