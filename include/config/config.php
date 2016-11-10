<?php
ini_set('default_charset','UTF-8');
$_SERVER['HTTP_ACCEPT_CHARSET'] = "UTF-8";
$charset = "UTF-8";
error_reporting (E_ALL ^ E_NOTICE ^ E_DEPRECATED);
$CONFIG['path'] = "C:/xampp/htdocs/projectistai/projecto/";
$CONFIG['sitio'] = "http://".$_SERVER['HTTP_HOST']."/projectistai/projecto/";
$CONFIG['pathpuente'] = "c://xampp/htdocs/puente/";
$CONFIG['sitiopuente'] = "http://".$_SERVER['HTTP_HOST']."/puente/";
$CONFIG['pathtrans'] = $CONFIG['sitio']."Administrador/Admin/Trans/relacion/";
$CONFIG['pathtranscrud'] = $CONFIG['sitio']."Administrador/Admin/Trans/crud/";
$CONFIG['sitioimgnotas'] = $CONFIG['sitio']."files/notas/img/";
$CONFIG['pathtrans'] = $CONFIG['sitio']."Administrador/Admin/Trans/relacion/";
$CONFIG['pathtranscrud'] = $CONFIG['sitio']."Administrador/Admin/Trans/crud/";
$CONFIG['pathformato'] = $CONFIG['sitio']."Administrador/Admin/Trans/crud/formato/";
$CONFIG['pathpln'] = $CONFIG['sitio']."Administrador/Admin/Plno/";
$CONFIG['resoluciones'] =  "files/resoluciones/";
$CONFIG['actas'] =  "files/actas/";
$CONFIG['acuerdos'] =  "files/acuerdos/";
$CONFIG['convocatorias'] =  "files/convocatorias/";
$CONFIG['informes'] =  "files/informes/";
$CONFIG['notas'] =  "files/notas/";

$CONFIG['pathinclude'] = "c://xampp/htdocs/projectistai/projecto/include/";
$CONFIG['sitiodirectorio'] = $CONFIG['sitio']."files/directorio/";
$CONFIG['pathrrfacil'] =  $CONFIG['path']."files/recursos/";
$CONFIG['sitiorrfacil'] =  $CONFIG['sitio']."files/recursos/";
?>