<?php
//configuración y conexión
require_once("../../include/config/config.php");
require_once($CONFIG['pathinclude']."config/cx.php");

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
        require_once($CONFIG['path']."/include/cod/header1.php");
		?>
		      

            <section class="progress-style main-contain">
                <div class="container">
                 
                    <div class="row">
                        <div class="col-md-12">
                            <div class="page-bg-color">
                            	<div class="row">
                                    <div class="text-center">
                                        <h2>Lineamientos Generales </h2><h4>de la Ley de Transparencia y Acceso a la Información Pública del Estado de Sonora</h4>
                                    </div>
                                    <div class="text-center">
                                        <ul class="breadcrumbs">
                                            <li><a href="<?=$CONFIG['sitio']?>index.php">Inicio</a></li>
                                            <li>Lineamientos</li>
                                        </ul>
                                    	<div class="page-bg-color"><hr style="background-color:#dedede;height:2px;"></div>	
                                    </div>
                                    
                                </div>
                               
                                    <div class="about-image-block">
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                        <div class="alert alert-info">  
                                          <p>Consulta los lineamientos en PDF aprobados para consulta</p>
                                            <p>	<a href="http://transparenciasonora.org.mx/transparencia/Ley%2090%20de%20Transparencia.pdf" target="_blank">Ley Estatal de Transparencia</a></p>
                                        
                                       
                                        
                                        </div>
                                             <!-- Start Left Sidebar Categories -->
                                                <div class="sidebar-block category sidebar-category-block cv-theme-30">
                                                    <!--h3 class="cv-theme-widget-title">
                                                        <span class="main-border">Servicios</span>
                                                    </h3-->
                                                    <ul class="list-unstyled">
                                                        <a href="<?=$CONFIG['sitio']?>files/lineamientos/LG.pdf" target="_blank"><li class="fa fa-file-pdf-o"><b>&nbsp;&nbsp;&nbsp;LINEAMIENTOS GENERALES PARA EL ACCESO A LA INFORMACIÓN PÚBLICA EN EL ESTADO DE SONORA</b></li></a>
                                                        <a href="<?=$CONFIG['sitio']?>files/lineamientos/LGC.pdf" target="_blank"><li class="fa fa-file-pdf-o"><b>&nbsp;&nbsp;&nbsp;LINEAMIENTOS GENERALES PARA LA CUSTODIA Y MANEJO DE INFORMACIÓN RESTRINGIDA Y LA PROTECCIÓN DE DATOS PERSONALES EN POSESIÓN DE LOS SUJETOS OBLIGADOS DEL ESTADO DE SONORA</b></li></a>
                                                        <a href="<?=$CONFIG['sitio']?>files/lineamientos/LRR.pdf" target="_blank"><li class="fa fa-file-pdf-o" ><b>&nbsp;&nbsp;&nbsp;LINEAMIENTOS GENERALES PARA EL PROCEDIMIENTO DEL RECURSO DE REVISIÓN, RECURSO DE INCONFORMIDAD, DENUNCIA, MEDIOS DE APREMIO Y SANCIONES</b></li></a>
                                                        
                                                    </ul>
                                                </div>
                                <!-- End Sidebar Categories -->
                                        </div>
                                    </div>
                                    
                               
                                 

                               


                               

                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Skills -->

            <?php // incluimos el footer
			 require_once($CONFIG['path']."/include/cod/footer1.php");
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

    </body>
</html>