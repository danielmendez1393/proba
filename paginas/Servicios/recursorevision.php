<?php
//configuración y conexión
require_once("../../include/config/config.php");
require_once($CONFIG['pathpuente']."inc/cx.php");
require_once($CONFIG['pathpuente']."inc/cls/so.php");
$objSO = new so;
$sujetos = $objSO->sujetosObligados();

?>
<!DOCTYPE html>
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
    <head>
        <title>Transparencia Sonora</title>
        <!-- Meta -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="The Dream Multipurpose HTML5 Template">
        <meta name="author" content="CraftDzine">

        <!-- Favicon -->
        <link rel="shortcut icon" href="<?=$CONFIG['sitio']?>img/istai/iconoistai.ico">

       
        <!-- CSS Global -->
        <link rel="stylesheet" href="<?=$CONFIG['sitio']?>css/bootstrap.min.css">
        <link rel="stylesheet" href="<?=$CONFIG['sitio']?>css/style.css">
        <link rel="stylesheet" href="<?=$CONFIG['sitio']?>plugins/owl-carousel/owl.carousel.css">
        <link rel="stylesheet" href="<?=$CONFIG['sitio']?>plugins/owl-carousel/owl.theme.css">
		<!-- Funciones de rrfacil-->
        <script language="javascript">
		function imprimir(){
			frmRrfacil.target="_blank";
			frmRrfacil.action = 'rrfacil/print.php';
			frmRrfacil.submit();
			}
		
		function ValidateSubmit( form ){
			//alert("Entre a validar");
			/*cambiar('NumActa');*/
			document.getElementById('divSolicitante').style.display = 'none';
			document.getElementById('divCorreo').style.display = 'none';
			document.getElementById('divSO').style.display = 'none';
			document.getElementById('divQueja').style.display = 'none';
			document.getElementById('divSolicitud').style.display = 'none';
				
			form.elements['btnSubmit'].disabled = true;
			form.target = 'ifrmHddnValidate';
			form.action = 'rrfacil/valida.php';
			form.submit();
		}
		
		function submitNoValid(error){
			alert("Favor de proporcionar los datos obligatorios requeridos para el trámite");
			for (index = 0; index < error.length; ++index) {
				//alert(error[index]+'');
				cambiar(error[index]);
				
			}	
			form = document.forms['frmRrfacil'];
			form.target="_self";
			form.elements['btnSubmit'].disabled = false;
			form.action = "recursorevision.php";
			
		}
		
		function submitValid(){
			var form = document.forms['frmRrfacil'];
			form.target="_self";	
			form.elements['btnSubmit'].disabled = false;
			form.action = "rrfacil/send.php";
			form.submit();
		}
		function cambiar(name){  
			//alert(name);
			document.getElementById(name).style.display = 'block';
			
		}
		function mostrarDIV(check){
				if(check.checked){
					if(check.value == "SI"){
						document.getElementById('fecharespuesta').style.display = 'block';
						document.getElementById('fechasol').style.display = 'none';
					}
					else{
						document.getElementById('fechasol').style.display = 'block';
						document.getElementById('fecharespuesta').style.display = 'none';
						}
					
				}else{
					document.getElementById('fechasol').style.display = 'none';
						document.getElementById('fecharespuesta').style.display = 'none';
					}
			}
		</script>
        <!-- fin-->
    </head>
    <body>
        <!-- Start Main Wrapper -->
        <div class="wrapper">

        <!-- Incluimos el header con los menus -->
        <?php
        require_once($CONFIG['path']."/include/cod/header.php");
		?>
		  <section class="progress-style main-contain">
                <div class="container">
                  <div class="row">
                        <div class="col-md-12">
                            <div class="page-bg-color">
                            	<div class="row">
                                    <div class="text-center">
                                        <h2>Recurso de Revisión</h2>
                                    </div>
                                    <div class="text-center">
                                        <ul class="breadcrumbs">
                                            <li><a href="<?=$CONFIG['sitio']?>index.php">Inicio</a></li>
                                            <li>Recurso</li>
                                        </ul>
                                    	
                                    </div>
                                    <div class="page-bg-color"><hr style="background-color:#dedede;height:2px;"></div>	
                                </div>
                              <div>
                             <!-- Contenido de la página-->  
                             
                    <div class="alert alert-info">  
                              <p>Este es un formato base para el llenado de datos que debe contener un recurso de revisión.</p>
                    
                    <p>Siga las instrucciones en cada uno de los campos y al final de clic en ENVIAR (si lo que desea es hacernos llegar su recurso de revisión vía correo electrónico), o haga click en IMPRIMIR (si lo que necesita es imprimir el documento para presentarlo personalmente ante este órgano garante).</p>
                    
                    <p>Si requiere asesoría o mayor información sobre este o cualquier otro asunto relacionado a la rendición de cuentas o al derecho de acceso a la información pública, por favor diríjase a cualquier de los medios que abajo en esta página se indican.</p>
                            
                           
                            <p>* Datos Obligatorios</p>
                            </div>
                            <form name="frmRrfacil" method="post" action="" enctype="multipart/form-data">
                              <h3 class="cv-theme-widget-title">
                                 <span class="main-border">1. Datos del Recurrente o de su representante</span>
                              </h3>
                              
                              <table>
                                <tr>
                                  <td>*Solicitante:</td>
                                  <td><input type="text" size="60" name="solicitante" /><div id="divSolicitante"  style="display:none"><font color="#FF0000">Se requiere un nombre de Solicitante</font></div></td>
                                  
                                </tr>
                                <tr>
                                  <td>&nbsp;</td>
                                  <td><em>Nombre y Apellidos</em></td>
                                  
                                </tr>
                                <tr>
                                  <td>Denominaci&oacute;n o Raz&oacute;n Social:</td>
                                  <td><input type="text" size="60" name="razonsocial" /></td>
                                  
                                </tr>
                                <tr>
                                  <td>&nbsp;</td>
                                  <td><em>En caso de ser persona moral</em></td>
                                  
                                </tr>
                                <tr>
                                  <td>Representante (en su caso) :</td>
                                  <td><input type="text" size="60" name="representante" /></td>
                                  
                                </tr>
                                <tr>
                                  <td>&nbsp;</td>
                                  <td><em>Nombre y Apellido</em></td>
                                  
                                </tr>
                                <tr>
                                  <td>Tercer Interesado (en su caso) :</td>
                                  <td><input type="text" size="60" name="interesado" /></td>
                                  
                                </tr>
                                <tr>
                                  <td>&nbsp;</td>
                                  <td><em>Nombre y Apellido</em></td>
                                  
                                </tr>
                                
                              </table>
                             <hr>
                              <h3 class="cv-theme-widget-title">
                                 <span class="main-border">2. Correo Electr&oacute;nico para  recibir notificaciones</span>
                              </h3>
                              
                              <table>
                                <tr>
                                  <td>*Correo Electr&oacute;nico:</td>
                                  <td><input type="text" size="60" name="email" /><div id="divCorreo"  style="display:none"><font color="#FF0000">Se requiere un correo electrónico para recibir notificaciones</font></div></td>
                                  
                                </tr>
                                <tr>
                                  <td>&nbsp;</td>
                                  <td><em></em></td>
                                  
                                </tr>
                              </table>
                              
                              <hr>
                              <h3 class="cv-theme-widget-title">
                                 <span class="main-border">3. El Sujeto Obligado Responsable </span>
                              </h3>
                              <table>
                                <tr>
                                  <td colspan="2">
                                  <p style="font-weight:bold"></p>
                                  Instancia o Dependencia que incurri&oacute; en el acto u omisi&oacute;n reclamado:</td>
                                </tr><tr>
                                  <td colspan="2"><input type="text" size="60" name="sobligado" /><div id="divSO"  style="display:none"><font color="#FF0000">Debe de especificar que Instancia o Dependencia que incurri&oacute; en el acto u omisi&oacute;n reclamado</font> </div></td>
                                    
                                  </tr>
                                <tr>
                                  <td>&nbsp;</td>
                                  <td><em></em></td>
                                  
                                </tr>
                               </table>
                               <hr>
                               <h3 class="cv-theme-widget-title">
                                 <span class="main-border">4. Solicitud </span>
                              </h3>
                              <table>
                                <tr>
                                  <td colspan="2">
                                  <p style="font-weight:bold"></p>
                                  Numero de folio de la Solicitud de acceso que realizó:</td>
                                </tr><tr>
                                  <td colspan="2"><input type="text" size="60" name="sfolio" /><div id="divSOL"  style="display:none"><font color="#FF0000">Debe de especificar el folio de la solicitud</font> </div></td>
                                    
                                  </tr>
                                <tr>
                                  <td>¿Se le respondiió la Solicitud?&nbsp; <input type="radio" name="respondio" value="SI" onClick="javascript: mostrarDIV(this)"> SI <input type="radio" name="respondio" value="NO" onClick="javascript: mostrarDIV(this)"> NO </td>
                                  <td><em></em></td>
                                  
                                </tr>
                                <tr>
                                	<td colspan="2"><div id="fecharespuesta" style="display:none">Fecha de Respuesta:<input type="date" name="fecharesp"></div>
                                    <div id="fechasol" style="display:none">Fecha de Solicitud:<input type="date" name="fechasol"></div></td>
                                </tr>
                               </table>
                               <hr>
                               
                              <h3 class="cv-theme-widget-title">
                                 <span class="main-border">5. El Acto u Omision que se reclama</span>
                              </h3>
                               <table>
                                <tr>
                                  <td colspan="2">
                                  *Explique su queja o inconformidad y, de contar con el dato, indique el n&uacute;mero
                                  de folio con que se registr&oacute; su solicitud de acceso a la informaci&oacute;n p&uacute;blica.</td>
                                  
                                </tr>
                                <tr>
                                  <td colspan="2"><textarea cols="80" rows="8" name="queja"></textarea><div id="divQueja"  style="display:none"><font color="#FF0000">Especifique el Acto que reclama</font></div></td>
                                  
                                </tr>
                             </table>
                              <hr>
                              <h3 class="cv-theme-widget-title">
                                 <span class="main-border">5. Hechos o Agravios Impugnados</span>
                              </h3>
                             <table>
                                                      
                                <tr>
                                  <td colspan="2">
                                  
                                  Describir en forma detallada los hechos y agravios causados por el acto o resoluci&oacute;n impugnados.</td>
                                  
                                </tr>
                                <tr>
                                  <td colspan="2"><textarea cols="80" rows="8" name="agravio"></textarea></td>
                                  
                                </tr>
                             </table>
                             <hr>
                              <h3 class="cv-theme-widget-title">
                                 <span class="main-border">6. Enumeraci&oacute;n de Pruebas</span>
                              </h3> 
                             
                             <table>
                                <tr>
                                  <td colspan="2">
                                  <p style="font-weight:bold"></p>
                                  En caso de existir, enlistar y describir aqu&iacute; las pruebas conducentes (documentos,
                                    archivos y/o declaracionestestimoniales), de las cuales puede usted anexar copias (presentando los originales para cotejar).
                      </td>
                                  
                                </tr>
                                <tr>
                                  <td colspan="2"><textarea cols="80" rows="8" name="descpruebas"></textarea></td>
                                  
                                </tr>
                                <tr>
                                  <td>*Solicitud de acceso:</td>
                                  <td><input type="file" name="solicitud" /><div id="divSolicitud"  style="display:none"><font color="#FF0000">Solicitud de Acceso Obligatoria</font> </div></td>
                                  
                                </tr>
                                <tr>
                                  <td>Archivo de prueba 1:</td>
                                  <td><input type="file" name="prueba2" /></td>
                                  
                                </tr>
                                <tr>
                                  <td>Archivo de prueba 2:</td>
                                  <td><input type="file" name="prueba3" /></td>
                                  
                                </tr>
                                <tr>
                                  <td>Archivo de prueba 3:</td>
                                  <td><input type="file" name="prueba4" /></td>
                                  
                                </tr>
                                                                
                                <tr>
                                  <td colspan="2" align="center"><hr><br /><br /><input class="btn-custom btn-large border-btn" type="button" value="Enviar Correo" name="btnSubmit" id="btnSubmit" onclick="javascript: ValidateSubmit(this.form)"/>&nbsp;&nbsp;|&nbsp;&nbsp;<input class="btn-custom btn-large border-btn" type="button" value="Imprimir" onclick="javascript: imprimir();" /></td>
                                  
                                </tr>
                              </table>
                            </form> 
                                                    

                            
                        </div>
                    </div>
                </div>
            </section>    
            <?php // incluimos el footer
			 require_once($CONFIG['path']."/include/cod/footer.php");
			 ?>

        </div>  
        <iframe src="" height="500" width="500" name="ifrmHddnValidate"/> 
        <!-- End Main Wrapper -->
        <!-- jquery libs -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>

        
        <!-- REVOLUTION JS FILES -->
        <script type="text/javascript" src="<?=$CONFIG['sitio']?>plugins/revolution/js/jquery.themepunch.tools.min.js"></script>
        <script type="text/javascript" src="<?=$CONFIG['sitio']?>plugins/revolution/js/jquery.themepunch.revolution.min.js"></script>

        <!-- SLIDER REVOLUTION 5.0 EXTENSIONS  
        (Load Extensions only on Local File Systems ! 
        The following part can be removed on Server for On Demand Loading) -->
        <script type="text/javascript" src="<?=$CONFIG['sitio']?>plugins/revolution/js/extensions/revolution.extension.actions.min.js"></script>
        <script type="text/javascript" src="<?=$CONFIG['sitio']?>plugins/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
        <script type="text/javascript" src="<?=$CONFIG['sitio']?>plugins/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
        <script type="text/javascript" src="<?=$CONFIG['sitio']?>plugins/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
        <script type="text/javascript" src="<?=$CONFIG['sitio']?>plugins/revolution/js/extensions/revolution.extension.migration.min.js"></script>
        <script type="text/javascript" src="<?=$CONFIG['sitio']?>plugins/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
        <script type="text/javascript" src="<?=$CONFIG['sitio']?>plugins/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
        <script type="text/javascript" src="<?=$CONFIG['sitio']?>plugins/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
        <script type="text/javascript" src="<?=$CONFIG['sitio']?>plugins/revolution/js/extensions/revolution.extension.video.min.js"></script>
       
        <!-- SLIDER REVOLUTION SCRIPT  -->
        <script type="text/javascript">
                    var tpj = jQuery;
                    var revapi34;
                    tpj(document).ready(function () {
                        if (tpj("#rev_slider_34_1").revolution == undefined) {
                            revslider_showDoubleJqueryError("#rev_slider_34_1");
                        } else {
                            revapi34 = tpj("#rev_slider_34_1").show().revolution({
                                sliderType: "standard",
                                jsFileLocation: "/revolution/js/",
                                sliderLayout: "fullwidth",
                                dottedOverlay: "none",
                                delay: 9000,
                                navigation: {
                                    keyboardNavigation: "on",
                                    keyboard_direction: "horizontal",
                                    mouseScrollNavigation: "off",
                                    onHoverStop: "on",
                                    touch: {
                                        touchenabled: "on",
                                        swipe_threshold: 75,
                                        swipe_min_touches: 1,
                                        swipe_direction: "horizontal",
                                        drag_block_vertical: false
                                    }
                                    ,
                                    arrows: {
                                        style: "gyges",
                                        enable: true,
                                        hide_onmobile: false,
                                        hide_over: 778,
                                        hide_onleave: false,
                                        tmp: '',
                                        left: {
                                            h_align: "right",
                                            v_align: "bottom",
                                            h_offset: 40,
                                            v_offset: 0
                                        },
                                        right: {
                                            h_align: "right",
                                            v_align: "bottom",
                                            h_offset: 0,
                                            v_offset: 0
                                        }
                                    }
                                    ,
                                    tabs: {
                                        style: "erinyen",
                                        enable: true,
                                        width: 250,
                                        height: 100,
                                        min_width: 250,
                                        wrapper_padding: 0,
                                        wrapper_color: "transparent",
                                        wrapper_opacity: "0",
                                        tmp: '<div class="tp-tab-title">{{title}}</div><div class="tp-tab-desc">{{description}}</div>',
                                        visibleAmount: 3,
                                        hide_onmobile: true,
                                        hide_under: 778,
                                        hide_onleave: false,
                                        hide_delay: 200,
                                        direction: "vertical",
                                        span: false,
                                        position: "inner",
                                        space: 10,
                                        h_align: "right",
                                        v_align: "center",
                                        h_offset: 30,
                                        v_offset: 0
                                    }
                                },
                                viewPort: {
                                    enable: true,
                                    outof: "pause",
                                    visible_area: "80%"
                                },
                                responsiveLevels: [1240, 1024, 778, 480],
                                gridwidth: [1240, 1024, 778, 480],
                                gridheight: [500, 450, 400, 350],
                                lazyType: "none",
                                parallax: {
                                    type: "scroll",
                                    origo: "enterpoint",
                                    speed: 400,
                                    levels: [5, 10, 15, 20, 25, 30, 35, 40, 45, 50],
                                },
                                shadow: 0,
                                spinner: "off",
                                stopLoop: "off",
                                stopAfterLoops: -1,
                                stopAtSlide: -1,
                                shuffle: "off",
                                autoHeight: "off",
                                hideThumbsOnMobile: "off",
                                hideSliderAtLimit: 0,
                                hideCaptionAtLimit: 0,
                                hideAllCaptionAtLilmit: 0,
                                debugMode: false,
                                fallbacks: {
                                    simplifyAll: "off",
                                    nextSlideOnWindowFocus: "off",
                                    disableFocusListener: false,
                                }
                            });
                        }
                    });	/*ready*/
                </script>	
        <!-- JS Global Compulsory -->
        <script type="text/javascript" src="<?=$CONFIG['sitio']?>js/bootstrap.min.js"></script>
        <script type="text/javascript" src="<?=$CONFIG['sitio']?>plugins/owl-carousel/owl.carousel.min.js"></script>
        <script type="text/javascript" src="<?=$CONFIG['sitio']?>js/filter.js"></script>
        <script type="text/javascript" src="<?=$CONFIG['sitio']?>plugins/waypoints/waypoints.min.js"></script>
        <script type="text/javascript" src="<?=$CONFIG['sitio']?>plugins/counterup/jquery.counterup.min.js"></script>
        <script type="text/javascript" src="<?=$CONFIG['sitio']?>plugins/FlexSlider/jquery.flexslider-min.js"></script>
        <script type="text/javascript" src="<?=$CONFIG['sitio']?>js/magnific-popup.min.js"></script>
        <script type="text/javascript" src="<?=$CONFIG['sitio']?>js/jquery.selectBox.js"></script>
        <script type="text/javascript" src="<?=$CONFIG['sitio']?>js/custom.js"></script>

        <!--[if lt IE 9]>
        <script src="respond.js"></script>
        <script src="html5shiv.js"></script>
        <![endif]-->
		<iframe name="hiddenFrame" frameborder="0" width="400" height="400"></iframe>
        
    </body>
</html>
