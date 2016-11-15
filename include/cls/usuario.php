<?php 
	
	class Datos
	{
		
		function ingresar_datos($nombreusr,$passwd, $perfil, $nombre, $apellido,  $tipousr )
		{
			global $link;
			$sql = "CALL Usuario_insertar('%1\$s','%2\$s','%3\$s','%4\$s','%5\$s','%6\$s')";
			$sql = sprintf($sql, $nombreusr, $passwd, $perfil,$nombre, $apellido, $tipousr);
			$result = $link->query($sql);
			$result->close();
			$link->next_result();
			return $result;
			
			
		}

		function Borrar_datos($idusr){
			global $link;
			$sql = "CALL Usuario_borrar('%1\$s')";
			$sql = sprintf($sql, $idusr);
			echo $sql;
			$result = $link->query($sql);
			/*$resultado = array();
			while( $row = mysqli_fetch_assoc($result) ){
				$resultado = $row;
			}*/$result->close();
			$link->next_result();
			
			return $result;
			

		}

		function Consultar_datos($tipo){
			global $link;
			$sql = "CALL Usuario_consulta('%1\$s')";
			$sql = sprintf($sql, $tipo);
			$result = $link->query($sql);
			$resultado = array();
			while( $row = mysqli_fetch_assoc($result) ){
				$resultado[]=$row;
				//array_push($resultado,$row);
			}
			$result->close();
			$link->next_result();
			return $resultado;
			
		}

		function Consultar_usuario($idusr){
			global $link;
			$sql = "CALL Usuario_ver('%1\$s')";
			$sql = sprintf($sql, $idusr);
			$result = $link->query($sql);
			$resultado = array();
			while( $row = mysqli_fetch_assoc($result) ){
				$resultado =$row;
				//array_push($resultado,$row);
			}
				
			$result->close();
			$link->next_result();
			return $resultado;	
		}

		function Consulta_All(){
			global $link;
			$sql = "select usr_username from ct_usr";
			$result = $link->query($sql);
			$resultado = array();
			while( $row = mysqli_fetch_assoc($result) ){
				$resultado[] =$row;
				//array_push($resultado,$row);
			}
			
			$result->close();
			$link->next_result();
			return $resultado; 
		}

		function Modificar_datos($idusr,$nombreusr,  $perfil,$nombre, $apellido, $tipousr )
		{
			
			global $link;
			$sql = "CALL Usuario_modificar('%1\$s','%2\$s','%3\$s','%4\$s','%5\$s','%6\$s')";
			$sql = sprintf($sql,$idusr, $nombreusr, $perfil,$nombre, $apellido, $tipousr);
			//echo $sql;
			$result = $link->query($sql);
			//$resultado = array();
			/*while( $row = mysqli_fetch_assoc($result) ){
				$resultado = $row;
			}*/
			$result->close();
			$link->next_result();
			return $result;
			
		}

		function Tipo_usuario($idusr){
			global $link;
			//echo "idusr=".$idusr;
			$sql = "CALL Usuario_tipo('%1\$s')";
			$sql = sprintf($sql,$idusr);

			$result = $link->query($sql);
			if($result == false)
					echo $link->error;
			$resultado = array();
			//echo $sql;
			while( $row = mysqli_fetch_assoc($result) ){
				$resultado[] = $row;
				//array_push($resultado,$row);
			}
			
			$result->close();
			$link->next_result();
			return $resultado; 
		}

		
	}

	/**
	* 
	*/
	class tiposusr
	{
		
		function agregar($tipousr)
		{
			global $link;
			$sql = "insert into ct_tipousr(tusr_nombre) values ('%1\$s')";
			$sql = sprintf($sql,$tipousr);
			$result = $link->query($sql);
			$result->close();
			$link->next_result();
			return $result;
		}
		function borrar($idtipo)
		{
			global $link;
			$sql = "update ct_tipousr set activo = 0 where id_tipousr = ('%1\$s')";
			$sql = sprintf($sql, $idtipo);
			echo $sql;
			$result = $link->query($sql);
			$result->close();
			$link->next_result();			
			return $result;
		}
		function modificar($tipousr, $idtipo)
		{
			global $link;
			$sql = "update ct_tipousr set tusr_nombre = ('%1\$s') where id_tipousr =('%2\$s')";
			$sql = sprintf($sql,$tipousr, $idtipo);
			//echo $sql;
			$result = $link->query($sql);
			$result->close();
			$link->next_result();
			return $result;
		}
		function ver()
		{
			global $link;
			$sql = "select * from ct_tipousr where activo = 1";
			$result = $link->query($sql);
			$resultado = array();
			while( $row = mysqli_fetch_assoc($result) ){
				$resultado[]=$row;			}
			$result->close();
			return $resultado;
		}
		function verall($id_tipousr){
			global $link;
			$sql = "select * from ct_tipousr where id_tipousr = ('%1\$s')";
			$sql = sprintf($sql,$tipousr, $id_tipousr);
			$result = $link->query($sql);
			$resultado = array();
			while( $row = mysqli_fetch_assoc($result) ){
				$resultado=$row;			}
			$result->close();
			return $resultado;
		}
	}
	/**
	* 
	*/
	/*class perfil 
	{
		
		function (argument)
		{
			# code...
		}
		function agregar(argument)
		{
			# code...
		}
		function agregar(argument)
		{
			# code...
		}
		function agregar(argument)
		{
			# code...
		}
	}*/

 ?>