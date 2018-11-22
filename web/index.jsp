<%-- 
    Document   : index
    Created on : 20/11/2018, 19:08:50
    Author     : 26148269
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Projeto Experimento Animal</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>


        <style>

            body {

                opacity: 0.98;
                filter: alpha(opacity=90);
                background-repeat: no-repeat;
                -webkit-background-size: cover;
                -moz-background-size: cover;
                -o-background-size: cover;
                background-size: cover;
                background-position: center center;




            }

            #principal {

                display: block;
                margin-top: 0px;
                height: auto;
                width: auto;
                margin-left: auto;
                position: relative;
                padding: 20pt;
                margin-right: 25%;
            }




            label {

                font-weight: bold;
                font-size: 10pt;
                font-family: serif;

            }

        </style>



        <script>
            var user;
            var pass;

            function verificaLogin() {

                user = document.getElementById("usuario");
                pass = document.getElementById("senha");


                if (user.value == "administrador" && pass.value == "123456") {


                    window.location.replace("emissaoProtocolo.jsp");



                } else {
                    alert("Falha no Login!");
                    document.getElementById("usuario").value = "";
                    document.getElementById("senha").value = "";
                    document.getElementById("usuario").autofocus;
                    exit;

                }

            }
        </script>


    <body>
        <h3>Sistema de Experimento Animal</h3>
        <hr>

        <div class="container col-md-6" id="principal" style="border: solid 0px black;">

            <form class="form-control form-control-lg col-12 was-validated" action="emissaoProtocolo.jsp" method="POST">

                <div style="margin-top: 20px;" class="form-group" >
                    <label for="inputEmail3" class="col-sm-7 col-form-label">Usuário: </label>
                    <div class="col-sm-8 col-sm-12">
                        <input type="text" class="form-control" id="usuario" placeholder="Usuário" value="administrador" required="" autofocus="">
                        <div class="invalid-feedback">Voce deve informar o Usuario.</div>
                        <div class="valid-feedback">OK!</div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-7 col-form-label">Senha: </label>
                    <div class="col-sm-8 col-sm-12">
                        <input type="password" class="form-control" id="senha" placeholder="Senha" value="123456" required="">
                        <div class="invalid-feedback">Voce deve informar sua Senha.</div>
                        <div class="valid-feedback">OK!</div>
                    </div>

                </div>
                <fieldset class="form-group">
                    <div class="">
                        <legend class="col-form-label col-sm-2 pt-0"></legend>
                        <div class="col-sm-10">
                            <div class="form-check">
                                <input class="form-check-input custom-radio" type="radio" name="gridRadios" id="gridRadios1" value="Professor">
                                <label class="form-check-label" for="gridRadios1">
                                    Professor
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input custom-radio" type="radio" name="gridRadios" id="gridRadios2" value="Aluno">
                                <label class="form-check-label" for="gridRadios2">
                                    Aluno
                                </label>
                            </div>

                        </div>
                        <div class="invalid-feedback">Voce deve selecionar o Tipo de Usuario.</div>
                        <div class="valid-feedback">OK!</div>
                    </div>
                </fieldset>
                <div class="form-group" style="margin-left: auto;">
                    <div class="col-sm-10">
                        <input style="width: 50%;" id="btLogin" type="button" value="Login" class="btn btn-success" onclick="verificaLogin();">
                    </div>
                </div>


            </form>

        </div>

    </body>
</html>
