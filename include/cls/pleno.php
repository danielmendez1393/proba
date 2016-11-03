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


?>