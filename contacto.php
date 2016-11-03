<?php
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
        <link rel="stylesheet" href="plugins/FlexSlider/jquery.flexslider.css">
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">

        <!-- WEB FONTS -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
        <link href="http://fonts.googleapis.com/css?family=Raleway:500,800" rel="stylesheet" property="stylesheet" type="text/css" media="all" />

    </head>
    <body>
        <!-- Start Main Wrapper -->
        <div class="wrapper">
                <!-- Incluimos el header con los menus -->
        <?php
        require_once($CONFIG['path']."/include/cod/header.php");
		?>
            
            
            <section class="main-contain">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="page-bg-color-style2">
                                <div class="map-box col-md-4">
                                    <script type="text/javascript">

                                        function initialize() {
                                            var styles = {
                                                'canvas': [{
                                                        "featureType": "administrative",
                                                        "stylers": [
                                                            {"visibility": "on"}
                                                        ]
                                                    },
                                                    {
                                                        "featureType": "road",
                                                        "stylers": [
                                                            {"visibility": "on"},
                                                            {"hue": "#6990cb"}
                                                        ]
                                                    },
                                                    {
                                                        "stylers": [
                                                            {"visibility": "on"},
                                                            {"hue": "#6990cb"},
                                                            {"saturation": -50}
                                                        ]
                                                    }
                                                ]};

                                            var myLatlng = new google.maps.LatLng(-34.397, 150.644);
                                            var myOptions = {
                                                zoom: 10,
                                                center: myLatlng,
                                                mapTypeId: google.maps.MapTypeId.ROADMAP,
                                                //disableDefaultUI: true,
                                                mapTypeId: 'canvas',
                                                        draggable: true,
                                                scrollwheel: false,
                                            }
                                            var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
                                            var styledMapType = new google.maps.StyledMapType(styles['canvas'], {name: 'canvas'});
                                            map.mapTypes.set('canvas', styledMapType);

                                            var marker = new google.maps.Marker({
                                                position: myLatlng,
                                                map: map,
                                                title: ""
                                            });
                                        }

                                        google.maps.event.addDomListener(window, 'load', initialize);
                                        google.maps.event.addDomListener(window, 'resize', initialize);

                                    </script>

                                    <div id="map_container">
                                        <div id="map_canvas" style="height:400px;"></div>
                                    </div>
                                </div>
                                        <div class="col-md-5 col-sm-7 col-xs-12 clearfix">
                                        <div class="form-main">
                                            <form class="form">

                                                <p class="name">
                                                    <input name="name" type="text" class="feedback-input" placeholder="Name" id="name" />
                                                </p>

                                                <p class="email">
                                                    <input name="email" type="text" class="feedback-input" id="email" placeholder="Email" />
                                                </p>

                                                <p class="text">
                                                    <textarea name="text" class="feedback-input" id="comment" placeholder="Comment"></textarea>
                                                </p>


                                                <div class="submit">
                                                    <input type="submit" value="Submit" class="form-button" />

                                                </div>
                                            </form>
                                        </div>

                                    </div>

                                    <div class="our-address col-md-3 col-sm-5 clearfix">
                                        <h3><strong>Contáctanos</strong></h3>
                                          <ul class="contact-list-unstyled">
                                    <li><i class="fa fa-home"></i>Dr. Hoeffer # 65 Esq con Bravo col. Centenario, Hermosillo, Sonora, México</li>
                                    <li><i class="fa fa-phone"></i> Teléfono: (662) 2-131-543</li>
                                    
                                    
                                    <li><i class="fa fa-envelope-o"></i>Email:  <a href="#">contacto@transparenciasonora.org</a></li>
                                    <li><i class="fa fa-connectdevelop"></i>Web :  <a href="#">soporte@transparenciasonora.org</a></li>
                                </ul>
                                    </div>
                                <div class="contact-block">
 
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </section>

                   <!-- Start Foooter-->
              <?php // incluimos el footer
		 require_once($CONFIG['path']."/include/cod/footer.php");
		 ?>
            <!-- End Foooter-->
            
        </div>  
        <!-- End Main Wrapper -->

        <!-- jquery libs -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>

        <script type='text/javascript' src='https://maps.googleapis.com/maps/api/js?sensor=false&#038;ver=1.0'></script>
        
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
