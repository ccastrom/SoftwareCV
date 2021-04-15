<?php
require_once'../database/conexion.php';
session_start();
if(isset($_POST['btn_enviar_perfil_usuario'])){
    $nombre=$_POST['txt_nombre'];
    $txt_ap_paterno=$_POST['txt_ap_paterno'];
    $txt_ap_materno=$_POST['txt_ap_materno'];
    $txt_celular=$_POST['txt_celular'];
    $txt_correo=$_POST['txt_correo'];
    $txt_direccion=$_POST['txt_direccion'];
    $txt_pais=$_POST['txt_pais'];
    
    $sql="INSERT INTO usuario VALUES(NULL,"
            . "'$nombre',"
            . "'$txt_ap_paterno',"
            . "'$txt_ap_materno',"
            . "' $txt_celular',"
            . "'$txt_correo',"
            . "' $txt_direccion',"
            . "'$txt_pais')";
    
  
    foreach($_FILES['archivo']['tmp_name'] as $key => $tmp_value){
        $filename = $_FILES['archivo']['name'][$key];
        $archivo_nombre = uniqid('', true).$_FILES['archivo']['name'][$key];
        $fuente = $_FILES['archivo']['tmp_name'][$key];

        $carpeta = '../documentos/imagenes/';
        $target_path = $carpeta.$archivo_nombre;
        if(move_uploaded_file($fuente, $target_path)){
            $ConexionBD->query($sql);
            
            $id_usuario = $ConexionBD->insert_id;
            $sql_archivos="INSERT INTO documentos VALUES(NULL,'$filename','$archivo_nombre',$id_usuario)";
            $ConexionBD->query($sql_archivos);
            if($ConexionBD->affected_rows>=1){
               
                $_SESSION['crearUsuario']=1;
                $_SESSION['idUser']=$id_usuario;
               
                header("Location: ../index.php");
            }else{
                $_SESSION['crearUsuario']=2;
                
                header("Location: ../index.php");
            }
        }else{
            $ConexionBD->query($sql);
           
            if($ConexionBD->affected_rows>=1){
                $id_usuario = $ConexionBD->insert_id;
                $_SESSION['crearUsuario']=1;
                $_SESSION['idUser']=$id_usuario;
                header("Location: ../index.php");
            }else{
               
                $_SESSION['crearUsuario']=2;
               
                header("Location: ../index.php");
            }
        }
    }
   
    
    
}
if(isset($_POST['btn_enviar_antecedentes'])){
    $id_user=$_POST['txt_user_id'];
    $txt_informacion=$_POST['txt_informacion'];
    //antecedentes academicos
    $txt_universidad=$_POST['txt_universidad'];
    $txt_ciudad=$_POST['txt_ciudad'];
    $txt_fecha_inicio=$_POST['txt_fecha_inicio'];
    $txt_fecha_termino=$_POST['txt_fecha_termino'];
    $txt_informacion_academica=$_POST['txt_informacion_academica'];
    //antecedentes academicos
    
    //antecedentes profesionales
    $txt_nombre_de_trabajo=$_POST['txt_nombre_de_trabajo'];
    $txt_empleador=$_POST['txt_empleador'];
    $txt_ciudad_empleo=$_POST['txt_ciudad_empleo'];
    $txt_fecha_inicio_empleo=$_POST['txt_fecha_inicio_empleo'];
    $txt_fecha_termino_empleo=$_POST['txt_fecha_termino_empleo'];
    $txt_informacion_empleado=$_POST['txt_informacion_empleado'];
    //antecedentes profesionales
    
    $sql_antecedentes_academicos="INSERT INTO antecedentes_academicos VALUES("
            . "NULL,"
            . "'$txt_universidad',"
            . "'$txt_ciudad',"
            . "'$txt_fecha_inicio',"
            . "'$txt_fecha_termino',"
            . "'$txt_informacion_academica');";
            
    
    $sql_antecedentes_laborales="INSERT INTO antecedentes_laborales VALUES("
            . "NULL,"
            . "'$txt_nombre_de_trabajo',"
            . "'$txt_empleador',"
            . "'$txt_ciudad_empleo',"
            . "'$txt_fecha_inicio_empleo',"
            . "'$txt_fecha_termino_empleo',"
            . "'$txt_informacion_empleado');";
           
           
    
    $statement_academico=$ConexionBD->query($sql_antecedentes_academicos);
    if($ConexionBD->affected_rows>=1){
       $id_antecedentes_academicos=$ConexionBD->insert_id;
       $statement_laborales=$ConexionBD->query($sql_antecedentes_laborales);
       if($ConexionBD->affected_rows>=1){
            $id_antecedentes_laborales=$ConexionBD->insert_id;
            $sql_antecedentes="INSERT INTO antecedentes VALUES(NULL,'$txt_informacion',$id_user,'$id_antecedentes_academicos','$id_antecedentes_laborales');";
            $statement_curriculum_final=$ConexionBD->query($sql_antecedentes);
            if($ConexionBD->affected_rows>=1){
                $_SESSION['idUser']=$id_usuario;
                header("Location: ../curriculum.php?idUser=".$id_user);
            }else{
                echo"error";
            }
       }
       
       
    }else{
        echo $ConexionBD->error;
        echo "todo mal";
    }
    }
    
   

