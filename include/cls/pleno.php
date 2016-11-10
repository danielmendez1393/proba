<?php

class pleno{
	var $anio;
	
	function actas(){
		
		global $CONFIG,$link;
		if( $this->anio > 1 ){
			$condition = " AND act_anio = %d";
			$condition = sprintf( $condition, $this->anio);
		}
		$sql = "SELECT act_num, act_descripcion, act_fecha, act_archivo, act_anio , act_id
				FROM pln_actas
				WHERE activo = 1 %s 
				ORDER BY act_anio, act_num";
		$sql = sprintf($sql,$condition);
		//echo $sql;
		$result = $link->query($sql);
		if($result == false){
			return false;	
		}
		$resultados = array();
		while( $row = mysqli_fetch_assoc($result) ){
			$resultados[]=$row;	
		}
		$result->close();
		//$link->next_result();	
		return $resultados;
	}
		
	function resoluciones($expediente=''){
		global $CONFIG,$link;
		if( $this->anio > 1 ){
			$condition = " AND rsl_anio = %d";
			$condition = sprintf( $condition, $this->anio);
		}
		if( strlen(trim($expediente)) > 0 ){
			$condition .= " AND rsl_expediente = '%s'";
			$condition .= sprintf( $condition, $expediente);
		} 
		$sql = "SELECT rsl_expediente,rsl_sobligado, rsl_recurrente, rsl_fecha,rsl_anio,rsl_archivo, rsl_id
				FROM pln_resoluciones
				WHERE activo = 1 %s 
				ORDER BY rsl_anio,rsl_expediente";
		$sql = sprintf($sql,$condition);
		//echo $sql;
		$result = $link->query($sql);
		if($result == false){
			return false;	
		}
		$resultados = array();
		while( $row = mysqli_fetch_assoc($result) ){
			$resultados[]=$row;	
		}
		$result->close();
		//$link->next_result();	
		return $resultados;
	}
		
		
	function convocatorias(){
		global $CONFIG,$link;
		if( $this->anio > 0 ){
			$condition = " AND cnv_anio = %d";
			$condition = sprintf( $condition, $this->anio);
		}
		$sql = "SELECT cnv_id,cnv_fecha, date_format(STR_TO_DATE(cnv_fecha,'%d-%m-%Y'),'%Y-%m-%d') as fecha,cnv_archivo
				FROM pln_convocatorias
				WHERE activo = 1 ";

		if( $this->anio > 0 ){
			$sql .= " AND cnv_anio = ".$this->anio;
		}
		$sql .="  ORDER BY cnv_anio, fecha desc";
		//$sql = sprintf($sql,$condition);
		//echo $sql;
		$result = $link->query($sql);
		if($result == false){
			return false;	
		}
		$resultados = array();
		while( $row = mysqli_fetch_assoc($result) ){
			$resultados[]=$row;	
		}
		$result->close();
		//if(count($resultados) > 0)
		//	$link->next_result();	
		return $resultados;
	}
		
		
	function informes(){
		global $CONFIG,$link;
		}
		
		
	function acuerdos($actual=0){
		global $CONFIG,$link;
		if($actual==1){
			$sql = "SELECT acr_id, acr_expedientes, acr_fecha, acr_archivo, acr_anio 
				FROM pln_acuerdos
				WHERE activo = 1 AND acr_id=( SELECT MAX(acr_id) FROM pln_acuerdos WHERE activo = 1)";
			}
		else{
			if( $this->anio > 1 ){
				$condition = " AND acr_anio = %d";
				$condition = sprintf( $condition, $this->anio);
			}
			$sql = "SELECT acr_id, acr_expedientes, acr_fecha, acr_archivo, acr_anio 
					FROM pln_acuerdos
					WHERE activo = 1 %s 
					ORDER BY acr_anio, acr_fecha";
			$sql = sprintf($sql,$condition);
		}
		//echo $sql;
		$result = $link->query($sql);
		if($result == false){
			return false;	
		}
		$resultados = array();
		while( $row = mysqli_fetch_assoc($result) ){
			$resultados[]=$row;	
		}
		$result->close();
		//$link->next_result();	
		return $resultados;
	}
}
class resoluciones
{
	
