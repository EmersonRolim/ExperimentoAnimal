<%-- 
    Document   : cadAnimal
    Created on : 20/11/2018, 19:22:51
    Author     : 26148269
--%>

<%@page import="java.util.List"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"

        import= "java.sql.*"  
        %>

<%@ page language="java" import="conector.conexao" %>
<%@page import="br.caso4.cadAnimal.Animal"%>
<!DOCTYPE html>


<%

    String especie = request.getParameter("validationCustom01");
    String caracteristica = request.getParameter("validationCustom02");
    String genetica = request.getParameter("genetica");
    String bioterio = request.getParameter("bioterio");
    String quantidade = request.getParameter("validationCustom03");
    Boolean executou = false;

    try {

        if (especie == null) {
            //
        } else {

            Connection con = conexao.getConnection();
            String sql = "INSERT INTO animal(especie,caracteristica,genetica,bioterio,quantidade) values(?,?,?,?,?)";

            PreparedStatement stmt = con.prepareStatement(sql);

            stmt.setString(1, especie);
            stmt.setString(2, caracteristica);
            stmt.setString(3, genetica);
            stmt.setString(4, bioterio);
            stmt.setString(5, quantidade);
            stmt.execute();
            stmt.close();
            con.close();
            executou = true;

            //request.setAttribute("msgSucesso", "ok");
            //request.getRequestDispatcher("/cadAnimal.jsp").forward(request, response);
            //    JOptionPane.showMessageDialog(null, "O Cadastro foi efetuado com sucesso!", "Cadastro de Animal", JOptionPane.ERROR_MESSAGE, null);
        }

        if (executou == true) {
            JOptionPane.showMessageDialog(null, "O Cadastro foi efetuado com sucesso!", "Cadastro de Animal", JOptionPane.INFORMATION_MESSAGE);
            //   out.println("<script>alert('O Cadastro foi efetuado com sucesso!');</script> ");
        }

    } catch (Exception e) {

        //out.println("<script>alert('Falha ao inserir o cadastro!');</script> ");
         JOptionPane.showMessageDialog(null, "Falha ao cadastrar o animal! :" + especie, "Cadastro de Animal", JOptionPane.ERROR_MESSAGE);
    }

%>

