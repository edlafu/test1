<?php

//dades de connexió

  $servidor = "localhost";
  $usuari = "filmoteca";
  $contrasenya = "filmoteca";
  $basededades = "filmoteca";
  $taula = "pellicules";
  
  //comprobació per a saber si l'usuari no ha pasat pel formulari i poderlo xutar
  if ($_POST == null){
    header("Location: ../nuevapelicula.php");
    die();
  }

    //Llistem les variables amb les que treballarem per a poder afegir pelicules a la DB
    $titol = $_POST["titol"];
    $director = $_POST["director"];
    $año = $_POST["año"];
    $pais = $_POST["pais"];
    $puntuacion = $_POST["puntuacion"];

//escribim la consulta que voldrem executar
$sql = "INSERT INTO $taula (titol, director, any, pais, puntuacio) VALUES ('$titol','$director', '$año', '$pais', '$puntuacion')";
$sql_id = "SELECT * FROM $taula ORDER BY data_creacio DESC LIMIT 1"; // rebem l'id que posara el nom a la imatge

//fem la connexió
$conn = new mysqli($servidor, $usuari, $contrasenya, $basededades);

// comprovem la connexió
if ($conn->connect_error) { //si falla
echo "Fallada en la connexió: ".$conn->connect_error;
die();
// }else{ //tot ok
//   echo "ok<br>";
}

//fem la consulta per a poder afegir pelicules a la db
if ($conn ->query($sql) === TRUE){ // es a dir si hi ha conexio a la db seguim endevant.
  echo "OK!";
}else {
  echo "Error: ".$sql."<br>".$conn->error; 
}

$id_newfilm = $conn->query($sql_id); // executem una consulta a la db per a obtenir la id de la pelicula que hem afegit.

if ($id_newfilm->num_rows > 0){ //si la nova id es mes gran que 0, pertant es cualsevol id.
  while($fila = $id_newfilm->fetch_assoc()){ //mentres que la variable fila sigui igual al resultat de la id imprimirem la fila
    $imatge = $fila["id"]; // passem la id que sera el nom de la imatge nova
  }
}
$conn->close();
//començem amb el proces de pujat la imatge al servidor 

$ruta_desti = "../img/$imatge.jpg";
$tipus_arxiu = $_FILES['imagen']['type'];
$tamany_arxiu = $_FILES['imagen']['size'];
$tamany_max = 51200;
$ruta_temporal = $_FILES['imagen']['tmp_name'];

//fer la comprobacio de la imatge
  if(!(strpos($tipus_arxiu, "jpeg")) && ($tamany_arxiu < $tamany_max)){
  echo "extensio o tamaño erroneo.";
  echo  '<a href="../nuevapelicula.php" class="nav-item">Añadir pelicula a la DB</a>';  // PROBLEMA SI NO SE CARGA UNA IMAGEN LA PELICULA NO SE PUEDE SUBIR A LA DB.
}else{
  if(move_uploaded_file($ruta_temporal, $ruta_desti)){
    echo "El archivo se ha cargado.";
    header("Location: ../index.php");
    die();
  }else{
    echo " Epic fail, sorry...";
  }
}




?>