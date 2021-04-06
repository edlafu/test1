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

	<!--CSS Intern-->
	<style type="text/css">
	</style>

	<!-- Títol de la pàgina -->
	<title>Filmoteca</title>
</head>
<body>
	<header></header>
	<section>
		<article>
			<h2>Tabla de la filmoteca</h2>

				<?php
        include "db/inventariopeliculas.php"; include "db/limit_pag.php"; //indexamos el php con las funciónes externas.
				$data = peliculaslistadas();// recollim les dades de les pelicules de la base de dades
				$registre_actual = $data[1]; //el registre en el que estem actualment al mourens entre les paginacions
				$registre_seguent = $registre_actual + $_SESSION["limit"]; // sumem al registre actual, el limit per a mostrar el contingut de la pagina seguent
				$registre_anterior =  $registre_actual - $_SESSION["limit"]; // restem al registre actual, el limit per a mostrar el contingut de la pagina anterior
				//empezamos a construir la estructura de la pagina para poder trabajar luego sobre ella.

				// Menu horizontal para moverse entre las funcionalidades de la pagina
				echo '
					<div class="contenedormenu"> <!-- Class hr-nav-2-->
						<nav class="nav-container style-3">
							<a href="index.php" class="nav-item">Inicio</a>
							<a href="nuevapelicula.php" class="nav-item">Añadir pelicula a la DB</a>
							<a href="cercador.php" class="nav-item">Hacer una busqueda</a>	
							<a href="about.php" class="nav-item">About</a>	
						</nav>
					</div>';
				// fin menu horizontal
				
				//este es el segundo campo contenedor que contiene las utilidades para poder pasar de pagina y muestra la actual.
				echo "<div class='paginas'>";
					echo "<p>Mostrar los registros de ".$registre_actual+(1)." a ".$registre_seguent." de ".$_SESSION["num_files"]." totales.</p>";
					echo "<a href='?registre_actual=$registre_anterior' class='botonpaginas'> << Vuelve a la pagina anterior<br></a>";
					echo "<a href='?registre_actual=$registre_seguent' class='botonpaginas'>Pasa a la pagina siguiente >></a>";
				echo "</div>";
				//fin del segundo bloque. 

				//comienzo del contenedor que tiene las peliculas
				echo "<div class='contenedor'>";
					echo $data[0]; // la funcion peliculaslistadas devuelve un array, y cogemos el primer dato pasado que son elementos de la DB, es decir las peliculas con sus datos.
				echo "</div>";


				//volvemos a posicionar el contenedor con los enlaces para avanzar y retroceder en las paginas que se muestran.
				echo "<div class='paginas'>";
					echo "<p>Mostrar los registros de ".$registre_actual+(1)." a ".$registre_seguent." de ".$_SESSION["num_files"]." totales.</p>";
					echo "<a href='?registre_actual=$registre_anterior' class='botonpaginas'> << Vuelve a la pagina anterior.</a>";
					echo "<a href='?registre_actual=$registre_seguent' class='botonpaginas'> Pasa a la pagina siguiente >>.</a>";
				echo "</div>";
				//fin de bloque

      	?>

		</article> 
	</section>
	<footer>
	Polliteca -2021 by ELF
	</footer>
</body>
</html>
