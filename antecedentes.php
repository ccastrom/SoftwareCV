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


        <?php
        if (isset($_GET['idUser'])) {
            $idUser = $_GET['idUser'];
            ?>
         <form action="controller/controller.php" method="POST" >
             <input type="hidden" name="txt_user_id" value="<?=$idUser ?>">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="py-5 text-center">
                            <div class="card col-md-12" >
                                <div class="card-header " style="background-color: #90be6d" >
                                    <h5 style="text-align: left">Antecedentes </h5>
                                </div>
                                <div class=" tab card-body shadow">
                                   
                                        <div class="row">
                                            <div class="col-12 col-sm-6 col-md-12">
                                                <h6 style="text-align:left; color: gray"  class="form-label" >Información</h6>
                                                <textarea class="form-control" id="txt_informacion" name="txt_informacion" rows="3" cols="10" ></textarea>
                                            </div>
                                        </div>
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="d-grid gap-2 col-6 mx-auto">
                        <input type="submit" name="btn_enviar_antecedentes" value="Crear CV" class="btn btn-primary " ></input>

                  </div>
                </div>
                
                   <div class="row">
                <div class="col-12 col-sm-6 col-md-6">

                    <div class="py-5 text-center">
                            <div class="card col-md-12" >
                                <div class="card-header" style="background-color: #fca311" >
                                    <h5 style="text-align: left">Antecedentes Academicos </h5>
                                </div>

                                <div class=" tab card-body shadow">
                                 
                                        <div class="row">
                                             <div class="col-12 col-sm-6 col-md-6">
                                            <h6 style="text-align:left; color: gray"  class="form-label" >Universidad</h6>
                                            <input type="text" class="form-control" id="txt_universidad" name="txt_universidad" placeholder="Nombre">
                                        </div>
                                        <div class="col-12 col-sm-6 col-md-5">

                                            <h6 style="text-align:left; color: gray"  class="form-label" >Ciudad </h6>
                                            <input type="text" class="form-control" name="txt_ciudad">
                                        </div>



                                        </div>
                                    <br>
                                    <div class="row">
                                        <div class="col-12 col-sm-6 col-md-6">

                                            <h6 style="text-align:left; color: gray"  class="form-label" >Fecha de inicio</h6>
                                           
                                            <input type="date" class="form-control" id="txt_fecha_inicio" name="txt_fecha_inicio" placeholder="Inicio">
                                        </div>
                                        <div class="col-12 col-sm-6 col-md-6">

                                            <h6 style="text-align:left; color: gray"  class="form-label" >Fecha de termino</h6>
                                            <input type="date" class="form-control" id="txt_fecha_termino" name="txt_fecha_termino" placeholder="Termino">
                                        </div>
                                        


                                        </div>
                                    <br>
                                    <div class="row">
                                            <div class="col-12 col-sm-6 col-md-12">
                                                <h6 style="text-align:left; color: gray"  class="form-label" >Información</h6>
                                                <textarea class="form-control" id="txt_informacion_academica" name="txt_informacion_academica" rows="3" cols="10" ></textarea>
                                            </div>
                                        </div>
                                    
                                  

                                </div>

                            </div>

                        </div>
                </div>
                <div class="col-12 col-sm-6 col-md-6">

                    <div class="py-5 text-center">
                            <div class="card col-md-12" >
                                <div class="card-header" style="background-color:#0077b6 " >
                                    <h5 style="text-align: left">Antecedentes Profesionales </h5>
                                </div>

                                <div class=" tab card-body shadow">
                                  
                                        <div class="row">
                                             <div class="col-12 col-sm-6 col-md-6">

                                            <h6 style="text-align:left; color: gray"  class="form-label" >Puesto de Trabajo</h6>
                                            <input type="text" class="form-control" id="txt_universidad" name="txt_nombre_de_trabajo" placeholder="Puesto de Trabajo">
                                        </div>
                                        <div class="col-12 col-sm-6 col-md-5">

                                            <h6 style="text-align:left; color: gray"  class="form-label" >Empleador </h6>
                                            <input type="text" class="form-control" name="txt_empleador">
                                        </div>
                                        </div>
                                    <br>
                                    <div class="row">
                                        <div class="col-12 col-sm-6 col-md-6">

                                            <h6 style="text-align:left; color: gray"  class="form-label" >Ciudad</h6>
                                       
                                            <input type="text" class="form-control" id="txt_ciudad_empleo" name="txt_ciudad_empleo" placeholder="Inicio">
                                        </div>
                                 

                                        </div>
                                    <br>
                                     <div class="row">
                                        <div class="col-12 col-sm-6 col-md-6">

                                            <h6 style="text-align:left; color: gray"  class="form-label" >Fecha de inicio</h6>
                                           
                                            <input type="date" class="form-control" id="txt_fecha_inicio_empleo" name="txt_fecha_inicio_empleo" placeholder="Inicio">
                                        </div>
                                        <div class="col-12 col-sm-6 col-md-6">

                                            <h6 style="text-align:left; color: gray"  class="form-label" >Fecha de termino</h6>
                                            <input type="date" class="form-control" id="txt_fecha_termino_empleo" name="txt_fecha_termino_empleo" placeholder="Termino">
                                        </div>
                                        


                                        </div>
                                    <br>
                                    <div class="row">
                                            <div class="col-12 col-sm-2 col-md-12">
                                                <h6 style="text-align:left; color: gray"  class="form-label" >Información</h6>
                                                <textarea class="form-control" id="txt_informacion_empleao" name="txt_informacion_empleao" rows="3" cols="10" ></textarea>
                                            </div>
                                        </div>



                                        </div>

                               

                                </div>

                            </div>

                        </div>
                </div>

            </div>
         </form>

            </div>

         





            <?php
        } else {
            echo "no value";
        }
        ?>


        <?= get_scripts(); ?>   
    </body>
</html>
