<?php 
session_start();
	if ($_SESSION['id_usr']!=0) {


		echo'<script type="text/javascript">
		          alert("Sesion Finalizada");
		          window.parent.location="../index.php"
		          </script>';
		session_unset(); 
		session_destroy();
	}
 ?>