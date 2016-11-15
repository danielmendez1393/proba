    <?php 
    session_start();
    require_once("../../include/config/config.php");
    require_once($CONFIG['pathinclude']."config/cx.php");
    require_once($CONFIG['pathinclude']."cls/usuario.php");
    $objUser = new Datos;
    $datos = $objUser->Tipo_usuario(1);
 ?>
    <section class="services-style-3 main-contain">
 	 	
		<div  class="container">
          <div class=" col s12" style="align-items: center; text-align: left;" align="center">
                <h3>Agregar</h3>   
                                     

                                        <div class="form-main" style="text-align: left; align-items: center;" align="center">
                                            <div class="row">
                                              <form class="col l12" target="Modifi" method="POST" action="<?=$CONFIG['sitio']?>Administrador/insertarlink.php" autocomplete="off">
                                                <div class="row">
                                                  <div class="input-field col s12">
                                                    <input id="nombre" type="text" class="validate" name="name" required>
                                                    <label for="first_name">Nombre</label>
                                                  </div>

                                                  <div class="input-field col s12">
                                                    <input name="lastname" id="apellidos" type="text" class="validate">
                                                    <label for="last_name">Apellidos</label>
                                                  </div>                                                
                                               
                                                  <div class="input-field col s12">
                                                    <input name="usrname" id="nombre_usuario" type="text" class="validate">
                                                    <label for="username">Nombre de usuario</label>
                                                  </div>                                               
                                                
                                                  <div class="input-field col s12">
                                                    <input name="password" id="password" type="password" class="validate">
                                                    <label for="password">Contraseña</label>
                                                  </div>

                                                  <div class="input-field col s12">
                                                    <select name="perfil">
                                                      <option value="Administrador">Administrador</option>
                                                      <option value="Subir Notas">Subir Notas</option>
                                                      <option value="Usuario">Usuario</option>
                                                    </select>
                                                  </div>


                                                  <div class="input-field col s12">    
                                                    <select name="tipo">
                                                       <option value="" disabled selected>Elige el Area del Usuario</option>
                                                       <?php 
                                                           foreach ($datos as $row => $dato) {                                        
                                                        ?> 
                                                        <option value="<?=$dato['id_tipousr']?>" required><?=$dato['tusr_nombre']?></option>
                                                        <?php 
                                                           }
                                                        ?>                            
                                                    </select>
                                                    <label>Tipo de Usuario</label>
                                                  </div>

                                                  <div align="center" class="col l12" style="align-items: center;">
                                                    <!--input type="submit" value="Enviar" class="form-button" /-->
                                                    <button class="btn waves-effect waves-light col l12" type="submit" name="action" >Enviar
                                                        <i class="material-icons ">send</i>
                                                      </button>
                                                </div>
                                              </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>

	<iframe id="Modicar" name="Modifi" height="0" width="0"  ></iframe> 

		

