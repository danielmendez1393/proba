<?php
//configuración y conexión
require_once("include/config/config.php");
require_once($CONFIG['pathinclude']."config/cx.php");

//Consultar en esta página los anuncios 
require_once($CONFIG['pathinclude']."cls/notas.php");
$objNotas = new notas;
$notas = $objNotas->consultarNotas(1); //1 para que muestre solo las 5 primeras 
unset($objNotas);

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
        <div class="wrapper">

        <!-- Incluimos el header con los menus -->
        <?php
        require_once($CONFIG['path']."/include/cod/header.php");
		?>
            <!-- Start Blog-->
            <section class="home-main-contant-style blog-page-blog-style">
                <div class="container">
                    <div class="row">
                        <!-- Start Sidebar -->
                          <div class="sidebar col-md-4 col-sm-4">
                               <!-- Start Pleno -->  
                                <div class="sidebar-block sidebar-recentpost-block cv-theme-30">
                                    <h3 class="cv-theme-widget-title">
                                        <span class="main-border">Sesiones de Pleno</span>
                                    </h3>
                                    <ul class="sidebar-recent-post">
                                        <li><a href="paginas/Pleno/pln_Convo.html"><img src="<?=$CONFIG['sitio']?>img/blog/recent1.jpg" title="Convocatorias" /></a></li>
                                        <li><a href="paginas/Pleno/pln_act.html"><img src="img/blog/recent2.jpg" title="Actas" /></a></li>
                                        <li><a href="paginas/Pleno/pln_acu.html"><img src="img/blog/recent3.jpg" title="Listas de Acuerdos" /></a></li>
                                        <li><a href="paginas/Pleno/pln_resol.html"><img src="img/blog/recent4.jpg" title="Resoluciones" /></a></li>
                                        <li><a href="paginas/Pleno/pln_sesion.html"><img src="img/blog/recent5.jpg" title="Sesion en Vivo" /></a></li>
                                        <li><a href="paginas/Pleno/pln_rr.html"><img src="img/blog/recent6.jpg" title="Recurso de Revision" /></a></li>
                                    </ul>
                                </div>
                                <!-- End Pleno -->		
                                <!-- Start Ejerce-->
								<div class=" page-bg-color sidebar-block category sidebar-category-block cv-theme-30">
                                        <h3 class="cv-theme-widget-title">
                                            <span class="main-border">Ejerce tus Derechos</span>
                                        </h3>
                                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
											<div class="panel panel-default"><!-- uno -->
                                                <div class="panel-heading" role="tab" id="headingOne">
                                                    <h4 class="panel-title">
                                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                                                            <i class="more-less glyphicon glyphicon-plus"></i>
                                                           ¿Cómo pedir Información?
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapseOne" class="panel-collapse collapse " role="tabpanel" aria-labelledby="headingOne">
                                                    <div class="panel-body">
                                                        <img class="img-responsive img-rounded img-thumbnail" src="img/istai/Logo PNT.jpg">
                                                        <p></p>
                                                    </div>
                                                </div>
                                            </div> <!-- fin de uno-->

                                            <div class="panel panel-default"><!-- dos -->
                                                <div class="panel-heading" role="tab" id="headingTwo">
                                                    <h4 class="panel-title">
                                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                            <i class="more-less glyphicon glyphicon-plus"></i>
                                                          Proteger tus Datos Personales
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                                    <div class="panel-body">
                                                           <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ante sem, consequat a lectus sed, hendrerit fermentum quam. Duis luctus pretium sapien eu maximus. Donec vehicula scelerisque efficitur. Ut pulvinar tristique purus at vulputate. Ut et ullamcorper libero, ut semper nisi. Donec lacus lacus, rutrum accumsan mattis sit amet, aliquet eu risus.</p>
                                                      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ante sem, consequat a lectus sed, hendrerit fermentum quam. Duis luctus pretium sapien eu maximus. Donec vehicula scelerisque efficitur. Ut pulvinar tristique purus at vulputate. Ut et ullamcorper libero, ut semper nisi. Donec lacus lacus, rutrum accumsan mattis sit amet, aliquet eu risus.</p>
                                                    </div>
                                                </div>
                                            </div><!-- fin de dos-->

                                            <div class="panel panel-default"><!-- tres-->
                                                <div class="panel-heading" role="tab" id="headingThree">
                                                    <h4 class="panel-title">
                                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                            <i class="more-less glyphicon glyphicon-plus"></i>
                                                            Quejas o Inconformidades
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                                    <div class="panel-body">
                                                           <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ante sem, consequat a lectus sed, hendrerit fermentum quam. Duis luctus pretium sapien eu maximus. Donec vehicula scelerisque efficitur. Ut pulvinar tristique purus at vulputate. Ut et ullamcorper libero, ut semper nisi. Donec lacus lacus, rutrum accumsan mattis sit amet, aliquet eu risus.</p>
                                                       <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ante sem, consequat a lectus sed, hendrerit fermentum quam. Duis luctus pretium sapien eu maximus. Donec vehicula scelerisque efficitur. Ut pulvinar tristique purus at vulputate. Ut et ullamcorper libero, ut semper nisi. Donec lacus lacus, rutrum accumsan mattis sit amet, aliquet eu risus.</p>
                                                    </div>
                                                </div>
                                            </div><!-- fin de tres-->
                                        </div><!-- fin de panel group -->
                                </div><!--fin de ejerce-->

                              <!-- Start Sidebar Colateral -->
                                <div class="sidebar-block sidebar-coments-block cv-theme-30">
                                    <h3 class="cv-theme-widget-title">
                                        <span class="main-border">Colateral</span>
                                    </h3>

                                    <iframe src="http://transparenciasonora.org/colateral/scroll.php" width="320" height="300"></iframe>

                                </div> 
                                <!-- End Sidebar Colateral -->  


                                <!-- Start Left Sidebar Servicios -->
                                <div class="sidebar-block category sidebar-category-block cv-theme-30">
                                    <h3 class="cv-theme-widget-title">
                                        <span class="main-border">Servicios</span>
                                    </h3>
                                    <ul class="list-unstyled">
                                        <li><a href="paginas/Servicios/difusion.html">Difusion</a></li>
                                        <li><a href="paginas/Servicios/capacitacion.html">Capacitación</a></li>
                                        <li><a href="paginas/Servicios/asesoria.html">Asesorias</a></li>
                                        <li><a href="paginas/Servicios/transpaComunidad.html">Transparencia en tu Comunidad</a></li>
                                    </ul>
                                </div>
                                <!-- End Sidebar Servicios -->

                                <!-- Start Sitios de Interés -->
                                <div class="sidebar-block archive cv-theme-30">
                                    <h3 class="cv-theme-widget-title">
                                        <span class="main-border">Sitios de Interés</span>
                                    </h3>
                                    <ul class="list-unstyled">
                                        <li> <a href="http://inicio.ifai.org.mx/" target="_blank">INAI</a></li>
                                        <li> <a href="http://snt.org.mx/" target="_blank">Sistema Nacional de Transparencia</a></li>
                                        <li> <a href="http://www.sonora.gob.mx/" target="_blank">Gobierno del Estado de Sonora</a></li>
                                        <li> <a href="http://www.congresoson.gob.mx/" target="_blank">Congreso del Estado de Sonora</a></li> 
                                        <li> <a href="http://www.stjsonora.gob.mx/" target="_blank">Poder Judicial del Estado de Sonora</a> </li>
                                        <li> <a href="http://www.sonoraciudadana.org.mx/" target="_blank">Sonora Ciudadana</a></li>
                                    </ul>

                                </div>
                                <!-- End Sitios de Interés -->

                                <!-- Start Sidebar Tags -->
                                <div class="sidebar-block tag sidebar-tag-block">
                                    <h3 class="cv-theme-widget-title">
                                        <span class="main-border">Tags</span>
                                    </h3>
                                    <div class="box-content">
                                        <div class="tags"> 
                                           <!-- <a href="#">Free</a> 
                                            <a href="#a">Fashion</a> 
                                            <a href="#a">Best sale</a> 
                                            <a href="#a">Popular</a>
                                            <a href="#a">Design</a> 
                                            <a href="#a">Layout</a> 
                                            <a href="#a">Wordpress</a> 
                                            <a href="#a">HTML</a> 
                                            <a href="#a">CSS</a>
                                            <a href="#a">Design</a> 
                                            <a href="#a">PHP</a> 
                                            -->
                                        </div>
                                    </div>
                                </div>

                                <!-- End Sidebar Tags -->


                            </div> <!-- end columna 4-->
                       

                        <div class="col-md-8 col-sm-8">
                            <div class="row">
                            <!--Start noticias-->
                                    <div class="col-md-9 col-sm-9 col-xs-9 margin-bottom30">
                                        <h3 class="cv-theme-widget-title">
                                            <span class="main-border">Noticias</span>
                                        </h3>
                                        <div class="standard-post-thumbnail">
                                            <div class="post-image-block">
                                                <div id="owl-blog" class="owl-carousel owl-theme">
                                                     <?php
													 foreach($notas as $id => $nota){ //Notas consultadas
                                                     ?>
                                                     <div class="item">
                                                        <a href="#">
                                                            <img src="<?=$CONFIG['sitioimgnotas'].$nota['nts_imagen']?>" alt="" class="img-responsive">
                                                        </a>
                                                        
                                                            <h1 class="entry-title"><a href="blog_signal.html"><?=$nota['nts_titulo']?> </a></h1>
                                                    	 
                                                     </div>
                                                     
                                                     <?php
													 } //termina las notas consultadoas 
													 ?>
                                                    
                                                </div>
                                            </div>
                                            
                                        </div>
                                    </div><!-- End noticias-->
								
                                <!--  Inicio Imagenes de lado--> 
                                    <div class="col-md-3 col-sm-6 col-xs-12">
                                        <div class="product">
                                            
                                            <div class="product-image">
                                                <a class="product-link" href="img/home/sujetoobligados/docs/listasujetosobligados2014.pdf" target="_blank">
                                                <img class="product-img-pri" title="Image" alt="Image" src="img/product/pro1.jpg">
                                                <img class="product-img-second" title="Image" alt="Image" src="img/product/pro2.jpg">
                                            	</a>
                                             </div>
                                        </div>

                                        <div class="product-sidePrin">                                        
                                            <div class="product-image">
                                                <a class="product-link" href="http://www.plataformadetransparencia.org.mx/" target="_blank">
                                                <img src="img/home/logo_pnt.jpg" class="product-img-pri" style="border-color:gray;">
                                                <!--<img class="product-img-pri" title="Image" alt="Image" src="img/product/pro1.jpg">
                                                <img class="product-img-second" title="Image" alt="Image" src="img/product/pro2.jpg">-->
                                                </a>
                                            </div>                                  
                                        </div>
                                        <div class="product-sidePrin">                                        
                                            <div class="product-image">
                                                <a class="product-link" href="http://ities.org/redmunicipios/" target="_blank">
                                                <img src="img/home/imageside1.jpg" class="product-img-pri">
                                                <!--<img class="product-img-pri" title="Image" alt="Image" src="img/product/pro1.jpg">
                                                <img class="product-img-second" title="Image" alt="Image" src="img/product/pro2.jpg">-->
                                                </a>
                                            </div>                                  
                                        </div>
                                    </div> <!-- Fin de Imagenes de lado-->
							</div><!-- fin del row-->
                            <div class="row">
                                <!-- Inicio Parte centro abajo de noticias-->
                                    <div class="col-md-4 col-sm-6 col-xs-12 margin-Center20">
                                        <div class="standar-margin-centerblock">
                                            <div class="post-image-block">
                                                <a href="http://transparenciasonora.org/jovenes_ninos/jovenes_ities.swf" target="_blanck"><img src="img/home/baner2.jpg" alt="" class="img-responsive"></a>
                                            </div>
                                        </div>
                                    </div>
                                     <div class="col-md-4 col-sm-6 col-xs-12 margin-Center20">
                                        <div class="standar-margin-centerblock">
                                            <div class="post-image-block">
                                                <a href="http://www.transparenciasonora.org/jovenes_ninos/infantil_ities.swf" target="_blanck"><img src="img/home/baner3.jpg" alt="" class="img-responsive"></a>
                                            </div>
                                        </div>
                                    </div>
                                     <div class="col-md-4 col-sm-6 col-xs-12 margin-Center20">
                                        <div class="standar-margin-centerblock">
                                            <div class="post-image-block">
                                                <a href="http://snt.org.mx/" target="_blanck"><img src="img/home/logo_SNT.jpg" alt="" class="img-responsive"></a>
                                            </div>
                                        </div>
                                    </div>
                                <!-- Fin Parte centro abajo de noticias-->
							</div>
                            <div class="row">
                                <!-- INICIO -->
                                <div class="tabs-section col-md-12 col-sm-12">
                                  
           							<div class=" page-bg-color"> 
                                        <!-- Nav Tabs -->
                                        <ul class="nav nav-tabs">
                                            <li class="active"><a href="#so" data-toggle="tab">Sujetos Obligados</a></li>
                                            <li><a href="#og" data-toggle="tab">Organos Garantes</a></li>
                                            <li><a href="#pt" data-toggle="tab">Pro Transparencia</a></li>
                                            
                                        </ul>

                                        <!-- Tab panels -->
                                        <div class="tab-content row">
                                            <!-- Tab Content 1 -->
                                                 <div class="tab-pane fade in active" id="so">
                                                   <div class="row">
                                                    <!-- imagenes-->
                                                        <div align="center" class="margin-bottom30 col-md-2 col-sm-2 col-xs-4 ">                                        
                                                            <div class="product-image" style="padding-bottom: 20px;">
                                                                <div class="blog-dis" style="text-align:center;">
                                                                    <h6 class="entry-title"><a >Poder Ejecutivo</a></h6>
                                                                </div>
                                                                <a class="product-link " href="img/home/sujetoobligados/docs/Poder Ejecutivo 30 agosto 16.pdf" target="_blank">
                                                                <img src="img/home/sujetoobligados/carpe/gobiernoson-bicubic.jpg" class=" imagen-chicas img-responsive" >
                                                                </a>
                                                            </div>     
                                                        </div>
                                                        
                                                        <div align="center" class="margin-bottom30 col-md-2 col-sm-2 col-xs-4  ">                                        
                                                            <div class="product-image" style="padding-bottom: 20px;">
                                                                <div class="blog-dis" style="text-align:center;">
                                                                    <h6 class="entry-title"><a >Poder Judicial</a></h6>
                                                                </div>
                                                                <a class="product-link " href="img/home/sujetoobligados/docs/Poder Judicial.pdf" title="" target="_blank">
                                                                <img src="img/home/sujetoobligados/carpe/poderjudicial-bicubic.jpg" class="imagen-chicas img-responsive" >
                                                                </a>
                                                            </div>     
                                                        </div>
                                                        
                                                        <div align="center" class="margin-bottom30 col-md-2 col-sm-2 col-xs-4  ">                                        
                                                            <div class="product-image" style="padding-bottom: 20px;">
                                                                <div class="blog-dis" style="text-align:center;">
                                                                    <h6 class="entry-title"><a >Poder Legislativo</a></h6>
                                                                </div>
                                                                <a class="product-link " href="img/home/sujetoobligados/docs/Poder Legislativo.pdf" target="_blank" title="">
                                                                <img src="img/home/sujetoobligados/carpe/congreso-bicubic.jpg" class="imagen-chicas img-responsive" >
                                                                </a>
                                                            </div>     
                                                        </div>
                                                        <div align="center" class="margin-bottom30 col-md-2 col-sm-2 col-xs-4 ">                                        
                                                            <div class="product-image" style="padding-bottom: 20px;">
                                                                 <div class="blog-dis" style="text-align:center;">
                                                                    <h6 class="entry-title"><a>Municipios</a></h6>
                                                                </div>
                                                                <a class="product-link " href="img/home/sujetoobligados/docs/Municipios.pdf"  target="_blank">
                                                                <img src="img/home/sujetoobligados/carpe/sonora-bell.jpg"  class=" imagen-chicas img-responsive" >
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div align="center" class="margin-bottom30 col-md-3 col-sm-3 col-xs-6 center-block ">                                        
                                                            <div class="product-image" style="padding-bottom: 20px;">
                                                                 <div class="blog-dis" style="text-align:center;">
                                                                    <h6 class="entry-title"><a>Organismos Autónomo</a></h6>
                                                                </div>
                                                                <a class="product-link" href="img/home/sujetoobligados/docs/Organismo autonomos 30 agosto 16.pdf" target="_blank">
                                                                <img src="img/home/sujetoobligados/carpe/sindicato-bell.jpg" class="imagen-chicas img-responsive" >
                                                                </a>
                                                             </div>  
                                                         </div>
                                                       </div>
                                                       <div class="row">
                                                       <div align="right" class="margin-bottom30 col-md-4 col-sm-4 col-xs-4  ">                                        
                                                             <div class="product-image imagen-median" style="padding-bottom: 20px;">
                                                                 <div class="blog-dis">
                                                                    <h6 class="entry-title"><a>Sindicatos</a></h6>
                                                                </div>
                                                                <a class="product-link " href="#" title="">
                                                                <img src="img/home/sujetoobligados/carpe/Sindicatos-1-bicubic.jpg" class="imagen-chicas img-responsive" >
                                                                </a>
                                                            </div>   
                                                        </div>
                                                        <div align="center" class="margin-bottom30 col-md-4 col-sm-4 col-xs-4  ">                                        
                                                            <div class="product-image" style="padding-bottom: 20px;">
                                                                 <div class="blog-dis" style="text-align:center;">
                                                                    <h6 class="entry-title"><a>Partidos Politicos</a></h6>
                                                                </div>
                                                                <a class="product-link " href="#" >
                                                                <img src="img/home/sujetoobligados/carpe/partidospoliticos-bicubic.jpg" class="imagen-chicas img-responsive">
                                                                </a>
                                                            </div>   
                                                        </div>
                                                        <div align="left" class="margin-bottom30 col-md-4 col-sm-4 col-xs-4 ">                                        
                                                            <div class="product-image" style="padding-bottom: 20px;">
                                                                 <div class="blog-dis" >
                                                                    <h6 class="entry-title"><a>Asociaciones Civiles</a></h6>
                                                                </div>
                                                                <a class="product-link " href="#" title="">
                                                                <img src="img/home/sujetoobligados/carpe/asociacion-civil-mitchell.jpg" class="imagen-chicas img-responsive" >
                                                                </a>
                                                            </div>     
                                                        </div>
                                                       </div>  
                                                    <!-- imagenes    -->
                                                </div>

                <!-- Tab Content 2 -->
                   <div class="tab-pane fade "  id="og">
						
                        <div class="col-md-2 col-sm-6 col-xs-12" >
                            
                            <div class="imagen-chicas">
                                <a href="http://www.inai.org.mx" target="_blank" title="INSTITUTO NACIONAL DE ACCESO A LA INFORMACIÓN Y PROTECCIÓN DE DATOS ">
                                    <img src="img/home/organismos/inai.jpg" class=" imagen-chicas ">
                                </a>
                            </div>

                            <div class="imagen-chicas">
                                <a href="http://www.ichitaip.org.mx" title="Instituto Chihuahuense para la Transparencia y Acceso a la Información Pública" target="_blank">
                                    <img src="img/home/organismos/instituto_chihuahua.jpg" class="imagen-chicas ">
                                </a>
                            </div>

                            <div class="imagen-chicas">
                                <a href="http://www.iacip-gto.org.mx" title="Instituto de Acceso a la Información Pública de Guanajuato " target="_blank">
                                    <img src="img/home/organismos/instituto_guanajuato.jpg" class="imagen-chicas">
                                </a>
                            </div>

                            <div class="imagen-chicas">
                                <a href="http://www.itainayarit.org.mx" title="Instituto de Transparencia y Acceso a la Información Pública del Estado de Nayarit" target="_blank">
                                    <img src="img/home/organismos/instituto_nayarit.jpg" class="imagen-chicas">
                                </a>
                            </div>

                            <div class="imagen-chicas">
                                <a href="http://www.cegaipslp.org.mx/" title="Comisión Estatal de Garanta de Acceso a la Información de San Luis Potosí" target="_blank">
                                    <img src="img/home/organismos/instituto_sanluisptsi.jpg" class="imagen-chicas">
                                </a>
                            </div>

                            <div class="imagen-chicas">
                                <a href="http://www.ivai.org.mx/" title="Instituto Veracruzano de Acceso a la Información" target="_blank">
                                    <img src="img/home/organismos/instituto_veracruz.jpg" class="imagen-chicas">
                                </a>
                            </div>
                        </div>
                       
                        <div class="col-md-2 col-sm-6 col-xs-12" >
                                                                                
                            <div class="imagen-chicas">
                                <a href="http://www.itea.org.mx" title="Instituto de Transparencia del Estado de Aguascalientes" target="_blank">
                                    <img src="img/home/organismos/instituto_aguascalientes.jpg" class="imagen-chicas">
                                </a>
                            </div>

                            <div class="imagen-chicas">
                                <a href="http://www.icai.org.mx" title="Instituto Coahuilense de Acceso a la Información Pública" target="_blank">
                                    <img src="img/home/organismos/insituto_coahuila.jpg" class="imagen-chicas">
                                </a>
                            </div>

                            <div class="imagen-chicas">
                                <a href="http://transparencia.guerrero.gob.mx/" title="Instituto de Transparencia y Acceso a la Información Pública del Estado de Guerrero" target="_blank">
                                    <img src="img/home/organismos/instituto_guerrero.jpg" class="imagen-chicas">
                                </a>
                            </div>

                            <div class="imagen-chicas">
                                <a href="http://www.ctainl.org.mx" title="Comisión de Transparencia y Acceso a la Información de Nuevo León " target="_blank">
                                    <img src="img/home/organismos/instituto_nuevoleon.jpg" class="imagen-chicas">
                                </a>
                            </div>

                            <div class="imagen-chicas">
                                <a href="http://www.ceaipsinaloa.org.mx/" target="_blank" title="Comisión Estatal para el Acceso a la Información Pública del Estado de Sinaloa">
                                    <img src="img/home/organismos/instituto_sinaloa.jpg" class="imagen-chicas">
                                </a>
                            </div>

                            <div class="imagen-chicas">
                                <a href="http://inaipyucatan.org.mx" target="_blank" title="Instituto de Acceso a la Información Pública del Estado de Yucatán ">
                                    <img src="img/home/organismos/instituto_yucatan.jpg" class="imagen-chicas">
                                </a>
                            </div>
                        </div>
                                                         
                        <div class="col-md-2 col-sm-6 col-xs-12" >
                            
                            <div class="imagen-chicas">
                                 <a href="http://www.itaipbc.org.mx/" title="Instituto de Transparencia y Acceso a la Información Pública del Estado de Baja California" target="_blank">
                                    <img src="img/home/organismos/instituto_bc.jpg" class="imagen-chicas">
                                </a>
                            </div>

                            <div class="imagen-chicas">
                                <a href="http://infocol.org.mx/" title="Instituto de Transparencia, Acceso a la Informacion Publica y Proteccion de Datos del Estado de Colima" target="_blank">
                                    <img src="img/home/organismos/infocol.png" class="imagen-chicas">
                                </a>
                            </div>

                            <div class="imagen-chicas">
                                <a href="http://www.iaipgh.org.mx/" title="Instituto de Acceso a la Información Pública Gubernamental de Hidalgo" target="_blank">
                                    <img src="img/home/organismos/instituto_hidalgo.jpg" class="imagen-chicas">
                                </a>
                            </div>

                            <div class="imagen-chicas">
                                <a href="http://iaipoaxaca.org.mx/" title="Instituto Estatal de Acceso a la Información Pública de Oaxaca " target="_blank">
                                    <img src="img/home/organismos/instituto_oaxaca.jpg" class="imagen-chicas">
                                </a>
                            </div>

                             

                            <div class="imagen-chicas">
                                <a href="http://www.izai.org.mx/" title="Comisión Estatal para el Acceso a la Información Pública de Zacatecas " target="_blank">
                                    <img src="img/home/organismos/instituto_zacateca.jpg" class="imagen-chicas">
                                </a>
                            </div>
                        </div>
                        
                        <div class="col-md-2 col-sm-6 col-xs-12" >
                           
                            <div class="imagen-chicas">
                                <a href="http://www.itai.org.mx" title="Instituto de Transparencia y Acceso a la Información Pública de Baja California Sur " target="_blank">
                                    <img src="img/home/organismos/instituto_bcs.jpg" class="imagen-chicas">
                                </a>
                            </div>

                            <div class="imagen-chicas">
                                <a href="http://www.infodf.org.mx/" title="Instituto de Acceso a la Información Pública del Distrito Federal" target="_blank">
                                    <img src="img/home/organismos/instituto_df.jpg" class="imagen-chicas">
                                </a>
                            </div>

                            <div class="imagen-chicas">
                                <a href="http://www.itei.org.mx" title="Instituto de Transparencia e Información Pública de Jalisco" target="_blank">
                                    <img src="img/home/organismos/instituto_jalisco.jpg" class="imagen-chicas">
                                </a>
                            </div>

                            <div class="imagen-chicas">
                                <a href="http://www.caip.org.mx" title="Comisión para el Acceso a la Información Pública y Protección de Datos Personales del Estado (PUEBLA) " target="_blank">
                                    <img src="img/home/organismos/instituto_puebla2.jpg" class="imagen-chicas">
                                </a>
                            </div>

                            <div class="imagen-chicas">
                                <a href="http://www.itaip.org.mx" title="Instituto Tabasqueño de Transparencia y Acceso a la Información Pública" target="_blank">
                                    <img src="img/home/organismos/instituto_tabasco.jpg" class="imagen-chicas">
                                </a>
                            </div>
                        </div>

                        <div class="col-md-2 col-sm-6 col-xs-12" >
                            
                            <div class="imagen-chicas">
                                <a href="http://www.cotaipec.org.mx/" title="Comisión de Transparencia y Acceso a la Información Pública del Estado de Campeche" target="_blank">
                                    <img src="img/home/organismos/instituto_campeche.jpg" class="imagen-chicas">
                                </a>
                            </div>

                            <div class="imagen-chicas">
                                <a href="http://www.idaip.org.mx/" title="Instituto Duranguense de Acceso a la Información Pública y Protección de Datos Personales " target="_blank">
                                    <img src="img/home/organismos/instituto_durango.jpg" class="imagen-chicas">
                                </a>
                            </div>

                            <div class="imagen-chicas">
                                <a href="http://www.itaimich.org.mx/" title="Instituto para la Transparencia y Acceso a la Información Pública del Estado de Michoacán " target="_blank">
                                    <img src="img/home/organismos/instituto_michoacan.jpg" class="imagen-chicas">
                                </a>
                            </div>

                            <div class="imagen-chicas">
                                <a href="http://www.infoqro.mx/" title="Comisión Estatal de Información Gubernamental de Queretaro " target="_blank">
                                    <img src="img/home/organismos/instituto_queretaro.jpg" class="imagen-chicas">
                                </a>
                            </div>

                            <div class="imagen-chicas">
                                <a href="www.itait.org.mx" title="Instituto de Transparencia y Acceso a la Información de Tamaulipas" target="_blank">
                                    <img src="img/home/organismos/instituto_tamaulipas.jpg" class="imagen-chicas">
                                </a>
                            </div>
                        </div>

                        <div class="col-md-2 col-sm-6 col-xs-12" >
                            
                            <div class="imagen-chicas">
                                <a href="http://www.iaipchiapas.org.mx/" title="Instituto de Acceso a la Información Pública de la Administración Pública Del Estado de Chiapas" target="_blank">
                                    <img src="img/home/organismos/instituto_chiapas.jpg" class="imagen-chicas">
                                </a>
                            </div>

                            <div class="imagen-chicas">
                                <a href="http://www.infoem.org.mx/" title="Instituto de Transparencia y Acceso a la Información Pública del Estado de México" target="_blank">
                                    <img src="img/home/organismos/instituto_estadomexico.jpg" class="imagen-chicas">
                                </a>
                            </div>

                            <div class="imagen-chicas">
                                <a href="http://www.imipe.org.mx" target="_blank" title="Instituto Morelense de Información Pública y Estadística">
                                    <img src="img/home/organismos/instituto_morelia.jpg" class="imagen-chicas">
                                </a>
                            </div>

                            <div class="imagen-chicas">
                                <a href="http://www.idaipqroo.org.mx/" target="_blank" title="Instituto de Transparencia y Acceso a la Información Pública de Quintana Roo">
                                    <img src="img/home/organismos/instituto_qroo.jpg" class="imagen-chicas">
                                </a>
                            </div>

                            <div class="imagen-chicas">
                                <a href="http://www.caip-tlax.org.mx/" title="Comisión de Transparencia del Estado de Tlaxcala " target="_blank">
                                    <img src="img/home/organismos/instituto_tlaxcala.jpg" class="imagen-chicas">
                                </a>
                            </div>
                        </div>
                    </div>

                <!-- Tab Content 3 -->
                    <div class="tab-pane fade" id="pt">
                         <div class="margin-bottom30 col-md-3 col-sm-3 col-xs-6 ">                                        
                                <div class="product-image" >
                                    <div class="blog-dis" style="text-align:center;">
                                        <h4 class="entry-title"><a ></a></h4>
                                    </div>
                                    <a class="product-link " href="http://articulo19.org/" target="_blank" title="">
                                    <img src="img/home/empresas/art19.png" class=" imagen-median img-responsive" >
                                   
                                    </a>
                                   
                                </div>     

                                <div class="product-image" >
                                     <div class="blog-dis" style="text-align:center;">
                                        <h4 class="entry-title"><a> </a></h4>
                                    </div>
                                    <a class="product-link" href="http://www.cimtra.org.mx/" target="_blank" >
                                    <img src="img/home/empresas/LOGO-cimtra.jpg" class="imagen-median img-responsive" >
                                    
                                    </a>
                                   
                                </div>   

                                                            
                            </div>
                            <div class="margin-bottom30 col-md-3 col-sm-3 col-xs-6 ">                                        
                                <div class="product-image">
                                     <div class="blog-dis" style="text-align:center;">
                                        <h4 class="entry-title"><a> </a></h4>
                                    </div>
                                    <a class="product-link " href="http://fundar.org.mx/" target="_blank" title="">
                                    <img src="img/home/empresas/fundar.jpg" class="imagen-median img-responsive" >
                                    
                                    </a>
                                   
                                </div> 
                                <div class="product-image">
                                     <div class="blog-dis" style="text-align:center;">
                                        <h4 class="entry-title"><a>   </a></h4>
                                    </div>
                                    <a class="product-link " href="http://www.tm.org.mx/" target="_blank" >
                                    <img src="img/home/empresas/Transparencia_Mexicana.jpg" class=" imagen-median img-responsive">
                                    
                                    </a>
                                   
                                </div>                                
                            </div>
                            
                            <div class="margin-bottom30 col-md-3 col-sm-3 col-xs-6 ">                                        
                                <div class="product-image" >
                                    <div class="blog-dis" style="text-align:center;">
                                        <h4 class="entry-title"><a >   </a></h4>
                                    </div>
                                    <a class="product-link " href="http://www.colectivoporlatransparencia.org/" target="_blank" title="">
                                    <img src="img/home/empresas/logo-Colectivo.png" class="imagen-median img-responsive" >
                                    
                                    </a>
                                   
                                </div>     

                                <div class="product-image" >
                                     <div class="blog-dis" style="text-align:center;">
                                        <h4 class="entry-title"><a> </a></h4>
                                    </div>
                                    <a class="product-link " href="http://www.contraloriaciudadana.org.mx/"  target="_blank">
                                    <img src="img/home/empresas/ong_contraloria.png" class="imagen-median img-responsive" >
                                   
                                    </a>
                                   
                                </div>   

                                                              
                            </div>

                           
                            <div class="margin-bottom30 col-md-3 col-sm-3 col-xs-6 ">                                        
                                <div class="product-image" >
                                    <div class="blog-dis" style="text-align:center;">
                                        <h4 class="entry-title"><a >   </a></h4>
                                    </div>
                                    <a class="product-link " href="http://www.sonoraciudadana.org.mx/" target="_blank" title="">
                                    <img src="img/home/empresas/SonoraCiudadana.png" class="imagen-median img-responsive" >
                                    
                                    </a>
                                   
                                </div>     

                                  
           
                            </div>
                    
            </div>
            <!-- End Tab Panels -->
                                    
                                </div>
                            </div>
                        
                    </div>
                </div>
                </div>
                </div></div>
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
        <script type="text/javascript" src="plugins/revolution/js/jquery.themepunch.tools.min.js"></script>
        <script type="text/javascript" src="plugins/revolution/js/jquery.themepunch.revolution.min.js"></script>

        <!-- SLIDER REVOLUTION 5.0 EXTENSIONS  
        (Load Extensions only on Local File Systems ! 
        The following part can be removed on Server for On Demand Loading) -->
        <script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.actions.min.js"></script>
        <script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
        <script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
        <script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
        <script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.migration.min.js"></script>
        <script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
        <script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
        <script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
        <script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.video.min.js"></script>
       
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
                                    keyboardNavigation: "off",
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
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="plugins/owl-carousel/owl.carousel.min.js"></script>
        <script type="text/javascript" src="js/filter.js"></script>
        <script type="text/javascript" src="plugins/waypoints/waypoints.min.js"></script>
        <script type="text/javascript" src="plugins/counterup/jquery.counterup.min.js"></script>
        <script type="text/javascript" src="plugins/FlexSlider/jquery.flexslider-min.js"></script>
        <script type="text/javascript" src="js/magnific-popup.min.js"></script>
        <script type="text/javascript" src="js/jquery.selectBox.js"></script>
        <script type="text/javascript" src="js/custom.js"></script>

        <!--[if lt IE 9]>
        <script src="respond.js"></script>
        <script src="html5shiv.js"></script>
        <![endif]-->

    </body>
</html>
