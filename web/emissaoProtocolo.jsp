<%-- 
    Document   : emissaoProtocolo
    Created on : 20/11/2018, 19:56:23
    Author     : 26148269
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"
        
     import= "java.sql.*"  
        %>

<%@ page language="java" import="conector.conexao" %>
<!DOCTYPE html>


<% 
    String justificativa = request.getParameter("justificativa");
    String resumo_pt = request.getParameter("resumo_pt");
    String resumo_en = request.getParameter("resumo_en");
    String data_inicio = request.getParameter("data_inicio");
    String data_fim = request.getParameter("data_fim");
    String quant_animal = request.getParameter("quant_animal");
    Boolean executou = false;
    
    
try {
    
        if (justificativa == null) {
            //
        } else {
        
        
    Connection con = conexao.getConnection();
    String sql = "INSERT INTO protocolo(justificativa,resumo_pt,resumo_en,data_inicio,data_fim,quant_animal) values(?,?,?,?,?,?)";
    
    PreparedStatement stmt = con.prepareStatement(sql);
    
    stmt.setString(1, justificativa);
    stmt.setString(2, resumo_pt);
    stmt.setString(3, resumo_en);
    stmt.setString(4, data_inicio);
    stmt.setString(5, data_fim);
    stmt.setString(6, quant_animal);
    stmt.execute();
    stmt.close();
    con.close();
        executou = true;

            //request.setAttribute("msgSucesso", "ok");
            //request.getRequestDispatcher("/cadAnimal.jsp").forward(request, response);
            //    JOptionPane.showMessageDialog(null, "O Cadastro foi efetuado com sucesso!", "Cadastro de Animal", JOptionPane.ERROR_MESSAGE, null);
        }

        if (executou == true) {
            JOptionPane.showMessageDialog(null, "O Protocolo fo emitido com sucesso!", "Protocolo", JOptionPane.INFORMATION_MESSAGE);
            //   out.println("<script>alert('O Cadastro foi efetuado com sucesso!');</script> ");
        }

    } catch (Exception e) {

        //out.println("<script>alert('Falha ao inserir o cadastro!');</script> ");
         JOptionPane.showMessageDialog(null, "Falha ao emitir o protocolo!", "Protocolo", JOptionPane.ERROR_MESSAGE);
    }

%>

