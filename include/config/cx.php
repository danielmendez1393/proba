<?php
//Conexión BD con excepciones 

define("MYSQL_CONN_ERROR", "Imposible conectarse a la Base de Datos."); 


mysqli_report(MYSQLI_REPORT_STRICT); 

// Funcion de conexio BD 
function connect($usr,$pw,$db,$host) { 
   global $link;
   try { 
      $link = new mysqli($host,$usr,$pw,$db); 
      $connected = true; 
   } catch (mysqli_sql_exception $e) { 
      throw $e; 
   } 
} 

try { 
  connect('root','','dbistai','localhost'); 
  //echo 'Connected to database'; 
} catch( Exception $e) { 
  echo "Error al conectar en BD mensaje :".$e; 
} 
$acentos = $link->query("SET NAMES 'utf8'");
?>