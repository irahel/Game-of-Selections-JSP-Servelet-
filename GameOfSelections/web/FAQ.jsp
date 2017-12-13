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
        <link rel="stylesheet" href="css/bootstrap.css"">
        <!-- Importa��o dos js -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <!-- Cabe�alho -->
        <% Usuario user = (Usuario) session.getAttribute("usuario");
            if (user == null) {
        %> <jsp:include page="navbar.jsp"/> <%
          } else {
        %> <jsp:include page="navbarLogado.jsp"/> <%
              }

        %>
        <!-- Divisor -->
        <div class= row>
            <div class="col-sm-1" style="background-color:white;"></div>
            <div class="col-sm-10" style="background-color:gray;"></div>
            <div class="col-sm-1" style="background-color:white;"></div>
        </div>
        <!-- Cabeçalho "F.A.Q." -->
        <h1 class="text-center"> <i class="glyphicon glyphicon-paperclip"></i> Frequently 
            Asked questions. </h1>
        <!-- Breve descri��o-->
        <h4 class="text-center"> Duvidas dos diversos usu�rios... </h4>
        <!-- Divisor -->
        <div class= row>
            <div class="col-sm-1" style="background-color:white;"></div>
            <div class="col-sm-10" style="background-color:gray;"></div>
            <div class="col-sm-1" style="background-color:white;"></div>
        </div>
        <!-- Perguntas -->
        <div class="jumbotron">
            <div class= row>
                <div class="col-sm-1"></div>
                <!-- Lista das perguntas  -->
                <div class="col-sm-10">
                    <!-- Pergunta -->
                    <h3><i class="glyphicon glyphicon-pushpin"></i> Pergunta: O site n�o est� carregando, o fato de minha 
                        internet n�o estar conectada pode ser um fator chave para o problema?</h3>
                    <h4>&nbsp; &nbsp; &nbsp;<i class="glyphicon glyphicon-share-alt"></i><b><q>Muito Provavelmente.</q></b></h4>
                    <p></p>
                    <!-- Pergunta -->
                    <h3><i class="glyphicon glyphicon-pushpin"></i> Pergunta: O site est� totalmente preto, o fato do meu
                        monitor estar desligado pode ser um fator chave para o problema?</h3>
                    <h4>&nbsp; &nbsp; &nbsp;<i class="glyphicon glyphicon-share-alt"></i><b><q>Muito Provavelmente.</q></b></h4>
                    <p></p>
                    <!-- Pergunta -->
                    <h3><i class="glyphicon glyphicon-pushpin"></i> Pergunta: Os criadores desse site tiraram nota maxima no trabalho ?</h3>
                    <h4>&nbsp; &nbsp; &nbsp;<i class="glyphicon glyphicon-share-alt"></i><b><q>Muito Provavelmente.</q></b></h4>
                    <p></p>
                    <!-- Pergunta -->
                    <h3><i class="glyphicon glyphicon-pushpin"></i> Pergunta: O fato de muitas perguntas do FAQ serem respondidas com "Muito provavelmente" n�o � muito vago ?</h3>
                    <h4>&nbsp; &nbsp; &nbsp;<i class="glyphicon glyphicon-share-alt"></i><b><q>Muito Provavelmente.</q></b></h4>
                    <p></p>
                    <!-- Pergunta -->
                    <h3><i class="glyphicon glyphicon-pushpin"></i> Pergunta: A existencia desse FAQ n�o � muito provavelmente in�til?,
                        justo que s�o perguntas obvias e isto � obviamente uma pagina para deixar a navbar maior ?</h3>
                    <h4>&nbsp; &nbsp; &nbsp;<i class="glyphicon glyphicon-share-alt"></i><b><q>Muito Provavelmente.</q></b></h4>
                    <p></p>
                    <!-- Pergunta -->
                    <h3><i class="glyphicon glyphicon-pushpin"></i> Pergunta: A aba "sobre" n�o � somente mais uma pagina sobre um 
                        sistema capitalista para dar espa�o para "zoar" e encher mais ainda com coisas inuteis a navbar 
                        deixando o site mais bonito e cheio ? </h3>
                    <h4>&nbsp; &nbsp; &nbsp;<i class="glyphicon glyphicon-share-alt"></i><b><q>Muito Provavelmente.</q></b></h4>
                    <p></p>
                    <!-- Pergunta -->
                    <h3><i class="glyphicon glyphicon-pushpin"></i> Pergunta: N�o consigo digitar nada nos formularios do site, 
                        o fato de eu n�o ter um teclado pode ser um fator chave para o problema ?</h3>
                    <h4>&nbsp; &nbsp; &nbsp;<i class="glyphicon glyphicon-share-alt"></i><b><q>Muito Provavelmente.</q></b></h4>
                    <p></p>
                    <!-- Pergunta -->
                    <h3><i class="glyphicon glyphicon-pushpin"></i> Pergunta: Os reprovados nas etapas de sele��o no 
                        "Game of Selections" tamb�mm ser�o punidos com a morte ?</h3>
                    <h4>&nbsp; &nbsp; &nbsp;<i class="glyphicon glyphicon-share-alt"></i><b><q>Muito Provavelmente.</q></b></h4>
                    <p></p>
                    <!-- Pergunta -->
                    <h3><i class="glyphicon glyphicon-pushpin"></i> Pergunta: O fato de os criadores desse site usarem o discord, 
                        � fator crucial para o site ficar t�o bem feito ?</h3>
                    <h4>&nbsp; &nbsp; &nbsp;<i class="glyphicon glyphicon-share-alt"></i><b><q>Muito Provavelmente.</q></b></h4>
                    <p></p>
                    <!-- Pergunta -->
                    <h3><i class="glyphicon glyphicon-pushpin"></i> Pergunta: A pergunta acima � claramente uma preten��o e um 
                        pedido falho de apoiar o discord ? </h3>
                    <h4>&nbsp; &nbsp; &nbsp;<i class="glyphicon glyphicon-share-alt"></i><b><q>Muito Provavelmente.</q></b></h4>
                    <p></p>
                    <!-- Pergunta -->
                    <h3><i class="glyphicon glyphicon-pushpin"></i> Pergunta: O fato de nome do site ser Game of Selections pode 
                        resultar em um processo da HBO?</h3>
                    <h4>&nbsp; &nbsp; &nbsp;<i class="glyphicon glyphicon-share-alt"></i><b><q>Muito Provavelmente.</q></b></h4>
                    <p></p>
                    <!-- Pergunta -->
                    <h3><i class="glyphicon glyphicon-pushpin"></i> Pergunta: O fato dos criadores do site sempre estarem pensando 
                        em jogar LoL faz com q eles terminem os trabalhos mais r�pido?</h3>
                    <h4>&nbsp; &nbsp; &nbsp;<i class="glyphicon glyphicon-share-alt"></i><b><q>Muito Provavelmente.</q></b></h4>
                    <p></p>
                    <!-- Pergunta -->
                    <h3><i class="glyphicon glyphicon-pushpin"></i> Pergunta: O fato de um membro, a qual n�o diremos o nomisaias 
                        ficar fazendo cup nodles durante o projeto de cria��o � fator crucial para demora de cria��o de site ?</h3>
                    <h4>&nbsp; &nbsp; &nbsp;<i class="glyphicon glyphicon-share-alt"></i><b><q>Muito Provavelmente.</q></b></h4>
                    <p></p> 	
                </div>
                <div class="col-sm-1"></div>
            </div>
        </div>
        <!-- Divisor -->
        <div class= row>
            <div class="col-sm-1" style="background-color:white;"></div>
            <div class="col-sm-10" style="background-color:gray;"></div>
            <div class="col-sm-1" style="background-color:white;"></div>
        </div>
    </body>
</html>