<!DOCTYPE html>
<html>
    <head>
        <title>Emissão de Protocolo</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>

        
        <script>
            
            function mascaraData( campo, e )
{
	var kC = (document.all) ? event.keyCode : e.keyCode;
	var data = campo.value;
	
	if( kC!=8 && kC!=46 )
	{
		if( data.length==2 )
		{
			campo.value = data += '/';
		}
		else if( data.length==5 )
		{
			campo.value = data += '/';
		}
		else
			campo.value = data;
	}
}
            
        </script>
        
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


    </head>
    <body background="imagens/fundo.jpg">



        <div id='principal'>

            <div class="container col-9" style='width: 800px; height: auto;' id='topo2'>




                <div id="topo">
                    <img style='float: right;' src='imagens/fundorato.png' alt='' width="100" height="100" />
                    <nav style="background-color: white; border: solid 0px transparent;" class="navbar navbar-brand">

                        <h2>Bem vindo,</h2><h5>Administrador!</h5>
                        <div class="container">
                            <hr style="margin-left: -15px; width: 100%; border: solid 1px black;">
                        </div>
                    </nav>



                </div>
            </div>
        </div>
        <div class="container col-9" style='width: 800px; height: auto;' id='centro'>    
            <h5 style="padding: 10pt; color: #004085; text-align: center;">Sistema de controle, experimento animal!</h5><BR><h6>Preencha abaixo os dados solicitados!</h6>
            <hr>

            <!-- Form Cadastro Emissao -->
            <form class="needs-validation" action="emissaoProtocolo.jsp?sucesso" method="POST" id="cadEmisao" name="cadEmissao" novalidate>

                <div class="col-md-6">
                    <label for="especie">Especie</label><br>
                    <input type="text" size="30" class="form-control" id="especie" name="especie" placeholder="Especie" value="" autofocus="" required>
                    <div class="valid-feedback">
                        Otimo!
                    </div>
                    <div class="invalid-feedback">
                        Voce deve informar a especie do animal.
                    </div>
                </div>
                <div class="col-xl-3 col-md-4 col-12">
                    <label for="quant_animal">Quantidade</label><br>
                    <input type="number" size="10" class="form-control" name="quant_animal" id="quant_animal" placeholder="Quantidade" value="" required>
                    <div class="valid-feedback">
                        Otimo!
                    </div>
                    <div class="invalid-feedback">
                        Voce deve informar a quantidade.
                    </div>
                </div>

                <div class="col-xl-3 col-md-4 col-12">
                    <div class="input-group-prepend">
                        <label for="datainicio">Data Inicio</label>

                    </div>
                    <input type="data_inicio" class="form-control" id="data_inicio" name="data_inicio" placeholder="Data Prevista" aria-describedby="inputGroupPrepend" required onkeypress="mascaraData( this, event )">
                    <div class="valid-feedback">
                        OK!
                    </div>
                    <div class="invalid-feedback">
                        Voce deve informar a Data Inicio.
                    </div>
                </div>
                <div class="col-xl-3 col-md-4 col-12">
                    <div class="input-group-prepend">
                        <label for="datafim">Data Fim</label>

                    </div>
                    <input type="data_fim" class="form-control" id="data_fim" name="data_fim" placeholder="Data Prevista" aria-describedby="inputGroupPrepend" required onkeypress="mascaraData( this, event )">
                    <div class="valid-feedback">
                        OK!
                    </div>
                    <div class="invalid-feedback">
                        Voce deve informar a Data Fim.
                    </div>
                </div>

                <div class="col-md-5">

                    <label for="proveniencia">Proveniencia</label>
                    <input type="text" class="form-control" id="proveniencia" name="proveniencia" disabled="" placeholder="Proveniencia">
                    <div class="invalid-feedback">
                        Preencha o campo Proveniencia!
                    </div>
                    <div class="valid-feedback">
                        OK!
                    </div>
                </div>
                <div class="col-12 col-md-12 col-xl-12">
                    <br>

                    <label for="justificativa">Justificativa</label><br>
                    <textarea style="color:blue; border: solid 1px darkblue;  width: auto;" class="col-8 col-xl-12" rows="7" cols="95" id="justificativa" name="justificativa" placeholder="Justificativa" required></textarea>
                    <div class="valid-feedback">
                        Prontinho!
                    </div>
                    <div class="invalid-feedback">
                        Informe a Justificativa para Emissao.
                    </div>
                </div>

                <div class="col-12 col-md-12 col-xl-12">

                    <label for="resumo_pt">Resumo PT</label><br>
                    <textarea style="color:blue; border: solid 1px darkblue; width: auto;" class="col-8 col-xl-12" rows="7" cols="95" id="resumo_pt" name="resumo_pt" placeholder="Resumo PT" required></textarea>
                    <div class="valid-feedback">
                        Prontinho!
                    </div>
                    <div class="invalid-feedback">
                        Um breve resumo deve ser informado.
                    </div>
                </div>
                <div class="col-12 col-md-12 col-xl-12">

                    <label for="resumo_en">Resumo EN</label><br>
                    <textarea style="color:blue; border: solid 1px darkblue; width: auto;" class="col-8 col-xl-12" rows="7" cols="95" id="resumo_en" name="resumo_en" placeholder="Resumo EN" required></textarea>
                    <div class="valid-feedback">
                        Prontinho!
                    </div>
                    <div class="invalid-feedback">
                        Um breve resumo deve ser informado.
                    </div>
                </div>
                <br>
                <div class="col-xl-12 col-md-8 col-12">
                    <div class="col-12">
                        <button class="btn btn-success" type="submit" title="Gravar e enviar Protocolo">Gravar e enviar</button>
                        <button type="reset" id="btReset" class="btn btn-secondary" title="Limpar Campos">Limpar</button>
                        <a href="index.jsp"><input type="button" id="btSair" class="btn btn-secondary" title="Sair" value="Sair"></a>
                    </div>
                    <div style="margin-top: 20px;">
                        <div class="col-xl-12 col-md-5 col-12">
                            
                            <a href='cadAnimal.jsp'><input style='margin-top: -10px; margin-left: 5px; float: right;' type="button" id="btCadAnimal" class="btn btn-primary" title="Cadastrar Animal" value='Cadastrar Animal'></a>
                            <a href='cadPessoa.jsp'><input style='margin-top: -10px; float: right;' class="btn btn-primary" type="button" id="btCadPessoa" title="Cadastrar Pessoa" value='Cadastrar Pessoa'></a>
                            
                        </div>
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