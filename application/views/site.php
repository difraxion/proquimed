<!DOCTYPE html><!--[if lt IE 7]>
<html class="no-js lt-ie9 lt-ie8 lt-ie7">
<![endif]--><!--[if IE 7]>
<html class="no-js lt-ie9 lt-ie8">
<![endif]--><!--[if IE 8]>
<html class="no-js lt-ie9">
<![endif]--><!--[if gt IE 8]><!-->
<html lang="es" class="no-js">
<!--<![endif]-->
<head>
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
   <title>{TITLE}</title>
   <!--Este sitio ha sido desarrollado por Difraxion Group.
      Tel. +52 01 (477) 198 09 65
      E-mail: ventas@reed.com.mx
      www.difraxion.com
      León, Guanajuato-->
   <meta name="description" content="{META}">
   <meta name="keywords" content="{KEYWORDS}">
   <meta name="author" content="Difraxion">
   <meta name="robots" content="all">
   <meta name="geo.placename" content="México">
   <meta name="viewport" content="width=1024">
   <meta property="og:title" content="{MAIN_TITLE}">
   <meta property="og:type" content="website">
   <meta property="og:site_name" content="{SITE}">
   <meta property="og:description" content="{META}">
   <meta property="og:image" content="{IMAGE_SITE}">
   <meta property="og:url" content="{DIR}">
   <link rel="stylesheet" href="{DIR}css/normalize.css" type="text/css">
   <link rel="stylesheet" href="{DIR}css/main.css" type="text/css">
   <link rel="stylesheet" href="{DIR}css/style.css" type="text/css">
   <link rel="shortcut icon" href="{DIR}img/{FAVICON}" type="image/ico">
   <link href="js/ui/ui-lightness/jquery-ui-1.10.4.custom.css" rel="stylesheet">
   <script src="{DIR}js/libs/CreateHTML5Elements.js"></script>
   <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>  
   <script src="{DIR}js/cycle/jquery.cycle.all.js"></script>
   <script src="{DIR}js/cycle/jquery.cycle2.min.js"></script>
   <script src="{DIR}js/cycle/jquery.cycle2.carousel.min.js"></script>
   <script src="{DIR}js/cycle/jquery.cycle2.swipe.min.js"></script>
</head>
<body>
   <input type="hidden" value="{DIR}" id="hdn_baseurl">
   <nav class="content top-menu">
   		<div class="wrapper">
   			<a href="{DIR}" class="logo">
   			<figure class="display-inline">
   				<img src="{DIR}img/home/logo.png" alt="logo">
   			</figure>
	   		</a>
	   		<ul class="display-inline menu">
	   			{MENU}
	   		</ul>
   		</div>
   		
   </nav>
   <div class="content">{CONTENT}</div>
   <footer>
    <?php require_once('footer.php');?>  
   </footer>
   <script src="{DIR}js/main.js"></script>
   <script src="js/ui/jquery-1.10.2.js"></script>
   <script src="js/ui/jquery-ui-1.10.4.custom.js"></script>
   <script>// Google Analytics Code
      {ANALYTICS}
   </script>
</body>
</html>
  
   