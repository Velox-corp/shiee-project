<%@page import="java.util.ArrayList"%>
<%@page import="Clases.Psicologo"%>
<%@page language="java" session="true" import="java.sql.*" pageEncoding="UTF-8" contentType="text/html"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Psicologos</title>
	<link rel="stylesheet" type="text/css" href="css/estilo.css">
	<link rel="stylesheet" type="text/css" href="css/estilosAdministrador.css">
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
					<a class="no " href="cerrarSesion">Cerrar sesión</a> | <a class="no" href="Registro.jsp">Registrarse</a></p>
					<%}%>
				</div>
			</div>
			<ul>
				<!--Dependiendo de la dimension de la imagen va a cambiar la propiedad padding-top que estÃ¡ en body dentro de estilo.css  y tambien el height del nav en el css -->

				<li><a class="si" href="index.jsp">Inicio</a></li>
				<li><a class="si" href="info.jsp">Información</a></li>
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
	<script type="text/javascript" src="js/busqueda.js"></script>
	<!--Aquí debe de ir el nav-->
	<div id="titulo"><h2>Psicologos Registrados</h2></div>
	<div class="barraBusqueda">
		<form name="barraBusqueda" method="post">
			<table border="0">
				<tr><!--
					<td id="barra"><input type="text" name="buscar_paciente" ></td>
					<td id="boton"><input type="button" value="BUSCAR"></td>-->
					<td id="espacio"></td>
					<td id="boton"><input type="button" value="VOLVER" onclick="window.location.href='paginaAdmin.jsp'" name="volver"></td>
				</tr> 
			</table>
		</form>
	</div>
	<div class="contenedor">
            <%
            Psicologo psi = new Psicologo();
            ArrayList<Psicologo> pacientes = psi.obtenerTodosPsicologos();
            for(Psicologo p: pacientes){
            %>
		<div class="usuario">
			<img src="img/user.png" id="imgUser">
			<div id="textoUser">
				<h1><%=p.getNombre_psi() +" " + p.getAppat_psi() +" " + p.getApmat_psi()%></h1>
				<p>correoElectronico.psicologo@ejemplo.com</p>
			</div>
		</div>
            <%}%>
	</div>
</body>
</html>