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
		<i class="glyphicon glyphicon-envelope"></i> Senha redefinida
	</h1>

	<!-- Divisor -->
	<div class=row>
		<div class="col-sm-1" style="background-color: white;"></div>
		<div class="col-sm-10" style="background-color: gray;"></div>
		<div class="col-sm-1" style="background-color: white;"></div>
	</div>
	<div class="jumbotron">
		<center>
                    <% String s = request.getParameter("esqueci_email");%>
			<h3>Enviamos um link de redefini��o de senha para: <%= s %> </h3>
			<h5>Olhe tamb�m na caixa de spam e no lixo.</h5>
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