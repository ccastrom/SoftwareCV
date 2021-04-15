<?php
 require './MPDF/vendor/autoload.php';
 require './MPDF/plantilla.php';
require'./MPDF/datosSQL.php';
 
session_start();
if(isset($_GET['idUser'])){
    $idUser=$_GET['idUser'];
    $datosCV = array();
    $mysqli= new mysqli("localhost","root","","curriculum");
   $sql=$mysqli->prepare("SELECT * FROM antecedentes 
INNER JOIN antecedentes_academicos ON antecedentes.id_fk_antecedentes_academicos=antecedentes_academicos.id
INNER JOIN antecedentes_laborales ON antecedentes.id_fk_antecedentes_laborales=antecedentes_laborales.id
INNER JOIN usuario ON antecedentes.id_fk_usuario=usuario.id
WHERE antecedentes.id_fk_usuario='$idUser';");
   $sql->execute();
   $resultado=$sql->get_result();
   while($row=$resultado->fetch_assoc())$datosCV[]=$row;
   $mysqli->close();
   //usuario_get
    $datos_usuario = array();
    $mysqli= new mysqli("localhost","root","","curriculum");
   $sql_usuario=$mysqli->prepare("SELECT * FROM usuario INNER JOIN antecedentes ON usuario.id=antecedentes.id_fk_usuario WHERE antecedentes.id_fk_usuario='$idUser' LIMIT 1");
   $sql_usuario->execute();
   $resultado=$sql_usuario->get_result();
   while($row=$resultado->fetch_assoc())$datos_usuario[]=$row;
   $mysqli->close();
  
  
   
  
  
  
}else{
    echo "no existe";
}

$mpdf= new \Mpdf\Mpdf([
    
]);

$plantilla= getPlantilla($datosCV,$datos_usuario);
$css= file_get_contents('style.css');
$mpdf->WriteHTML($css, \Mpdf\HTMLParserMode::HEADER_CSS);
$mpdf->WriteHTML($plantilla, \Mpdf\HTMLParserMode::HTML_BODY);
$mpdf->Output();