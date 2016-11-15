							<?php  
								$pagina = isset($_GET['j']) ? strtolower($_GET['j']) : 'agregar';
							?>            
		                    <div class="">
		                      <ul class="nav nav-pills">
		                        <li class="<?php echo $pagina == 'agregar' ? 'active' : ''; ?>">	<a data-toggle="pill" href="#" onclick="window.location='?p=usuarios&j=agregar'">Agregar</a></li>
              					<li class="<?php echo $pagina == 'consulta' ? 'active' : ''; ?>">	<a data-toggle="pill" href="#" onclick="window.location='?p=usuarios&j=consulta'">Consulta</a></li>
              					<li class="<?php echo $pagina == 'tipousr' ? 'active' : ''; ?>">	<a data-toggle="pill" href="#" onclick="window.location='?p=usuarios&j=tipousr'">Tipos de Usuarios</a></li>	
              					<li class="<?php echo $pagina == 'perfil' ? 'active' : ''; ?>">	<a data-toggle="pill" href="#" onclick="window.location='?p=usuarios&j=perfil'">Tipos de Perfiles</a></li>
              					
              
		                      </ul>
		                      <div>
		                      	<?php 
				            	switch ($pagina) {
							    	case 'agregar':
							    		//include("capacitacion.php");
							    		require_once 'user/' . 'agregar'. '.php';
							    		break;
							    	
							    	case 'eliminar':
							    		require_once  'user/' . 'eliminar' . '.php';
							    		# code...
							    		break;	

							    	case 'consulta':
							    		require_once  'user/' . 'consulta' . '.php';
							    		# code...
							    		break;		

							    	case 'modificar':
							    		require_once  'user/' . 'modificar' . '.php';
							    		# code...
							    		break;		

							    	case 'perfil':
							    		require_once  'user/' . 'perfil' . '.php';
							    		# code...
							    		break;		

							    	case 'tipousr':
							    		require_once  'user/' .'tipousr' . '.php';
							    		# code...
							    		break;	    	

							    	default:
							    		require_once 'user/' . 'agregar'. '.php';
							    		break;
							    }
				             ?>
		                      </div>
		                      
		                      
		                    </div>