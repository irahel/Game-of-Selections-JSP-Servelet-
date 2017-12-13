<%@page import="Model.Usuario"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Titulo -->
        <title>G.O.S</title>
        <!-- Icone -->
        <link rel="shortcut icon" href="ico.png">
        <!-- Defini��o dos metadados -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Importa��o do css -->
        <link rel="stylesheet" href="css/bootstrap.css">
        <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="lib/animate-css/animate.min.css" rel="stylesheet">
        <!-- Importa��o dos js -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <!-- Corpo -->
    <body>
        <!-- Cabe�alho -->
        <% Usuario user = (Usuario) session.getAttribute("usuario");
            if(user == null){
            %> <jsp:include page="navbar.jsp"/> <%
            } else {
            %> <jsp:include page="navbarLogado.jsp"/> <%
            }
            %>
        <!-- Banner introdu��o -->
        <div id="myCarousel" >
            <div class="carousel-inner" role="listbox">
                <div class="row">
                    <div class="col-sm-12">
                        <img class="img-responsive" src="img/Banner.png">
                    </div>
                </div>
                <!-- Imagens explicativas -->
                <!-- 1� imagem -->
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-6">
                        <p><img class="img-responsive" src="img/1.png"></p>
                    </div>
                    <div class="col-sm-4"></div>
                </div>
                <!-- 2� imagem -->
                <div class="row">
                    <div class="col-sm-4"></div>
                    <div class="col-sm-6">
                        <p><img class="img-responsive" src="img/2.png"></p>
                    </div>
                    <div class="col-sm-2"></div>
                </div>
                <!-- 3� imagem -->
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-6">
                        <p><img class="img-responsive" src="img/3.png"></p>
                    </div>
                    <div class="col-sm-4"></div>
                </div>
                <!-- 4� imagem -->
                <div class="row">
                    <div class="col-sm-4"></div>
                    <div class="col-sm-6">
                        <p><img class="img-responsive" src="img/4.png"></p>
                    </div>
                </div>
                <!-- 5� imagem -->
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-6">
                        <p><img class="img-responsive"   src="img/5.png"></p>
                    </div>
                    <div class="col-sm-4"></div>
                </div>
            </div>
        </div>

        <!-- Rodap� -->
        <jsp:include page="footer.jsp"/>

    </body>
</html>