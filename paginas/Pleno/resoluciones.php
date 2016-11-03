<?php
//configuración y conexión
require_once("../../include/config/config.php");
require_once($CONFIG['pathinclude']."config/cx.php");
require_once($CONFIG['pathinclude']."cls/pleno.php");
if($_POST['anioall'] == 1 ) $_POST['anio'] = 1;
$objPleno = new pleno;
$objPleno->anio = $_POST['anio']?$_POST['anio']:date('Y');
$resoluciones = $objPleno->resoluciones();
unset($objPleno);
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
                            	<!--div class="row">
                                    <div class="text-center">
                                        <h2>Acerca del ISTAI</h2>
                                    </div>
                                    <div class="text-center">
                                        <ul class="breadcrumbs">
                                            <li><a href="<?=$CONFIG['sitio']?>index.php">Inicio</a></li>
                                            <li>Acerca de Nosotros</li>
                                        </ul>
                                    	<div class="page-bg-color"><hr style="background-color:#dedede;height:2px;"></div>			
                                    </div>
                                    
                                </div-->
                                <div class="image-dis clearfix cv-theme-30">
                                    <div class="about-image-block">
                                        <div class="col-md-3 col-sm-3 col-xs-12">
                                             <!-- Start Left Sidebar Categories -->
                                                <div class="sidebar-block category sidebar-category-block cv-theme-30">
                                                    <!--h3 class="cv-theme-widget-title">
                                                        <span class="main-border">Servicios</span>
                                                    </h3-->
                                                    <ul class="list-unstyled">
                                                        <li><a href="<?=$CONFIG['sitio']?>paginas/pleno/pleno.php">Pleno</a></li>
                                                        <li><a href="<?=$CONFIG['sitio']?>paginas/pleno/atribuciones.php">Atribuciones</a></li>
                                                        <li><a href="<?=$CONFIG['sitio']?>paginas/pleno/acuerdos.php">Acuerdos</a></li>
                                                        <li  class="active"><a href="<?=$CONFIG['sitio']?>paginas/pleno/resoluciones.php">Resoluciones</a></li>
                                                        <li><a href="<?=$CONFIG['sitio']?>paginas/pleno/sesiones.php">Sesiones</a></li>
                                                        <li><a href="<?=$CONFIG['sitio']?>paginas/pleno/estrados.php">Estrados Electrónicos</a></li>
                                                    </ul>
                                                </div>
                                <!-- End Sidebar Categories -->
                                        </div>
                                    </div>
                                    <div class="col-md-9 col-sm-9 col-xs-12 ">
                                        <div class="about-dis-block">
                                            <h3 class="cv-theme-widget-title">
                                                <span class="main-border">Resoluciones</span>
                                            </h3>
                                                                                    
                                            <div align="right">
                                             <form name="bsqActaAnio" action="resoluciones.php" method="post">
                                             <input type="hidden" name="anioall">
                                              Seleccionar Año:&nbsp; 
                                             <select name="anio">
                                             <?php 
                                             for($i=2006;$i<=date("Y");$i++){
                                            	if($_POST['anio'] > 1 ){
												 ?>
												 <option <?php if($i == $_POST['anio'] ) echo "SELECTED"?>><?=$i?></option>
												 <?php
											 	}else {
												?>
												 <option <?php if($i == date('Y') ) echo "SELECTED"?>><?=$i?></option>
												 <?php
												}
                                             }
                                             ?>
                                             </select>&nbsp;&nbsp;&nbsp;<input class="view_more" type="submit" value="Buscar" />
                                             </form>
                                        </div>
                                           
                                            <?php
                                            if( $_POST['anio'] > 1 ){
                                                $anio1=$_POST['anio']?$_POST['anio']:date('Y');
                                            ?>
                                             <p> <b>Resoluciones del Año <?=$_POST['anio']?$_POST['anio']:date('Y')?></b></p>
                                             
											 <?php
                                            }else{
                                                $anio1 = 0; 
                                            }
											?>
											<div class="row">
											<?php
                                             if( count($resoluciones) > 0 ){
												 foreach($resoluciones as $num => $resolucion){
													if(	$anio1 != $resolucion['rsl_anio']){
														$anio1 = $resolucion['rsl_anio'];
                                                ?>
                                                		</div>
                                                        <p><b>Año <?=$anio1?></b></p>
                                                        <div class="row">
                                                <?php
                                                    }
                                                 ?>
                                                 <div class="col col-md-6">
                                            	<ul class="list-goup">
                                                       <a class="list-group-item" href="<?=$CONFIG['resoluciones'].$resolucion['rsl_archivo']?>"> <li class="fa fa-file-pdf-o "> <?=$resolucion["rsl_expediente"]?>  <br><br> <em><?=strlen($resolucion["rsl_sobligado"])>1?$resolucion["rsl_sobligado"]:" "?></em> </li></a>
                                                       </ul> 
                                             </div> 
                                                 <?php
                                                 }
                                             }else{
                                                 echo "No se encontraron Resoluciones del año seleccionado";
                                                 }
										
                                             ?>   
                                              </div>         
                                                <div class="more_articles">
                                                    <a href="#" onclick="javascript: verTodas();">Ver todas ... </a>
                                                </div>
                                                
                                         <br /><br />

                                        </div>
                                    </div>
                                </div>

                                


                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Skills -->

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
		<script language="javascript">
		function verTodas(){
				bsqActaAnio.anioall.value = 1;
				bsqActaAnio.submit();
			}
		</script>
        <!--[if lt IE 9]>
        <script src="respond.js"></script>
        <script src="html5shiv.js"></script>
        <![endif]-->

    </body>
</html>
