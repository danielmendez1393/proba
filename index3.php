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
                    	<div class="btn-custom">
                                 
            				<div id="rev_slider_213_1_wrapper" class="rev_slider_wrapper fullwidthbanner-container" data-alias="woocommercebig" style="margin:0px auto;background-color:transparent;padding:0px;margin-top:0px;margin-bottom:0px;">
                
                <!-- START REVOLUTION SLIDER 5.1.1RC auto mode -->
                <div id="rev_slider_213_1" class="rev_slider fullwidthabanner" style="display:none;" data-version="5.1.1RC">
                    <ul>
                        <?php
						 foreach($notas as $id => $nota){ //Notas consultadas
						 ?>
                        <!-- SLIDE  -->
                        <li data-index="rs-867<?=$id?>" data-transition="slideremovehorizontal" data-slotamount="default" data-easein="default" data-easeout="default" data-masterspeed="default" data-thumb="plugins/revolution/assets/img/woo1-100x50.jpg" data-rotate="0" data-fstransition="fade" data-fsmasterspeed="1000" data-fsslotamount="7" data-saveperformance="off" data-title="<?=$nota['nts_titulo']?>" data-description="">
                       <!-- MAIN IMAGE -->
                           
                           <img src="plugins/revolution/assets/img/dummy.png" alt="" width="1200" height="600" data-lazyload="<?=$CONFIG['sitioimgnotas'].$nota['nts_imagen']?>" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="5" class="img-responsive" data-no-retina>
                          
                            <!-- LAYERS -->
							<div class="tp-caption tp-shape tp-shapewrapper  " id="slide-355-layer-11" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['bottom','bottom','bottom','bottom']" data-voffset="['0','0','0','0']" data-width="full" data-height="['100','100','100','150']" data-whitespace="nowrap" data-transform_idle="o:1;" data-transform_in="opacity:0;s:1500;e:Power2.easeInOut;" data-transform_out="opacity:0;s:1000;" data-start="0" data-basealign="slide" data-responsive_offset="off" data-responsive="off" style="z-index: 5;text-transform:left;background-color:rgba(0, 0, 0, 0.50);border-color:rgba(0, 0, 0, 0);background:linear-gradient(to bottom,  rgba(0,0,0,0) 0%,rgba(0,0,0,0.45) 100%);cursor:default;"> </div>
 
							<div class="tp-caption BigBold-Title   tp-resizeme" id="slide-355-layer-1" data-x="['left','left','left','left']" data-hoffset="['50','50','30','17']" data-y="['bottom','bottom','bottom','bottom']" data-voffset="['110','110','180','160']" data-fontsize="['40','40','10','10']" data-lineheight="['100','90','60','60']" data-width="['none','none','none','400']" data-height="none" data-whitespace="['nowrap','nowrap','nowrap','normal']" data-transform_idle="o:1;" data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:1500;e:Power3.easeInOut;" data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;" data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;" data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" data-start="500" data-splitin="none" data-splitout="none" data-basealign="slide" data-responsive_offset="off" style="z-index: 6; white-space: nowrap;text-transform:left;"><?=$nota['nts_titulo']?> </div>
 
							<div class="tp-caption BigBold-SubTitle  " id="slide-355-layer-4" data-x="['left','left','left','left']" data-hoffset="['55','55','33','20']" data-y="['bottom','bottom','bottom','bottom']" data-voffset="['40','1','74','58']" data-fontsize="['15','15','15','13']" data-lineheight="['24','24','24','20']" data-width="['410','410','410','280']" data-height="['60','100','100','100']" data-whitespace="normal" data-transform_idle="o:1;" data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:1500;e:Power3.easeInOut;" data-transform_out="y:50px;opacity:0;s:1000;e:Power2.easeInOut;" data-start="650" data-splitin="none" data-splitout="none" data-basealign="slide" data-responsive_offset="off" data-responsive="off" style="z-index: 7; min-width: 410px; max-width: 410px; max-width: 60px; max-width: 60px; white-space: normal;text-transform:left;"><?=$nota['nts_descripcioncorta']?> </div>
 
							<div class="tp-caption BigBold-Button rev-btn " id="slide-355-layer-7" data-x="['left','left','left','left']" data-hoffset="['480','480','30','20']" data-y="['bottom','bottom','bottom','bottom']" data-voffset="['50','50','30','20']" data-width="none" data-height="none" data-whitespace="nowrap" data-transform_idle="o:1;" data-transform_hover="o:1;rX:0;rY:0;rZ:0;z:0;s:300;e:Power1.easeInOut;" data-style_hover="c:rgba(255, 255, 255, 1.00);bc:rgba(255, 255, 255, 1.00);" data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:1500;e:Power3.easeInOut;" data-transform_out="y:50px;opacity:0;s:1000;e:Power2.easeInOut;" data-start="650" data-splitin="none" data-splitout="none" data-actions='[{"event":"click","action":"scrollbelow","offset":"px","delay":""}]' data-basealign="slide" data-responsive_offset="off" data-responsive="off" style="z-index: 8; white-space: nowrap;text-transform:left;border-color:rgba(255, 255, 255, 0.25);outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;cursor:pointer;">LEER MAS </div>
 
							<div class="tp-caption BigBold-Button rev-btn " id="slide-355-layer-12" data-x="['left','left','left','left']" data-hoffset="['676','676','226','216']" data-y="['bottom','bottom','bottom','bottom']" data-voffset="['50','50','30','20']" data-width="none" data-height="none" data-whitespace="nowrap" data-transform_idle="o:1;" data-transform_hover="o:1;rX:0;rY:0;rZ:0;z:0;s:300;e:Power1.easeInOut;" data-style_hover="c:rgba(255, 255, 255, 1.00);bc:rgba(255, 255, 255, 1.00);" data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:1500;e:Power3.easeInOut;" data-transform_out="y:50px;opacity:0;s:1000;e:Power2.easeInOut;" data-start="650" data-splitin="none" data-splitout="none" data-actions='[{"event":"click","action":"jumptoslide","slide":"next","delay":""}]' data-basealign="slide" data-responsive_offset="off" data-responsive="off" style="z-index: 9; white-space: nowrap;text-transform:left;padding:15px 20px 15px 20px;border-color:rgba(255, 255, 255, 0.25);outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;cursor:pointer;"><i class="fa-icon-chevron-right"></i> </div>
                            <!-- LAYER NR. 1 -->
                            <!--div class="tp-caption tp-shape tp-shapewrapper  tp-resizeme" id="slide-8678-layer-1" data-x="['left','left','left','left']" data-hoffset="['30','30','30','30']" data-y="['botton','botton','botton','botton']" data-voffset="['30','30','30','30']" data-width="['430','430','430','420']" data-height="100" data-whitespace="nowrap" data-transform_idle="o:1;" data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;s:1500;e:Power3.easeOut;" data-transform_out="x:left;s:1200;e:Power3.easeInOut;s:1200;e:Power3.easeInOut;" data-start="500" data-responsive_offset="on" style="z-index: 5;background-color:rgba(255, 255, 255, 0.6); border-color:rgba(0, 0, 0, 0);">
                            </div>

                            <!-- LAYER NR. 2 -->
                            <!--div class="tp-caption Woo-TitleLarge   tp-resizeme" id="slide-8678-layer-2" data-x="['left','left','left','left']" data-hoffset="['60','60','60','55']" data-y="['top','top','top','top']" data-voffset="['60','60','60','60']" data-width="370" data-height="none" data-whitespace="normal" data-transform_idle="o:1;" data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;s:1500;e:Power3.easeOut;" data-transform_out="x:left;s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;" data-start="600" data-splitin="none" data-splitout="none" data-responsive_offset="on" style="z-index: 6; min-width: 370px; max-width: 370px; white-space: normal;text-align:center;"><?=$nota['nts_titulo']?>
                            </div>

                            <!-- LAYER NR. 3 -->
                            <!--div class="tp-caption Woo-Rating   tp-resizeme" id="slide-8678-layer-6" data-x="['left','left','left','left']" data-hoffset="['60','60','60','55']" data-y="['top','top','top','top']" data-voffset="['160','160','160','160']" data-width="370" data-height="none" data-whitespace="normal" data-transform_idle="o:1;" data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;s:1500;e:Power3.easeOut;" data-transform_out="x:left;s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;" data-start="700" data-splitin="none" data-splitout="none" data-responsive_offset="on" style="z-index: 7; min-width: 370px; max-width: 370px; white-space: normal; line-height: 22px;text-align:center;">
                                <div class="rs-starring">
                                    <div class="star-rating" title="Rated 3.67 out of 5"></div>
                                </div> (3 customer reviews)
                            </div-->

                            <!-- LAYER NR. 4 -->
                            <!--div class="tp-caption Woo-Rating   tp-resizeme" id="slide-8678-layer-9" data-x="['left','left','left','left']" data-hoffset="['60','60','60','55']" data-y="['top','top','top','top']" data-voffset="['225','225','225','225']" data-width="370" data-height="none" data-whitespace="normal" data-transform_idle="o:1;" data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;s:1500;e:Power3.easeOut;" data-transform_out="x:left;s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;" data-start="800" data-splitin="none" data-splitout="none" data-responsive_offset="on" style="z-index: 8; min-width: 370px; max-width: 370px; white-space: normal; line-height: 22px;text-align:center;"><?=$nota['nts_descripcioncorta']?>
                            </div>

                            <!-- LAYER NR. 5 -->
                            <!--div class="tp-caption Woo-SubTitle   tp-resizeme" id="slide-8678-layer-10" data-x="['left','left','left','left']" data-hoffset="['60','59','59','55']" data-y="['top','top','top','top']" data-voffset="['350','350','350','350']" data-width="370" data-height="none" data-whitespace="normal" data-transform_idle="o:1;" data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;s:1500;e:Power3.easeOut;" data-transform_out="x:left;s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;" data-start="900" data-splitin="none" data-splitout="none" data-responsive_offset="on" style="z-index: 9; min-width: 370px; max-width: 370px; white-space: normal;text-align:center;">STARTING FROM
                            </div-->

                            <!-- LAYER NR. 6 -->
                            <!--div class="tp-caption Woo-PriceLarge   tp-resizeme" id="slide-8678-layer-11" data-x="['left','left','left','left']" data-hoffset="['60','60','60','55']" data-y="['top','top','top','top']" data-voffset="['380','380','380','380']" data-width="370" data-height="none" data-whitespace="normal" data-transform_idle="o:1;" data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;s:1500;e:Power3.easeOut;" data-transform_out="x:left;s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;" data-start="1000" data-splitin="none" data-splitout="none" data-responsive_offset="on" style="z-index: 10; min-width: 370px; max-width: 370px; white-space: normal; font-size: 40px; line-height: 40px;text-align:center;"><span class="amount">&#36;399.00</span>
                            </div-->

                            <!-- LAYER NR. 7 -->
                            <!--a class="tp-caption Woo-ProductInfo rev-btn  tp-resizeme" href="#" target="_self" id="slide-8678-layer-14" data-x="['left','left','left','left']" data-hoffset="['139','139','139','132']" data-y="['top','top','top','top']" data-voffset="['360','360','360','370']" data-width="none" data-height="none" data-whitespace="nowrap" data-transform_idle="o:1;" data-transform_hover="o:1;rX:0;rY:0;rZ:0;z:0;s:200;e:Power1.easeInOut;" data-style_hover="c:rgba(0, 0, 0, 1.00);bg:rgba(221, 221, 221, 1.00);cursor:pointer;" data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;s:1500;e:Power3.easeOut;" data-transform_out="x:left;s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;" data-start="1100" data-splitin="none" data-splitout="none" data-actions='' data-responsive_offset="on" style="z-index: 11; white-space: nowrap;background-color:rgba(238, 238, 238, 1.00);outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;"><i class="pe-7s-look" style="font-size:25px; float: left; margin-top: -6px; margin-right: 6px;"></i> Mas Información
		</a>

                            <!-- LAYER NR. 8 -->
                            <!--a class="tp-caption Woo-AddToCart rev-btn  tp-resizeme" href="#" target="_self" id="slide-8678-layer-13" data-x="['left','left','left','left']" data-hoffset="['142','142','142','137']" data-y="['top','top','top','top']" data-voffset="['500','500','500','500']" data-width="none" data-height="none" data-whitespace="nowrap" data-transform_idle="o:1;" data-transform_hover="o:1;rX:0;rY:0;rZ:0;z:0;s:200;e:Power1.easeInOut;" data-style_hover="c:rgba(0, 0, 0, 1.00);bg:rgba(243, 168, 71, 1.00);cursor:pointer;" data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;s:1500;e:Power3.easeOut;" data-transform_out="x:left;s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;" data-start="1200" data-splitin="none" data-splitout="none" data-actions='' data-responsive_offset="on" style="z-index: 12; white-space: nowrap;padding:12px 75px 12px 50px;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;"><i class="pe-7s-cart" style="font-size:25px; float: left; margin-top: -6px; margin-right: 6px;"></i>Mas Información
		</a-->
                        </li>
                        <?php
						 }
						?>
                        
                    </ul>
                    <div class="tp-bannertimer tp-bottom" style="visibility: hidden !important;"></div>
                </div>
            </div>
            
            <!-- END REVOLUTION SLIDER -->
       
                                    <!-- End noticias-->
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

        <script type="text/javascript">
                var tpj = jQuery;

                var revapi213;
                tpj(document).ready(function() {
                    if (tpj("#rev_slider_213_1").revolution == undefined) {
                        revslider_showDoubleJqueryError("#rev_slider_213_1");
                    } else {
                        revapi213 = tpj("#rev_slider_213_1").show().revolution({
                            sliderType:"standard",
 jsFileLocation: "/revolution/js/",
						sliderLayout:"auto",
						dottedOverlay:"none",
						delay:9000,
						navigation: {
							keyboardNavigation:"on",
							keyboard_direction: "horizontal",
							mouseScrollNavigation:"off",
 							mouseScrollReverse:"default",
							onHoverStop:"off",
							touch:{
								touchenabled:"on",
								swipe_threshold: 75,
								swipe_min_touches: 1,
								swipe_direction: "horizontal",
								drag_block_vertical: false
							}
							,
							bullets: {
								enable:true,
								hide_onmobile:true,
								hide_under:960,
								style:"zeus",
								hide_onleave:false,
								direction:"horizontal",
								h_align:"right",
								v_align:"bottom",
								h_offset:80,
								v_offset:50,
								space:5,
								tmp:'<span class="tp-bullet-image"></span><span class="tp-bullet-imageoverlay"></span><span class="tp-bullet-title">{{title}}</span>'
							}
						},
						responsiveLevels:[1240,1024,778,480],
						visibilityLevels:[1240,1024,778,480],
						gridwidth:[1240,1024,778,480],
						gridheight:[600,600,600,600],
						lazyType:"none",
						parallax: {
							type:"mouse",
							origo:"slidercenter",
							speed:2000,
							levels:[2,3,4,5,25,7,12,16,10,50,47,48,49,50,51,55],
							type:"mouse",
							disable_onmobile:"on"
						},
						shadow:0,
						spinner:"on",
						stopLoop:"on",
						stopAfterLoops:0,
						stopAtSlide:1,
						shuffle:"off",
						autoHeight:"off",
						fullScreenAutoWidth:"off",
						fullScreenAlignForce:"off",
						fullScreenOffsetContainer: "",
						fullScreenOffset: "60px",
						disableProgressBar:"on",
						hideThumbsOnMobile:"off",
						hideSliderAtLimit:0,
						hideCaptionAtLimit:0,
						hideAllCaptionAtLilmit:0,
						debugMode:false,
						fallbacks: {
							simplifyAll:"off",
							nextSlideOnWindowFocus:"off",
							disableFocusListener:false,
						}
                        });
                    }
                }); /*ready*/
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
