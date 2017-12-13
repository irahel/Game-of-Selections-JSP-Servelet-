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
    <body>
        <!-- Cabe�alho -->
        <jsp:include page="navbar.jsp" />
        <!-- Nome|Numero  do Edital -->
        <h1 class="text-center">
            <i class="glyphicon glyphicon-certificate"></i> Altera��es realizadas com sucesso!
        </h1>

        <!-- Divisor -->
        <div class=row>
            <div class="col-sm-1" style="background-color: white;"></div>
            <div class="col-sm-10" style="background-color: gray;"></div>
            <div class="col-sm-1" style="background-color: white;"></div>
        </div>
        <div class="jumbotron">
            <center>
                <% Usuario usuario = (Usuario) session.getAttribute("usuario"); %>
                <h3>Sua senha foi alterada com sucesso ! Sr <%= usuario.getNome() %></h3>
                <a href="Inicio.jsp"><button class="btn btn-info btn-default "
                                             type="submit">
                        <i class="glyphicon glyphicon-th-large"> Inicio</i>
                    </button>

            </center>

        </div>
        <!-- Divisor -->

        <!-- Rodap� -->
        <jsp:include page="footer.jsp" />
    </body>
</html>