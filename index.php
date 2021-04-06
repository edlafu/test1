<?php session_start();?> <!-- iniciamos sesion para poder trabjar con las variables de sesion del archivo limit_pag.php. -->
<!doctype html>
<html lang="es">
<head>
	<!-- Informació Meta -->
	<meta charset="utf-8"/>
	<meta name="description" content="">
	<meta name="keywords" content="">
	<meta name="author" content="">

	<!-- Enllaç a l'arxiu CSS Extern -->
	<link rel=stylesheet href="css.css" type="text/css"/>
	<!-- <link rel="stylesheet" href="demo.css" type="text/css" media="screen" /> -->
	<link rel="stylesheet" href="flexslider.css" type="text/css" media="screen" />
	<!--CSS Intern-->
	<style type="text/css">
	</style>
  <script src="js/modernizr.js"></script>

	<!-- Títol de la pàgina -->
	<title>Filmoteca</title>
</head>
<body>
	<header></header>
	<section>
		<article>
			<!-- empieza el menu de desplazamiento por la pagina  -->
			<div class="contenedormenu"> <!-- Class hr-nav-2-->
    	<nav class="nav-container style-3">
        <a href="verpeliculas.php" class="nav-item">Ver o editar Filmoteca</a>
        <a href="nuevapelicula.php" class="nav-item">Añadir pelicula a la DB</a>
				<a href="cercador.php" class="nav-item">Hacer una busqueda</a>	
				<a href="about.php" class="nav-item">About</a>				
    </nav>
</div>
			<div> 
				<!-- Modernizr -->
				<div id="container" class="cf">
					<div id="main" role="main">
						<section class="slider">
							<div class="flexslider">
							<ul class="slides">
							<li>
							<img class="slidd" src="images/1.jpg" />
							</li>
							<li>
							<img class="slidd" src="images/2.jpg" />
							</li>
							<li>
							<img class="slidd" src="images/3.jpg" />
							</li>
							<li>
							<img class="slidd" src="images/4.png" />
							</li>
							</ul>
							</div>
						</section>
					</div>
				</div>
				<!-- jQuery -->
				<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
				<script>window.jQuery || document.write('<script src="js/libs/jquery-1.7.min.js">\x3C/script>')</script>

				<!-- FlexSlider -->
				<script defer src="jquery.flexslider.js"></script>

				<script type="text/javascript">
				$(function(){
				SyntaxHighlighter.all();
				});
				$(window).load(function(){
				$('.flexslider').flexslider({
				animation: "slide",
				start: function(slider){
				$('body').removeClass('loading');
				}
				});
				});
				</script>
				
			</div>
		</article> 
	</section>
	<footer>
	Polliteca -2021 by ELF
	</footer>
</body>
</html>
