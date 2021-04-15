<!DOCTYPE html>
<?php

function getPlantilla($datosCV, $datos_usuario) {

    $plantilla = '<html>
<head>
<title>Thomas Hardy - Curriculum Vitae</title>

<meta name="viewport" content="width=device-width"/>
<meta name="description" content="The Curriculum Vitae of Thomas Hardy a Web Developer based in Newcastle upon Tyne (UK)."/>
<meta charset="UTF-8"> 

<link rel="shortcut icon" href="favicon.ico" />

<link type="text/css" rel="stylesheet" href="style.css">
<link href=http://fonts.googleapis.com/css?family=Rokkitt:400,700|Lato:400,300 rel=stylesheet type=text/css>

<!--[if lt IE 9]>
<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
</head>
<body id="top">
<section id="cv" class="instaFade">
	<div class="mainDetails">
		<div id="headshot" class="quickFade">
			<img src="documentos/imagenes/607503fcb6c843.50396563pepe.jpg" />
		</div>
		
		<div id="name">';
    foreach ($datos_usuario as $d) {
        $plantilla .= '<h1 class="quickFade delayTwo">' . $d["nombre"] . " " . $d["apellido_paterno"] . " " . $d["apellido_materno"] . '</h1>';
    }



    $plantilla .= '
		</div>
		
		<div id="contactDetails" class="quickFade delayFour">
			<ul>';

    $plantilla .= '<li>e-mail: <a href="mailto:thomas@thomashardy.me.uk" target="_blank">' . $d["correo"] . '</a></li>
				<li>Celular:' . $d["num_celular"] . '</li>
				<li>Dirección:' . $d["direccion"] . '</li>
			</ul>
		</div>
		<div class="clear"></div>
	</div>
	
	<div id="mainArea" class="quickFade delayFive">
		<div class="section firstSection">
			<div class="sectionTitle">
				<h1>Perfil</h1>
			</div>';
    foreach ($datosCV as $cv) {
        
    }
    $plantilla .= '<div class="sectionContent">
				<p>' . $cv["descripcion_general"] . '</p>';

    $plantilla .= '</div>
			<div class="clear"></div>
		</div>
		
		
		<div class="section">
			<div class="sectionTitle">
				<h1>Experiencia de trabajo</h1>
			</div>';
    foreach ($datosCV as $cv) {
        $plantilla .= '<div class="sectionContent">
				<h2>' . $cv["nombre_de_trabajo"] . "|" . $cv["empleador"] . '</h2>
                                    
				<p class="subDetails">' . $cv["fecha_inicio_laboral"] . " - " . $cv["fecha_termino_laboral"] . '</p>
				<p>' . $cv["descripcion_profesional"] . '</p>
			</div>
			<div class="clear"></div>
		</div>';
    }

    foreach ($datosCV as $cv) {
        $plantilla .= '
		<div class="section">
			<div class="sectionTitle">
				<h1>Educación</h1>
			</div>
			
			<div class="sectionContent">
				<h2>'.$cv["universidad"].'</h2>
				<p class="subDetails">'.$cv["fecha_inicio_academico"]." - ".$cv["fecha_termino_academico"].'</p>
				<p>'.$cv["descripcion_academica"].'</p>
			</div>';
    }


    $plantilla .= '<div class="clear"></div>
		</div>
	</div>
</section>
</body>
</html>';
    return $plantilla;
}
?>
