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
    $id=$_POST['txt_user_id'];
    $txt_informacion=$_POST['txt_informacion'];
    
    
    die();
}
