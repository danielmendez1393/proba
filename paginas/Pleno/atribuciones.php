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
                                                        <li class="active"><a href="<?=$CONFIG['sitio']?>paginas/pleno/atribuciones.php">Atribuciones</a></li>
                                                        <li><a href="<?=$CONFIG['sitio']?>paginas/pleno/acuerdos.php">Acuerdos</a></li>
                                                        <li><a href="<?=$CONFIG['sitio']?>paginas/pleno/resoluciones.php">Resoluciones</a></li>
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
                                                <span class="main-border">Atribuciones</span>
                                            </h3>
                                                                                    
                                            <p>
                                            El Instituto tendrá las siguientes atribuciones:
                                            </p>
                                            <dl class="dl-horizontal">
                                                <dt>I.</dt><dd>	Interpretar esta Ley y demás ordenamientos que les resulten aplicables y que deriven de la Constitución Política de los Estados Unidos Mexicanos, la Constitución Política Local y la Ley General;</dd>
                                                <dt>II.</dt><dd>Conocer y resolver los recursos de revisión interpuestos por los particulares en contra de las resoluciones de los sujetos obligados, en términos de lo dispuesto en el Capítulo Noveno, Sección I de esta Ley;</dd>
                                                <dt>III.</dt><dd>Imponer las medidas de apremio para asegurar el cumplimiento de sus determinaciones;</dd>
                                                <dt>IV.</dt><dd>Presentar petición fundada al Instituto Nacional para que ejerza su facultad de atracción y conozca de los recursos de revisión que por su interés y trascendencia así lo ameriten;</dd>
                                                <dt>V.</dt><dd>	Promover y difundir el ejercicio del derecho de acceso a la información;</dd>
                                                <dt>VI.</dt><dd>Promover la cultura de la transparencia;</dd>
                                                <dt>VII.</dt><dd>Capacitar a los integrantes de los sujetos obligados y brindarles apoyo técnico en materia de transparencia y acceso a la información;</dd>
                                                <dt>VIII.</dt><dd>Establecer políticas de transparencia proactiva atendiendo a las condiciones económicas, sociales y culturales;</dd>
                                                <dt>IX.</dt><dd>	Suscribir convenios con los sujetos obligados que propicien la publicación de información en el marco de las políticas de transparencia proactiva;</dd>
                                                <dt>X.</dt><dd>	Suscribir convenios de colaboración con particulares o sectores de la sociedad cuando sus actividades o productos resulten de interés público o relevancia social;</dd>
                                                <dt>XI.</dt><dd>	Suscribir convenios de colaboración con otros organismos garantes para el cumplimiento de sus atribuciones y promover mejores prácticas en la materia;</dd>
                                                <dt>XII.</dt><dd>	Coordinarse con las autoridades competentes para que en los procedimientos de acceso a la información, así como en los medios de impugnación, se contemple contar con la información necesaria en lenguas indígenas y formatos accesibles, para que sean sustanciados y atendidos en la misma lengua y, en su caso, se promuevan los ajustes razonables necesarios si se tratara de personas con discapacidad;</dd>
                                                <dt>XIII.</dt><dd>	Garantizar condiciones de accesibilidad para que los grupos vulnerables puedan ejercer, en igualdad de circunstancias, su derecho de acceso a la información;</dd>
                                                <dt>XIV.</dt><dd>	Interponer acciones de inconstitucionalidad ante la Suprema Corte de Justicia en contra de leyes expedidas por el Congreso del Estado que vulneren el derecho de acceso a la información pública.
                                                A más tardar 15 días naturales después de publicada en el Boletín Oficial del Estado cualquier ley o reforma en materia de derecho a la información pública, el Pleno del Instituto, en sesión pública, deberá emitir opinión sobre el cuerpo normativo publicado y acordar sobre el ejercicio de la facultad a que se refiere el párrafo anterior;</dd>
                                                <dt>XV.</dt><dd>	Elaborar y publicar estudios e investigaciones para difundir y ampliar el conocimiento sobre la materia de acceso a la información;</dd>
                                                <dt>XVI.</dt><dd>	Hacer del conocimiento de la instancia competente la probable responsabilidad por el incumplimiento de las obligaciones previstas en la presente Ley y en las demás disposiciones aplicables;</dd>
                                                <dt>XVII.</dt><dd>	Determinar y ejecutar, según corresponda, las sanciones, de conformidad con lo señalado en la presente Ley;</dd>
                                                <dt>XVIII.</dt><dd>	Promover la participación y colaboración con organismos internacionales, en el análisis y mejores prácticas en materia de acceso a la información pública;</dd>
                                                <dt>XIX.</dt><dd>	El Instituto en el ejercicio de sus atribuciones y para el cumplimiento de los objetivos de la presente Ley, fomentará los principios de gobierno abierto, la transparencia, la rendición de cuentas, la participación ciudadana, la accesibilidad y la innovación tecnológica;</dd>
                                                <dt>XX.</dt><dd>	El Instituto podrá emitir recomendaciones a los sujetos obligados para diseñar, implementar y evaluar acciones de apertura gubernamental que permitan orientar las políticas internas en la materia;</dd>
                                                <dt>XXI.</dt><dd>	Emitir su reglamento interno, manuales y demás normas que faciliten su organización y funcionamiento; y</dd>
                                                <dt>XXII.</dt><dd>	Las demás que les confieran la Ley General, esta Ley y otras disposiciones aplicables.</dd>

											</dl>

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

        <!--[if lt IE 9]>
        <script src="respond.js"></script>
        <script src="html5shiv.js"></script>
        <![endif]-->

    </body>
</html>
