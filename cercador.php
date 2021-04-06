<?php session_start();
include "db/buscadorpeliculasDB.php";
include "db/limit_pagination.php"?> <!-- iniciamos sesion para poder trabjar con las variables de sesion. -->
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

	<!--CSS Intern-->
	<style type="text/css">
	</style>

	<!-- Títol de la pàgina -->
	<title>Search film</title>
</head>
<body>
	<header>
		<div class="contenedormenu"> <!-- Class hr-nav-2-->
    	<nav class="nav-container style-3">
        <a href="verpeliculas.php" class="nav-item">Ver o editar Filmoteca</a>
        <a href="nuevapelicula.php" class="nav-item">Añadir pelicula a la DB</a>
				<a href='index.php' class='nav-item'>Volver al inicio</a>	
				<a href="about.php" class="nav-item">About</a>				
				</nav>	
				</div></header>
				<?php
				//reusar el valor de la busqueda anterior para que al recargar la pagina no aparezca el campo de busqueda vacio y el usuario con problemas de memoria no sufra encefalograma plano
				if (isset($_POST['text_cercar'])){
					$text = $_POST['text_cercar'];
					}else{
						$text = "";
					}
					?>

	<section>
		<article>
			<h2>Realiza tus busquedas!</h2>
				<form method="post" action="cercador.php" name="cercar" id="cercar" >
					<label></label><br>
					<input type="text" name="text_cercar" id="text_cercar"  class="form"  value='<?php echo $text; ?>' placeholder="Introduce el texto a buscar."><br>
					<input type="submit" value="Buscar" class="botonpaginasañadirpelicula">
				</form>

				<?php
				if(isset($_POST['text_cercar']) and $_POST['text_cercar'] != ""){
					$data = buscapeliculas($_POST['text_cercar']);
				}
				if (isset($_POST['text_cercar'])){
				
				echo "<div class='contenedor'>";
				echo $data; // las peliculas buscadas
				echo "</div>";
			}else{
				echo "Haz tu busqueda";
			}
				?>

				<a href='index.php' class='nav-item'>Volver al inicio</a>
		</article> 
	</section>
	<footer>
	Polliteca -2021 by ELF
	</footer>
</body>
</html>
