
<%@page language="java" session="true" import="java.sql.*" pageEncoding="UTF-8" contentType="text/html"%>
<!DOCTYPE html>
<html>
<head>
	<title>Resultados test</title>
	<meta charset="utf-8">
        <meta name="description" content="Source code generated using layoutit.com">
        <meta name="author" content="LayoutIt!">
        <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@700&family=Cormorant+Infant:wght@300&family=IBM+Plex+Sans+Condensed:wght@600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Courgette&family=Darker+Grotesque:wght@600&family=Grand+Hotel&family=Simonetta&display=swap" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
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
						if(sesionOk.getAttribute("usuario")==null){
					%>
					<p><a class="no " href="InicioSesion.jsp">Inicio de sesión</a> | <a class="no" href="Registro.jsp">Registrarse</a></p>
					<%  }else{%>
					<a class="no " href="">Cerrar sesión</a> | <a class="no" href="Registro.jsp">Registrarse</a></p>
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
				<li><a class="si" href="paginaAdmin.jsp">Sesión</a></li>
			</ul>
		</nav>
	</header>
	<section>
		<center>
                    <% 
                    int elid;
                    elid = 69;
                    %>
			<h1>RESULTADOS DEL TEST</h1>
			<p>A traves del test que ha contestado el paciente, hemos determinado que tiene un</p>
			<h2>(pendiente al psicologo, preeliminar de <%=elid%> / 164)</h2>
			<br>
			<a class="btn btn-primary align-content-center btn-sm" href="estudiantes.jsp">Volver</a>
		</center>
	</section>
</body>
</html>