<?php
ini_set('default_charset','UTF-8');
$_SERVER['HTTP_ACCEPT_CHARSET'] = "UTF-8";
$charset = "UTF-8";
error_reporting (E_ALL ^ E_NOTICE ^ E_DEPRECATED);
$CONFIG['path'] = "/home/itiesorg/public_html/";
$CONFIG['sitio'] = "http://".$_SERVER['HTTP_HOST']."/";
$CONFIG['pathpuente'] = "/home/itiesorg/public_html/puente/";
$CONFIG['sitiopuente'] = "http://".$_SERVER['HTTP_HOST']."/puente/";

$CONFIG['pathinclude'] = "/home/itiesorg/public_html/include/";
$CONFIG['sitioimgnotas'] = $CONFIG['sitio']."files/notas/img/";
$CONFIG['sitiodirectorio'] = $CONFIG['sitio']."files/directorio/";
$CONFIG['pathrrfacil'] =  $CONFIG['path']."files/recursos/";
$CONFIG['sitiorrfacil'] =  $CONFIG['sitio']."files/recursos/";
$CONFIG['pathdenuncia'] =  $CONFIG['path']."files/denuncia/";
$CONFIG['sitiodenuncia'] =  $CONFIG['sitio']."files/denuncia/";
?>