	function create($v_expediente, $v_sobligado,$v_recurrente,$v_fecha,$v_archivo,$v_anio)
	{
		global $link;
		$sql = "CALL Resolucion_agregar('%1\$s','%2\$s','%3\$s','%4\$s','%5\$s','%6\$s')";
		$sql = sprintf($sql, $v_expediente, $v_sobligado,$v_recurrente,$v_fecha,$v_archivo,$v_anio);
		$result = $link->query($sql);
		$link->next_result();			
		return $result;
	}
	function read()
	{
		global $link;
		$sql = "CALL Resolucion_consulta() ";
		$sql = sprintf($sql);
		$result = $link->query($sql);
		$resultado = array();
		while( $row = mysqli_fetch_assoc($result) ){
		$resultado[] = $row;
		}
		$link->next_result();			
		return $resultado;
	}
	function update($v_idresol,$v_expediente, $v_sobligado,$v_recurrente,$v_fecha,$v_archivo,$v_anio)
	{
		global $link;
		$sql = "CALL Resolucion_modificar('%1\$s','%2\$s','%3\$s','%4\$s','%5\$s','%6\$s','%7\$s')";
		$sql = sprintf($sql,$v_idresol,$v_expediente, $v_sobligado,$v_recurrente,$v_fecha,$v_archivo,$v_anio);
		$result = $link->query($sql);	
		$link->next_result();		
		return $result;
	}
	function delete($v_idresol)
	{
		global $link;
		$sql = "CALL Resolucion_Borrar('%1\$s')";
		$sql = sprintf($sql, $v_idresol);
		$result = $link->query($sql);			
		$link->next_result();			
		return $result;							
	}
	function readid($v_idresol)
	{
		global $link;
		$sql = "CALL Resolucion_ver('%1\$s')";
		$sql = sprintf($sql, $v_idresol);
		$result = $link->query($sql);
		$resultado = array();
		while( $row = mysqli_fetch_assoc($result) ){
			$resultado =$row;
		}
		$link->next_result();
		return $resultado;
	}
}

class convocatorias
{
	
	function create($v_fecha,$v_tipo,$v_archivo)
	{
		global $link;
		$sql = "CALL Convocatoria_agregar('%1\$s','%2\$s','%3\$s')";
		$sql = sprintf($sql, $v_fecha,$v_tipo,$v_archivo);
		$result = $link->query($sql);
		$link->next_result();			
		return $result;
	}
	function read()
	{
		global $link;
		$sql = "CALL Convocatoria_consulta() ";
		$sql = sprintf($sql);
		$result = $link->query($sql);
		$resultado = array();
		while( $row = mysqli_fetch_assoc($result) ){
		$resultado[] = $row;
		}
		$link->next_result();			
		return $resultado;
	}
	function update($v_idcnv,$v_fecha,$v_tipo,$v_archivo)
	{
		global $link;
		$sql = "CALL Convocatoria_modificar('%1\$s','%2\$s','%3\$s','%4\$s')";
		$sql = sprintf($sql,$v_idcnv,$v_fecha,$v_tipo,$v_archivo);
		$result = $link->query($sql);	
		$link->next_result();		
		return $result;
	}
	function delete($v_idcnv)
	{
		global $link;
		$sql = "CALL Convocatoria_borrar('%1\$s')";
		$sql = sprintf($sql, $v_idcnv);
		$result = $link->query($sql);			
		$link->next_result();			
		return $result;							
	}
	function readid($v_idcnv)
	{
		global $link;
		$sql = "CALL Convocatoria_ver('%1\$s')";
		$sql = sprintf($sql, $v_idcnv);
		$result = $link->query($sql);
		$resultado = array();
		while( $row = mysqli_fetch_assoc($result) ){
			$resultado =$row;
		}
		$link->next_result();
		return $resultado;
	}
}

class actas
{
	
	function create($v_fecha,$v_numani,$v_archivo,$v_numact)
	{
		global $link;
		$sql = "CALL Acta_agregar('%1\$s','%2\$s','%3\$s','%4\$s')";
		$sql = sprintf($sql, $v_fecha,$v_numani,$v_archivo,$v_numact);
		$result = $link->query($sql);
		$link->next_result();			
		return $result;
	}
	function read()
	{
		global $link;
		$sql = "CALL Acta_consulta() ";
		$sql = sprintf($sql);
		$result = $link->query($sql);
		$resultado = array();
		while( $row = mysqli_fetch_assoc($result) ){
		$resultado[] = $row;
		}
		$link->next_result();			
		return $resultado;
	}
	function update($v_idacta,$v_fecha,$v_numani,$v_archivo,$v_numact)
	{
		global $link;
		$sql = "CALL Acta_modificar('%1\$s','%2\$s','%3\$s','%4\$s','%5\$s')";
		$sql = sprintf($sql,$v_idacta,$v_fecha,$v_numani,$v_archivo,$v_numact);
		$result = $link->query($sql);	
		$link->next_result();		
		return $result;
	}
	function delete($v_idacta)
	{
		global $link;
		$sql = "CALL Acta_borrar('%1\$s')";
		$sql = sprintf($sql, $v_idacta);
		$result = $link->query($sql);			
		$link->next_result();			
		return $result;							
	}
	function readid($v_idacta)
	{
		global $link;
		$sql = "CALL Acta_ver('%1\$s')";
		$sql = sprintf($sql, $v_idacta);
		$result = $link->query($sql);
		$resultado = array();
		while( $row = mysqli_fetch_assoc($result) ){
			$resultado =$row;
		}
		$link->next_result();
		return $resultado;
	}
}

