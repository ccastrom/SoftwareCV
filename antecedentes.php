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

            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="py-5 text-center">
                            <div class="card col-md-12" >
                                <div class="card-header bg-primary" >
                                    <h5 style="text-align: left">Antecedentes </h5>
                                </div>
                                <div class=" tab card-body shadow">
                                    <form action="controller/controller.php" method="POST" enctype="multipart/form-data">
                                        <div class="row">
                                            <div class="col-12 col-sm-6 col-md-12">
                                                <h6 style="text-align:left; color: gray"  class="form-label" >Información</h6>
                                                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" cols="10" ></textarea>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                   <div class="row">
                <div class="col-12 col-sm-6 col-md-6">

                    <div class="py-5 text-center">
                            <div class="card col-md-12" >
                                <div class="card-header bg-primary" >
                                    <h5 style="text-align: left">Antecedentes Academicos </h5>
                                </div>

                                <div class=" tab card-body shadow">
                                    <form action="controller/controller.php" method="POST" enctype="multipart/form-data">
                                        <div class="row">
                                            <div class="col-12 col-sm-6 col-md-12">

                                                <h6 style="text-align:left; color: gray"  class="form-label" >Información</h6>
                                                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" cols="10" ></textarea>
                                            </div>



                                        </div>

                                    </form>

                                </div>

                            </div>

                        </div>
                </div>
                <div class="col-12 col-sm-6 col-md-6">

                    <div class="py-5 text-center">
                            <div class="card col-md-12" >
                                <div class="card-header bg-primary" >
                                    <h5 style="text-align: left">Antecedentes Profesionales </h5>
                                </div>

                                <div class=" tab card-body shadow">
                                    <form action="controller/controller.php" method="POST" enctype="multipart/form-data">
                                        <div class="row">
                                            <div class="col-12 col-sm-6 col-md-12">

                                                <h6 style="text-align:left; color: gray"  class="form-label" >Información</h6>
                                                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" cols="10" ></textarea>
                                            </div>



                                        </div>

                                    </form>

                                </div>

                            </div>

                        </div>
                </div>

            </div>

            </div>

         





            <?php
        } else {
            echo "no value";
        }
        ?>


        <?= get_scripts(); ?>   
    </body>
</html>
