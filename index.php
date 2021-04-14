<?php
include('componentes/componentes.php');
?>
<html>
    <head>
        <?php get_meta_links(); ?>
        <title></title>
    </head>
    <body>
        <?= get_nav() ?>


        <div class="container">
            <div class="row">
                <div class="col">
                    
                    <div class="py-5 text-center">
                        <?php
                            session_start();
                            if(isset($_SESSION['crearUsuario'])){
                                if($_SESSION['crearUsuario']==1){
                                      echo'  <div class="alert alert-success alert-dismissible fade show" role="alert">
                                    Datos de usuario ingresados correctamente
                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                  </div>';?>
                                <?php
                                    if(isset($_SESSION['idUser'])){
                                        $usuarioID=$_SESSION['idUser'];
                                        echo $usuarioID;
                                        
                                    }
                                ?>
                                  
                            <div class="row">
                                <div class="col-12 col-sm-6 col-md-12">
                                    <a class="btn btn-primary" href="antecedentes.php?idUser=<?php echo $usuarioID ?>">Añadir nuevos antecedentes </a>
                                </div>
                            </div>
                                  
                                <?php }else{
                                      echo '  <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                        Error al ingresar los datos
                                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                      </div>';
                                }
                                unset($_SESSION['idUser']);
                               
                            }
                            unset($_SESSION['crearUsuario'])?>
                      
                        <br>
                           
                                
                       
                      
                        
                        <div class="card col-md-12">
                            <div class="card-header bg-primary">
                                <h5 style="text-align: left">Ingreso de datos personales</h5>
                            </div>

                            <div class=" tab card-body shadow">

                                <form action="controller/controller.php" method="POST" enctype="multipart/form-data">
                                    <div class="row">
                                        <div class="col-12 col-sm-6 col-md-6">

                                            <h6 style="text-align:left; color: gray"  class="form-label" >Nombre</h6>
                                            <input type="text" class="form-control" id="txt_nombre" name="txt_nombre" placeholder="Nombre">
                                        </div>
                                        <div class="col-12 col-sm-6 col-md-6">

                                            <h6 style="text-align:left; color: gray"  class="form-label" >Foto </h6>
                                            <input type="file" class="form-control" id="archivo[]" name="archivo[]">
                                        </div>


                                    </div>
                                    <br>
                                    <div class="row">
                                        <div class="col-12 col-sm-6 col-md-6">

                                            <h6 style="text-align:left; color: gray"  class="form-label" >Apellido Paterno</h6>
                                            <input type="text" class="form-control" id="txt_ap_paterno" name="txt_ap_paterno" placeholder="Apellido Paterno">
                                        </div>
                                        <div class="col-12 col-sm-6 col-md-6">

                                            <h6 style="text-align:left; color: gray"  class="form-label" >Apellido Materno </h6>
                                            <input type="text" class="form-control" id="txt_ap_materno" name="txt_ap_materno" placeholder="Apellido Materno">
                                        </div>


                                    </div>
                                    <br>
                                    <div class="row">
                                        <div class="col-12 col-sm-6 col-md-6">

                                            <h6 style="text-align:left; color: gray"  class="form-label" >Celular</h6>
                                            <input type="text" class="form-control" id="txt_celular" name="txt_celular" placeholder="Celular">
                                        </div>
                                        <div class="col-12 col-sm-6 col-md-6">

                                            <h6 style="text-align:left; color: gray"  class="form-label" >Correo</h6>
                                            <input type="text" class="form-control" id="txt_correo" name="txt_correo" placeholder="Correo">
                                        </div>


                                    </div>
                                    <br>
                                    <div class="row">
                                        <div class="col-12 col-sm-6 col-md-6">

                                            <h6 style="text-align:left; color: gray"  class="form-label" >Dirección</h6>
                                            <input type="text" class="form-control" id="txt_direccion" name="txt_direccion" placeholder="Dirección">
                                        </div>
                                        <div class="col-12 col-sm-6 col-md-6">

                                            <h6 style="text-align:left; color: gray"  class="form-label" >Pais</h6>
                                            <input type="text" class="form-control" id="txt_pais" name="txt_pais" placeholder="Pais">
                                        </div>
                                    </div>
                                    <br>
                                     <div class="row">
                                        <div class="col-12 col-sm-6 col-md-1">
                                        <input type="submit" name="btn_enviar_perfil_usuario" id="btn_enviar_perfil_usuario" value="Enviar" class="btn btn-primary">
                                        </div>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>




        <?= get_scripts(); ?>   
    </body>
</html>