<html>
    <head>
        <title>Cadastro de Animal</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/cadAnimal.js" type="text/javascript"></script>

        <style>
            /* Remove the navbar's default margin-bottom and rounded borders */ 
            .navbar {
                margin-bottom: 0;
                border-radius: 0;
            }

            /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
            .row.content {height: 450px}

            /* Set gray background color and 100% height */
            .sidenav {
                padding-top: 20px;
                background-color: white;
                height: 100%;
            }

            /* Set black background color, white text and some padding */
            footer {
                background-color: #555;
                color: white;
                padding: 15px;
            }

            /* On small screens, set height to 'auto' for sidenav and grid */
            @media screen and (max-width: 767px) {
                .sidenav {
                    height: auto;
                    padding: 15px;
                }
                .row.content {height:auto;} 
            }


            #topo {
                display: block;
                margin-left: -15px;
                width: auto;
                border: solid 0px red;
                position: relative;
                background-color: white;
            }


            #topo2 {
                display: block;
                margin-left: auto;
                width: 300px;
                border: solid 0px red;
                position: relative;
                background-color: white;
            }

            #centro {
                margin: auto;
                display: block;
                height: auto;
                width: auto;
                border: solid 1px black;
                margin-top: 2px;
                margin-left: auto;
                background-color: white;
                margin-bottom: 2px;
                margin-right: auto;
            }



            a:hover {
                text-decoration: none;
            }
        </style>

     <!--   <script language="Javascript">
            function atualiza() {

            especie = document.getElementById("validationCustom01");
            caracteristica = document.getElementById("validationCustom02");
            genetica = document.getElementById("genetica");
            bioterio = document.getElementById("bioterio");
            quantidade = document.getElementById("validationCustom03");
            if (quantidade.value != "") {

            alert('Cadastro efetuado com sucesso!');
            } else {
            alert('Verifique se todos os campos foram preenchidos!');
            }
            }
        </script> -->


    </head>
    <body background="imagens/fundo.jpg">

        <!--   <% List<Animal> listaAnimal = (List<Animal>) request.getAttribute("LISTA-ANIMAL");%> -->

        <div id='principal'>

            <div class="container col-9" style='width: 800px; height: auto;' id='topo2'>




                <div id="topo">
                    <!--  <img style='float: right;' src='imagens/fundorato.png' alt='' width="100" height="100" /> -->
                    <nav style="background-color: white; border: solid 0px transparent;" class="navbar navbar-brand">

                        <h2>Cadastro de Animal!</h2>
                        <div class="container">
                            <hr style="margin-left: -15px; width: 100%; border: solid 1px black;">
                        </div>
                    </nav>



                </div>
            </div>
        </div>
        <div class="container col-9" style='width: 800px; height: auto;' id='centro'>    
            <h5 style="padding: 10pt; color: #004085; text-align: center;">Sistema de controle, experimento animal!</h5><BR><h6>Para cadastrar o animal, preencha os campos abaixo!</h6>
            <hr>

            <!-- Form Cadastro Emissao -->
            <form class="needs-validation" action="cadAnimal.jsp?sucesso" id="cadAnimal" name="cadAnimal" method="POST" onsubmit="atualiza()" novalidate>

                <div class="col-md-7">
                    <label for="validationCustom01">Especie</label><br>
                    <input type="text" size="30" class="form-control" name="validationCustom01" id="validationCustom01" placeholder="Especie" value="" autofocus="" required>
                    <div class="valid-feedback">
                        Otimo!
                    </div>
                    <div class="invalid-feedback">
                        Informe a especie do animal.
                    </div>
                </div>
                <div class="col-xl-5 col-md-4 col-12">
                    <label for="validationCustom02">Caracteristica</label><br>
                    <input type="text" size="10" class="form-control" name="validationCustom02" id="validationCustom02" placeholder="Caracteristica" value="" required>
                    <div class="valid-feedback">
                        Otimo!
                    </div>
                    <div class="invalid-feedback">
                        Informe a caracteristica.
                    </div>
                </div>

                <div class="col-xl-4 col-md-4 col-12">
                    <div class="input-group-prepend">
                        <label for="genetica">Genetica</label>

                    </div>
                    <input type="text" class="form-control" name="genetica" id="genetica" placeholder="Genetica" aria-describedby="inputGroupPrepend" required>
                    <div class="valid-feedback">
                        OK!
                    </div>
                    <div class="invalid-feedback">
                        Informe a genetica do animal.
                    </div>
                </div>
                <div class="col-xl-4 col-md-4 col-12">
                    <div class="input-group-prepend">
                        <label for="bioterio">Bioterio</label>

                    </div>
                    <input type="text" class="form-control" name="bioterio" id="bioterio" placeholder="Bioterio" aria-describedby="inputGroupPrepend" required>
                    <div class="valid-feedback">
                        OK!
                    </div>
                    <div class="invalid-feedback">
                        Informe o bioterio.
                    </div>
                </div>

                <div class="col-md-3">

                    <label for="validationCustom03">Quantidade</label>
                    <input type="number" class="form-control" name="validationCustom03" id="validationCustom03" placeholder="Quantidade" required>
                    <div class="invalid-feedback">
                        Preencha a quantidade!
                    </div>
                    <div class="valid-feedback">
                        OK!
                    </div>
                </div>
                <br>
                <div class="col-xl-12 col-md-8 col-12">
                    <div class="col-12">
                        <button class="btn btn-success" type="submit" id="enviar" name="enviar" title="Gravar e enviar Protocolo">Gravar</button>
                        <button type="reset" id="btReset" class="btn btn-secondary" title="Limpar Campos">Limpar</button>
                        <a href="emissaoProtocolo.jsp"><input type="button" id="btVoltar" class="btn btn-secondary" title="Voltar" value="Voltar"></a>
                    </div>
                    <div style="margin-top: 20px;">
                        <label style="margin-top: auto; font-family: monospace">Projeto Desenvolvimento Web.</label>
                    </div>
                </div>

            </form> 

            <!--      <input type='button' name='Esconder' value='Esconder' onClick='tipoCadastro2()'>
                  <input type='button' name='Mostrar' value='Mostrar' onClick='tipoCadastro1()'>
            -->
            <script>
                // Example starter JavaScript for disabling form submissions if there are invalid fields
                (function () {
                'use strict';
                window.addEventListener('load', function () {
                // Fetch all the forms we want to apply custom Bootstrap validation styles to
                var forms = document.getElementsByClassName('needs-validation');
                // Loop over them and prevent submission
                var validation = Array.prototype.filter.call(forms, function (form) {
                form.addEventListener('submit', function (event) {

                if (form.checkValidity() === false) {

                event.preventDefault();
                event.stopPropagation();
                }

                form.classList.add('was-validated');
                }, false);
                });
                }, false);
                }
                )();
            </script>  





        </div>


    </body>
</html>
