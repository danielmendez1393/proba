<?php 
	$sesion = session_start();	
	$usuario = $_POST['nnombre'];
	$pass = $_POST['npassword'];
	$_SESSION['sesionabierta'] = $usuario;        
	if(isset($_SESSION['sesionabierta'])){
	    session_destroy();
	}
		session_start();
		$nameErre=""; $passErre="";
		
	 	
		require_once("../include/config/config.php");
		require_once($CONFIG['pathinclude']."config/cx.php");
		require_once($CONFIG['pathinclude']."cls/login.php");
		$objLogin = new login;
		$login = $objLogin->Conectar_login($usuario,$pass); 
		//print_r($login);
		//exit;
		unset($objLogin);
		if (empty($usuario)) {
			if (empty($pass)) {
				echo '<script type="text/javascript">
				          alert("Usuario y Contraseña son Requeridos");
				          window.location="../index.php"
				          </script>';	
			}else{
			 echo '<script type="text/javascript">
				          alert("Usuario Requerido");
				          window.location="../index.php"
				          </script>';
			}
			
		}else{
			
				if ($login['usr_username'] == $usuario && $login['usr_passwd'] == $pass) {
					
						 echo'<script type="text/javascript">
					          
					          window.location="Admin/paneladm.php"
					          </script>';
					
				}else{
					echo '<script type="text/javascript">
					          alert("Usuario y/o Contraseña Incorrectos");
					          window.location="../index.php"
					          </script>';
				}
			
		}
	
 ?>