<?php
//Conexion base de datos


$dbhost ="localhost";
$user = "itiesorg_root1";
$password = "OGP]5}8rNBTN";
$dbname = "itiesorg_iti";

try{
	$link = mysql_connect($dbhost, $user, $password );
	if( !$link )
		throw new Exception( mysql_errno()." ".mysql_error() );
	if( !mysql_select_db($dbname, $link) )
		throw new Exception( mysql_errno()." ".mysql_error() );

}catch( Exception $e ){
	echo "Error al conectarse ala base de datos".mysql_error();
	exit;
	
}
//$acentos = mysql_query("SET NAMES 'utf8'",$link);
?>
