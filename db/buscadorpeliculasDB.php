<?php

function buscapeliculas($text){
//dades de connexió

  $servidor = "localhost";
  $usuari = "filmoteca";
  $contrasenya = "filmoteca";
  $basededades = "filmoteca";
  $taula = "pellicules";
  
//consulta
$sql = 
"SELECT pellicules.id, pellicules.titol, pellicules.director, pellicules.any, pellicules.puntuacio, generes.genre_name, countries.name 
FROM $taula
INNER JOIN generes ON pellicules.id_genere = generes.id
INNER JOIN countries ON pellicules.id_pais = countries.id
WHERE (titol LIKE '%$text%' OR director LIKE '%$text%' OR countries.name LIKE '%$text%' OR generes.genre_name LIKE '%$text%') 
ORDER BY data_creacio DESC, titol ASC";


//fem la connexió
$conn = new mysqli($servidor, $usuari, $contrasenya, $basededades);

// comprovem la connexió
if ($conn->connect_error) { //si falla
echo "Fallada en la connexió: ".$conn->connect_error;
die();
// }else{ //tot ok
//   echo "ok<br>";
}
$resultat = $conn->query($sql); // indicamos que la variable resultado almacena el resultado de la consulta de busqueda.
$data = "";

if ($resultat->num_rows > 0) { //comprovem que el resultat no és 0
  while($fila = $resultat->fetch_assoc()) { //imprimim les files
    
    $puntuacio = $fila["puntuacio"]/2; //passem la puntuacio de 10 a 5 punts per a treballar amb l'algoritme posterior. 
    $puntuacio_entera = (int)$puntuacio; // declarem la variable que usarem per a establir la puntuacio entera
    $puntuacio_restant = 5-(int)$puntuacio; //variable que delimitara les estrelles vuides, es a dir, un cop plenes les estrelles completes i les mitjes estrelles, la resta es completaran amb estrelles buides.
    $puntuacio_img = "";

    //comença el calcul de la puntuació
    for ($n=0; $n<$puntuacio_entera; $n++){
      //d aquesta manera marquem les estrelles plenes;
      $puntuacio_img = $puntuacio_img."<img src='img/full_star.png' class='estrella' >";
    }
    if(strpos($puntuacio, ".")){
      //començem a delimitar posteriorment a les estrelles plenes si es necessaria alguna estrella mitja, a partir de separar la puntuacio a partir del . es a dir, si te decimals, vol dir que tindra estrelles mitjes. 
      $puntuacio_img = $puntuacio_img."<img src='img/half_star.png' class='estrella' >";
      $puntuacio_restant--; // treiem les estrelles que resten per omplir ja que em afegit una.
    }
    for ($n=0; $n<$puntuacio_restant; $n++){
      //d aquesta manera marquem les estrelles buides;
      $puntuacio_img = $puntuacio_img."<img src='img/empty_star.png' class='estrella' >";
    }


    //Començem la revisió per a comprobar la existencia de la imatge
    $nomcaratula = "img/".$fila['id'].".jpg";
    
    if(file_exists($nomcaratula)){
     $imatge = "<img src=img/".$fila['id'].".jpg class='caratula' >";
    }else{
      $imatge = "<img src=img/0.jpg class='caratula' >";
    }


    $data = $data."
    <div class='item'>
    <div class='titulo'>".$fila["titol"]."</div>
      <div class='caratulas'>".$imatge."</div>
      <div class='datospeliculas'>
        <p>".$fila["director"]."</p><p>".$fila["any"]."</p><p>".$fila["pais"]."</p>
        <p>".$fila["genre_name"]."</p>
      </div>
      <div class='puntuaciones'><p>".$puntuacio_img."</p></div>
      <div class='enlaces'>
        <p>
        <a href=editarpelicula.php?id=$fila[id]><img src='img/logos/edita.png' class='icon'></a></p>
        <p><a href=borrarpelicula.php?id=$fila[id]><img src='img/logos/delete.png' class='icon'></a>
        <a href='https://www.google.com/search?q=".$fila["titol"]."+".$fila["director"]."' target='_blank' ><img src='img/logos/google.jpg' class='icon'></a>
        </p>
      </div>
    </div>";
     

      
    }    
 } else {
  return "<div>Sense resultats... Comproba que has escrit correctament </div>"; //la taula no te registres
}

$conn->close(); //tanquem la connexió amb la base de dades

 return $data;
}


?>