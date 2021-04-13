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
    if($ConexionBD->query($sql)===TRUE){
        $_SESSION['crearUsuario']=1;
        header("Location: ../index.php");
    }else{
        echo "error";
    }
    
    
}

