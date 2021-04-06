<?php

//dades de connexió
function peliculaslistadas(){
  $servidor = "localhost";
  $usuari = "filmoteca";
  $contrasenya = "filmoteca";
  $basededades = "filmoteca";
  $taula = "pellicules";
  
  //marcamos la paginación mediante la sesiones; para guardar los registros de la cantidad de items guardados en la base de datos y la cantidad que deben mostrarse por pagina
  //el get registre_act coge de la url el valor posterior a registre_act para entender que valores debe mostrar por pagina.
  if (!isset($_GET["registre_actual"]) or ($_GET["registre_actual"] <=0)){
    $registre_actual = 0; // es decir en caso de que no este seteado el valor de registro actual en la url, o sea menor o igual a 0, lo que hacemos es darle un valor basico para que no se vaya la paginacion a buscar resultados que no tenemos. 
  }else{
    $registre_actual = $_GET["registre_actual"]; // en caso de que si este seteado el valor de registro y es mayor que 0, le damos el valor registre_actual que coge mediante el get de la url.
    if($registre_actual >= $_SESSION["num_files"]){
      $registre_actual = $_SESSION["num_files"] - $_SESSION["limit"];// en caso de que el registro actual sea mayor o igual a la variable de sesion num files, que es la maxima cantidad de elementos recogidos por la tabla de la db, le restamos a ese num de archivos, el limite a mostrar que son 25 en este caso, para que no se muestren peliculas de mas o vaya a buscar registros que no hay. 
    } 
  }

//consulta
  $sql = 
  "SELECT pellicules.id, pellicules.titol, pellicules.director, pellicules.any, pellicules.pais, pellicules.puntuacio, generes.genre_name, countries.name 
  FROM $taula
  INNER JOIN generes ON pellicules.id_genere = generes.id
  INNER JOIN countries ON pellicules.id_pais = countries.id
  ORDER BY data_creacio DESC, titol ASC
  LIMIT $registre_actual, $_SESSION[limit]";
  //$sql = "SELECT * FROM $taula ORDER BY `titol` LIMIT $registre_actual, $_SESSION[limit]";

  $totalresultats = "SELECT * FROM $taula ORDER BY `titol`";

//fem la connexió
  $conn = new mysqli($servidor, $usuari, $contrasenya, $basededades);

// comprovem la connexió
  if ($conn->connect_error) { //si falla
  echo "Fallada en la connexió: ".$conn->connect_error;
  die();
// }else{ //tot ok
//   echo "ok<br>";
}
  $resultat_total = $conn->query($totalresultats); //executem la consulta sense limit per obtenir el num de elements a la db.
  $_SESSION["num_files"] = $resultat_total->num_rows; // definim el num de files totals 
  $resultat = $conn->query($sql); //executem la consulta amb la limitació de rang a mostrar, aixi paginem correctament.
  $data = ""; //definim una variable generica amb la que retornarem la creació de la taula.

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

    $pais = $fila["name"];
    $data = $data."
    <div class='item'>
    <div class='titulo'>".$fila["titol"]."</div>
      <div class='caratulas'>".$imatge."</div>
      <div class='datospeliculas'>
        <p>".$fila["director"]."</p>
        <p>".$fila["any"]."</p>
        <p>".$pais" | ".$fila["genre_name"]."</p>
      </div>
      <div class='puntuaciones'><p>".$puntuacio_img."</p></div>
      <div class='enlaces'>
        <p>
        <a href=editarpelicula.php?id=$fila[id]><img src='img/logos/edita.png' class='icon'></a>
        <a href=borrarpelicula.php?id=$fila[id]><img src='img/logos/delete.png' class='icon'></a>
        <a href='https://www.google.com/search?q=".$fila["titol"]."+".$fila["director"]."' target='_blank' ><img src='img/logos/google.jpg' class='icon'></a>
        </p>
      </div>
    </div>";
     

      
    }    
 } else {
  echo "Sense resultats..."; //la taula no te registres
}

$conn->close(); //tanquem la connexió amb la base de dades

 $return = [$data, $registre_actual];
 return $return;
}
?>