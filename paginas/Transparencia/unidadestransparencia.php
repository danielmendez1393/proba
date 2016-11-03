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
		<!-- Funciones de PUENTE-->
        <script language="javascript">
        	function consultarSujetosInternos(objet){
				var e = objet;
				frmDatos.id_so.value = e.options[e.selectedIndex].value;
				frmDatos.div.value = 'subenlace';
				$("#subenlace").html('');
				frmDatos.submit();	
			}
			
			function consultarSujetosObligados(objet,div){
				var e = objet;
				frmDatosSO.tipo.value = e.options[e.selectedIndex].value;
				frmDatosSO.div.value = div;
				$("#"+div).html('');
				frmDatosSO.submit();	
			}
			
			function mostrarSujetosObligados(sujetos,div){
				//alert(div);
				if( sujetos != ""){ $("#"+div).html(sujetos);}
			}
						
			function mostrarSujetosInternos(subenlaces,div){
				if( subenlaces != ""){ $("#"+div).html(subenlaces);}
				
			}
			
			function mostrarDatos(){
				$.ajax( {
					 url:"<?=$CONFIG['sitiopuente']?>pages/consultas/reportes/directorio.php",
					 type:"POST",
					 data:"so="+ $("#so").val()+"&tiposo="+$("#tiposo").val(),
					 success: function(opciones) {
						 $("#Resultados").html(opciones);        
						 }
						} )		
			}
			
			function toExcel(){
				//frmExcel.datosExcel.value = $("#datos").val();
				$("#datosExcel").val( $("<div>").append( $("#datos").eq(0).clone()).html());
				frmExcel.submit();
     			
			}
			
			function toPDF(){}
					
			
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
                                        <h2>Directorio de Unidades de Transparencia</h2>
                                    </div>
                                    <div class="text-center">
                                        <ul class="breadcrumbs">
                                            <li><a href="<?=$CONFIG['sitio']?>index.php">Inicio</a></li>
                                            <li>Unidades de Transparencia</li>
                                        </ul>
                                    	
                                    </div>
                                    
                                </div>
                              <div>
                                
                                <!-- form start -->
                                <form role="form" name="frmGuardar" method="post" action="#" onSubmit="" target="hiddenFrame"> 
                                                                     
                                    <div class="box box-primary">
                                        <div class="single-shop-select">
                                            <label>Tipo de Sujeto Obligado</label>
                                            <select name="tiposo" class="form-control" id="tiposo" onChange="javascript: consultarSujetosObligados(this,'divSo')">
                                            	<option value="0">Todos..</option>
                                                <option value="Ayuntamiento">Ayuntamientos</option>
                                                <option value="Ejecutivo">Poder Ejecutivo</option>
                                                <option value="Poder Legislativo">Poder Legislativo</option>
                                                <option value="Poder Judicial">Poder Judicial</option>
                                                <option value="Organismo Autonomo">Organismos Autónomos</option>
                                            </select>
                                            </div>
                                            <div class="single-shop-select" id="divSo">
                                                <label>Sujeto Obligado: </label>
                                                <select name="so" class="form-control" id="so" onChange="javascript: consultarSujetosInternos(this);">
                                                    <option value="0">Seleccione..</option>
													<?php
													 $tso="";
													  foreach($sujetos as $num => $sujetoObligado){
														if($tso <> $sujetoObligado['tipo']){
															if( $tso <> ""){
															?>
															</optgroup>
															<?php	
															}
															$tso = $sujetoObligado['tipo'];
															?>
															<optgroup label="<?=$sujetoObligado['tipo']?>">
														<?php 
														}
														?>
														<option value="<?=$sujetoObligado['id_so']?>" <?php if($sujetoObligado['id_so'] == $datos['id_so']){ echo "SELECTED";}?>><?=$sujetoObligado['descripcion']?></option>
													  <?php
													  }
													  ?>
                                                </select>
                                            </div>
                                            <div class="form-group" id="subenlace">
                                             
                                            </div>
                                        
                                                                               
                                    </div><!-- /.primary box -->
							
                                    <div class="box-footer">
                                        <button type="button" class="btn-custom btn-large border-btn " onClick="javascript: mostrarDatos();">Buscar</button>
                                    </div>
                                </form>
                               <div class="page-bg-color"><hr style="background-color:#dedede;height:2px;"></div>			
                            
                            <div class="col-md-12" id="Resultados">
                                </div>
                       
                                 
                               


                               

                            
                        </div>
                    </div>
                </div>
            </section>    

            
           

            <?php // incluimos el footer
			 require_once($CONFIG['path']."/include/cod/footer.php");
			 ?>

        </div>  
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
        <form name="frmViewInf" action="<?=$CONFIG['sitiopuente']?>pages/views/informe.php" method="post" target="_blank">
        <input type="hidden" name="inf_id">
        </form>
        <form name="frmEditInf" action="<?=$_SERVER['PHP_SELF']?>" method="post">
        <input type="hidden" name="inf_id">
        </form>
        <form name="frmDatos" action="<?=$CONFIG['sitiopuente']?>pages/consultas/subenlaces.php" method="post" target="hiddenFrame">
        <input type="hidden" name="id_so">
        <input type="hidden" name="div">
        </form>
        <form name="frmDatosSO" action="<?=$CONFIG['sitiopuente']?>pages/consultas/so.php" method="post" target="hiddenFrame">
        <input type="hidden" name="tipo">
        <input type="hidden" name="div">
        </form>
        <form name="frmExcel" action="<?=$CONFIG['sitiopuente']?>pages/reportes/excel.php" method="post" target="_blank">
        	<input type="hidden" name="datosExcel" id="datosExcel">
        </form>
    </body>
</html>
