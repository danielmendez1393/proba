<?php
require_once($CONFIG['path']."/include/fpdf/fpdf.php");
class rrfacil extends fpdf{
	var $datosRR;
	//Consultamos los datos del acta de inicio
 
 	function Header(){
		global $CONFIG;
		$this->image($CONFIG['path']."img/logom.jpg",5,10,45,25);
		$this->SetFont('times','B',12);
		$this->Cell(0,6,"INSTITUTO SONORENSE DE TRANSPARENCIA ",0,1,"C");
		$this->Cell(0,6,"ACCESO A LA INFORMACIÓN PÚBLICA Y ",0,1,"C");
		$this->Cell(0,6,"PROTECCIÓN DE DATOS PERSONALES",0,1,"C");
		$this->Cell(0,6,"RECURSO DE REVISIÓN",0,1,"C");
		$this->Cell(0,6, date('d-m-Y'),0,1,"R");
		$this->rect(10,45,195,220);
	}
	
	function cuerpo(){
		global $datos,$archivos;
		
		$this->SetFillColor("155");
		$this->rect(10,45,195,8,"F");
		$this->setY(40);
		$this->Multicell(195,15,"1. Datos del Recurrente o de su representante");
		$this->SetFont('times','',10.5);	
		$this->Multicell(195,8," Solicitante: ".$datos['solicitante']);
		$this->Multicell(195,8," Denominación o Razón Social: ".$datos['razonsocial']);
		$this->Multicell(195,8," Representante (en su caso): ".$datos['representante']);
		$this->Multicell(195,8," Tercer Interesado (en su caso): ".$datos['interesado']);
		$this->rect(10,95,195,8,"F");
		$this->setY(90);
		$this->SetFont('times','B',10.5);	
		$this->Multicell(195,15,"2. Correo Electrónico para recibir notificaciones");
		$this->SetFont('times','',10.5);	
		$this->Multicell(195,8," Correo Electrónico: ".$datos['email']);
		$this->rect(10,120,195,8,"F");
		$this->setY(115);
		$this->SetFont('times','B',10.5);	
		$this->Multicell(195,15,"3. El Sujeto Obligado Responsable");
		$this->SetFont('times','',10.5);
		$this->Multicell(195,8," Instancia o Dependencia que ocurrió en el acto u omisión reclamado:");
		$this->SetFont('times','',10.5);	
		$this->Multicell(195,8,$datos['sobligado']);
		
		$this->rect(10,160,195,8,"F");
		$this->setY(155);
		$this->SetFont('times','B',10.5);
		$this->Multicell(195,15,"4. Solicitud");
		$this->SetFont('times','',10.5);
		$this->Multicell(195,8," Folio de la Solicitud:".$datos['sfolio'] );
		$this->SetFont('times','',10.5);	
		if( $datos['respondio'] == "SI")
			$this->Multicell(195,8," Fecha de respuesta".$datos['fecharesp']);
		else
			$this->Multicell(195,8," Fecha de solicitud".$datos['fechasol']);
		$this->rect(10,190,195,8,"F");
		$this->SetFont('times','B',10.5);	
		$this->Multicell(195,15,"5. El Acto u Omision que se reclama");
		$this->Multicell(195,8," Explique su queja o inconformidad y, de contar con el dato, indique el número de folio con que se registró su solicitud de acceso a la información pública.");
		$this->SetFont('times','',10.5);
		$this->Multicell(195,8,$datos['queja']);
		$this->addPage();
		$this->rect(10,38,195,8,"F");
		$this->setY(35);
		$this->SetFont('times','B',10.5);
		$this->Multicell(195,15,"6. Hechos o Agravios Impugnados");
		$this->SetFont('times','',10.5);
		$this->Multicell(195,8," Describir en forma detallada los hechos y agravios causados por el acto o resolución impugnados.");
		$this->Multicell(195,8,$datos['agravio']);
		$this->rect(10,145,195,10,"F");
		$this->setY(145);
		$this->SetFont('times','B',10.5);
		$this->Multicell(195,15,"7. Enumeración de Pruebas");
		$this->SetFont('times','',10.5);
		$this->Multicell(195,8," En caso de existir, enlistar y describir aquí las pruebas conducentes (documentos, archivos y/o declaraciones testimoniales), de las cuales puede usted anexar copias (presentando los originales para cotejar).");
		$this->Multicell(195,8,$datos['descpruebas']);
		$this->Multicell(195,8," Pruebas presentadas:");
		foreach ($archivos as $key => $value) {
			$this->Multicell(195,8,$value);
			# code...
		}
		
	}
	
	
	function Footer(){
		$this->SetFont('times','I',8);
		$this->SetY(-10);
		$this->Cell(0,10,' ',0,0,'C');
		$this->Cell(0,10,'F-ISTAI-AJ-001 Rev.- 1',0,0,'R');
	}
	
	

}

?>