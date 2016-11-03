<?php
//configuración y conexión
require_once("include/config/config.php");
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
        <link rel="shortcut icon" href="img/istai/iconoistai.ico">

       
        <!-- CSS Global -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="plugins/owl-carousel/owl.carousel.css">
        <link rel="stylesheet" href="plugins/owl-carousel/owl.theme.css">

    </head>
     <body>
        <!-- Start Main Wrapper -->
        <div style="background-color:#FFF" class="wrapper">

        <!-- Incluimos el header con los menus -->
        <?php
        require_once($CONFIG['path']."/include/cod/header1.php");
		?>
		  <section class="progress-style main-contain">
                <div class="container">
                 
                    <div class="row">
                        <div class="col-md-12">
                        <div class="text-center">     
						<h1>  </h1>
						</div>	                                  
                         <hr> 
                        <div class="text-center">     
						<h1><a href="http://transparenciasonora.org.mx/secciones.php?id=12"> Consulta Nuestras Obligaciones de Transparencia AQUI</a> </h1>
						</div>
                        <hr>      

                            
                        </div>
                        
                        <div class="col-lg-3">
                        	<div class="product">
                                <ul class="product-labels">
                                    <li>Denuncia</li>
                                    
                                </ul>
                                <div class="product-image">
                                    <a class="product-link" href="<?=$CONFIG['sitio']?>paginas/Servicios/denuncia.php">
                                    <img class=" imagen-median img-responsive" title="Denuncia por incumplimiento de Obligaciones" alt="Image" src="img/LogoDenuncia.jpg">
                                    
                                </a>
                                    </div>
                                <div class="product-contain">
                                    <div class="main-product-details">
                                        <h6 class="main-product-title"><a href="<?=$CONFIG['sitio']?>paginas/Servicios/denuncia.php">Utiliza este formato digital</a></h6>
                                        <!--div class="price">Denuncia por incumplimiento de obligaciones</div-->
                                    </div>
                                   
                                </div>

                            </div>
                        </div>
                        <div class="col-lg-3">
                        	<div class="product">
                                <ul class="product-labels">
                                    <li>Recurso de Revisión</li>
                                    
                                </ul>
                                <div class="product-image">
                                    <a class="product-link" href="http://transparenciasonora.org.mx/recursorevision.html">
                                    <img class="imagen-median img-responsive" title="Image" alt="Image" src="img/home/rrlogo.jpg">
                                    
                                </a>
                                    </div>
                                <div class="product-contain">
                                    <div class="main-product-details">
                                        <h6 class="main-product-title"><a href="http://transparenciasonora.org.mx/recursorevision.html">Utiliza este formato digital</a></h6>
                                        <!--div class="price">Inconformidad en la Respuesta de tu solicitud de acceso</div-->
                                    </div>
                                   
                                </div>

                            </div>
                        </div>
                        <div class="col-lg-3">
                        	<div class="product">
                                <ul class="product-labels">
                                    <li>Solicitud de Acceso</li>
                                    
                                </ul>
                                <div class="product-image">
                                    <a class="product-link" href="http://infomex.sonora.gob.mx/">
                                    <img class="imagen-median  img-responsive " title="Image" alt="Image" src="img/home/logo_pnt.jpg">
                                    
                                </a>
                                    </div>
                                <div class="product-contain">
                                    <div class="main-product-details">
                                        <h6 class="main-product-title"><a href="http://infomex.sonora.gob.mx/l">Utiliza la Plataforma Digital</a></h6>
                                        <div class="price">Realiza una solicitud de Acceso</div>
                                    </div>
                                   
                                </div>

                            </div>
                            
                        </div>
                        <div class="col-lg-3">
                        	<div class="product">
                                <ul class="product-labels">
                                    <li>Consulta Aquí</li>
                                    
                                </ul>
                                <div class="product-image">
                                    <a class="product-link" href="<?=$CONFIG['sitio']?>paginas/NuestroInst/lineamientos.php">
                                    <img class="imagen-median  img-responsive " title="Image" alt="Image" src="img/banner_lineamientos.jpg">                                    
                                </a>
                                </div>
                                <div class="product-contain">
                                    <div class="main-product-details">
                                        <h6 class="main-product-title"><a href="<?=$CONFIG['sitio']?>paginas/NuestroInst/lineamientos.php">Lineamientos en PDF</a></h6>
                                        
                                    </div>
                                   
                                </div>

                            </div>
                         </div>
                        <div class="col-md-12">
                        	                                  
                        <div class="alert alert-info text-center">     
						<h1>Actualmente estamos en proceso de actualización</h1> 
                        <h5>Disculpe los inconvenientes</h5>
						</div>
                        <hr>      

                            
                        </div>
                    </div>
                </div>
            </section>    
       
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
