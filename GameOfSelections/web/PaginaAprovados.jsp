<%@page import="Model.Nota"%>
<%@page import="Dao.DaoAlunosInscritos"%>
<%@page import="Dao.DaoEdital"%>
<%@page import="Dao.DaoSelecao"%>
<%@page import="Model.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Edital"%>
<% Edital e = (Edital) session.getAttribute("editalAtualProf");
    Usuario u = (Usuario) session.getAttribute("usuario");
    if (u != null && u.getTipo().equals("PROFESSOR")) {
%>
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
        <script src="js/validator.min.js"></script>
    </head>
    <body>
        <!-- Cabe�alho -->
        <jsp:include page="navbarLogado.jsp" />
        <!-- Nome|Numero  do Edital -->
        <h1 class="text-center">
            <i class="glyphicon glyphicon-book"></i> Medias dos alunos no sele��o do edital <%= e.getTitulo()%>
        </h1>

        <!-- Divisor -->
        <div class=row>
            <div class="col-sm-1" style="background-color: white;"></div>
            <div class="col-sm-10" style="background-color: gray;"></div>
            <div class="col-sm-1" style="background-color: white;"></div>
        </div>
        <div class="jumbotron">
            <div class=row>
                <div class="col-sm-3"></div>
                <div class="col-sm-9">
                    <h3><i class="glyphicon glyphicon-book"></i> Edital <%= e.getTitulo()%> - N�: <%=e.getIdEdital()%> </h3>
                    <p></p>
                    <%  ArrayList<Usuario> usuarios = (ArrayList) session.getAttribute("usuariosInscritos");

                        ArrayList<Nota> medias = (ArrayList) session.getAttribute("medias");

                        DaoAlunosInscritos daoIns = new DaoAlunosInscritos();
                        DaoSelecao selec = new DaoSelecao();

                        int idSelecao = selec.getId(e.getIdEdital());

                        if (!usuarios.isEmpty()) {
                            for (int i = 0; i < usuarios.size(); i++) {
                    %>
                    <p></p>
                    <div>
                        <form action="Aprova" method="post">
                            <h4><b><i class="glyphicon glyphicon-bookmark"></i>
                                    Nome: <%= daoIns.getNome(medias.get(i).getIdAluno())%> - Media:
                                </b> <%= medias.get(i).getNota()%>
                                <% if (daoIns.getSituacao(idSelecao, usuarios.get(i).getId()).equals("NENHUMA")) {%>
                                <%} else if (daoIns.getSituacao(idSelecao, usuarios.get(i).getId()).equals("DEFERIDO")) {%>
                                <span class="label label-success">
                                    Aprovado
                                </span>
                                <% } else {%>
                                <span class="label label-success">
                                    Indeferido
                                </span>
                                <% } %>
                            </h4>
                        </form>
                    </div>
                    <% }
                        }%>
                    <a href="PaginaMeusEditaisProf.jsp"><button type="button" class="btn btn-info btn-lg" ><i class="glyphicon glyphicon-share-alt"></i> Voltar</button></a>
                </div>
            </div>

        </div>
        <!-- Rodap� -->
        <jsp:include page="footer.jsp" />
    </body>
</html>
<% } else {
    response.sendRedirect("Inicio.jsp"); %>
<% }%>