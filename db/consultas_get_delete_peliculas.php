<?php

function consultas_get_delete_peliculas($id){
//dades de connexió

  $servidor = "localhost";
  $usuari = "filmoteca";
  $contrasenya = "filmoteca";
  $basededades = "filmoteca";
  $taula = "pellicules";
  

//escribim la consulta que voldrem executar
$sql = "SELECT * FROM $taula WHERE id = $id"; 

//fem la connexió
$conn = new mysqli($servidor, $usuari, $contrasenya, $basededades);

// comprovem la connexió
if ($conn->connect_error) { //si falla
echo "Fallada en la connexió: ".$conn->connect_error;
die();
// }else{ //tot ok
//   echo "ok<br>";
}
$resultat = $conn->query($sql); // indicamos que la variable resultado almacena el resultado de la consulta que es el id.


if ($resultat -> num_rows > 0){ //si la nova id es mes gran que 0, pertant es cualsevol id.
  while($fila = $resultat->fetch_assoc()){ //mentres que la variable fila sigui igual al resultat recuperem les dades de la pelicula
    $titol = $fila["titol"];
    $director = $fila["director"];
    $any = $fila["any"];
    $pais = $fila["pais"];
    $puntuacio = $fila["puntuacio"];
    $id = $fila["id"]; // usado para poner la imagen
  }
}else{
  header("Location: index.php"); // en caso de que no tengamos resultados de id, redirigimos al index.
  die();
}
$conn->close();

if(file_exists("img/$id.jpg")){
  $img = $id;
}else{
  $img = 0;
}


$return = [$titol, $director, $any, $pais, $puntuacio, $id, $img];
return $return;
}


?>