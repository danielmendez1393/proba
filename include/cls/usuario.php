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

 ?>