class acuerdos
{
	
	function create($v_expedientes,$v_archivo,$v_anio,$v_fecha)
	{
		global $link;
		$sql = "CALL Acuerdo_agregar('%1\$s','%2\$s','%3\$s','%4\$s')";
		$sql = sprintf($sql, $v_expedientes,$v_archivo,$v_anio,$v_fecha);
		$result = $link->query($sql);
		$link->next_result();			
		return $result;
	}
	function read()
	{
		global $link;
		$sql = "CALL Acuerdo_consulta() ";
		$sql = sprintf($sql);
		$result = $link->query($sql);
		$resultado = array();
		while( $row = mysqli_fetch_assoc($result) ){
		$resultado[] = $row;
		}
		$link->next_result();			
		return $resultado;
	}
	function update($v_idacuerdo,$v_expedientes,$v_archivo,$v_anio,$v_fecha)
	{
		global $link;
		$sql = "CALL Acuerdo_modificar('%1\$s','%2\$s','%3\$s','%4\$s','%5\$s')";
		$sql = sprintf($sql,$v_idacuerdo,$v_expedientes,$v_archivo,$v_anio,$v_fecha);
		$result = $link->query($sql);	
		$link->next_result();		
		return $result;
	}
	function delete($v_idacuerdo)
	{
		global $link;
		$sql = "CALL Acuerdo_borrar('%1\$s')";
		$sql = sprintf($sql, $v_idacuerdo);
		$result = $link->query($sql);			
		$link->next_result();			
		return $result;							
	}
	function readid($v_idacuerdo)
	{
		global $link;
		$sql = "CALL Acuerdo_ver('%1\$s')";
		$sql = sprintf($sql, $v_idacuerdo);
		$result = $link->query($sql);
		$resultado = array();
		while( $row = mysqli_fetch_assoc($result) ){
			$resultado =$row;
		}
		$link->next_result();
		return $resultado;
	}
}

class informe
{
	
	function create($v_informe,$v_archivo,$v_anio)
	{
		global $link;
		$sql = "CALL Informe_agregar('%1\$s','%2\$s','%3\$s')";
		$sql = sprintf($sql,$v_informe,$v_archivo,$v_anio);
		$result = $link->query($sql);
		$link->next_result();			
		return $result;
	}
	function read()
	{
		global $link;
		$sql = "CALL Informe_consulta() ";
		$sql = sprintf($sql);
		$result = $link->query($sql);
		$resultado = array();
		while( $row = mysqli_fetch_assoc($result) ){
		$resultado[] = $row;
		}
		$link->next_result();			
		return $resultado;
	}
	function update($v_idinf,$v_informe,$v_archivo,$v_anio)
	{
		global $link;
		$sql = "CALL Informe_modificar('%1\$s','%2\$s','%3\$s','%4\$s')";
		$sql = sprintf($sql,$v_idinf,$v_informe,$v_archivo,$v_anio);
		$result = $link->query($sql);	
		$link->next_result();		
		return $result;
	}
	function delete($v_idinf)
	{
		global $link;
		$sql = "CALL Informe_borrar('%1\$s')";
		$sql = sprintf($sql, $v_idinf);
		$result = $link->query($sql);			
		$link->next_result();			
		return $result;							
	}
	function readid($v_idinf)
	{
		global $link;
		$sql = "CALL Informe_ver('%1\$s')";
		$sql = sprintf($sql, $v_idinf);
		$result = $link->query($sql);
		$resultado = array();
		while( $row = mysqli_fetch_assoc($result) ){
			$resultado =$row;
		}
		$link->next_result();
		return $resultado;
	}
}

?>