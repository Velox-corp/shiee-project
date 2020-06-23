
<%@page import="Clases.Paciente"%>
<%@page language="java" session="true" import="java.sql.*" pageEncoding="UTF-8" contentType="text/html"%>
<!DOCTYPE html>
<html>
<head>
	<title>Test</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/estilo.css">
	<link href="https://fonts.googleapis.com/css2?family=Caveat:wght@700&family=Cormorant+Infant:wght@300&family=IBM+Plex+Sans+Condensed:wght@600&display=swap" rel="stylesheet"><link href="https://fonts.googleapis.com/css2?family=Courgette&family=Darker+Grotesque:wght@600&family=Grand+Hotel&family=Simonetta&display=swap" rel="stylesheet">
</head>
<body>
	<header>
		<nav class="menu">
				<div class="imagen_inicio">
				<img src="img/Shiee.png" width="90" height="90">
				<div class="esto_no">
                                    <%
                                    HttpSession sesionOk = request.getSession();
                                    if(!Paciente.esPaciente(sesionOk.getAttribute("usuario"))){ response.sendRedirect("index.jsp");
                                    %>
                                    <p><a class="no " href="InicioSesion.jsp">Inicio de sesión</a> | <a class="no" href="Registro.jsp">Registrarse</a></p>
                                    <%  }else{%>
                                    <p><a class="no " href="">Cerrar sesión</a> | <a class="no" href="Registro.jsp">Registrarse</a></p>
                                    <%}%>
                               
				</div>
			</div>
			<ul>
				<!--Dependiendo de la dimension de la imagen va a cambiar la propiedad padding-top que estÃ¡ en body dentro de estilo.css  y tambien el height del nav en el css -->

				<li><a class="si" href="index.jsp">Inicio</a></li>
				<li><a class="si" href="">Información</a></li>
				<li><a class="si" href=""> Servicios </a>
					<ul id="submenu">
						<li><a class="si" href="VerificarSesion">Bitácora</a></li>
						<li><a class="si" href="test.jsp">Test</a></li>
					</ul>
				</li>
				<li><a class="si" href="directorio.jsp"> Directorio </a></li>
				<li><a class="si" href="nosotros.jsp"> Nosotros</a></li>
				<li><a class="si" href="sesion.jsp">Sesión</a></li>
			</ul>
		</nav>
	</header>

	<section class="se_te">
                <br>
		<center><h1 class="mide">MIDE TU NIVEL DE ESTRÉS CON ESTE SIMPLE TEST</h1></center>
		<p class="cuerpo">
                    A continuación se te realizaran algunas preguntas, las cuales te sugerimos contestes con la mayor sinceridad posible, tus resultados se harán visibles una vez que se evaluen tus respuestas <br>
                    Una vez que termines da click en el boton que dice Finalizar, y nosotros nos encargaremos del resto
		</p>
		<br>
		<center><a href="<%= request.getContextPath() %>/STest"><button class="botont" style="color: #F2F2F2">Iniciar Test</button></a></center>
		<br>
	</section>

</body>