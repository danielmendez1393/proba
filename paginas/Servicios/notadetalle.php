<?php
//configuración y conexión
require_once("../../include/config/config.php");
require_once($CONFIG['pathinclude']."config/cx.php");
//Consultar en esta página los anuncios 
require_once($CONFIG['pathinclude']."cls/notas.php");
$objNotas = new notas;
$nota = $objNotas->detalleNota($_GET['nts_id']); 
//print_r($nota);
unset($objNotas);
$mesesN=array(1=>"Enero",2=>"Febrero",3=>"Marzo",4=>"Abril",5=>"Mayo",6=>"Junio",7=>"Julio",
             8=>"Agosto",9=>"Septiembre",10=>"Octubre",11=>"Noviembre",12=>"Diciembre");
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
		<script language="javascript">
        	
			function buscar(){
				frmBuscar.submit();
				}
        </script>
    </head>
    <body>
        <!-- Start Main Wrapper -->
        <div class="wrapper">

        <!-- Incluimos el header con los menus -->
        <?php
        require_once($CONFIG['path']."/include/cod/header.php");
		?>
		        

             <!-- Start Blog-->
            <section class="main-contain">
                <div class="container bgwhite">
                   	
                    <div class="row">
                            <div class="text-center">
                                <h2>Noticias</h2>
                            </div>
                            <div class="text-center">
                                <ul class="breadcrumbs">
                                    <li><a href="<?=$CONFIG['sitio']?>index.php">Inicio</a></li>
                                    <li>Noticias</li>
                                </ul>
                                <div class="page-bg-color"><hr style="background-color:#dedede;height:2px;"></div>			
                            </div>
                        
                        <!-- Start Sidebar -->
                        <aside>
                            <div class="sidebar col-md-4 col-sm-5 col-xs-12">
                                <!-- Start Sidebar Search -->  
                                <div class="sidebar-block sidebar-search-block cv-theme-30">
                                    <h3 class="cv-theme-widget-title">
                                        <span class="main-border">Buscar en Noticias</span>
                                    </h3>
                                    <div class="box">
                                        <div class="sidebar-search-style">
                                            <form name="frmBuscar" action="notahistory.php" method="get">
                                            <input type="search" id="search" name="texto" placeholder="Buscar..." />
                                            	<a href="#" onClick="javascript:buscar();"><span class="icon"><i class="fa fa-search"></i></span></a>
                                            </form>
                                        </div>
                                    </div>       
                                </div>
                                <!-- End Sidebar Search --> 
                                <!-- Start Sidebar Archives -->
                                <div class="sidebar-block archive cv-theme-30">
                                    <h3 class="cv-theme-widget-title">
                                        <span class="main-border">Noticias Anteriores</span>
                                    </h3>
                                    <ul class="list-unstyled">
                                        <?php
                                       	if( date('n')>= 5){
											for($i = date('n');$i>(date('n')-5);$i--){
											?>
												<li> <a href="notahistory.php?mes=<?=$i?>&anio=<?=date('Y')?>"><?=$mesesN[$i]." ".date('Y')?></a></li>
											<?php
											}
										}else{
											for($i = date('n');$i>0 ;$i--){
											?>
												<li> <a href="notahistory.php?mes=<?=$i?>&anio=<?=date('Y')?>"><?=$mesesN[$i]." ".date('Y')?></a></li>
											<?php
											}
											for($i = 12; $i>=(12-date('n'));$i--){
											?>
												<li> <a href="notahistory.php?mes=<?=$i?>&anio=<?=date('Y')-1?>"><?=$mesesN[$i]." ".(date('Y')-1)?></a></li>
											<?php
											}
										}
										?>
                                        <li><a href="notahistory.php?mes=0&anio=0">Ver Todas</a></li>
                                    </ul>

                                </div>
                                <!-- End Sidebar Archives -->
                                 <!-- Start Left Sidebar Categories -->
                                <div class="sidebar-block category sidebar-category-block cv-theme-30">
                                    <h3 class="cv-theme-widget-title">
                                        <span class="main-border">Noticias Recientes</span>
                                    </h3>
                                    <iframe class="product-img" src="http://transparenciasonora.org/colateral/scroll.php" height="460"></iframe>
                                </div>
                                <!-- End Sidebar Categories -->
                            </div>
                        </aside>
                        <!-- End Sidebar -->
                        <div class="col-md-8 col-sm-7 col-xs-12">
                            <div class="cv-theme-pa-30">
                                <div class="standard-post-thumbnail">
                                    <div class="post-image-block">
                                        <img src="<?=$CONFIG['sitioimgnotas'].$nota['nts_imagen']?>" alt="" class="img-responsive">
                                        
                                    </div>
                                    <div class="blog-dis">
                                        <h2 class="entry-title"><?=$nota['nts_titulo']?></h2>
                                        <p class="post-meta">Publicado Por <span class="author vcard"><a title="Publicado por" href="#">Difusión</a></span>  |  <span class="published"><?=$nota['nts_fecha']?></span>  |  <a rel="category tag" href="#"></a>  </p>
                                        <p><?=$nota['nts_nota']?></p>
                                    </div>


                                </div>
                            </div>
		                 </div>
                    </div>
                </div>
            </section>
            <!-- End Blog-->

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

    </body>
</html>
